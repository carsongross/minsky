#!/bin/bash

t=0
for i in test/00/*.sh; do 
  sh $i
  status=$?
  if [ $status -ne 0 ]; then
      let $[t++]
      echo "$i exited with nonzero code $status"
  fi
done
exit $t
