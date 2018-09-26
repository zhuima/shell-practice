#!/bin/bash
# Author: zhuima
# zhuima @ 2018-09-26 14:20:58
# Function:
# Usage: 校验电话号码的有效性
# Website: https://leetcode-cn.com/problems/valid-phone-numbers/description/
# Other: 
#   其他方式实现呢？
#   十分严谨的方式实现



FILENAME="phonenumber"

while read line;do 
    if echo $line | grep '^[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}$' &>/dev/null;then
        echo $line
    elif  echo $line | grep '^([0-9]\{3\}) [0-9]\{3\}-[0-9]\{4\}$' &>/dev/null;then
        echo $line
    fi
done<$FILENAME