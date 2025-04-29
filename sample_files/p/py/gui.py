from tkinter import *
import tkinter.ttk
import tkinter.filedialog
import csv
import pandas as pd
import time
import sys
import os
import math
from sys import argv
from tkinter.ttk import *
from itertools import islice


class Application(Frame):
    def __init__(self, master = None):
        Frame.__init__(self,master)
        
        #self.grid()
        self.createWidgets()
        self.master = master
        

    def createWidgets(self):
        self.v = StringVar()
        self.skip_bad = IntVar()
        
        top = self.winfo_toplevel()
        self.windows = []
        S = Scrollbar(self)
        self.T = Text(self, height=200, width=100, background="white", font="monospace 10")
        S.pack(side=RIGHT, fill=BOTH)
        self.T.pack(side=RIGHT, fill=Y)
        S.config(command=self.T.yview)
        self.T.config(yscrollcommand=S.set)
        browseButton = Button(self, text="Select File...", command=self.fileOpened)
        browseButton.place(x=50, y=75)
        runButton = Button(self, text="Process File...", command=self.readCSV)
        runButton.place(x=50, y=125)
        clearButton = Button(self, text="Clear...", command=self.T.clear())
        clearButton.place(x=50, y=175)
        saveButton = Button(self, text="Save File...", command=self.file_save)
        saveButton.place(x=50, y=225)
        quitButton = Button(self, text="Quit", command=self.quit)
        quitButton.place(x=50, y=255)
        Radiobutton(self, text="Pipe (|)", variable=self.v, value="|").pack(anchor=N)
        Radiobutton(self, text="Comma (,)", variable=self.v, value=",").pack(anchor=N)
        Checkbutton(self, text="Skip bad rows", variable=self.skip_bad).pack(anchor=N)
        self.pack(fill=BOTH, expand=1)

    def fileOpened(self):
        
        self.filename = tkinter.filedialog.askopenfilename()
        self.T.insert(END, "Selected file: " + self.filename + "\n\n" +"First 10 lines of file: \n\n")
        
        f = open(self.filename,"rb")
        with open(self.filename) as f:
            for line in islice(f, 10):
                self.T.insert (END, line)
        
    def readCSV(self):
        
        f = open(self.filename,"rb")
        skip_bad_use = True
        #print "skip bad get is "
        #print self.skip_bad.get()
        if self.skip_bad.get() == 1:
            skip_bad_use=False
        #print "sbu"
        #print skip_bad_use
        delim=self.v.get()
        if self.v.get() == "":
            delim=None
        data = pd.read_csv(f,sep=delim, index_col=False, skipinitialspace=True, encoding='UTF8', parse_dates=True, infer_datetime_format=True, error_bad_lines=skip_bad_use)     
        #data = pd.concat(tp, ignore_index=True)
        if delim==None:
            self.T.insert (END, "\nDeliminer not selected, attempting to guess.\n\n")
        else:
            self.T.insert (END, "\nDelimiter is " + delim + "\n\n")
        file_size=os.path.getsize(self.filename)
        #print file_size
        file_size_human=self.humansize(file_size)
        file_size=str(file_size)
        
        file_name=os.path.basename(self.filename)
        self.T.insert (END, "Started processing " +file_name +" (" + file_size +  " bytes, "+file_size_human +") on " + time.strftime("%m/%d/%Y") + " at " + time.strftime("%I:%M:%S%p.\n"))
        main_frame_len = len(data) #read data into a frame
        self.T.insert (END, '\nFinished reading in data, starting to process ' + str(main_frame_len) + ' rows.\n')

        for c in data.columns: #for each column do the following
            self.T.insert (END,  "\nProcessing column " + c + "\n\n")
            self.T.insert (END,  "Printing top 10 distinct results in column " + c + ". \n")
            counts = data[c].value_counts(dropna=False) #frequency count, include blank cells as nan
            counts=counts.head(10) # comment out to print all distinct values, otherwise, 
            self.T.insert (END,  counts) #print 10 most frequent values and their counts
            
            self.T.insert (END,  "\n\nLowest 5 results in column " + c + ":\n")
            coluniq = pd.unique(data[c].ravel()) #get unique values from column
            list=coluniq.tolist() #convert to simple array
            list.sort(reverse=True) #sort array
            tail=list[-5:] #take first 5 elements of array
            tail.sort() # sort again
            self.T.insert (END,  '\n'.join(map(str, tail))) #print

            self.T.insert (END,  "\n\nHighest 5 results in column " + c + ":\n")
            coluniq = pd.unique(data[c].ravel())
            list=coluniq.tolist()
            list.sort()
            head=list[-5:]
            self.T.insert (END,  '\n'.join(map(str, head)))

            nulls=data[c].isnull().sum()
            self.T.insert (END,  "\n\nNumber of cells with no data: " + str(nulls) + "\n")
            
            
        self.T.insert (END, "\n\nFinished processing " +file_name +" (" + file_size +  " bytes, "+file_size_human +") on " + time.strftime("%m/%d/%Y") + " at " + time.strftime("%I:%M:%S%p.\n"))
        self.T.see(END)
        
    def btnClick(self):
        pass
    
    def file_save(self): 
            # Returns the saved file
            file = tkinter.filedialog.asksaveasfile(mode='w')
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
root.geometry("1024x768+300+300")
root.title("Desktop AERIC")
root.style = Style()
root.style.theme_use("clam")
app = Application(root)
root.mainloop() 
