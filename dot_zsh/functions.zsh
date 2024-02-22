#!/usr/bin/env zsh

function git-branch-purge() {
	git branch --merged | egrep -v "(^\*|main|master|dev)" | xargs git branch -d
}
