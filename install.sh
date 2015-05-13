#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

for file in 
do
  cp -rn $file ~
done
