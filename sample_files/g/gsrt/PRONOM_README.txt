Founded in 2002, Grandstream Networks is a manufacturer of IP voice and video communications equipment, video surveillance, gateways and analog telephone adapters (ATAs), and Asterisk-based IP-PBX appliances. Grandstream supplies small and medium businesses and consumers with open-standard SIP-based products.

Grandstream Networks is headquartered in Boston, Massachusetts,[1] and has offices in Plano, Texas and Los Angeles, California in the US, and in Casablanca in Morocco, Valencia, Venezuela and Shenzhen, China.

The company's products are listed on its web site.[2]

https://en.wikipedia.org/wiki/Grandstream_Networks


# Create ringtone file for Grandstream BT100 phone, using uLaw input.
 #
 # Author: Tony Mountifield <tony@softins.co.uk>
 # Date:   28 May 2004
 # File:   makering.pl
 # History:
 #  28/05/2004  Initial version.
 #  29/05/2004  Added checks for input file size being even and not too large.
 #  30/05/2004  Phone will not accept files larger than 65536 bytes.
 #  06/06/2004  Modified for the 1.05.00 firmware, probably doesn't support
 #              older firmware any longer
 #------------------------------------------------------------------------------
 #
 # Usage:
 #  Use sox to convert any audio input file to uLaw and pipe to this prog, e.g.
 #
 #  sox inputfile -r 8000 -c 1 -t ul - rate | makering.pl ring1.bin
 #
 # (try using /usr/share/sounds/phone.wav for the inputfile)
 #
 #  Check the output file by using the following command:
 #
 #  tail +513c ring1.bin | play -t ul -
 #
 #  Finally, put the ring file in /tftpboot on the phone's TFTP server,
 #  and reboot the phone.
 #
 
 "ring.bin",     #  10 - name, seems to always be ring.bin
 
 https://www.voip-info.org/budgetone-makering5/
 
 http://www.grandstream.com/support/tools
 
 
