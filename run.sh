cd "$(dirname "$0")";pwd
python sina_blog_crawler.py http://blog.sina.com.cn/jixiangguozi desc
git add *
git commit  -m "update"
git push
