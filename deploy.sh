#!/bin/sh
git add .
git commit -m "`date +%Y%m%d_%H-%M-%S`"
git push origin master
hugo
rsync -vr public/* "$USER"@studio-mizutama.net:/home/web/site/html/
