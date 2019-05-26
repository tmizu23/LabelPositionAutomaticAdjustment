# -*- coding: utf-8 -*-

from __future__ import absolute_import
# Import the PyQt and QGIS libraries
from builtins import object
from qgis.PyQt.QtCore import *
from qgis.PyQt.QtWidgets import *
from qgis.PyQt.QtGui import *
from qgis.core import *
from qgis.gui import *
from . import resources
import sys,os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
from . import AdjustText

class LabelPositionAutomaticAdjustment(object):

    def __init__(self, iface):
        self.iface = iface

    def initGui(self):
        self.actionAdjustText = QAction(
            QIcon(":/plugins/LabelPositionAutomaticAdjustment/iconAdjustText.svg"),
            u"AdjustText", self.iface.mainWindow())
        self.actionAdjustText.triggered.connect(self.runAdjustText)
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').addAction(self.actionAdjustText)

        self.actionApplyStyle = QAction(
            QIcon(":/plugins/LabelPositionAutomaticAdjustment/iconApplyStyle.svg"),
            u"ApplyStyle", self.iface.mainWindow())
        self.actionApplyStyle.triggered.connect(self.runApplyStyle)
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').addAction(self.actionApplyStyle)

    def unload(self):
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').removeAction(self.actionAdjustText)
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').removeAction(self.actionApplyStyle)

    def runAdjustText(self):
        canvas = self.iface.mapCanvas()
        layer = self.iface.activeLayer()
        if layer is not None:
            #ラベル調整の準備が出来ているか確認
            ok = AdjustText.is_prepared_label(layer)
            if ok:
                center_num, ok = QInputDialog.getInt(QInputDialog(), "Enter Label Centroid Number", u"ラベル配置の中心の数", 1, 1)
                if ok:
                    #ラベル配置設定
                    AdjustText.set_position_column(layer)
                    #ラベル位置をリセット
                    AdjustText.reset_label_position(layer, canvas)
                    layer.triggerRepaint()
                    #ラベル配置実行.リセットが再表示されてから実行する必要があるためタイマーを使用
                    QTimer.singleShot(1000, lambda: AdjustText.adjust_text(layer, canvas, center_num))
            else:
                QMessageBox.information(self.iface.mainWindow(), '','ラベルの移動設定を確認してください')
        else:
            QMessageBox.information(self.iface.mainWindow(), '', 'ベクターレイヤを選択してください')

    def runApplyStyle(self):
        layer = self.iface.activeLayer()
        if layer is not None and layer.type() == QgsMapLayer.VectorLayer:
            ok = AdjustText.is_prepared_label(layer)
            if ok:
                AdjustText.apply_style(layer)
            else:
                QMessageBox.information(self.iface.mainWindow(), '', 'ラベルの移動設定を確認してください')
        else:
            QMessageBox.information(self.iface.mainWindow(), '', 'ベクターレイヤを選択してください')

    def log(self, msg):
        QgsMessageLog.logMessage(msg, 'MyPlugin',Qgis.Info)

