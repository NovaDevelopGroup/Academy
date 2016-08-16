#!/bin/sh
# PATH=/opt/someApp/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

DATE_ALL=`date +%Y-%m-%d_%H.%M.%S`

cd /data/sites/Academy

# backup content
git add /data/sites/Academy/content/

git commit -m "auto backup"

git push

git tag -a v$DATE_ALL -m 'auto backup'

git push origin v$DATE_ALL:v$DATE_ALL
