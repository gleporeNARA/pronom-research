#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal
import codecs
import csv

f = open("ESTATE.csv", "w")
f.write("Serial Number|Year Code|Residence Code|Gross Estate Code|Subsample Code|Age of Decedent at death|Marital Status Code|Number of Gifts in Trust Records|Number of Bequests in Trust Records\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
for line in Lines:
    #f.write("\nLine length is " + str(len(line))+"\n")
    count += 1
    COL1=line[0:8]
    f.write(str(int(COL1, 16)))
    print("Serial Number " + str(COL1) + " is " + str(int(COL1, 16)))
    f.write("|")
    COL2=line[8:16]
    print("Year " + str(COL2) + " is " + str(int(COL2, 16)))
    f.write(str(COL2))
    f.write("|")
    COL3=line[16:24]
    f.write(str(COL3))
    print("Residence " + str(COL3) + " is " + str(int(COL3, 16)))
    f.write("|")
    COL4=line[24:32]
    print("Size of estate " + str(COL4) + " is " + str(int(COL4, 16)))
    f.write(str(COL4))
    f.write("|")
    COL5=line[32:40]
    print("Subsample code " + str(COL5) + " is " + str(int(COL5, 16)))
    f.write(str(COL5))
    f.write("|")
    COL6=line[40:48]
    print("Age at death " + str(COL6) + " is " + str(int(COL6, 16)))
    f.write(str(COL6))
    f.write("|")
    COL7=line[48:56]
    print("Marital status " + str(COL7) + " is " + str(int(COL7, 16)))
    f.write(str(COL7))
    f.write("|")
    COL8=line[56:64]
    print("Number of Gifts in Trust Records " + str(COL8) + " is " + str(int(COL8, 16)))
    f.write(str(COL8))
    f.write("|")
    COL9=line[64:72]
    print("Number of Bequests in Trust Records " + str(COL9) + " is " + str(int(COL9, 16)))
    f.write(str(COL9))
    f.write("|")
    
    COL10=line[72:80]
    print("\nRECORD 0\nAll death taxes total " + str(COL10) + " is " + str(int(COL10, 16)))
    f.write(str(COL10))
    f.write("|")
    COL11=line[80:88]
    print("Charitable bequests total " + str(COL11) + " is " + str(int(COL11, 16)))
    f.write(str(COL3))
    f.write("|")
    COL12=line[88:96]
    print("Non-charitable bequests total " + str(COL12) + " is " + str(int(COL12, 16)))
    f.write(str(COL12))
    f.write("|")
    COL13=line[96:104]
    print("Total disposable estate " + str(COL13) + " is " + str(int(COL13, 16)))
    f.write(str(COL13))
    f.write("|")
    COL14=line[104:112]
    print("Total economic estate " + str(COL14) + " is " + str(int(COL14, 16)))
    f.write(str(COL14))
    f.write("|")
    COL15=line[112:120]
    print("Lifetime charitable " + str(COL15) + " is " + str(int(COL15, 16)))
    f.write(str(COL15))
    f.write("|")
    COL16=line[120:128]
    print("Gifts to trust " + str(COL16) + " is " + str(int(COL16, 16)))
    f.write(str(COL16))
    f.write("|")
    COL17=line[128:136]
    print("Gifts to non-trust " + str(COL17) + " is " + str(int(COL17, 16)))
    f.write(str(COL17))
    f.write("|")
    COL18=line[136:142]
    print("All transfers total " + str(COL18) + " is " + str(int(COL18, 16)))
    f.write(str(COL18))
    f.write("|")
    COL19=line[142:150]
    print("Gross transfers " + str(COL19) + " is " + str(int(COL19, 16)))
    f.write(str(COL19))
    f.write("|")
    COL20=line[150:158]
    print("\nRECORD 1\nMarital deductions " + str(COL20) + " is " + str(int(COL20, 16)))
    f.write(str(COL20))
    f.write("|")
    COL21=line[158:166]
    print("State death taxes " + str(COL21) + " is " + str(int(COL21, 16)))
    f.write(str(COL21))
    f.write("|")
    COL22=line[166:174]
    print("Federal gift tax credit " + str(COL22) + " is " + str(int(COL22, 16)))
    f.write(str(COL22))
    f.write("|")
    COL23=line[174:182]
    print("Prior transfers credit " + str(COL23) + " is " + str(int(COL23, 16)))
    f.write(str(COL23))
    f.write("|")
    COL24=line[182:190]
    print("Foreign taxes " + str(COL24) + " is " + str(int(COL24, 16)))
    f.write(str(COL24))
    f.write("|")
    #COL25=line[180:188]
    #print("Federal tax due " + str(COL25) + " is " + str(int(COL25, 16)))
    #f.write(str(COL25))
    #f.write("|")
    #COL26=line[188:196]
    #print("Religious bequests " + str(COL26) + " is " + str(int(COL26, 16)))
    #f.write(str(COL26))
    #f.write("|")
    #COL27=line[196:204]
    #print("Fraternal or lodge bequests " + str(COL27) + " is " + str(int(COL27, 16)))
    #f.write(str(COL27))
    #f.write("|")
    #COL28=line[204:212]
    #print("Veterans bequests " + str(COL28) + " is " + str(int(COL28, 16)))
    #f.write(str(COL28))
    #f.write("|")
    
    #if COL9=="00000002":
        #print("FOUND A COL2")
        #COL29=line[212:220]
        #print("\nRECORD2\nScientific public " + str(COL29) + " is " + str(int(COL29, 16)))
        #f.write(str(COL29))
        #f.write("|")
        #COL30=line[220:228]
        #print("Scientific private " + str(COL30) + " is " + str(int(COL30, 16)))
        #f.write(str(COL30))
        #f.write("|")
        #COL31=line[228:236]
        #print("Scientific private new " + str(COL31) + " is " + str(int(COL31, 16)))
        #f.write(str(COL31))
        #f.write("|")
        #COL33=line[236:244]
        #print("Charitable public " + str(COL33) + " is " + str(int(COL33, 16)))
        #f.write(str(COL33))
        #f.write("|")
        #COL34=line[244:252]
        #print("Charitable private old " + str(COL34) + " is " + str(int(COL34, 16)))
        #f.write(str(COL34))
        #f.write("|")
        #COL35=line[252:260]
        #print("Charitable private new " + str(COL35) + " is " + str(int(COL35, 16)))
        #f.write(str(COL35))
        #f.write("|")
        #COL36=line[260:268]
        #print("Basket public " + str(COL36) + " is " + str(int(COL36, 16)))
        #f.write(str(COL36))
        #f.write("|")
        #COL37=line[268:274]
        #print("Basket private old " + str(COL37) + " is " + str(int(COL37, 16)))
        #f.write(str(COL37))
        #f.write("|")
        #COL38=line[274:282]
        #print("Basket private new " + str(COL38) + " is " + str(int(COL38, 16)))
        #f.write(str(COL38))
        #f.write("|")
    
    #if COL9=="00000003":
        #print("FOUND A COL3")
        #remaining_chars=len(line[212:])
        #print("Remaining chars is " + str(remaining_chars))
        #COL29=line[212:220]
        #print("\nRECORD3\nValue of bequest in trust " + str(COL29) + " is " + str(int(COL29, 16)))
        #f.write(str(COL29))
        #f.write("|")
        #COL30=line[220:228]
        #print("Tenant code number " + str(COL30) + " is " + str(int(COL30, 16)))
        #f.write(str(COL30))
        #f.write("|")
        #COL31=line[228:236]
        #print("Remainderman code number " + str(COL31) + " is " + str(int(COL31, 16)))
        #f.write(str(COL31))
        #f.write("|")
        #COL33=line[236:244]
        #print("Duration code number " + str(COL33) + " is " + str(int(COL33, 16)))
        #f.write(str(COL33))
        #f.write("|")
        #COL34=line[244:252]
        #print("Invasion power code number " + str(COL34) + " is " + str(int(COL34, 16)))
        #f.write(str(COL34))
        #f.write("|")
        
        #COL35=line[252:260]
        #print("Blank " + str(COL35) + " is " + str(int(COL35, 16)))
        #f.write(str(COL35))
        #f.write("|")
        #COL36=line[260:268]
        #print("Bequest to spouse " + str(COL36) + " is " + str(int(COL36, 16)))
        #f.write(str(COL36))
        #f.write("|")
        #COL37=line[268:274]
        #print("Bequest to children " + str(COL37) + " is " + str(int(COL37, 16)))
        #f.write(str(COL37))
        #f.write("|")
        #COL38=line[274:282]
        #print("Bequest to parents " + str(COL38) + " is " + str(int(COL38, 16)))
        #f.write(str(COL38))
        #f.write("|")
        
    #remaining_line=str(line[648:]).replace('\n', '')
    ##print("line |" + str(remaining_line) + "| has " + str(len(remaining_line)))
    
    
    #start=648
    #increment=80
    #count=0
    #for i in range(10):
        
        #if len(line[start:]) > 1:
            #start=648+(increment*count)
            ##print("line length is " + str(len(line[start:])))
            ##print("Value is " + str(line[start:]))
            ##print("Start is " + str(start))
            ##print("Processing bytes " + str(start) + " to " + str(start+increment))
            ##print("Count is " + str(count))
            #count=count+1
            
            #COL61=line[start:start+4]
            ##print("filler is |" + str(COL61)+"|")
            #f.write(str(COL61))
            #f.write("|")
            #COL62=line[start+4:start+10]
            ##print("downline city is |" + str(COL62)+"|")
            #f.write(str(COL62))
            #f.write("|")
            #COL63=line[start+10:start+20]
            ##print("rev first is |" + str(COL63)+"|")
            #f.write(Packed_Decimal1(COL63))
            #f.write("|")
            #COL64=line[start+20:start+30]
            ##print("rev coach is |" + str(COL64)+"|")
            #f.write(Packed_Decimal1(COL64))
            #f.write("|")
            #COL65=line[start+30:start+40]
            ##print("rev cargo priority is |" + str(COL65)+"|")
            #f.write(Packed_Decimal1(COL65))
            #f.write("|")
            #COL66=line[start+40:start+50]
            ##print("rev cargo non priority is |" + str(COL66)+"|")
            #f.write(Packed_Decimal1(COL66))
            #f.write("|")
            #COL67=line[start+50:start+60]
            ##print("rev foreign is |" + str(COL67)+"|")
            #f.write(Packed_Decimal1(COL67))
            #f.write("|")
            #COL68=line[start+60:start+70]
            ##print("rev express is |" + str(COL68)+"|")
            #f.write(Packed_Decimal1(COL68))
            #f.write("|")
            #COL69=line[start+70:start+80]
            ##print("rev freight is |" + str(COL69)+"|")
            #f.write(Packed_Decimal1(COL69))
            #f.write("|")
    
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
                #DC=line[start:start+4]
                #f.write(str(DC))
                #f.write("|")
                
                #DCT=line[start+4:start+6]
                #f.write(str(DCT))
                #f.write("|")
                
                #DCCD=line[start+6:start+12]
                #f.write(Packed_Decimal1(DCCD))
                #f.write("|")
                
                #DCAC=line[start+12:start+18]
                #f.write(str(DCAC))
                #f.write("|")
                
                #DCOBP=line[start+18:start+20]
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

        
    
    
