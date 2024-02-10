#!/usr/bin/env zsh

function git-branch-purge() {
	git branch --v | grep "\[gone\]" | awk '{print $1}' | xargs git branch -D
}
