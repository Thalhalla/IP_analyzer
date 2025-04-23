#!/bin/bash
if [[ $# -ne 1 ]]; then
  # Print usage
  echo -n 'Error! wrong number of arguments'
  echo " [$#]"
  echo 'usage:'
  echo "$0 ip_address"
  exit 1
fi

INPUT=$1
A=$(echo $1 | cut -f 1 -d.)
B=$(echo $1 | cut -f 2 -d.)
C=$(echo $1 | cut -f 3 -d.)
D=$(echo $1 | cut -f 4 -d.)

D2B=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})

echo given an IP address of $1
echo A.B.C.D
echo A is ${D2B[$A]}
echo B is ${D2B[$B]}
echo C is ${D2B[$C]}
echo D is ${D2B[$D]}
BIG_NUM=${D2B[$A]}${D2B[$B]}${D2B[$C]}${D2B[$D]}

echo "The binary form is $BIG_NUM"
echo "The decimal form is $((2#$BIG_NUM))"
#printf '%d\n' "$((2#$BIG_NUM))"
printf 'And the hexadecimal is %x\n' "$((2#$BIG_NUM))"

