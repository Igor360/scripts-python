#! /usr/bin/env python3
# -*- coding: utf-8 -*-  

from PyQt5.QtCore import *
from PyQt5 import QtGui
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QMessageBox, QLineEdit
from PyQt5.QtWidgets import QMainWindow, QGridLayout, QWidget, QTableWidget, QTableWidgetItem, QFormLayout
import sys
import MySQLdb as mdb
 
 
class Window(QWidget):
    

    def __init__(self):
        super().__init__()
 
        self.title = "Sensors data"
        self.top = 200
        self.left = 500
        self.width = 400
        self.height = 300
        self.layout = QGridLayout()           
        self.setLayout(self.layout)
        self.edit = QLineEdit() 
        self.table = QTableWidget()
        self.InitWindow()
 
 
    def InitWindow(self):
        self.edit.setPlaceholderText("Search")
        self.edit.returnPressed.connect(self.Search)
        button = QPushButton('Reload', self)
        button.clicked.connect(self.DBConnection)
        self.layout.addWidget(self.edit)
        self.layout.addWidget(button)

        self.setWindowIcon(QtGui.QIcon("icon.png"))
        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)
        self.show()
 
    def LoadData(self, rows):

        self.table.setColumnCount(3)     # Устанавливаем три колонки
        
        self.table.setHorizontalHeaderLabels(["Sensor", "Type", "Value"])
      
        self.table.setRowCount(len(rows)) # устанаавливаем количество строк в таблице
        row_num = 0
        # Додает елементи в таблиу
        for row in rows:
            (name, code, value) = row
            self.table.setItem(row_num, 0, QTableWidgetItem(code))
            self.table.setItem(row_num, 1, QTableWidgetItem(name))
            self.table.setItem(row_num, 2, QTableWidgetItem(value))
            row_num+=1
        # делаем ресайз колонок по содержимому
        self.table.resizeColumnsToContents()
        self.layout.addWidget(self.table, 100, 0)
 
    def DBConnection(self):
        try:
            db = mdb.connect('localhost', 'root', '1234', 'pyqt5')
            cur = db.cursor()
            sql = "SELECT name, code, value FROM sensor_data;"
            cur.execute(sql)
            rows = cur.fetchall()
            self.LoadData(rows)
            QMessageBox.about(self, 'Connection', 'Data reloaded Successfully')
        except mdb.Error as e:
            print(e)
            QMessageBox.about(self, 'Connection', 'Failed To Reload Database')

 
    def Search(self):
        try:
            db = mdb.connect('localhost', 'root', '1234', 'pyqt5')
            cur = db.cursor()
            sql = "SELECT name, code, value FROM sensor_data WHERE name LIKE '%{0}%';".format(self.edit.text())
            cur.execute(sql)
            rows = cur.fetchall()
            self.LoadData(rows)
            QMessageBox.about(self, 'Connection', 'Data searched Successfully')
        except mdb.Error as e:
            print(e)
            QMessageBox.about(self, 'Connection', 'Failed To search data')

if __name__ == '__main__':
 
    App = QApplication(sys.argv)
    window = Window()
    sys.exit(App.exec_())
