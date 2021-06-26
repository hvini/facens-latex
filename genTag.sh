#!/bin/bash

arg=$1
decimal="false"
left=""
right=""

for (( i=1; i<${#arg}; i++ )); 
do
  ch=${arg:$i:1} 
  
  if [ "$ch" == "." ]; then   
    decimal="true"  
    continue 
  fi 
  
  if [ "$ch" == "-" ]; then  
    break 
  fi 
  
  if [ "$decimal" == "false" ]; then  
    left="${left}${ch}" 
  else  
    right="${right}${ch}" 
  fi
done
  
if [ "$right" == "9" ]; then 
  right=0 
  left="$((left + 1))"
else  
  right="$((right + 1))"
fi

TRAVIS_TAG="v${left}.${right}"

echo $TRAVIS_TAG