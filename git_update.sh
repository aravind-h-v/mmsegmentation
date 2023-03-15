#!/bin/sh
cd "$('dirname' '--' "${0}")"
(sed 's@^@(git add "@g;s@$@");@g' './git_add.txt'; sed 's@^@(rm -vf -- "@g;s@$@");@g' './git_rm.txt') | sort | uniq | sh
