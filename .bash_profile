#!/usr/bin/env bash
# -*- coding: utf8 -*-

alias code="cd ~/Projects && tree -d -L 2"
alias code\?="cd ~/Projects && uncommitted -nus *"
alias dir="ls -HAl"
alias docker-rmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"
# shellcheck disable=SC2142
alias docker-rm="docker rm \$(docker ps -a | grep 'Exited' | awk '{print \$1}' | xargs)"
alias liferay="cd ~/Applications/liferay*/tom*/bin"

export PS1="\\u@\\h:\\w\$ "

# java
export JAVA_HOME
JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="$JAVA_HOME/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
# shellcheck disable=SC1091
source "/usr/local/opt/nvm/nvm.sh"

# pyenv + pipenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PIPENV_VERBOSITY=-1

# .gitignore
gi() { curl -fsSL "https://www.gitignore.io/api/$*" ;}
