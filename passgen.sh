#!/bin/bash
#
# Random password generator script for GNU BASH 2.0x
# Copyright (c) 2002 by Antoni Sawicki <tenox@tenox.tc>
# This programm is in Public Domain
#

M="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
L="8"

while [ $L -gt 0 ]
do
        PASS="$PASS${M:$(($RANDOM%${#M})):1}"
        let L-=1
done

echo "$PASS"

