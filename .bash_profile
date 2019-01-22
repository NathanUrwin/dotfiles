#!/usr/bin/env bash
# -*- coding: utf8 -*-

alias clear-all="clear && printf '\e[3J'"
alias dir="ls -HAl"
alias docker-rm="docker rm \$(docker ps -a | grep 'Exited' | awk '{print \$1}' | xargs)"  # shellcheck disable=SC2142
alias docker-rmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"
alias liferay="cd ~/Applications/liferay*/tom*/bin"
alias vms="vboxmanage list runningvms"
alias work="cd ~/Projects && tree -d -L 2"
alias work\?="cd ~/Projects && uncommitted -nus * -I louis/sdmPythonWrapper/src/pysdm/lib"

export PS1="\\u@\\h:\\w\$ "

# ruby
export RUBY_DIR
RUBY_DIR="$(brew --prefix ruby)"
if [[ ! "$PATH" =~ "$RUBY_DIR/bin" ]]; then
	export PATH="$RUBY_DIR/bin:$PATH"
fi

# ruby gems
export RUBY_GEMDIR
RUBY_GEMDIR="$("$RUBY_DIR/bin/gem" environment gemdir)"
if [[ ! "$PATH" =~ "$RUBY_GEMDIR/bin" ]]; then
	export PATH="$RUBY_GEMDIR/bin:$PATH"
fi

# nvm
export NVM_DIR
NVM_DIR="$(brew --prefix nvm)"
source "$NVM_DIR/nvm.sh"
nvm use --delete-prefix lts/dubnium

# python
export PYENV_ROOT
PYENV_ROOT="$(brew --prefix pyenv)"
if [[ ! "$PATH" =~ "$PYENV_ROOT/bin" ]]; then
	export PATH="$PYENV_ROOT/bin:$PATH"
fi
eval "$(pyenv init -)"
export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl/cert.pem"

# java
export JAVA_HOME="$HOME/.jabba/jdk/zulu@1.8.121/Contents/Home"
if [[ ! "$PATH" =~ "$JAVA_HOME" ]]; then
	export PATH="$JAVA_HOME/bin:$PATH"
fi

# code
export CODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
if [[ ! "$PATH" =~ "$CODE_BIN" ]]; then
	export PATH="$PATH:$CODE_BIN"
fi

# .gitignore
gig() {
	curl -fsSL "https://www.gitignore.io/api/$*"
}
