#!/usr/bin/env bash
# -*- coding: utf8 -*-

alias code="cd ~/Projects && tree -d -L 2"
alias code\?="cd ~/Projects && uncommitted -I ~/Projects/nathanurwin/cookiecutter-git -nus *"
alias dir="ls -HAl"
alias liferay="cd ~/Applications/liferay*/tom*/bin"

export JAVA_HOME
JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="$JAVA_HOME/bin:/Users/nathan.urwin/miniconda2/bin:$PATH"
export PS1="\\u@\\h:\\w\$ "

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
