#!/bin/bash
cd "$(dirname "$0")"; pwd
python sina_blog_crawler.py http://blog.sina.com.cn/u/2670011074 asc

if [ $(git status|grep docs/Post_|wc -l) -gt 0 ] 
then 
bash docs/genIndex.sh
git status
git add *
git commit  -m "update"
git push

fi
