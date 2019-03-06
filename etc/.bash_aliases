#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# See https://github.com/geerlingguy/dotfiles

# Actually clear the terminal alias.
alias clearall="clear && printf '\e[3J'"

# List directory alias (similar to Windows cmd.exe).
alias dir="ls -HAl"

# Docker remove dangling images alias.
alias dockrmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"

# Docker image visualization (usage: `dockviz images -t`).
alias dockviz="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"

# Download .editorconfig from PGS GitLab nathanurwin/dotfiles alias.
alias edic="curl -fsSL https://lgitlab.lon.compute.pgs.com/nathanurwin/dotfiles/raw/master/.editorconfig -o .editorconfig"

# Git aliases.
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gd="git --no-pager diff HEAD"
alias gpl="git pull --rebase"
alias gps="git push"
alias gpu="git push --set-upstream origin master"
alias gs="git status"
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Liferay Tomcat cd alias.
alias liferay="cd ~/Applications/liferay*/tom*/bin"

# ~/Modules tree and uncommitted aliases.
# Requires uncommitted (`brew install uncommitted`).
alias modwork="cd ~/Modules && tree -d -L 2"
alias modwork\?="cd ~/Modules && uncommitted -nus *"

# List running virtual machines alias.
alias vms="vboxmanage list runningvms"

# ~/Projects tree and uncommitted aliases.
# Requires uncommitted (`brew install uncommitted`).
alias work="cd ~/Projects && tree -d -L 2"
alias work\?="cd ~/Projects && uncommitted -nus * -I wharf_group"
