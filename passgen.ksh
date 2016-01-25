#!/usr/bin/ksh
#
# Random password generator for commercial KSH88
# Copyright (c) 2002 by Antoni Sawicki <tenox@tenox.tc>
# This programm is in Public Domain
#

set -A M 0 1 2 3 4 5 6 7 8 9 \
         A B C D E F G H I J K L M N O P Q R S T U V W X Y Z \
         a b c d e f g h i j k l m n o p q r s t u v w x y z
L="8"

while [ $L -gt 0 ]
do
  PASS="$PASS${M[$(($RANDOM%${#M[*]}+1))]}"
  L="$(($L-1))"
done

echo "$PASS"
