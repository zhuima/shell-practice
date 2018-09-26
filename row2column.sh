#!/bin/bash
# Author: zhuima
# zhuima @ 2018-09-26 13:09:58
# Function:
# Usage: 列转行
# Website: https://leetcode-cn.com/problems/transpose-file/description/
# Other: 



# method 1

FILENAME="test"

for word in $(awk '{print $1}' $FILENAME);do 
    echo -n "$word "
done

echo
for word in $(awk '{print $2}' $FILENAME);do 
    echo -n "$word "
done

echo 




