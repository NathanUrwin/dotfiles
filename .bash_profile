#!/usr/bin/env bash
# -*- coding: utf8 -*-

alias dir="ls -HAl"
alias code="cd ~/Projects && tree -d -L 2"
alias liferay="cd ~/Applications/liferay*/tom*/bin"

export PS1="\\u@\\h:\\w\$ "
export JAVA_HOME
JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="$JAVA_HOME/bin:/Users/nathan.urwin/miniconda2/bin:$PATH"

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
