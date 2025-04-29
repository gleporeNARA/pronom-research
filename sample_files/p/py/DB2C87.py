#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal, Zoned_Decimal, Packed_Decimal1
import codecs
import csv

f = open("87_out.csv", "w")
f.write("Record length|Filler1|Year of reporting date|Quarter of reporting date|Outbound passengers-current quarter|Outbound passengers-1st preceding qtr.|Outbound passengers-2nd preceding qtr.|Outbound passengers-3rd preceding qtr.|Inbound passengers-current quarter|Inbound passengers-1st preceding qtr.|Inbound passengers-2nd preceding qtr.|Inbound passengers-3rd preceding qtr.|Domestic outbound passengers-current quarter|Domestic outbound passengers-1st preceding qtr.|Domestic outbound passengers-2nd preceding qtr.|Domestic outbound passengers-3rd preceding qtr.|Domestic inbound passengers-current quarter|Domestic inbound passengers-1st preceding qtr.|Domestic inbound passengers-2nd preceding qtr.|Domestic inbound passengers-3rd preceding qtr.|Directional origin city name|Directional destination city name|Online distance|Survey designator|Online carrier|Number of coupon segments|Directional origin city alpha code|Filler2|Directional origin city numeric code|Directional origin airport indicator|Directional origin world area code|Downline carrier1|Downline coupon type1|Downline coupon distance1|Downline city alpha code1|Downline Online break point1|Downline city numeric code1|Downline airport indicator1|Downline world area code1|Downline carrier2|Downline coupon type2|Downline coupon distance2|Downline city alpha code2|Downline Online break point2|Downline city numeric code2|Downline airport indicator2|Downline world area code2|Downline carrier3|Downline coupon type3|Downline coupon distance3|Downline city alpha code3|Downline Online break point3|Downline city numeric code3|Downline airport indicator3|Downline world area code3|Downline carrier4|Downline coupon type4|Downline coupon distance4|Downline city alpha code4|Downline Online break point4|Downline city numeric code4|Downline airport indicator4|Downline world area code4|Downline carrier5|Downline coupon type5|Downline coupon distance5|Downline city alpha code5|Downline Online break point5|Downline city numeric code5|Downline airport indicator5|Downline world area code5|Downline carrier6|Downline coupon type6|Downline coupon distance6|Downline city alpha code6|Downline Online break point6|Downline city numeric code6|Downline airport indicator6|Downline world area code6|Downline carrier7|Downline coupon type7|Downline coupon distance7|Downline city alpha code7|Downline Online break point7|Downline city numeric code7|Downline airport indicator7|Downline world area code7|Downline carrier8|Downline coupon type8|Downline coupon distance8|Downline city alpha code8|Downline Online break point8|Downline city numeric code8|Downline airport indicator8|Downline world area code8|Downline carrier9|Downline coupon type9|Downline coupon distance9|Downline city alpha code9|Downline Online break point9|Downline city numeric code9|Downline airport indicator9|Downline world area code9|Downline carrier10|Downline coupon type10|Downline coupon distance10|Downline city alpha code10|Downline Online break point10|Downline city numeric code10|Downline airport indicator10|Downline world area code10|Downline carrier11|Downline coupon type11|Downline coupon distance11|Downline city alpha code11|Downline Online break point11|Downline city numeric code11|Downline airport indicator11|Downline world area code11|Downline carrier12|Downline coupon type12|Downline coupon distance12|Downline city alpha code12|Downline Online break point12|Downline city numeric code12|Downline airport indicator12|Downline world area code12|Downline carrier13|Downline coupon type13|Downline coupon distance13|Downline city alpha code13|Downline Online break point13|Downline city numeric code13|Downline airport indicator13|Downline world area code13|Downline carrier14|Downline coupon type14|Downline coupon distance14|Downline city alpha code14|Downline Online break point14|Downline city numeric code14|Downline airport indicator14|Downline world area code14|Downline carrier15|Downline coupon type15|Downline coupon distance15|Downline city alpha code15|Downline Online break point15|Downline city numeric code15|Downline airport indicator15|Downline world area code15|Downline carrier16|Downline coupon type16|Downline coupon distance16|Downline city alpha code16|Downline Online break point16|Downline city numeric code16|Downline airport indicator16|Downline world area code16|Downline carrier17|Downline coupon type17|Downline coupon distance17|Downline city alpha code17|Downline Online break point17|Downline city numeric code17|Downline airport indicator17|Downline world area code17|Downline carrier18|Downline coupon type18|Downline coupon distance18|Downline city alpha code18|Downline Online break point18|Downline city numeric code18|Downline airport indicator18|Downline world area code18|Downline carrier19|Downline coupon type19|Downline coupon distance19|Downline city alpha code19|Downline Online break point19|Downline city numeric code19|Downline airport indicator19|Downline world area code19|Downline carrier20|Downline coupon type20|Downline coupon distance20|Downline city alpha code20|Downline Online break point20|Downline city numeric code20|Downline airport indicator20|Downline world area code20|Downline carrier21|Downline coupon type21|Downline coupon distance21|Downline city alpha code21|Downline Online break point21|Downline city numeric code21|Downline airport indicator21|Downline world area code21|Downline carrier22|Downline coupon type22|Downline coupon distance22|Downline city alpha code22|Downline Online break point22|Downline city numeric code22|Downline airport indicator22|Downline world area code22|Downline carrier23|Downline coupon type23|Downline coupon distance23|Downline city alpha code23|Downline Online break point23|Downline city numeric code23|Downline airport indicator23|Downline world area code23|Downline carrier24|Downline coupon type24|Downline coupon distance24|Downline city alpha code24|Downline Online break point24|Downline city numeric code24|Downline airport indicator24|Downline world area code24\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
for line in Lines:
    #f.write("\nLine length is " + str(len(line))+"\n")
    count += 1
    RL=line[0:4]
    f.write(str(RL))
    f.write("|")
    Filler1=line[4:8]
    f.write(str(Filler1))
    f.write("|")
    YDate=line[8:12]
    f.write(str(YDate))
    f.write("|")
    QDate=line[12:14]
    f.write(str(QDate))
    f.write("|")
    OPC=line[14:22]
    f.write(Packed_Decimal1(OPC))
    f.write("|")
    OP1=line[22:30]
    f.write(Packed_Decimal1(OP1))
    f.write("|")
    OP2=line[30:38]
    f.write(Packed_Decimal1(OP2))
    f.write("|")
    OP3=line[38:46]
    f.write(Packed_Decimal1(OP3))
    f.write("|")
    
    IPC=line[46:54]
    f.write(Packed_Decimal1(IPC))
    f.write("|")
    IP1=line[54:62]
    f.write(Packed_Decimal1(IP1))
    f.write("|")
    IP2=line[62:70]
    f.write(Packed_Decimal1(IP2))
    f.write("|")
    IP3=line[70:78]
    f.write(Packed_Decimal1(IP3))
    f.write("|")
    
    DOPC=line[78:86]
    f.write(Packed_Decimal1(DOPC))
    f.write("|")
    DOP1=line[86:94]
    f.write(Packed_Decimal1(DOP1))
    f.write("|")
    DOP2=line[94:102]
    f.write(Packed_Decimal1(DOP2))
    f.write("|")
    DOP3=line[102:110]
    f.write(Packed_Decimal1(DOP3))
    f.write("|")
    
    DIPC=line[110:118]
    f.write(Packed_Decimal1(DIPC))
    f.write("|")
    DIP1=line[118:126]
    f.write(Packed_Decimal1(DIP1))
    f.write("|")
    DIP2=line[126:134]
    f.write(Packed_Decimal1(DIP2))
    f.write("|")
    DIP3=line[134:142]
    f.write(Packed_Decimal1(DIP3))
    f.write("|")
    
    DOCN=bytes.fromhex(line[142:202]).decode('cp500')
    f.write(str(DOCN))
    f.write("|")
    DDCN=bytes.fromhex(line[202:242]).decode('cp500')
    f.write(str(DDCN))
    f.write("|")
    
    OD=line[242:248]
    f.write(Packed_Decimal1(OD))
    f.write("|")
    
    SD=bytes.fromhex(line[248:250]).decode('cp500')
    f.write(str(SD))
    f.write("|")
    
    OC=bytes.fromhex(line[250:254]).decode('cp500')
    f.write(str(OC))
    f.write("|")
    
    NCS=line[254:258]
    f.write(Packed_Decimal1(NCS))
    f.write("|")
    
    DOCAC=bytes.fromhex(line[258:264]).decode('cp500')
    f.write(str(DOCAC))
    f.write("|")
    
    Filler2=line[264:266]
    f.write(str(Filler2))
    f.write("|")
    
    DOCNC=line[266:272]
    f.write(Packed_Decimal1(DOCNC))
    f.write("|")
    
    DOCAI=line[272:274]
    f.write(Packed_Decimal1(DOCAI))
    f.write("|")
    
    DOCWAC=line[274:278]
    f.write(Packed_Decimal1(DOCWAC))
    f.write("|")
    
    start=278
    increment=32
    count=0
    
    #print(len(line[278:]))
    
    for i in range(25):
            
        start=278+(increment*count)
        #print("line length is " + str(len(line[start:])))
        #print("Value is " + str(line[start:]))
        #print("Start is " + str(start))
        #print("Processing bytes " + str(start) + " to " + str(start+32))
        #print("Count is " + str(count))
        count=count+1
        
        if len(line[start:]) > 2:
            
            if line[start:start+2] != "5e":
                DC=bytes.fromhex(line[start:start+4]).decode('cp500')
                f.write(str(DC))
                f.write("|")
                
                DCT=bytes.fromhex(line[start+4:start+6]).decode('cp500')
                f.write(str(DCT))
                f.write("|")
                
                DCCD=line[start+6:start+12]
                f.write(Packed_Decimal1(DCCD))
                f.write("|")
                
                DCAC=bytes.fromhex(line[start+12:start+18]).decode('cp500')
                f.write(str(DCAC))
                f.write("|")
                
                DCOBP=bytes.fromhex(line[start+18:start+20]).decode('cp500')
                f.write(str(DCOBP))
                f.write("|")
                
                DCCNC=line[start+20:start+26]
                f.write(Packed_Decimal1(DCCNC))
                f.write("|")
                
                DCAI=line[start+26:start+28]
                f.write(Packed_Decimal1(DCAI))
                f.write("|")
                
                DCWAC=line[start+28:start+32]
                f.write(Packed_Decimal1(DCWAC))
                f.write("|")    

    f.write("\n")

f.close()

        
    
    
