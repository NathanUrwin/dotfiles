#!/usr/bin/env bash
# -*- coding: utf8 -*-

alias work="cd ~/Projects && tree -d -L 2"
alias work\?="cd ~/Projects && uncommitted -nus *"
alias dir="ls -HAl"
alias docker-rmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"
# shellcheck disable=SC2142
alias docker-rm="docker rm \$(docker ps -a | grep 'Exited' | awk '{print \$1}' | xargs)"
alias liferay="cd ~/Applications/liferay*/tom*/bin"

export PS1="\\u@\\h:\\w\$ "

# nvm
export NVM_DIR
NVM_DIR="$(brew --prefix nvm)"
# shellcheck disable=SC1090
source "$NVM_DIR/nvm.sh"

# pyenv
export PYENV_ROOT
PYENV_ROOT="$(brew --prefix pyenv)"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# java
export JAVA_HOME="$HOME/.jabba/jdk/zulu@1.8.121/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# code
export CODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$CODE_BIN"

# .gitignore
gi() { curl -fsSL "https://www.gitignore.io/api/$*" ;}
