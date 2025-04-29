#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal_Clean
import codecs
import csv

f = open("CHARTER_1976-1979_v2.csv", "w")
f.write("Record Length|Filler|Year of reporting period|Month of reporting period|Quarter of reporting period|Carrier code|Carrier class|Carrier nationality|Flight number|Principal aircraft type|Schedule reference starting page|Schedule reference starting line|Schedule reference stopping page|Schedule reference stopping line|Repeating record segment count|Aircraft miles|Available seat-miles|Revenue passenger-miles|Available ton miles|Revenue ton miles|Revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|Schedule reference page number|Schedule reference line number|Type of charter|Aircraft type|Flight leg type for charter group|Day of departure|Charter group flight leg origin city/airport alpha code|Charter group flight leg origin city/airport numeric code|Charter group flight leg origin airport designator|Charter group flight leg origin world area code|Charter group flight leg destination city/airport alpha code|Charter group flight leg destination city/airport numeric code|Charter group flight leg destination airport designator|Charter group flight leg destination world area code|Charter group flight leg origin world area classification|Charter group flight leg destination world area classification|Country of Charter Origin|Interarea classification|Nonstop distance|Number of seats contracted for|Passengers enplaned|Available tons|Enplaned tons|Charter group flight leg carr. revenue|\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
for line in Lines:
    #f.write("\nLine length is " + str(len(line))+"\n")
    count += 1
    COL1=line[0:4]
    print("COL1 is " + str(int(COL1, 16)))
    f.write(str(int(COL1, 16)))
    f.write("|")
    COL2=line[4:8]
    print("COL2, filler, is " + str(COL1))
    f.write(str(int(COL2, 16)))
    f.write("|")
    COL3=bytes.fromhex(line[8:12]).decode('cp500')
    print("Col3, Report year, is " + str(COL3))
    f.write(str(COL3))
    f.write("|")
    COL4=bytes.fromhex(line[12:16]).decode('cp500')
    print("Col4, Month of report, is " + str(COL4))
    f.write(str(COL4))
    f.write("|")
    COL5=bytes.fromhex(line[16:18]).decode('cp500')
    print("Col5, Quarter of report, is " + str(COL5))
    f.write(str(COL5))
    f.write("|")
    COL6=bytes.fromhex(line[18:24]).decode('cp500')
    print("Col6, Carrier code, is " + str(COL6))
    f.write(str(COL6))
    f.write("|")
    COL7=bytes.fromhex(line[24:26]).decode('cp500')
    print("Col7, Carrier class, is " + str(COL7))
    f.write(str(COL7))
    f.write("|")
    COL8=line[26:30]
    print("Col8, hex is " + str(line[26:30]))
    print("Col8, Carrier nation, is " + str(Packed_Decimal_Clean(COL8)))
    f.write(Packed_Decimal_Clean(COL8))
    f.write("|")
    COL9=bytes.fromhex(line[30:44]).decode('cp500')
    print("Col9, Flight number, is " + str(COL9))
    f.write(str(COL9))
    f.write("|")
    COL10=bytes.fromhex(line[44:50]).decode('cp500')
    print("Col10, Prin aircraft, is " + str(COL10))
    f.write(str(COL10))
    f.write("|")
    COL11=bytes.fromhex(line[50:56]).decode('cp500')
    print("Col11, sch ref start " + str(COL11))
    f.write(str(COL11))
    f.write("|")
    COL12=bytes.fromhex(line[56:60]).decode('cp500')
    print("Col12, sch ref line, is " + str(COL12))
    f.write(str(COL12))
    f.write("|")
    COL13=bytes.fromhex(line[60:66]).decode('cp500')
    print("Col13, sch ref stop, is " + str(COL13))
    f.write(str(COL13))
    f.write("|")
    COL14=bytes.fromhex(line[66:70]).decode('cp500')
    print("Col14, sch ref stop line, is " + str(COL14))
    f.write(str(COL14))
    f.write("|")
    COL15=line[70:74]
    #print("Col15, " + str(COL15) + " Repeating record, is " + str(Packed_Decimal_Clean(COL15)))
    f.write(Packed_Decimal_Clean(COL15))
    f.write("|")
    COL16=line[74:82]
    print("Col16, Aircraft Miles, is " + str(Packed_Decimal_Clean(COL16)))
    f.write(Packed_Decimal_Clean(COL16))
    f.write("|")
    COL17=line[82:92]
    print("Col17, Available Seat Miles, is " + str(Packed_Decimal_Clean(COL17)))
    f.write(Packed_Decimal_Clean(COL17))
    f.write("|")
    COL18=line[92:102]
    print("Col18, Revenue passenger Miles, is " + str(Packed_Decimal_Clean(COL18)))
    f.write(Packed_Decimal_Clean(COL18))
    f.write("|")
    COL19=line[102:112]
    print("Col19, Available ton Miles, is " + str(Packed_Decimal_Clean(COL19)))
    f.write(Packed_Decimal_Clean(COL19))
    f.write("|")
    COL20=line[112:122]
    print("Col20, Revenue ton miles, is " + str(Packed_Decimal_Clean(COL20)))
    f.write(Packed_Decimal_Clean(COL20))
    f.write("|")
    COL21=line[122:130]
    print("Col21, Revenue, is " + str(Packed_Decimal_Clean(COL21)))
    f.write(Packed_Decimal_Clean(COL21))
    f.write("|")
    
    
    remaining_line=str(line[130:]).replace('\n', '')
    #print("line |" + str(remaining_line) + "| has " + str(len(remaining_line)))
    
    start=130
    increment=128
    count2=0
    whats_left=start+increment

    for i in range(25):
            start=130+(increment*count2)
            #whats_left=line[start:].replace('\n', '')
            #print("WL is |" + str(whats_left)+"|")
            #print("WL length is " + str(len(whats_left)))
            if len(line[start:]) > 2:
                #print("Processing bytes " + bytes_to_process + " start byte is " + str(start) + " end byte is " + str(start+increment))
                #print("Value is " + str(line[start:])+"|")
                #print("Start is " + str(start))
                ##print("Processing bytes " + str(start) + " to " + str(start+increment))
                
                count2=count2+1
                
                COL22=bytes.fromhex(line[start:start+6]).decode('cp500')
                print("COL22, sched. ref. page number value is " + str(COL22))
                f.write(str(COL22))
                f.write("|")
                COL23=bytes.fromhex(line[start+6:start+10]).decode('cp500')
                print("COL23, sched. ref. line number value is " + str(COL23))
                f.write(str(COL23))
                f.write("|")
                COL24=bytes.fromhex(line[start+10:start+14]).decode('cp500')
                print("COL24, type of charter value is " + str(COL24))
                f.write(str(COL24))
                f.write("|")
                COL25=bytes.fromhex(line[start+14:start+20]).decode('cp500')
                print("COL25, aircraft type value is " + str(COL25))
                f.write(str(COL25))
                f.write("|")
                COL26=bytes.fromhex(line[start+20:start+22]).decode('cp500')
                print("COL26, flight leg value is " + str(COL26))
                f.write(str(COL26))
                f.write("|")
                COL27=bytes.fromhex(line[start+22:start+26]).decode('cp500')
                print("COL27, day of departure value is " + str(COL27))
                f.write(str(COL27))
                f.write("|")
                COL28=bytes.fromhex(line[start+26:start+32]).decode('cp500')
                print("COL28, origin alpha value is " + str(COL28))
                f.write(str(COL28))
                f.write("|")
                COL29=bytes.fromhex(line[start+32:start+42]).decode('cp500')
                print("COL29, origin numeric value is " + str(COL29))
                f.write(str(COL29))
                f.write("|")
                COL30=bytes.fromhex(line[start+42:start+44]).decode('cp500')
                print("COL30, origin designator value is " + str(COL30))
                f.write(str(COL30))
                f.write("|")
                COL31=bytes.fromhex(line[start+44:start+50]).decode('cp500')
                print("COL31, origin wac value is " + str(COL31))
                f.write(str(COL31))
                f.write("|")
                COL32=bytes.fromhex(line[start+50:start+56]).decode('cp500')
                print("COL32, destination alpha value is " + str(COL32))
                f.write(str(COL32))
                f.write("|")
                COL33=bytes.fromhex(line[start+56:start+66]).decode('cp500')
                print("COL33, destination numeric value is " + str(COL33))
                f.write(str(COL33))
                f.write("|")
                COL34=bytes.fromhex(line[start+66:start+68]).decode('cp500')
                print("COL34, destination designator value is " + str(COL34))
                f.write(str(COL34))
                f.write("|")
                COL35=bytes.fromhex(line[start+68:start+74]).decode('cp500')
                print("COL35, destination wac value is " + str(COL35))
                f.write(str(COL35))
                f.write("|")
                COL36=bytes.fromhex(line[start+74:start+78]).decode('cp500')
                print("COL36, origin wac value is " + str(COL36))
                f.write(str(COL36))
                f.write("|")
                COL37=bytes.fromhex(line[start+78:start+82]).decode('cp500')
                print("COL37, destination wac value is " + str(COL37))
                f.write(str(COL37))
                f.write("|")
                COL38=line[start+82:start+86]
                #print("|"+COL38+"|")
                print("COL38, country of origin value is " + str(Packed_Decimal_Clean(COL38)))
                f.write(str(Packed_Decimal_Clean(COL38)))
                f.write("|")
                COL39=bytes.fromhex(line[start+86:start+90]).decode('cp500')
                print("COL39, interarea class value is " + str(COL39))
                f.write(str(COL39))
                f.write("|")
                COL40=line[start+90:start+96]
                print("COL40, Nonstop distance value is " + str(Packed_Decimal_Clean(COL40)))
                f.write(str(Packed_Decimal_Clean(COL40)))
                f.write("|")
                COL41=line[start+96:start+102]
                print("COL41, number of seats value is " + str(Packed_Decimal_Clean(COL41)))
                f.write(str(Packed_Decimal_Clean(COL41)))
                f.write("|")
                COL42=line[start+102:start+108]
                print("COL42, passengers enplaned value is " + str(Packed_Decimal_Clean(COL42)))
                f.write(str(Packed_Decimal_Clean(COL42)))
                f.write("|")
                COL43=line[start+108:start+114]
                print("COL43, available tons value is " + str(Packed_Decimal_Clean(COL43)))
                f.write(str(Packed_Decimal_Clean(COL43)))
                f.write("|")
                COL44=line[start+114:start+120]
                print("COL44, enplaned tons value is " + str(Packed_Decimal_Clean(COL44)))
                f.write(str(Packed_Decimal_Clean(COL44)))
                f.write("|")
                COL45=line[start+120:start+128]
                print("COL45, charter leg rev. value is " + str(Packed_Decimal_Clean(COL45)))
                f.write(str(Packed_Decimal_Clean(COL45)))
                f.write("|")

            
            
    f.write("\n")

f.close()

        
    
    
