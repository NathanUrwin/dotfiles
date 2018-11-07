#!/usr/bin/env bash
# -*- coding: utf8 -*-
[[ "$TRACE" ]] && set -x
set -eo pipefail

# shellcheck disable=SC1090
source ~/miniconda3/etc/profile.d/conda.sh
conda activate

alias code="cd ~/Projects && tree -d -L 2"
alias code\?="cd ~/Projects && uncommitted -nus *"
alias dir="ls -HAl"
alias docker-rmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"
# shellcheck disable=SC2142
alias docker-rm="docker rm \$(docker ps -a | grep -E 'Exited (^[1-9]\\d*$)' | awk '{print \$1}' | xargs)"
alias liferay="cd ~/Applications/liferay*/tom*/bin"

export JAVA_HOME
JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="$JAVA_HOME/bin:$PATH"
export PS1="\\u@\\h:\\w\$ "
# export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl/certs/pgs-root-ca.pem"

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
