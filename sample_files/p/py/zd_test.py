#!/usr/bin/env python3


from GLebcdic import Zoned_Decimal


thing_list=["f0f0f3f8f8f0c0", "f0f2f4f5f3f0c0","f0f0f0f0f0f000","f4f0f4f0f4f004","f0f2f1f0f0f5f0"]


print("\nDecoding list\n")
for thing in thing_list:
    print("Value of " + str(thing) + " as Zoned Decimal is " + str(Zoned_Decimal(thing)))

