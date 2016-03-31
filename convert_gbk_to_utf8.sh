#!/bin/bash
filelist=`find . -name *.java`
for file in $filelist
do
 echo $file
 mv $file "${file%.java}.java_gbk"
 iconv -f GBK -t UTF8 "${file%.java}.java_gbk" > "$file";
 rm  "${file%.java}.java_gbk"
done
