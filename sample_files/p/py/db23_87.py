#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal, EBCDIC
import codecs
import csv

f = open("DB23_1987.csv", "w")
f.write("Record Length|Filler|Base/Reference Code|Airport (1) Numeric Code|Airport (1) Alpha Code|Repeating Segment Count|Airport (2) Numberic Code|Airport (2) Alpha code|Carrier Code|Date of Data(Y)|Date of Data(M)|Carrier Entity Code|Number of Downline Points|Service Class|Aircraft Group Code|Aircraft Type Code|Aircraft Cabin Configuration Code|Flight Number|Itinerary Indicator|Subsidy Eligible Ineligible Code|Reference Flight Number|Airport 1 & 2 Designator|Service Segment Position Number|Seg. Distance|Filler1|REVENUE AIRCRAFT DEPARTURES - X520 Scheduled|REVENUE AIRCRAFT DEPARTURES - X521 Performed|REVENUE AIRCRAFT DEPARTURES - X511 Performed-Scheduled|REVENUE AIRCRAFT DEPARTURES - X512 Performed-Extra Sec.|REVENUE AIRCRAFT MILES - X430 Scheduled|REVENUE AIRCRAFT MILES - X411 Flown-Scheduled|REVENUE AIRCRAFT MILES - X412 Flown-Extra Sec.|SEATS AVAILABLE - X311 1st-class|SEATS AVAILABLE - X312 Coach|X270 Tons Available|REVENUE AIRCRAFT HOURS - X610 Airborne|REVENUE AIRCRAFT HOURS - X630 Ramp To Ramp|REVENUE PASSENGERS TRANSPORTED - X131 1st Class|REVENUE PASSENGERS TRANSPORTED - X132 Coach|X150 Nonrevenue Passengers|REVENUE TONS TRANSPORTED - X231 Passengers|REVENUE TONS TRANSPORTED - X233 U.S. Mail- Priority|REVENUE TONS TRANSPORTED - X234 U.S. Mail- Nonpriority|REVENUE TONS TRANSPORTED - X235 Foreign Mail|REVENUE TONS TRANSPORTED - X236 Express|REVENUE TONS TRANSPORTED - X237 Freight|REVENUE TONS TRANSPORTED - X250 Nonrevenue Tons Trans.|REVENUE TONS TRANSPORTED - X120 Nonrev. Psngrs Enplaned|REVENUE PASSENGERS ENPLANED - X111 1st Class|REVENUE PASSENGERS ENPLANED - X112 Coach|REVENUE CARGO TONS ENPLANED - X213 U.S. Mail-Priority|REVENUE CARGO TONS ENPLANED - X213 U.S. Nonpriority|REVENUE CARGO TONS ENPLANED - X215 Foreign|REVENUE CARGO TONS ENPLANED - X216 Express|REVENUE CARGO TONS ENPLANED - X217 Freight|Domestic /International|Filler2|Airport (1)|Airport (2)|Error Indicators|Filler1a|Downline Airport1|REVENUE PASSENGERS DEPLANED - X111 1st Class1|REVENUE PASSENGERS DEPLANED - X112 Coach1|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority1|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority1|REVENUE CARGO TONS DEPLANED - X215 Foreign1|REVENUE CARGO TONS DEPLANED - X216 Express1|REVENUE CARGO TONS DEPLANED - X217 Freight1|Filler2a|Downline Airport2|REVENUE PASSENGERS DEPLANED - X111 1st Class2|REVENUE PASSENGERS DEPLANED - X112 Coach2|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority2|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority2|REVENUE CARGO TONS DEPLANED - X215 Foreign2|REVENUE CARGO TONS DEPLANED - X216 Express2|REVENUE CARGO TONS DEPLANED - X217 Freight2|Filler3a|Downline Airport3|REVENUE PASSENGERS DEPLANED - X111 1st Class3|REVENUE PASSENGERS DEPLANED - X112 Coach3|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority3|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority3|REVENUE CARGO TONS DEPLANED - X215 Foreign3|REVENUE CARGO TONS DEPLANED - X216 Express3|REVENUE CARGO TONS DEPLANED - X217 Freight3|Filler4a|Downline Airport4|REVENUE PASSENGERS DEPLANED - X111 1st Class4|REVENUE PASSENGERS DEPLANED - X112 Coach4|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority4|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority4|REVENUE CARGO TONS DEPLANED - X215 Foreign4|REVENUE CARGO TONS DEPLANED - X216 Express4|REVENUE CARGO TONS DEPLANED - X217 Freight4|Filler5a|Downline Airport1|REVENUE PASSENGERS DEPLANED - X111 1st Class5|REVENUE PASSENGERS DEPLANED - X112 Coach5|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority5|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority5|REVENUE CARGO TONS DEPLANED - X215 Foreign5|REVENUE CARGO TONS DEPLANED - X216 Express5|REVENUE CARGO TONS DEPLANED - X217 Freight5|Filler6a|Downline Airport6|REVENUE PASSENGERS DEPLANED - X111 1st Class6|REVENUE PASSENGERS DEPLANED - X112 Coach6|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority6|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority6|REVENUE CARGO TONS DEPLANED - X215 Foreign6|REVENUE CARGO TONS DEPLANED - X216 Express6|REVENUE CARGO TONS DEPLANED - X217 Freight6|Filler7a|Downline Airport7|REVENUE PASSENGERS DEPLANED - X111 1st Class7|REVENUE PASSENGERS DEPLANED - X112 Coach7|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority7|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority7|REVENUE CARGO TONS DEPLANED - X215 Foreign7|REVENUE CARGO TONS DEPLANED - X216 Express7|REVENUE CARGO TONS DEPLANED - X217 Freight7|Filler8a|Downline Airport8|REVENUE PASSENGERS DEPLANED - X111 1st Class8|REVENUE PASSENGERS DEPLANED - X112 Coach8|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority8|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority8|REVENUE CARGO TONS DEPLANED - X215 Foreign8|REVENUE CARGO TONS DEPLANED - X216 Express8|REVENUE CARGO TONS DEPLANED - X217 Freight8|Filler9a|Downline Airport9|REVENUE PASSENGERS DEPLANED - X111 1st Class9|REVENUE PASSENGERS DEPLANED - X112 Coach9|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority9|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority9|REVENUE CARGO TONS DEPLANED - X215 Foreign9|REVENUE CARGO TONS DEPLANED - X216 Express9|REVENUE CARGO TONS DEPLANED - X217 Freight9|Filler10a|Downline Airport10|REVENUE PASSENGERS DEPLANED - X111 1st Class10|REVENUE PASSENGERS DEPLANED - X112 Coach10|REVENUE CARGO TONS DEPLANED - X213 U.S. Mail-Priority10|REVENUE CARGO TONS DEPLANED - X214 U.S. Mail-Nonpriority10|REVENUE CARGO TONS DEPLANED - X215 Foreign10|REVENUE CARGO TONS DEPLANED - X216 Express10|REVENUE CARGO TONS DEPLANED - X217 Freight10\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
start_place = 0
for line in Lines:

    #f.write("\nLine length is " + str(len(line))+"\n")
    print("Processing record")
    count += 1
    COL1=line[0:4]
    #print("COL1 is " + str(COL1))
    RL=int(COL1[:4], 16)
    #print("\nRecord Length is " + str(line[0:8]) + " value is " + str(RL) + " Count is " + str(count))
    #print("Start place is now " + str(start_place))
    #print("Reading from " + str(start_place) + " to " + str(RL))
    f.write(str(int(COL1, 16)))
    f.write("|")
    COL1A=line[4:8]
    f.write(str(int(COL1A, 16)))
    f.write("|")
    COL2=bytes.fromhex(line[8:10]).decode('cp500')
    #print("Base/Reference Code is " + str(line[8:10]))
    f.write(str(COL2))
    f.write("|")
    COL4=line[10:20]
    #print("Airport (1) Numeric Code is " + str(COL4))
    f.write(Packed_Decimal_Clean(line[10:20]))
    f.write("|")
    COL5=bytes.fromhex(line[20:26]).decode('cp500')
    #print("COL5 is " + str(line[20:26]))
    f.write(str(COL5))
    f.write("|")
    COL6=line[26:30]
    print("Repeat segment is " + str(line[26:30]) + " which translates as " + str(Zoned_Decimal(line[26:30])))
    #print(Packed_Decimal_Clean(line[26:30]))
    f.write(Zoned_Decimal(line[26:30]))
    f.write("|")
    COL7=line[30:40]
    f.write(Packed_Decimal_Clean(COL7))
    #print("COL7 is " + str(line[30:40]))
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
    COL12=bytes.fromhex(line[58:68]).decode('cp500')
    f.write(str(COL12))
    f.write("|")
    COL13=bytes.fromhex(line[68:72]).decode('cp500')
    f.write(str(COL13))
    f.write("|")
    COL14=bytes.fromhex(line[72:74]).decode('cp500')
    f.write(str(COL14))
    f.write("|")
    COL15=bytes.fromhex(line[74:76]).decode('cp500')
    f.write(str(COL15))
    f.write("|")
    COL16=bytes.fromhex(line[76:80]).decode('cp500')
    f.write(str(COL16))
    f.write("|")
    COL17=bytes.fromhex(line[80:82]).decode('cp500')
    f.write(str(COL17))
    f.write("|")

    COL19=bytes.fromhex(line[82:90]).decode('cp500')
    f.write(str(COL19))
    f.write("|")
    COL20=bytes.fromhex(line[90:94]).decode('cp500')
    f.write(str(COL20))
    f.write("|")
    COL21=bytes.fromhex(line[94:98]).decode('cp500')
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
    f.write(Packed_Decimal_Clean(COL25))
    f.write("|")
    COL26=bytes.fromhex(line[116:144]).decode('cp500')
    f.write(str(COL26))
    f.write("|")
    COL27=line[144:156]
    f.write(Packed_Decimal_Clean(COL27))
    f.write("|")
    COL28=line[156:168]
    f.write(Packed_Decimal_Clean(COL28))
    f.write("|")
    COL29=line[168:180]
    f.write(Packed_Decimal_Clean(COL29))
    f.write("|")
    COL30=line[180:192]
    f.write(Packed_Decimal_Clean(COL30))
    f.write("|")
    COL31=line[192:204]
    f.write(Packed_Decimal_Clean(COL31))
    f.write("|")
    COL32=line[204:216]
    f.write(Packed_Decimal_Clean(COL32))
    f.write("|")
    COL33=line[216:228]
    f.write(Packed_Decimal_Clean(COL33))
    f.write("|")
    COL34=line[228:240]
    f.write(Packed_Decimal_Clean(COL34))
    f.write("|")
    COL35=line[240:252]
    f.write(Packed_Decimal_Clean(COL35))
    f.write("|")
    COL36=line[252:264]
    f.write(Packed_Decimal_Clean(COL36))
    f.write("|")
    COL37=line[264:276]
    f.write(Packed_Decimal_Clean(COL37))
    f.write("|")
    COL38=line[276:288]
    f.write(Packed_Decimal_Clean(COL38))
    f.write("|")
    COL39=line[288:300]
    f.write(Packed_Decimal_Clean(COL39))
    f.write("|")
    COL40=line[300:312]
    f.write(Packed_Decimal_Clean(COL40))
    f.write("|")
    COL41=line[312:324]
    f.write(Packed_Decimal_Clean(COL41))
    f.write("|")
    COL42=line[324:336]
    f.write(Packed_Decimal_Clean(COL42))
    f.write("|")
    COL43=line[336:348]
    f.write(Packed_Decimal_Clean(COL43))
    f.write("|")
    COL44=line[348:360]
    f.write(Packed_Decimal_Clean(COL44))
    f.write("|")
    COL45=line[360:372]
    f.write(Packed_Decimal_Clean(COL45))
    f.write("|")
    COL46=line[372:384]
    f.write(Packed_Decimal_Clean(COL46))
    f.write("|")
    COL47=line[384:396]
    f.write(Packed_Decimal_Clean(COL47))
    f.write("|")
    COL48=line[396:408]
    f.write(Packed_Decimal_Clean(COL48))
    f.write("|")
    COL49=line[408:420]
    f.write(Packed_Decimal_Clean(COL49))
    f.write("|")
    COL50=line[420:432]
    f.write(Packed_Decimal_Clean(COL50))
    f.write("|")
    COL51=line[432:444]
    f.write(Packed_Decimal_Clean(COL51))
    f.write("|")
    COL52=line[444:456]
    f.write(Packed_Decimal_Clean(COL52))
    f.write("|")
    COL53=line[456:468]
    f.write(Packed_Decimal_Clean(COL53))
    f.write("|")
    COL54=line[468:480]
    f.write(Packed_Decimal_Clean(COL54))
    f.write("|")
    COL55=line[480:492]
    f.write(Packed_Decimal_Clean(COL55))
    f.write("|")
    COL56=line[492:504]
    f.write(Packed_Decimal_Clean(COL56))
    f.write("|")
    COL57=bytes.fromhex(line[504:506]).decode('cp500')
    f.write(str(COL57))
    f.write("|")
    COL58=bytes.fromhex(line[506:520]).decode('cp500')
    f.write(str(COL58))
    f.write("|")
    COL59=bytes.fromhex(line[520:560]).decode('cp500')
    f.write(str(COL59))
    f.write("|")
    COL60=bytes.fromhex(line[560:600]).decode('cp500')
    f.write(str(COL60))
    f.write("|")
    COL61=bytes.fromhex(line[600:648]).decode('cp500')
    f.write(str(COL61))
    f.write("|")
    COL62=bytes.fromhex(line[648:652]).decode('cp500')
    f.write(str(COL62))
    f.write("|")
    COL63=bytes.fromhex(line[652:658]).decode('cp500')
    f.write(str(COL63))
    f.write("|")
    COL64=line[658:668]
    f.write(Packed_Decimal_Clean(COL64))
    f.write("|")
    COL65=line[668:678]
    f.write(Packed_Decimal_Clean(COL65))
    f.write("|")
    COL66=line[678:688]
    f.write(Packed_Decimal_Clean(COL66))
    f.write("|")
    COL67=line[688:698]
    f.write(Packed_Decimal_Clean(COL67))
    f.write("|")
    COL68=line[698:708]
    f.write(Packed_Decimal_Clean(COL68))
    f.write("|")
    COL69=line[708:718]
    f.write(Packed_Decimal_Clean(COL69))
    f.write("|")
    COL70=line[718:728]
    #print(line[718:728])
    f.write(Packed_Decimal_Clean(COL70))
    #print(Packed_Decimal_Clean(COL70))
    f.write("|")

    #remaining_line=len(str(line[728:]))
    #print("line |" + str(remaining_line) + "| has " + str(len(remaining_line)))
    
    repeat_number=int((RL-364)/40)
    #print("Repeat " + str(repeat_number))
    start=728
    increment=80
    count=0
    for i in range(repeat_number):
        
        if len(line[start:]) > 1:
            start=728+(increment*count)
            #print("line length is " + str(len(line[start:])))
            ##print("Value is " + str(line[start:]))
            #print("Start is " + str(start))
            #print("Processing bytes " + str(start) + " to " + str(start+increment))
            #print("Count is " + str(count))
            #count=count+1
            
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
            f.write(Packed_Decimal_Clean(COL63))
            f.write("|")
            COL64=line[start+20:start+30]
            #print("rev coach is |" + str(COL64)+"|")
            f.write(Packed_Decimal_Clean(COL64))
            f.write("|")
            COL65=line[start+30:start+40]
            #print("rev cargo priority is |" + str(COL65)+"|")
            f.write(Packed_Decimal_Clean(COL65))
            f.write("|")
            COL66=line[start+40:start+50]
            f.write(Packed_Decimal_Clean(COL66))
            f.write("|")
            COL67=line[start+50:start+60]
            #print("rev foreign is |" + str(COL67)+"|")
            f.write(Packed_Decimal_Clean(COL67))
            f.write("|")
            COL68=line[start+60:start+70]
            #print("rev express is |" + str(COL68)+"|")
            f.write(Packed_Decimal_Clean(COL68))
            f.write("|")
            COL69=line[start+70:start+80]
            #print("rev freight is |" + str(COL69)+"|")
            f.write(Packed_Decimal_Clean(COL69))
            f.write("|")
    start_place=int(RL*2)
    #print("Start place is now " + str(start_place))
    f.write("\n")

f.close()

        
    
    
