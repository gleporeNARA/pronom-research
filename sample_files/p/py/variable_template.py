#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal, Zoned_Decimal, Packed_Decimal1
import codecs
import csv

f = open("96_out.csv", "w")
f.write("Record length|Filler1|Base/Reference code|City/airport (1) numeric code|City/airport (1) alpha code|Repeating segment count|City/airport (2) numeric code|City/airport (2) alpha code|Filler2|Year of reporting date|Month of reporting date|Carrier operation code|Carrier name code|Number of downline points|Service class|Aircraft group code|Aircraft type code|Aircraft cabin configuration code|Flight number|Itinerary number|Subsidy eligible/ineligable code|Reference flight number|Filler3|Service segment position number|Segment distance|Filler4|Revenue aircraft departures secheduled|Schedule revenue aircraft departures performed|Revenue aircraft departures performed - scheduled|Revenue aircraft departures performed - extra section|Revenue aircraft miles scheduled|Revenue aircraft miles flown - Scheduled|Revenue aircraft miles flown - extra section|Seats available - 1st class|Seats available - coach|Tons available|Revenue aircraft hours (airborne)|Revenue aircraft hours (ramp to ramp)|Rev. passengers transported - 1st class|Rev. passengers transported - coach|Nonrevenue passengers transported|Revenue tons transported - passenger|Revenue tons transported U.S. mail - priority|Revenue tons transported U.S. mail - nonpriority|Revenue tons transported - foreign mail|Revenue tons transported - express|Revenue tons transported - freight|Nonrevenue tons transported|Nonrevenue passengers enplaned|Revenue passengers enplaned - 1st class|Revenue passengers enplaned - coach|Revenue cargo tons enplaned U.S. mail - priority|Revenue cargo tons enplaned U.S. mail - nonpriority|Revenue cargo tons enplaned - foreign mail|Revenue cargo tons enplaned - express|Revenue cargo tons enplaned - freight|Filler5|City/airport (1) name|City/airport (2) name|Error indicators|Filler61|Downline city/airport1|Revenue passengers deplaning - First class1|Revenue passengers deplaning - Coach1|Revenue cargo tons deplaning - U.S. mail - priority1|Revenue cargo tons deplaning - U.S. mail - nonpriority1|Revenue cargo tons deplaning - Foreign mail1|Revenue cargo tons deplaning - Express1|Revenue cargo tons deplaning - Freight1|Filler62|Downline city/airport2|Revenue passengers deplaning - First class2|Revenue passengers deplaning - Coach2|Revenue cargo tons deplaning - U.S. mail - priority2|Revenue cargo tons deplaning - U.S. mail - nonpriority2|Revenue cargo tons deplaning - Foreign mail2|Revenue cargo tons deplaning - Express2|Revenue cargo tons deplaning - Freight2|Filler63|Downline city/airport3|Revenue passengers deplaning - First class3|Revenue passengers deplaning - Coach3|Revenue cargo tons deplaning - U.S. mail - priority3|Revenue cargo tons deplaning - U.S. mail - nonpriority3|Revenue cargo tons deplaning - Foreign mail3|Revenue cargo tons deplaning - Express3|Revenue cargo tons deplaning - Freight3|Filler64|Downline city/airport4|Revenue passengers deplaning - First class4|Revenue passengers deplaning - Coach4|Revenue cargo tons deplaning - U.S. mail - priority4|Revenue cargo tons deplaning - U.S. mail - nonpriority4|Revenue cargo tons deplaning - Foreign mail4|Revenue cargo tons deplaning - Express4|Revenue cargo tons deplaning - Freight4|Filler65|Downline city/airport5|Revenue passengers deplaning - First class5|Revenue passengers deplaning - Coach5|Revenue cargo tons deplaning - U.S. mail - priority5|Revenue cargo tons deplaning - U.S. mail - nonpriority5|Revenue cargo tons deplaning - Foreign mail5|Revenue cargo tons deplaning - Express5|Revenue cargo tons deplaning - Freight5|Filler66|Downline city/airport6|Revenue passengers deplaning - First class6|Revenue passengers deplaning - Coach6|Revenue cargo tons deplaning - U.S. mail - priority6|Revenue cargo tons deplaning - U.S. mail - nonpriority6|Revenue cargo tons deplaning - Foreign mail6|Revenue cargo tons deplaning - Express6|Revenue cargo tons deplaning - Freight6|Filler67|Downline city/airport7|Revenue passengers deplaning - First class7|Revenue passengers deplaning - Coach7|Revenue cargo tons deplaning - U.S. mail - priority7|Revenue cargo tons deplaning - U.S. mail - nonpriority7|Revenue cargo tons deplaning - Foreign mail7|Revenue cargo tons deplaning - Express7|Revenue cargo tons deplaning - Freight7|Filler68|Downline city/airport8|Revenue passengers deplaning - First class8|Revenue passengers deplaning - Coach8|Revenue cargo tons deplaning - U.S. mail - priority8|Revenue cargo tons deplaning - U.S. mail - nonpriority8|Revenue cargo tons deplaning - Foreign mail8|Revenue cargo tons deplaning - Express8|Revenue cargo tons deplaning - Freight8|Filler69|Downline city/airport9|Revenue passengers deplaning - First class9|Revenue passengers deplaning - Coach9|Revenue cargo tons deplaning - U.S. mail - priority9|Revenue cargo tons deplaning - U.S. mail - nonpriority9|Revenue cargo tons deplaning - Foreign mail9|Revenue cargo tons deplaning - Express9|Revenue cargo tons deplaning - Freight9|Filler70|Downline city/airport10|Revenue passengers deplaning - First class10|Revenue passengers deplaning - Coach10|Revenue cargo tons deplaning - U.S. mail - priority10|Revenue cargo tons deplaning - U.S. mail - nonpriority10|Revenue cargo tons deplaning - Foreign mail10|Revenue cargo tons deplaning - Express10|Revenue cargo tons deplaning - Freight10\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
for line in Lines:
    #f.write("\nLine length is " + str(len(line))+"\n")
    count += 1
    COL1=line[0:4]
    #print("COL1 is " + str(COL1))
    f.write(str(int(COL1, 16)))
    f.write("|")
    COL2=line[4:8]
    f.write(str(COL2))
    f.write("|")
    COL3=bytes.fromhex(line[8:10]).decode('cp500')
    f.write(str(COL3))
    f.write("|")
    COL4=line[10:20]
    f.write(Packed_Decimal1(COL4))
    f.write("|")
    COL5=bytes.fromhex(line[20:26]).decode('cp500')
    f.write(str(COL5))
    f.write("|")
    COL6=bytes.fromhex(line[26:30]).decode('cp500')
    f.write(str(COL6))
    f.write("|")
    COL7=line[30:40]
    f.write(Packed_Decimal1(COL7))
    f.write("|")
    COL8=bytes.fromhex(line[40:46]).decode('cp500')
    f.write(str(COL8))
    f.write("|")
    COL9=bytes.fromhex(line[46:50]).decode('cp500')
    f.write(str(COL9))
    f.write("|")
    COL10=bytes.fromhex(line[50:54]).decode('cp500')
    f.write(str(COL10))
    f.write("|")
    COL11=bytes.fromhex(line[54:58]).decode('cp500')
    f.write(str(COL11))
    f.write("|")
    COL12=bytes.fromhex(line[58:62]).decode('cp500')
    f.write(str(COL12))
    f.write("|")
    COL13=bytes.fromhex(line[62:68]).decode('cp500')
    f.write(str(COL13))
    f.write("|")
    COL14=bytes.fromhex(line[68:72]).decode('cp500')
    f.write(str(COL14))
    f.write("|")
    COL15=bytes.fromhex(line[72:74]).decode('cp500')
    f.write(str(COL15))
    f.write("|")
    COL16=bytes.fromhex(line[74:76]).decode('cp500')
    f.write(str(COL16))
    f.write("|")
    COL17=bytes.fromhex(line[76:80]).decode('cp500')
    f.write(str(COL17))
    f.write("|")
    COL18=bytes.fromhex(line[80:82]).decode('cp500')
    f.write(str(COL18))
    f.write("|")
    COL19=bytes.fromhex(line[82:90]).decode('cp500')
    f.write(str(COL19))
    f.write("|")
    COL20=bytes.fromhex(line[90:92]).decode('cp500')
    f.write(str(COL20))
    f.write("|")
    COL21=bytes.fromhex(line[92:94]).decode('cp500')
    f.write(str(COL21))
    f.write("|")
    COL22=bytes.fromhex(line[94:102]).decode('cp500')
    f.write(str(COL22))
    f.write("|")
    COL23=bytes.fromhex(line[102:106]).decode('cp500')
    f.write(str(COL23))
    f.write("|")
    COL24=bytes.fromhex(line[106:110]).decode('cp500')
    f.write(str(COL24))
    f.write("|")
    COL25=line[110:116]
    f.write(Packed_Decimal1(COL25))
    f.write("|")
    COL26=bytes.fromhex(line[116:144]).decode('cp500')
    f.write(str(COL26))
    f.write("|")
    COL27=line[144:156]
    f.write(Packed_Decimal1(COL27))
    f.write("|")
    COL28=line[156:168]
    f.write(Packed_Decimal1(COL28))
    f.write("|")
    COL29=line[168:180]
    f.write(Packed_Decimal1(COL29))
    f.write("|")
    COL30=line[180:192]
    f.write(Packed_Decimal1(COL30))
    f.write("|")
    COL31=line[192:204]
    f.write(Packed_Decimal1(COL31))
    f.write("|")
    COL32=line[204:216]
    f.write(Packed_Decimal1(COL32))
    f.write("|")
    COL33=line[216:228]
    f.write(Packed_Decimal1(COL33))
    f.write("|")
    COL34=line[228:240]
    f.write(Packed_Decimal1(COL34))
    f.write("|")
    COL35=line[240:252]
    f.write(Packed_Decimal1(COL35))
    f.write("|")
    COL36=line[252:264]
    f.write(Packed_Decimal1(COL36))
    f.write("|")
    COL37=line[264:276]
    f.write(Packed_Decimal1(COL37))
    f.write("|")
    COL38=line[276:288]
    f.write(Packed_Decimal1(COL38))
    f.write("|")
    COL39=line[288:300]
    f.write(Packed_Decimal1(COL39))
    f.write("|")
    COL40=line[300:312]
    f.write(Packed_Decimal1(COL40))
    f.write("|")
    COL41=line[312:324]
    f.write(Packed_Decimal1(COL41))
    f.write("|")
    COL42=line[324:336]
    f.write(Packed_Decimal1(COL42))
    f.write("|")
    COL43=line[336:348]
    f.write(Packed_Decimal1(COL43))
    f.write("|")
    COL44=line[348:360]
    f.write(Packed_Decimal1(COL44))
    f.write("|")
    COL45=line[360:372]
    f.write(Packed_Decimal1(COL45))
    f.write("|")
    COL46=line[372:384]
    f.write(Packed_Decimal1(COL46))
    f.write("|")
    COL47=line[384:396]
    f.write(Packed_Decimal1(COL47))
    f.write("|")
    COL48=line[396:408]
    f.write(Packed_Decimal1(COL48))
    f.write("|")
    COL49=line[408:420]
    f.write(Packed_Decimal1(COL49))
    f.write("|")
    COL50=line[420:432]
    f.write(Packed_Decimal1(COL50))
    f.write("|")
    COL51=line[432:444]
    f.write(Packed_Decimal1(COL51))
    f.write("|")
    COL52=line[444:456]
    f.write(Packed_Decimal1(COL52))
    f.write("|")
    COL53=line[456:468]
    f.write(Packed_Decimal1(COL53))
    f.write("|")
    COL54=line[468:480]
    f.write(Packed_Decimal1(COL54))
    f.write("|")
    COL55=line[480:492]
    f.write(Packed_Decimal1(COL55))
    f.write("|")
    COL56=line[492:504]
    f.write(Packed_Decimal1(COL56))
    f.write("|")
    COL57=bytes.fromhex(line[504:520]).decode('cp500')
    f.write(str(COL57))
    f.write("|")
    COL58=bytes.fromhex(line[520:560]).decode('cp500')
    f.write(str(COL58))
    f.write("|")
    COL59=bytes.fromhex(line[560:600]).decode('cp500')
    f.write(str(COL59))
    f.write("|")
    COL60=bytes.fromhex(line[600:648]).decode('cp500')
    f.write(str(COL60))
    f.write("|")
    
    
        
    remaining_line=str(line[648:]).replace('\n', '')
    #print("line |" + str(remaining_line) + "| has " + str(len(remaining_line)))
    
    
    start=648
    increment=80
    count=0
    for i in range(10):
        
        if len(line[start:]) > 1:
            start=648+(increment*count)
            #print("line length is " + str(len(line[start:])))
            #print("Value is " + str(line[start:]))
            #print("Start is " + str(start))
            #print("Processing bytes " + str(start) + " to " + str(start+increment))
            #print("Count is " + str(count))
            count=count+1
            
            COL61=bytes.fromhex(line[start:start+4]).decode('cp500')
            #print("filler is |" + str(COL61)+"|")
            f.write(str(COL61))
            f.write("|")
            COL62=bytes.fromhex(line[start+4:start+10]).decode('cp500')
            #print("downline city is |" + str(COL62)+"|")
            f.write(str(COL62))
            f.write("|")
            COL63=line[start+10:start+20]
            #print("rev first is |" + str(COL63)+"|")
            f.write(Packed_Decimal1(COL63))
            f.write("|")
            COL64=line[start+20:start+30]
            #print("rev coach is |" + str(COL64)+"|")
            f.write(Packed_Decimal1(COL64))
            f.write("|")
            COL65=line[start+30:start+40]
            #print("rev cargo priority is |" + str(COL65)+"|")
            f.write(Packed_Decimal1(COL65))
            f.write("|")
            COL66=line[start+40:start+50]
            #print("rev cargo non priority is |" + str(COL66)+"|")
            f.write(Packed_Decimal1(COL66))
            f.write("|")
            COL67=line[start+50:start+60]
            #print("rev foreign is |" + str(COL67)+"|")
            f.write(Packed_Decimal1(COL67))
            f.write("|")
            COL68=line[start+60:start+70]
            #print("rev express is |" + str(COL68)+"|")
            f.write(Packed_Decimal1(COL68))
            f.write("|")
            COL69=line[start+70:start+80]
            #print("rev freight is |" + str(COL69)+"|")
            f.write(Packed_Decimal1(COL69))
            f.write("|")
    
    ##print(len(line[278:]))
    
    #for i in range(10):
            
        #start=278+(increment*count)
        ##print("line length is " + str(len(line[start:])))
        ##print("Value is " + str(line[start:]))
        ##print("Start is " + str(start))
        ##print("Processing bytes " + str(start) + " to " + str(start+32))
        ##print("Count is " + str(count))
        #count=count+1
        
        #if len(line[start:]) > 2:
            
            #if line[start:start+2] != "5e":
                #DC=bytes.fromhex(line[start:start+4]).decode('cp500')
                #f.write(str(DC))
                #f.write("|")
                
                #DCT=bytes.fromhex(line[start+4:start+6]).decode('cp500')
                #f.write(str(DCT))
                #f.write("|")
                
                #DCCD=line[start+6:start+12]
                #f.write(Packed_Decimal1(DCCD))
                #f.write("|")
                
                #DCAC=bytes.fromhex(line[start+12:start+18]).decode('cp500')
                #f.write(str(DCAC))
                #f.write("|")
                
                #DCOBP=bytes.fromhex(line[start+18:start+20]).decode('cp500')
                #f.write(str(DCOBP))
                #f.write("|")
                
                #DCCNC=line[start+20:start+26]
                #f.write(Packed_Decimal1(DCCNC))
                #f.write("|")
                
                #DCAI=line[start+26:start+28]
                #f.write(Packed_Decimal1(DCAI))
                #f.write("|")
                
                #DCWAC=line[start+28:start+32]
                #f.write(Packed_Decimal1(DCWAC))
                #f.write("|")    

    f.write("\n")

f.close()

        
    
    
