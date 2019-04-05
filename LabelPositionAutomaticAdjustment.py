# -*- coding: utf-8 -*-

from __future__ import absolute_import
# Import the PyQt and QGIS libraries
from builtins import object
from qgis.PyQt.QtCore import *
from qgis.PyQt.QtWidgets import *
from qgis.PyQt.QtGui import *
from qgis.core import *
from qgis.gui import *
from . import resources_rc
import sys,os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
from . import AdjustText

class LabelPositionAutomaticAdjustment(object):

    def __init__(self, iface):
        self.iface = iface

    def initGui(self):
        self.action = QAction(
            QIcon(":/plugins/LabelPositionAutomaticAdjustment/icon.png"),
            u"LabelPositionAutomaticAdjustment", self.iface.mainWindow())
        self.action.triggered.connect(self.run)
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').addAction(self.action)

    def unload(self):
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').removeAction(self.action)

    def run(self):
        canvas = self.iface.mapCanvas()
        layer = self.iface.activeLayer()
        #ラベル調整の準備が出来ているか確認
        ok = AdjustText.is_prepared_label(layer)
        if ok:
            #ラベル配置設定
            AdjustText.set_position_column(layer)
            #ラベル位置をリセット
            AdjustText.reset_label_position(layer, canvas)
            layer.triggerRepaint()
            #ラベル配置実行.リセットが再表示されてから実行する必要があるためタイマーを使用
            QTimer.singleShot(1000, lambda: AdjustText.adjust_text(layer, canvas))
        else:
            QMessageBox.information(self.iface.mainWindow(), '','ラベルの移動設定を確認してください')