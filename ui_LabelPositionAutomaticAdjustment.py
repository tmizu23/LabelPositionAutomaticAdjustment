# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'ui_LabelPositionAutomaticAdjustment.ui'
#
# Created by: PyQt5 UI code generator 5.11.3
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_LabelPositionAutomaticAdjustment(object):
    def setupUi(self, LabelPositionAutomaticAdjustment):
        LabelPositionAutomaticAdjustment.setObjectName("LabelPositionAutomaticAdjustment")
        LabelPositionAutomaticAdjustment.setWindowModality(QtCore.Qt.NonModal)
        LabelPositionAutomaticAdjustment.setEnabled(True)
        LabelPositionAutomaticAdjustment.resize(464, 241)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Maximum, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(LabelPositionAutomaticAdjustment.sizePolicy().hasHeightForWidth())
        LabelPositionAutomaticAdjustment.setSizePolicy(sizePolicy)
        LabelPositionAutomaticAdjustment.setMaximumSize(QtCore.QSize(16777215, 16777215))
        LabelPositionAutomaticAdjustment.setAutoFillBackground(False)
        LabelPositionAutomaticAdjustment.setStyleSheet("")
        self.buttonBox = QtWidgets.QDialogButtonBox(LabelPositionAutomaticAdjustment)
        self.buttonBox.setGeometry(QtCore.QRect(380, 210, 81, 32))
        self.buttonBox.setStyleSheet("")
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Close)
        self.buttonBox.setObjectName("buttonBox")
        self.label = QtWidgets.QLabel(LabelPositionAutomaticAdjustment)
        self.label.setGeometry(QtCore.QRect(30, 10, 51, 20))
        self.label.setObjectName("label")
        self.textBrowser = QtWidgets.QTextBrowser(LabelPositionAutomaticAdjustment)
        self.textBrowser.setGeometry(QtCore.QRect(90, 10, 351, 31))
        self.textBrowser.setStyleSheet("")
        self.textBrowser.setObjectName("textBrowser")
        self.pushButton1 = QtWidgets.QPushButton(LabelPositionAutomaticAdjustment)
        self.pushButton1.setGeometry(QtCore.QRect(30, 100, 131, 31))
        self.pushButton1.setObjectName("pushButton1")
        self.pushButton3 = QtWidgets.QPushButton(LabelPositionAutomaticAdjustment)
        self.pushButton3.setGeometry(QtCore.QRect(170, 190, 131, 31))
        self.pushButton3.setObjectName("pushButton3")
        self.pushButton2 = QtWidgets.QPushButton(LabelPositionAutomaticAdjustment)
        self.pushButton2.setGeometry(QtCore.QRect(30, 190, 131, 31))
        self.pushButton2.setObjectName("pushButton2")
        self.label_2 = QtWidgets.QLabel(LabelPositionAutomaticAdjustment)
        self.label_2.setGeometry(QtCore.QRect(30, 160, 221, 20))
        self.label_2.setObjectName("label_2")
        self.label_3 = QtWidgets.QLabel(LabelPositionAutomaticAdjustment)
        self.label_3.setGeometry(QtCore.QRect(30, 50, 421, 20))
        self.label_3.setObjectName("label_3")
        self.widget = QtWidgets.QWidget(LabelPositionAutomaticAdjustment)
        self.widget.setGeometry(QtCore.QRect(180, 80, 217, 74))
        self.widget.setObjectName("widget")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.widget)
        self.verticalLayout.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout.setObjectName("verticalLayout")
        self.radioButton1 = QtWidgets.QRadioButton(self.widget)
        self.radioButton1.setChecked(True)
        self.radioButton1.setObjectName("radioButton1")
        self.buttonGroup = QtWidgets.QButtonGroup(LabelPositionAutomaticAdjustment)
        self.buttonGroup.setObjectName("buttonGroup")
        self.buttonGroup.addButton(self.radioButton1)
        self.verticalLayout.addWidget(self.radioButton1)
        self.radioButton2 = QtWidgets.QRadioButton(self.widget)
        self.radioButton2.setObjectName("radioButton2")
        self.buttonGroup.addButton(self.radioButton2)
        self.verticalLayout.addWidget(self.radioButton2)
        self.radioButton3 = QtWidgets.QRadioButton(self.widget)
        self.radioButton3.setObjectName("radioButton3")
        self.buttonGroup.addButton(self.radioButton3)
        self.verticalLayout.addWidget(self.radioButton3)

        self.retranslateUi(LabelPositionAutomaticAdjustment)
        self.buttonBox.rejected.connect(LabelPositionAutomaticAdjustment.reject)
        self.pushButton1.pressed.connect(LabelPositionAutomaticAdjustment.initialize_label)
        self.pushButton2.pressed.connect(LabelPositionAutomaticAdjustment.adjust_label)
        self.pushButton3.pressed.connect(LabelPositionAutomaticAdjustment.reset_label)
        QtCore.QMetaObject.connectSlotsByName(LabelPositionAutomaticAdjustment)

    def retranslateUi(self, LabelPositionAutomaticAdjustment):
        _translate = QtCore.QCoreApplication.translate
        LabelPositionAutomaticAdjustment.setWindowTitle(_translate("LabelPositionAutomaticAdjustment", "LabelPositionAutomaticAdjustment"))
        self.label.setText(_translate("LabelPositionAutomaticAdjustment", "メッセージ"))
        self.pushButton1.setText(_translate("LabelPositionAutomaticAdjustment", "ラベルの初期設定"))
        self.pushButton3.setText(_translate("LabelPositionAutomaticAdjustment", "位置リセット"))
        self.pushButton2.setText(_translate("LabelPositionAutomaticAdjustment", "自動調整"))
        self.label_2.setText(_translate("LabelPositionAutomaticAdjustment", "表示領域のラベル位置を調整・リセットします"))
        self.label_3.setText(_translate("LabelPositionAutomaticAdjustment", "選択レイヤの属性とラベル配置を初期設定します。ラベルの表示スタイルも設定します。"))
        self.radioButton1.setText(_translate("LabelPositionAutomaticAdjustment", "スタイル設定済み"))
        self.radioButton2.setText(_translate("LabelPositionAutomaticAdjustment", "デフォルトスタイルを適用\n"
"（ラベル列：種名、背景・引き出し線あり）"))
        self.radioButton3.setText(_translate("LabelPositionAutomaticAdjustment", "qmlを読み込む"))

