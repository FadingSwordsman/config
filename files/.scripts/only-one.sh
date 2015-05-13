#!/bin/bash
#There can be only one!
if [[ -n $1 ]]
then
  kill $(ps aux | grep `whoami` | grep "$1$" | tail -n +2 | tr -s ' ' | cut -d' ' -f2)
fi
