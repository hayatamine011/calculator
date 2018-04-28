#!/bin/bash
fic=$1
if [ -f "./head" ]
then
  head=`cat ./head`
else
  head=0
fi
value=`cat ./$fic | wc -l`
delta=$(($value - $head))
if [ "$delta" -le 0 ]
then
  cat ./$fic >./delta
else
  tail -$delta ./$fic >./delta
fi
echo $value >./head
