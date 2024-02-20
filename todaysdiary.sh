date=$(date '+%Y-%m-%d')
file="$(cd $(dirname $0); pwd)/docs/diary/$date.md"

if [ -e $file ]; then
    echo "You already wrote your diary today, Grandpa!"
else
touch $file
cat <<EOF >> $file
---
layout: default
title: $date
parent: diary
---
# $date
今日の晩御飯はサンマの塩焼きでした．
EOF
fi