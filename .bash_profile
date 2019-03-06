#!/usr/bin/env bash
# -*- coding: utf-8 -*-

alias clear-all="clear && printf '\e[3J'"
alias dir="ls -HAl"
alias docker-rm="docker rm \$(docker ps -a | grep 'Exited' | awk '{print \$1}' | xargs)"  # shellcheck disable=SC2142
alias docker-rmi="docker rmi -f \$(docker images -f 'dangling=true' -q)"
alias liferay="cd ~/Applications/liferay*/tom*/bin"
alias modwork="cd ~/Modules && tree -d -L 2"
alias modwork\?="cd ~/Modules && uncommitted -nus *"
alias vms="vboxmanage list runningvms"
alias work="cd ~/Projects && tree -d -L 2"
alias work\?="cd ~/Projects && uncommitted -nus * -I wharf_group"

export CODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export JAVA_HOME="$HOME/.jabba/jdk/zulu@1.8.121/Contents/Home"
export PS1="\\u@\\h:\\w\$ "
export PYENV_ROOT="/usr/local/opt/pyenv"
export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl/cert.pem"
export RUBY_DIR="/usr/local/opt/ruby"
export RUBY_GEMDIR
RUBY_GEMDIR="$("$RUBY_DIR/bin/gem" environment gemdir)"
export VAGRANT_CWD="/Users/nathan.urwin/Projects/louis/ansible"
export PYSDM_DEV="true"
export STERN_DEV="true"
export WHARF_DEV="true"

# PATH
if [[ ! "$PATH" =~ "$CODE_BIN" ]]; then
	export PATH="$PATH:$CODE_BIN"
fi
if [[ ! "$PATH" =~ "$JAVA_HOME" ]]; then
	export PATH="$JAVA_HOME/bin:$PATH"
fi
if [[ ! "$PATH" =~ "$PYENV_ROOT/bin" ]]; then
	export PATH="$PYENV_ROOT/bin:$PATH"
fi
if [[ ! "$PATH" =~ "$RUBY_DIR/bin" ]]; then
	export PATH="$RUBY_DIR/bin:$PATH"
fi
if [[ ! "$PATH" =~ "$RUBY_GEMDIR/bin" ]]; then
	export PATH="$RUBY_GEMDIR/bin:$PATH"
fi

source "/usr/local/opt/nvm/nvm.sh"
nvm use --delete-prefix lts/dubnium --silent
eval "$(pyenv init -)"

gig() {
	curl -fsSL "https://www.gitignore.io/api/$*"
}
