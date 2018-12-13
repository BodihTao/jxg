#!/bin/bash

echo "<html> <head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><title>吉祥果博客文章汇总 </title></head><body> <h2>吉祥果博客文章汇总</h2> <p>共 $(ls Post_*|wc -l) 篇文章，最后更新时间：<em>$(date "+%Y-%m-%d %H:%M:%S" )</em></p>  <ol>" >index.html
for i in $(ls Post_*|sort -r)  
do  
title=$(grep "<h2>" $i|cut -d\> -f2 |cut -d_ -f1)

echo "<li><a href=\"$i\">${title}</a></li>" >>index.html

done  

echo "</ol></body></html>"  >>index.html


