#!/bin/bash
# Author: zhuima
# zhuima @ 2018-09-26 11:09:58
# Function:
# Usage: 获取文件中的第10行
# Website: https://leetcode-cn.com/problems/tenth-line/description/
# Other: 
#   思考考虑到获取文件的某几行
#   思考下如何获取文件的某一行的某一列
#   思考如何实现精确匹配某一个字符



# method 1
FILENAME="/tmp/anaconda-ks.cfg"

if [[ $(wc -l $FILENAME | awk '{print $1}') -lt 10 ]];then
    echo "File of $FILENAME is less than 10 line"
else
    head -n10 $FILENAME | tail -n1
fi


# method 2

FILENAME="/tmp/anaconda-ks.cfg"

if [[ $(wc -l $FILENAME | awk '{print $1}') -lt 10 ]];then
    echo "File of $FILENAME is less than 10 line"
else
    i=1
    while read line;do
	if [[ $i -eq 10 ]];then
		echo $line
	fi
	i=$i+1
    done<$FILENAME

fi

# method 3

FILENAME="/tmp/anaconda-ks.cfg"

if [[ $(wc -l $FILENAME | awk '{print $1}') -lt 10 ]];then
    echo "File of $FILENAME is less than 10 line"
else
    sed -n '10p' $FILENAME

fi

# method 4

FILENAME="/tmp/anaconda-ks.cfg"

if [[ $(wc -l $FILENAME | awk '{print $1}') -lt 10 ]];then
    echo "File of $FILENAME is less than 10 line"
else
    cat -n $FILENAME | grep '10's


fi

# method 5

FILENAME="/tmp/anaconda-ks.cfg"

if [[ $(wc -l $FILENAME | awk '{print $1}') -lt 10 ]];then
    echo "File of $FILENAME is less than 10 line"
else
    cat $FILENAME | grep -nf $FILENAME  | grep 10

fi


# method 6, 来自网上的答案

FILENAME="/tmp/anaconda-ks.cfg"

if [[ $(wc -l $FILENAME | awk '{print $1}') -lt 10 ]];then
    echo "File of $FILENAME is less than 10 line"
else
    awk '{if(NR==10) printf $0"\n"}' $FILENAME

fi