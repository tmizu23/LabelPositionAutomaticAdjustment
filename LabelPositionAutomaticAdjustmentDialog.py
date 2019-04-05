# -*- coding: utf-8 -*-

from __future__ import absolute_import

from qgis.PyQt.QtCore import *
from qgis.PyQt.QtWidgets import *
from qgis.PyQt.QtGui import *
from qgis.core import *
from qgis.gui import *
from .ui_LabelPositionAutomaticAdjustment import Ui_LabelPositionAutomaticAdjustment
import sys,os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
from . import AdjustText

class LabelPositionAutomaticAdjustmentDialog(QDialog):
    def __init__(self,iface):
        QDialog.__init__(self)
        self.iface = iface
        # Set up the user interface from Designer.
        self.ui = Ui_LabelPositionAutomaticAdjustment()
        self.ui.setupUi(self)
        self.statusBox = self.ui.textBrowser
        self.statusBox.setText(u"処理を選んでください")

    def initialize_label(self):
        self.canvas = self.iface.mapCanvas()
        self.layer = self.iface.activeLayer()
        if self.layer is None:
            self.statusBox.setText(u"レイヤを選択してください！")
            return
        self.statusBox.setText(u"処理中…")
        #スタイル設定
        radioname = self.ui.buttonGroup.checkedButton().objectName()
        if radioname == "radioButton1":
            qml = ""
        elif radioname == "radioButton2":
            qml = os.path.dirname(os.path.abspath(__file__)) + os.path.sep + "label.qml"
        elif radioname == "radioButton3":
            qml,_ = QFileDialog().getOpenFileName(self, 'Select qml', '', 'QML files (*.qml)')
            if qml == "":
                return
        if qml != "":
            AdjustText.set_label_style(qml, self.layer)
            self.iface.layerTreeView().refreshLayerSymbology(self.layer.id())
        #属性追加、ラベル配置設定
        AdjustText.set_position_column(self.layer)
        #ラベル位置をリセット
        AdjustText.reset_label_position(self.layer, self.canvas)
        self.layer.triggerRepaint()
        self.statusBox.setText(u"「ラベル初期設定」完了")

    def adjust_label(self):
        #最初にリセットしてから位置調整
        self.canvas = self.iface.mapCanvas()
        self.layer = self.iface.activeLayer()
        if self.layer is None:
            self.statusBox.setText(u"レイヤを選択してください！")
            return
        self.statusBox.setText(u"処理中…")
        AdjustText.reset_label_position(self.layer, self.canvas)
        self.layer.triggerRepaint()
        QTimer.singleShot(1000, lambda: AdjustText.adjust_text(self.layer, self.canvas))
        self.statusBox.setText(u"「自動調整」完了")

    def reset_label(self):
        #ラベル位置をリセット
        self.canvas = self.iface.mapCanvas()
        self.layer = self.iface.activeLayer()
        if self.layer is None:
            self.statusBox.setText(u"レイヤを選択してください！")
            return
        self.statusBox.setText(u"処理中…")
        AdjustText.reset_label_position(self.layer, self.canvas)
        self.layer.triggerRepaint()
        self.statusBox.setText(u"「位置リセット」完了")
