from tkinter import *
from tkinter.ttk import *
import tkinter.ttk
from tkinter import filedialog as fd
import time
import sys
import os
import math
#from sys import argv
from itertools import islice
from bs4 import BeautifulSoup

def make_label(master, x, y, h, w, *args, **kwargs):
        f = Frame(master, height=h, width=w)
        f.pack_propagate(0) # don't shrink
        f.place(x=x, y=y)
        label = Label(f, *args, **kwargs)
        label.pack(fill=BOTH, expand=1)
        return label
    
class Application(Frame):
    def __init__(self, master = None):
        Frame.__init__(self,master)
        self.createWidgets()
        self.master = master
            
    def createWidgets(self):
        self.v = StringVar()
        self.skip_bad = IntVar()
        top = self.winfo_toplevel()
        self.windows = []
        S = Scrollbar(self)
        self.T = Text(self, height=200, width=120, background="white", font="monospace 10")
        S.pack(side=RIGHT, fill=BOTH)
        self.T.pack(side=RIGHT, fill=Y)
        S.config(command=self.T.yview)
        self.T.config(yscrollcommand=S.set)
        browseButton = Button(self, text="Select XML file", command=self.dirOpened)
        browseButton.place(x=50, y=25)
        runButton = Button(self, text="Process SIARD file", command=self.processSIARD)
        runButton.place(x=50, y=65)
        clearButton = Button(self, text="Clear", command=self.Clear)
        clearButton.place(x=50, y=105)
        saveButton = Button(self, text="Save Results", command=self.file_save)
        saveButton.place(x=50, y=145)
        quitButton = Button(self, text="Quit", command=self.quit)
        quitButton.place(x=50, y=185)
        make_label(self, 50, 250, 300, 165, text='This tool will extract database information from a valid SIARD file.\nExtracted information will include information gathered at the time of the SIARD creation, as well as a list of every table, table description, column, and column description in the SIARD file.', wraplength=150, justify=LEFT)
        self.pack(fill=BOTH, expand=1)

    def Clear(self): #reset GUI values to default and delete text fields
        self.T.delete(1.0, END)
        
    def dirOpened(self):
        
        self.filename =  fd.askopenfilename(initialdir = "./",title = "Select metadata.xml file",filetypes = (("XML files","*.xml"),("all files","*.*")))
        self.T.insert(END, "Selected file: " + self.filename)

    def processSIARD(self):
                     
        infile = open(self.filename,"r")
        contents = infile.read()
        soup = BeautifulSoup(contents,'xml')
        all_table_count = 0
        table_counter = 0
        column_counter = 0
        file_size=os.path.getsize(self.filename)
        file_size_human=self.humansize(file_size)
        file_size=str(file_size)

        databaseProduct = soup.find('databaseProduct')
        databaseProductText = databaseProduct.text.replace('\r', ' ').replace('\n', ' ')
        
        self.T.insert (END, "\n\nSIARD Database: " + str(soup.find('dbname').text))
        self.T.insert (END, "\nSIARD Description: " + str(soup.find('description').text))
        self.T.insert (END, "\nSIARD Archiver: " + str(soup.find('archiver').text))
        self.T.insert (END, "\nSIARD Archiver Contact: " + str(soup.find('archiverContact').text))
        self.T.insert (END, "\nSIARD Data Owner: " + str(soup.find('dataOwner').text))
        self.T.insert (END, "\nSIARD Data Origin Timespan: " + str(soup.find('dataOriginTimespan').text))
        self.T.insert (END, "\nSIARD Producer Application: " + str(soup.find('producerApplication').text))
        self.T.insert (END, "\nSIARD Date Archived: " + str(soup.find('archivalDate').text))
        self.T.insert (END, "\nSIARD Database Product: " + str(databaseProductText))
        
        for all_tables in soup('table'):
            column_counter = 0
            table_counter += 1
            self.T.insert (END, "\n\nTable Number " +str(table_counter) + ": " + all_tables.findChild('name').text)
            if all_tables.findChild('description'):
                self.T.insert (END, "\n    Table Description: " + all_tables.findChild('description').text)

            columns = all_tables.findChildren('column')
            for child in columns:
                if child.findChild('name'):
                    column_counter += 1
                    self.T.insert (END, "\n    Column Number " +str(column_counter) + ": " + child.findChild('name').text)                

        self.T.insert (END, "\n\nTotal number of tables in the SIARD file is " + str(table_counter) + ".")
        self.T.insert (END, "\n\nFinished processing " + self.filename +" (" + file_size +  " bytes, "+file_size_human +") on " + time.strftime("%m/%d/%Y") + " at " + time.strftime("%I:%M:%S%p.\n"))
        self.T.see(END)
        
    def btnClick(self):
        pass
    
    def file_save(self): 
            file = fd.asksaveasfile(mode='w')
            textoutput = self.T.get(0.0, END) # Gets all the text in the field
            file.write(textoutput.rstrip()) # With blank perameters, this cuts off all whitespace after a line.
            file.write("\n") # Then we add a newline character.
            
    def humansize(self, nbytes):
        suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB']
        if nbytes == 0: return '0 B'
        i = 0
        while nbytes >= 1024 and i < len(suffixes)-1:
            nbytes /= 1024.
            i += 1
        f = ('%.2f' % nbytes).rstrip('0').rstrip('.')
        return '%s %s' % (f, suffixes[i])
    
root = Tk()
root.geometry("1200x1000+100+100")
root.title("SIARD Examining and Extracting Information Tool")
root.style = Style()
root.style.theme_use("clam")
app = Application(root)
root.mainloop() 
