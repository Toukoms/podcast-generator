#!/bin/bash

echo "==========================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"

python3 /usr/bin/feed.py

git add -A && git commit -m "Update feed"
git push --set-upstream origin main

echo "==========================="