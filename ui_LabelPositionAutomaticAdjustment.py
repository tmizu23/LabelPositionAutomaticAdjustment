# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'ui_LabelPositionAutomaticAdjustment.ui'
#
# Created: Wed Nov 21 20:28:01 2018
#      by: PyQt4 UI code generator 4.10.2
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    def _fromUtf8(s):
        return s

try:
    _encoding = QtGui.QApplication.UnicodeUTF8
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig, _encoding)
except AttributeError:
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig)

class Ui_LabelPositionAutomaticAdjustment(object):
    def setupUi(self, LabelPositionAutomaticAdjustment):
        LabelPositionAutomaticAdjustment.setObjectName(_fromUtf8("LabelPositionAutomaticAdjustment"))
        LabelPositionAutomaticAdjustment.setWindowModality(QtCore.Qt.NonModal)
        LabelPositionAutomaticAdjustment.setEnabled(True)
        LabelPositionAutomaticAdjustment.resize(464, 241)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Maximum, QtGui.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(LabelPositionAutomaticAdjustment.sizePolicy().hasHeightForWidth())
        LabelPositionAutomaticAdjustment.setSizePolicy(sizePolicy)
        LabelPositionAutomaticAdjustment.setMaximumSize(QtCore.QSize(16777215, 16777215))
        LabelPositionAutomaticAdjustment.setAutoFillBackground(False)
        LabelPositionAutomaticAdjustment.setStyleSheet(_fromUtf8(""))
        self.buttonBox = QtGui.QDialogButtonBox(LabelPositionAutomaticAdjustment)
        self.buttonBox.setGeometry(QtCore.QRect(380, 210, 81, 32))
        self.buttonBox.setStyleSheet(_fromUtf8(""))
        self.buttonBox.setStandardButtons(QtGui.QDialogButtonBox.Close)
        self.buttonBox.setObjectName(_fromUtf8("buttonBox"))
        self.label = QtGui.QLabel(LabelPositionAutomaticAdjustment)
        self.label.setGeometry(QtCore.QRect(30, 10, 51, 20))
        self.label.setObjectName(_fromUtf8("label"))
        self.textBrowser = QtGui.QTextBrowser(LabelPositionAutomaticAdjustment)
        self.textBrowser.setGeometry(QtCore.QRect(90, 10, 351, 31))
        self.textBrowser.setStyleSheet(_fromUtf8(""))
        self.textBrowser.setObjectName(_fromUtf8("textBrowser"))
        self.pushButton1 = QtGui.QPushButton(LabelPositionAutomaticAdjustment)
        self.pushButton1.setGeometry(QtCore.QRect(30, 100, 131, 31))
        self.pushButton1.setObjectName(_fromUtf8("pushButton1"))
        self.pushButton3 = QtGui.QPushButton(LabelPositionAutomaticAdjustment)
        self.pushButton3.setGeometry(QtCore.QRect(170, 190, 131, 31))
        self.pushButton3.setObjectName(_fromUtf8("pushButton3"))
        self.pushButton2 = QtGui.QPushButton(LabelPositionAutomaticAdjustment)
        self.pushButton2.setGeometry(QtCore.QRect(30, 190, 131, 31))
        self.pushButton2.setObjectName(_fromUtf8("pushButton2"))
        self.label_2 = QtGui.QLabel(LabelPositionAutomaticAdjustment)
        self.label_2.setGeometry(QtCore.QRect(30, 160, 221, 20))
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.label_3 = QtGui.QLabel(LabelPositionAutomaticAdjustment)
        self.label_3.setGeometry(QtCore.QRect(30, 50, 421, 20))
        self.label_3.setObjectName(_fromUtf8("label_3"))
        self.widget = QtGui.QWidget(LabelPositionAutomaticAdjustment)
        self.widget.setGeometry(QtCore.QRect(180, 80, 217, 74))
        self.widget.setObjectName(_fromUtf8("widget"))
        self.verticalLayout = QtGui.QVBoxLayout(self.widget)
        self.verticalLayout.setMargin(0)
        self.verticalLayout.setObjectName(_fromUtf8("verticalLayout"))
        self.radioButton1 = QtGui.QRadioButton(self.widget)
        self.radioButton1.setChecked(True)
        self.radioButton1.setObjectName(_fromUtf8("radioButton1"))
        self.buttonGroup = QtGui.QButtonGroup(LabelPositionAutomaticAdjustment)
        self.buttonGroup.setObjectName(_fromUtf8("buttonGroup"))
        self.buttonGroup.addButton(self.radioButton1)
        self.verticalLayout.addWidget(self.radioButton1)
        self.radioButton2 = QtGui.QRadioButton(self.widget)
        self.radioButton2.setObjectName(_fromUtf8("radioButton2"))
        self.buttonGroup.addButton(self.radioButton2)
        self.verticalLayout.addWidget(self.radioButton2)
        self.radioButton3 = QtGui.QRadioButton(self.widget)
        self.radioButton3.setObjectName(_fromUtf8("radioButton3"))
        self.buttonGroup.addButton(self.radioButton3)
        self.verticalLayout.addWidget(self.radioButton3)

        self.retranslateUi(LabelPositionAutomaticAdjustment)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("rejected()")), LabelPositionAutomaticAdjustment.reject)
        QtCore.QObject.connect(self.pushButton1, QtCore.SIGNAL(_fromUtf8("pressed()")), LabelPositionAutomaticAdjustment.initialize_label)
        QtCore.QObject.connect(self.pushButton2, QtCore.SIGNAL(_fromUtf8("pressed()")), LabelPositionAutomaticAdjustment.adjust_label)
        QtCore.QObject.connect(self.pushButton3, QtCore.SIGNAL(_fromUtf8("pressed()")), LabelPositionAutomaticAdjustment.reset_label)
        QtCore.QMetaObject.connectSlotsByName(LabelPositionAutomaticAdjustment)

    def retranslateUi(self, LabelPositionAutomaticAdjustment):
        LabelPositionAutomaticAdjustment.setWindowTitle(_translate("LabelPositionAutomaticAdjustment", "LabelPositionAutomaticAdjustment", None))
        self.label.setText(_translate("LabelPositionAutomaticAdjustment", "メッセージ", None))
        self.pushButton1.setText(_translate("LabelPositionAutomaticAdjustment", "ラベルの初期設定", None))
        self.pushButton3.setText(_translate("LabelPositionAutomaticAdjustment", "位置リセット", None))
        self.pushButton2.setText(_translate("LabelPositionAutomaticAdjustment", "自動調整", None))
        self.label_2.setText(_translate("LabelPositionAutomaticAdjustment", "表示領域のラベル位置を調整・リセットします", None))
        self.label_3.setText(_translate("LabelPositionAutomaticAdjustment", "選択レイヤの属性とラベル配置を初期設定します。ラベルの表示スタイルも設定します。", None))
        self.radioButton1.setText(_translate("LabelPositionAutomaticAdjustment", "スタイル設定済み", None))
        self.radioButton2.setText(_translate("LabelPositionAutomaticAdjustment", "デフォルトスタイルを適用\n"
"（ラベル列：種名、背景・引き出し線あり）", None))
        self.radioButton3.setText(_translate("LabelPositionAutomaticAdjustment", "qmlを読み込む", None))

