dim as integer f
dim as integer i, content


f = freefile

kill "blank.mif"
open "blank.mif" for append as #f
print #f, "DEPTH = 24;"
print #f, "WIDTH = 10;"
print #f, "ADDRESS_RADIX = HEX;"
print #f, "DATA_RADIX = BIN;"
print #f, "CONTENT;"
print #f, "BEGIN;"
print #f, ""
for i = 0 to 1023
    
    
    content = 0
    
    print #f, hex(i, 3) + " : " + bin(content, 24) + ";"
next i
print #f, ""
print #f, "END;"








