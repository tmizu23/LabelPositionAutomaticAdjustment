# -*- coding: utf-8 -*-
from builtins import zip
from builtins import range
from qgis.PyQt.QtCore import *
from qgis.PyQt.QtWidgets import *
from qgis.PyQt.QtGui import *
from qgis.core import *
from qgis.gui import *
from qgis.utils import *
import numpy as np
from scipy.cluster.vq import vq, kmeans, whiten
#from sklearn import cluster, preprocessing, mixture #機械学習用のライブラリを利用
#import pyclustering
#from pyclustering.cluster import xmeans

import math
import sys
import os
import time

def approximately_equal(x1, x2):
    return abs(x2 - x1) < sys.float_info.epsilon * 100

def getFeatureById(layer, featid):
    features = [f for f in layer.getFeatures(QgsFeatureRequest().setFilterFids([featid]))]
    if len(features) != 1:
        return None
    else:
        return features[0]

def move_texts(layer,canvas,bboxes):
    for bbox in bboxes:
        featureId = bbox['featureId']
        x = bbox['orgx']
        y = bbox['orgy']
        set_label_position(layer,canvas,featureId, float(x), float(y))
        #log("{}".format(featureId))

def set_label_position(layer,canvas,featureId, x, y):
    projectCRS = canvas.mapSettings().destinationCrs()
    layerCRS = layer.crs()
    if projectCRS.srsid() != layerCRS.srsid():
        crs_trans = QgsCoordinateTransform(projectCRS, layerCRS, QgsProject.instance())
        p = crs_trans.transform(QgsPointXY(x, y))
        x, y = p[0], p[1]

    feature = getFeatureById(layer, featureId)
    layer.startEditing()
    feature["auxiliary_storage_labeling_positionx"] = round(x, 10)
    feature["auxiliary_storage_labeling_positiony"] = round(y, 10)
    layer.updateFeature(feature)
    layer.commitChanges()

def normalized_point_position(layer,text,extent):
    # [0,1]に正規化されたデータポイントの位置を返す
    xmin, xmax = extent.xMinimum(),extent.xMaximum()
    ymin, ymax = extent.yMinimum(),extent.yMaximum()
    feature = getFeatureById(layer, text.featureId)
    p = feature.geometry().asPoint()
    return ((p[0]-xmin)/(xmax-xmin), (p[1]-ymin)/(ymax-ymin))

def set_bbox(bbox,velocities):
    dx, dy = velocities[0],velocities[1]
    #log("{},{}".format(dx,dy))
    bbox['orgx'] = bbox['orgx']+dx
    bbox['orgy'] = bbox['orgy']+dy
    bbox['xmin'] = bbox['xmin']+dx
    bbox['ymin'] = bbox['ymin']+dy
    bbox['xmax'] = bbox['xmax']+dx
    bbox['ymax'] = bbox['ymax']+dy
    return bbox

def set_bboxes(bboxes, delta_x, delta_y):
    for i, (bbox, dx, dy) in enumerate(zip(bboxes, delta_x, delta_y)):
        bbox['orgx'] = bbox['orgx'] + dx
        bbox['orgy'] = bbox['orgy'] + dy
        bbox['xmin'] = bbox['xmin'] + dx
        bbox['ymin'] = bbox['ymin'] + dy
        bbox['xmax'] = bbox['xmax'] + dx
        bbox['ymax'] = bbox['ymax'] + dy
        bboxes[i] = bbox
    return bboxes

def transform_coord(bboxes,extent,normalized,random=None):
    xmin, xmax = extent.xMinimum(),extent.xMaximum()
    ymin, ymax = extent.yMinimum(),extent.yMaximum()
    if normalized:
        for i in range(len(bboxes)):
            bboxes[i]['orgx'] = (bboxes[i]['orgx'] - xmin) / (xmax - xmin) + random[i]
            bboxes[i]['orgy'] = (bboxes[i]['orgy'] - ymin) / (ymax - ymin) + random[i]
            bboxes[i]['xmin'] = (bboxes[i]['xmin'] - xmin) / (xmax - xmin) + random[i]
            bboxes[i]['xmax'] = (bboxes[i]['xmax'] - xmin) / (xmax - xmin) + random[i]
            bboxes[i]['ymin'] = (bboxes[i]['ymin'] - ymin) / (ymax - ymin) + random[i]
            bboxes[i]['ymax'] = (bboxes[i]['ymax'] - ymin) / (ymax - ymin) + random[i]
            #log("{}".format(bboxes[i]['orgx']))
    else:
        for i in range(len(bboxes)):
            bboxes[i]['orgx'] = bboxes[i]['orgx']*(xmax - xmin)+xmin
            bboxes[i]['orgy'] = bboxes[i]['orgy']*(ymax - ymin)+ymin
            bboxes[i]['xmin'] = bboxes[i]['xmin']*(xmax - xmin)+xmin
            bboxes[i]['xmax'] = bboxes[i]['xmax']*(xmax - xmin)+xmin
            bboxes[i]['ymin'] = bboxes[i]['ymin']*(ymax - ymin)+ymin
            bboxes[i]['ymax'] = bboxes[i]['ymax']*(ymax - ymin)+ymin
            #log("{}".format(bboxes[i]['orgx']))
    return bboxes

def get_bboxes(texts, expand):
    # ha:left,va:bottomの時のラベル情報を取得
    bboxes = [{'featureId': text.featureId,
               'label': text.labelText ,
               'orgx': text.cornerPoints[0][0] + text.width / 2.0,
               'orgy': text.cornerPoints[0][1] + text.height / 2.0,
               'xmin': text.cornerPoints[0][0] - text.width * (expand[0] - 1) / 2.0,
               'xmax': text.cornerPoints[2][0] + text.width * (expand[0] - 1) / 2.0,
               'ymin': text.cornerPoints[0][1] - text.height * (expand[1] - 1) / 2.0,
               'ymax': text.cornerPoints[2][1] + text.height * (expand[1] - 1) / 2.0}
              for text in texts]
    # for bbox in bboxes:
    #     log("{},xmin:{},xmax:{},ymin:{},ymax:{}".format(bbox["label"],bbox["xmin"],bbox["xmax"],bbox["ymin"],bbox["ymax"]))
    return bboxes

def get_dboxes(points, padding):
    # ポイントのpadding付きの範囲を取得
    dboxes = [{'xmin': xy[0] - padding[0],
               'xmax': xy[0] + padding[0],
               'ymin': xy[1] - padding[1],
               'ymax': xy[1] + padding[1],
               }
              for xy in points]
    # for bbox in dboxes:
    #     log("dbox:::xmin:{},xmax:{},ymin:{},ymax:{}".format(bbox["xmin"],bbox["xmax"],bbox["ymin"],bbox["ymax"]))
    return dboxes

def get_midpoint(bbox):
    cx = (bbox["xmin"] + bbox["xmax"]) / 2
    cy = (bbox["ymin"] + bbox["ymax"]) / 2
    return np.array([cx, cy])

def overlaps(bbox1, bbox2):
    x0 = np.maximum(bbox1['xmin'], bbox2['xmin'])
    x1 = np.minimum(bbox1['xmax'], bbox2['xmax'])
    y0 = np.maximum(bbox1['ymin'], bbox2['ymin'])
    y1 = np.minimum(bbox1['ymax'], bbox2['ymax'])
    return True if x0 <= x1 and y0 <= y1 else False

def line_intersect(p1, q1, p2, q2):
    # Special exception, where q1 and q2 are equal (do intersect)
    if q1[0] == q2[0] and q1[1] == q2[1]:
        return False
    # If line is point
    if p1[0] == q1[0] and p1[1] == q1[1]:
        return False
    if p2[0] == q2[0] and p2[1] == q2[1]:
        return False

    dy1 = q1[1] - p1[1]
    dx1 = q1[0] - p1[0]

    slope1 = dy1 / dx1
    intercept1 = q1[1] - q1[0] * slope1

    dy2 = q2[1] - p2[1]
    dx2 = q2[0] - p2[0]

    slope2 = dy2 / dx2
    intercept2 = q2[1] - q2[0] * slope2

    # check if lines vertical
    if approximately_equal(dx1, 0.0):
        if approximately_equal(dx2, 0.0):
            return False
        else:
            x = p1[0]
            y = slope2 * x + intercept2
    elif approximately_equal(dx2, 0.0):
        x = p2[0]
        y = slope1 * x + intercept1
    else:
        if approximately_equal(slope1, slope2):
            return False
        x = (intercept2 - intercept1) / (slope1 - slope2)
        y = slope1 * x + intercept1

    if x < p1[0] and x < q1[0]:
        return False
    elif x > p1[0] and x > q1[0]:
        return False
    elif y < p1[1] and y < q1[1]:
        return False
    elif y > p1[1] and y > q1[1]:
        return False
    elif x < p2[0] and x < q2[0]:
        return False
    elif x > p2[0] and x > q2[0]:
        return False
    elif y < p2[1] and y < q2[1]:
        return False
    elif y > p2[1] and y > q2[1]:
        return False
    else:
        return True

def put_within_bounds(bbox, xlim, ylim):
    if bbox["xmin"] < xlim[0]:
        bbox = set_bbox(bbox,[xlim[0] - bbox["xmin"],0])
    elif bbox["xmax"] > xlim[1]:
        bbox = set_bbox(bbox, [xlim[1] - bbox["xmax"], 0])
    if bbox["ymin"] < ylim[0]:
        bbox = set_bbox(bbox, [0,ylim[0] - bbox["ymin"]])
    elif bbox["ymax"] > ylim[1]:
        bbox = set_bbox(bbox, [0,ylim[1] - bbox["ymax"]])

    return bbox

def spring_force(a, b, force=0.000001):
    v = (a - b)
    f = force * v
    return f

def repel_force(a, b, force=0.000001):
    dx = math.fabs(a[0] - b[0])
    dy = math.fabs(a[1] - b[1])
    # Constrain the minimum distance, so it is never 0.
    d2 = max(dx * dx + dy * dy, 0.0004)
    # Compute a unit vector in the direction of the force.
    v = (a - b) / math.sqrt(d2)
    # Divide the force by the squared distance.
    f = force * v / d2
    if dx > dy:
        f[1] = f[1] * 2
    else:
        f[0] = f[0] * 2
    return f

def show_centroid(canvas, point,extent):

    xmin, xmax = extent.xMinimum(),extent.xMaximum()
    ymin, ymax = extent.yMinimum(),extent.yMaximum()
    px = point[0] * (xmax - xmin) + xmin
    py = point[1] * (ymax - ymin) + ymin

    marker = QgsVertexMarker(canvas)
    marker.setIconType(QgsVertexMarker.ICON_BOX)
    marker.setColor(QColor(0, 0, 255))
    marker.setPenWidth(2)
    marker.setIconSize(10)
    marker.setCenter(QgsPointXY(px, py))

def initialize_by_cluster(canvas, extent, points, bboxes, center_num):
    #### k-means
    cluster_centers, distortion = kmeans(points, int(center_num))
    codes, error = vq(points, cluster_centers)
    delta = (points - cluster_centers[codes])/5.0
    #log("{}".format(delta))
    bboxes = set_bboxes(bboxes, delta[:, 0], delta[:, 1])

    # #log("c:{}".format(cluster_centers))
    # # 重心表示リセット
    # vertex_items = [i for i in canvas.scene().items() if issubclass(type(i), QgsVertexMarker)]
    # for ver in vertex_items:
    #     if ver in canvas.scene().items():
    #         iface.mapCanvas().scene().removeItem(ver)
    # # 重心表示
    # for point in cluster_centers:
    #     show_centroid(canvas, point, extent)

    return bboxes

def selectLayerLabel(layer,texts):
    layer_texts=[]
    for text in texts:
        result = getFeatureById(layer, text.featureId)
        if result is not None:
            layer_texts.append(text)
    return layer_texts

def adjust_text(layer,canvas,center_num=1,force_push=1e-6, force_pull=1e-2, maxiter=50):
    t1 = time.time()
    if layer is None:
        return

    # text情報
    lr = canvas.labelingResults()
    extent = canvas.extent()
    texts = lr.labelsWithinRect(extent)
    texts = selectLayerLabel(layer,texts)
    n_texts = len(texts)
    r = np.random.normal(0, force_push, n_texts)
    bboxes = get_bboxes(texts, expand=(1.05, 1.2))
    bboxes = transform_coord(bboxes, extent, normalized=True, random=r)
    xbounds = [0, 1]
    ybounds = [0, 1]

    #点の座標
    points = np.array([normalized_point_position(layer,text,extent) for text in texts])

    bboxes = initialize_by_cluster(canvas, extent, points, bboxes, center_num)
    if not bboxes: #cancel dlg
        return

    dboxes = get_dboxes(points, padding=(1e-2, 1e-2))
    n_points = len(points)
    orig_cent = np.array([(bbox['orgx'],bbox['orgy']) for bbox in bboxes])

    #log("len:{}".format(len(points)))
    velocities = np.array([[0.0,0.0]]*n_texts)
    velocity_decay = 0.7
    iter = 0
    any_overlaps = True
    i_overlaps = True
    log("timeA:{}".format(time.time() - t1))
    while (any_overlaps and iter < maxiter):
        iter = iter + 1
        any_overlaps = False
        # The forces get weaker over time.
        force_push = force_push * 0.99999
        force_pull = force_pull * 0.9999
        for i in range(n_texts):
            i_overlaps = False
            f = np.array([0, 0])
            #ラベルの中心座標
            ci = get_midpoint(bboxes[i])
            #log("target:{}".format(bboxes[i]['label']))
            for j in range(n_points):
                if i == j:
                    # 自分自身の点とラベルが重なるなら.
                    if overlaps(dboxes[i], bboxes[i]):
                        any_overlaps = True
                        i_overlaps = True
                        f = f + repel_force(ci, points[i], force_push)
                        #log("A:{}".format(f))
                else:
                    cj = get_midpoint(bboxes[j])
                    # ラベル同士が重なる場合.
                    if j < n_texts and overlaps(bboxes[i], bboxes[j]):
                        any_overlaps = True
                        i_overlaps = True
                        f = f + repel_force(ci, cj, force_push)
                        #log("B:{}".format(f))
                    # ラベルが他の点と重なる場合.
                    if overlaps(dboxes[j], bboxes[i]):
                        any_overlaps = True
                        i_overlaps = True
                        f = f + repel_force(ci, points[j], force_push)
                        #log("C:{}".format(f))
            # ラベルがどこにも重なっていないなら、最初のラベルの位置にちょっと戻る.
            if not i_overlaps:
                f = f + spring_force(orig_cent[i], ci, force_pull)
                #log("{},{}".format(orig_xy[i], ci))
                #log("D:{}".format(f))

            velocities[i] = velocities[i] * velocity_decay + f
            #log("vel:{},f:{}".format(velocities[i],f))
            #log("before:{}".format(bboxes[i]))
            bboxes[i] = set_bbox(bboxes[i], velocities[i])
            #log("after:{}".format(bboxes[i]))
            # Put boxes within bounds
            bboxes[i] = put_within_bounds(bboxes[i], xbounds, ybounds)
            # look for line clashes

            if not any_overlaps or iter % 5 == 0:
                for j in range(n_points):
                    cj = get_midpoint(bboxes[j])
                    ci = get_midpoint(bboxes[i])
                    # Switch label positions if lines overlap
                    if i != j and j < n_texts and line_intersect(ci, points[i], cj, points[j]):
                        #log("interA")
                        any_overlaps = True
                        bboxes[i] = set_bbox(bboxes[i],spring_force(cj, ci, 1))
                        bboxes[j] = set_bbox(bboxes[j],spring_force(ci, cj, 1))
                        # Check if resolved
                        ci = get_midpoint(bboxes[i])
                        cj = get_midpoint(bboxes[j])
                        if line_intersect(ci, points[i], cj, points[j]):
                            #log("interB")
                            bboxes[i] = set_bbox(bboxes[i],spring_force(cj, ci, 1.25))
                            bboxes[j] = set_bbox(bboxes[j],spring_force(ci, cj, 1.25))
    log("iter:{}".format(iter))
    bboxes = transform_coord(bboxes,extent,normalized=False)
    move_texts(layer,canvas,bboxes)
    set_position_column(layer, type="expression")
    log("timeD:{}".format(time.time() - t1))

def is_prepared_label(layer):
    result = True
    labeling = layer.labeling()
    if labeling is None:
        return False

    subProviderIds = labeling.subProviders()
    palyr = QgsPalLayerSettings(layer.labeling().settings(subProviderIds[0]))
    pc = palyr.dataDefinedProperties()

    if not layer.labelsEnabled():
        result = False
    if not pc.isActive(9) or not pc.isActive(10):
        result = False
    if pc.property(9).asExpression() != '"auxiliary_storage_labeling_positionx"':
        result = False
    if pc.property(10).asExpression() != '"auxiliary_storage_labeling_positiony"':
        result = False
    if layer.fields().lookupField("auxiliary_storage_labeling_positionx") == -1:
        result = False
    return result

def set_position_column(layer,type="center"):
    subProviderIds = layer.labeling().subProviders()
    palyr = QgsPalLayerSettings(layer.labeling().settings(subProviderIds[0]))
    pc = palyr.dataDefinedProperties()
    # 9: '"auxiliary_storage_labeling_positionx"',
    # 10: '"auxiliary_storage_labeling_positiony"',
    if type=="center":
        sp = {11: "'center'", 12: "'Half'"}
    else:
        sp = {11: "case when \"auxiliary_storage_labeling_positionx\" < $x THEN 'right' ELSE 'left' END", 12: "case when \"auxiliary_storage_labeling_positiony\" < $y THEN 'Top' ELSE 'Bottom' END"}

    for k, v in sp.items():
        x = QgsProperty()
        x.setExpressionString(v)
        pc.setProperty(k, x)

    palyr.setDataDefinedProperties(pc)
    layer.setLabeling(QgsVectorLayerSimpleLabeling(palyr))
    layer.setLabelsEnabled(True)

def reset_label_position(layer,canvas):
    if layer is not None:
        features = get_features_within_canvas(layer,canvas)
        if features is None:
            return
        layer.startEditing()
        for feature in features:
            try:
                p = feature.geometry().asPoint()
                feature["auxiliary_storage_labeling_positionx"] = round(p[0], 10)
                feature["auxiliary_storage_labeling_positiony"] = round(p[1], 10)
                layer.updateFeature(feature)
            except:
                pass
        layer.commitChanges()

def get_features_within_canvas(layer,canvas):
    region = canvas.extent().asWktPolygon()
    where_text = u"contains(geom_from_wkt('{0}'), $geometry)".format(region)
    expression = QgsExpression(where_text)
    features = layer.getFeatures(QgsFeatureRequest(expression))
    return features

def set_label_style(layer, qml):
    if layer is not None:
        # レイヤのラベルプロパティの設定。値で定義された式を設定
        layer.loadNamedStyle(qml, True, QgsMapLayer.StyleCategory.Symbology)
        layer.loadNamedStyle(qml, True, QgsMapLayer.StyleCategory.Labeling)
        layer.setCustomProperty("labeling/isExpression", True)

def set_label_column(layer, name):
    subProviderIds = layer.labeling().subProviders()
    palyr = QgsPalLayerSettings(layer.labeling().settings(subProviderIds[0]))
    palyr.drawLabels = True
    palyr.fieldName = name
    layer.setLabeling(QgsVectorLayerSimpleLabeling(palyr))
    layer.setLabelsEnabled(True)

def apply_style(layer):
    col_list = layer.fields().names()
    column, ok = QInputDialog.getItem(QInputDialog(), "Select Label Column", "Column:", col_list, 0, False)
    if ok:
        qml = os.path.dirname(os.path.abspath(__file__)) + os.path.sep + "label.qml"
        set_label_style(layer, qml)
        set_label_column(layer, column)
        #change label name
        layer.triggerRepaint()

def log(msg):
    QgsMessageLog.logMessage(msg, 'MyPlugin',Qgis.Info)