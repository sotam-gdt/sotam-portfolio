#!/bin/bash
MSG="${1:-update portfolio}"
cd "$(dirname "$0")"
git add .
git commit -m "$MSG"
git push
npx vercel --prod --yes
