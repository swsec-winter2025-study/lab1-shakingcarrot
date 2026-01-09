#!/bin/bash

if [ $# -eq 0 ]; then
    args="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17"
else
    args="$@"
fi


function test1()
{
	echo "Try $1"
	cat $1.txt | xargs ./$1.32 
}
function test2()
{
	echo "Try $1"
	./$1.32 $1.txt
}
for i in $args; do

    case "$i" in
      1)
	test1 crackme01
	;;
      2)
	test1 crackme01e
	;;
      3)
	test1 crackme02
	;;
      4)
	test1 crackme02e
	;;
      5)
	test1 crackme03
	;;
      6)
	test1 crackme03e
	;;
      7)
	test1 crackme04
	;;
      8)
	test1 crackme04e
	;;
      9)
	test1 crackme05
	;;
      10)
	test1 crackme05e
	;;
      11)
	test2 crackme06
	;;
      12)
	test2 crackme06e
	;;
      13)
	test1 crackme07
	;;
      14)
	test1 crackme07e
	;;
      15)
	test1 crackme08
	;;
      16)
	test1 crackme08e
	;;
      17)
	test1 crackme09
	;;
   esac

done
