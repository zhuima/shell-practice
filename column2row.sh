#!/bin/bash
# Author: zhuima
# zhuima @ 2018-09-26 14:09:58
# Function:
# Usage: 列转行并统计字符出现次数
# Website: https://leetcode-cn.com/problems/word-frequency/description/
# Other: 
#   其他方式实现呢？




# method 1
FILENAME="string"


cat $FILENAME | tr " " "\n" | sort | uniq -c | awk '{print $2," ",$1}'

