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
from .LabelPositionAutomaticAdjustmentDialog import LabelPositionAutomaticAdjustmentDialog
import os.path

class LabelPositionAutomaticAdjustment(object):

    def __init__(self, iface):
        # Save reference to the QGIS interface
        self.iface = iface
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value("locale/userLocale")[0:2]
        localePath = os.path.join(self.plugin_dir, 'i18n', 'oppai_{}.qm'.format(locale))

        if os.path.exists(localePath):
            self.translator = QTranslator()
            self.translator.load(localePath)

            if qVersion() > '4.3.3':
                QCoreApplication.installTranslator(self.translator)

        # Create the dialog (after translation) and keep reference
        self.dlg = LabelPositionAutomaticAdjustmentDialog(self.iface)

    def initGui(self):
        # Create action that will start plugin configuration
        self.action = QAction(
            QIcon(":/plugins/LabelPositionAutomaticAdjustment/icon.png"),
            u"LabelPositionAutomaticAdjustment", self.iface.mainWindow())
        # connect the action to the run method
        self.action.triggered.connect(self.run)

        # Add toolbar button and menu item
        self.iface.mainWindow().findChild(QToolBar, 'mLabelToolBar').addAction(self.action)
        self.iface.addPluginToMenu(u"&LabelPositionAutomaticAdjustment", self.action)


    def unload(self):
        # Remove the plugin menu item and icon
        self.iface.removePluginMenu(u"&LabelPositionAutomaticAdjustment", self.action)
        self.iface.removeToolBarIcon(self.action)

    # run method that performs all the real work
    def run(self):
        #pydevd.settrace('localhost', port=53100, stdoutToServer=True, stderrToServer=True, suspend=False)
        # show the dialog
        self.dlg.show()
        # Run the dialog event loop
        result = self.dlg.exec_()
        # See if OK was pressed
        if result == 1:
            # do something useful (delete the line containing pass and
            # substitute with your code)
            pass
        self.dlg.ui.textBrowser.setText(u"処理を選んでください")
