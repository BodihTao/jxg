#!/bin/bash
cd "$(dirname "$0")"; pwd

echo "<html> <head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><title>吉祥果博客文章汇总 </title></head><body> <h2>吉祥果博客文章汇总</h2> <p>共 $(find . -size +1500c -name "Post_*" |wc -l) 篇文章，最后更新时间：<em>$(date "+%Y-%m-%d %H:%M:%S" )</em></p>  <ol>" >index.html
for i in $(find . -size +1500c -name "Post_*" |sort -r)  
do  
title=$(head $i| grep "<h2>"|cut -d\> -f2 |cut -d\< -f1)

echo "<li><a href=\"$(echo $i|cut -c3-)\">${title}</a></li>" >>index.html

done  

echo "</ol></body></html>"  >>index.html


