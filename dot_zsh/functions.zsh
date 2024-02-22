#!/usr/bin/env zsh

function git-branch-purge() {
	git branch --merged | egrep -v "(^\*|main|master)" | xargs git branch -d
}
