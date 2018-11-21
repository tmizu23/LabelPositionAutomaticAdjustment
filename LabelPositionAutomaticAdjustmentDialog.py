# -*- coding: utf-8 -*-
"""
/***************************************************************************
 OppaiDialog
                                 A QGIS plugin
 This is Oppai Plugin.
                             -------------------
        begin                : 2013-12-20
        copyright            : (C) 2013 by Takayuki Miutani
        email                : mizutani.takayuki+oppai@gmail.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""

from PyQt4 import QtCore, QtGui
from ui_LabelPositionAutomaticAdjustment import Ui_LabelPositionAutomaticAdjustment
from PyQt4.QtCore import QTimer

from qgis.core import *
import sys,os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
import AdjustText

class LabelPositionAutomaticAdjustmentDialog(QtGui.QDialog):
    def __init__(self,iface):
        QtGui.QDialog.__init__(self)
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
            qml = False
        elif radioname == "radioButton2":
            qml = os.path.dirname(os.path.abspath(__file__)) + os.path.sep + "label.qml"
        elif radioname == "radioButton3":
            qml = QtGui.QFileDialog().getOpenFileName(self, 'Select qml', '', 'QML files (*.qml)')

        if qml:
            AdjustText.set_label_style(qml, self.layer)

        #属性追加、ラベル配置設定
        AdjustText.add_label_xy_column(self.layer)
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
