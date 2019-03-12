#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# See https://github.com/geerlingguy/dotfiles

# Actually clear the terminal alias.
alias aclear="clear && printf '\e[3J'"

# Color hidden bash files in home dir aliases.
# Requires highlight (`brew install highlight`).
alias cba="highlight ~/.bash_aliases"
alias cbp="highlight ~/.bash_profile"
alias cbr="highlight ~/.bashrc"
alias clr="highlight"

# List directory aliases (similar to Windows cmd.exe).
alias dir="ls -AHl"
alias lsl="ls -AHl"

# Docker remove dangling images alias.
alias dockrmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"

# Docker image visualization (usage: `dockviz images -t`).
alias dockviz="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"

# Download .editorconfig from PGS GitLab nathanurwin/dotfiles alias.
alias edi="curl -fsSL https://github.com/nathanurwin/dotfiles/raw/master/.editorconfig -o .editorconfig"

# Git aliases.
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gba="git branch --all"
alias gc="git commit"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gcm="git commit --message"
alias gd="git --no-pager diff"
alias gdh="git --no-pager diff HEAD"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gi="git init"
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gp="git pull"
alias gpr="git pull --rebase"
alias gps="git push"
alias gpsu="git push --set-upstream"
alias gr="git remote"
alias grb="git rebase"
alias gre="git reset"
alias greh="git reset --hard"
alias grm="git rm --cached -r ."
alias grv="git remote -v"
alias gs="git status"
alias gst="git stash"

# Liferay Tomcat cd alias.
alias liferay="cd ~/Applications/liferay*/tom*/bin"

# ~/Modules tree and uncommitted aliases.
# Requires uncommitted (`brew install uncommitted`).
alias mod="cd ~/Modules && tree -d -L 2"
alias mod\?="cd ~/Modules && uncommitted -nus *"

# Nano hidden bash files in home dir aliases.
alias nba="nano ~/.bash_aliases"
alias nbp="nano ~/.bash_profile"
alias nbr="nano ~/.bashrc"

# Update all pip packges alias.
alias pipup="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Source hidden bash files in home dir aliases.
alias sba="source ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias sbr="source ~/.bash_profile"

# List running virtual machines alias.
alias vms="vboxmanage list runningvms"

# ~/Projects tree and uncommitted aliases.
# Requires uncommitted (`brew install uncommitted`).
alias work="cd ~/Projects && tree -d -L 2"
alias work\?="cd ~/Projects && uncommitted -nus *"
