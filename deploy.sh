#!/bin/bash
# SA솔루션 접수 포털을 GitHub Pages(https://sasolutionedu.github.io/apply/)에 반영한다.
# 사용법: bash work/gh-pages-apply/deploy.sh
set -e
cp /workspace/SA_Solution_Student_Portal.html /workspace/work/gh-pages-apply/index.html
cd /workspace/work/gh-pages-apply
git add -A
git -c user.name="SA Solution" -c user.email="sasolution.edu@gmail.com" commit -m "Update portal $(date +%Y-%m-%d\ %H:%M)" || echo "변경 없음"
git push origin main
echo "푸시 완료 — 1~2분 뒤 https://sasolutionedu.github.io/apply/ 확인"
