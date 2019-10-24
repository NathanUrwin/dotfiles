#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# shellcheck source=/dev/null
# See https://github.com/geerlingguy/dotfiles

###############################################################################
# Exports                                                                     #
###############################################################################

# Use colors.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Set Visual Studio Code Bin dir.
export CODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Set Java Home.
export JAVA_HOME="$HOME/.jabba/jdk/zulu@1.8.121/Contents/Home"

# Stolen prompt from Debian GNU/Linux.
export PS1="\\u@\\h:\\w\$ "

# Set Pyenv Root.
export PYENV_ROOT="/usr/local/opt/pyenv"

# Set Requests Certificate Authority to brew installed OpenSSL.
export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl/cert.pem"

# Set Ruby and Ruby Gems dirs.
export RUBY_DIR="/usr/local/opt/ruby"
export RUBY_GEMDIR
RUBY_GEMDIR="$("$RUBY_DIR/bin/gem" environment gemdir)"

# Set Vagrant current working directory to ~/Projects/louis/ansible.
export VAGRANT_CWD="/Users/nathan.urwin/Projects/louis/ansible"

# Set *DEV env vars.
export PYSDM_DEV="true"
export STERN_DEV="true"
export WHARF_DEV="true"

# Add Visual Studio Code Bin to PATH.
if [[ ! "$PATH" =~ $CODE_BIN ]]; then
	export PATH="$PATH:$CODE_BIN"
fi

# Add Java Home to PATH.
if [[ ! "$PATH" =~ $JAVA_HOME ]]; then
	export PATH="$JAVA_HOME/bin:$PATH"
fi

# Add Pyenv Root to PATH.
if [[ ! "$PATH" =~ $PYENV_ROOT/bin ]]; then
	export PATH="$PYENV_ROOT/bin:$PATH"
fi

# Add Ruby dir to PATH.
if [[ ! "$PATH" =~ $RUBY_DIR/bin ]]; then
	export PATH="$RUBY_DIR/bin:$PATH"
fi

# Add Ruby Gems to PATH.
if [[ ! "$PATH" =~ $RUBY_GEMDIR/bin ]]; then
	export PATH="$RUBY_GEMDIR/bin:$PATH"
fi

###############################################################################
# Source and eval                                                             #
###############################################################################

# Turn on Git autocomplete.
if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi

# Use nvm.
# export NVM_DIR="$HOME/.nvm"
. /usr/local/opt/nvm/nvm.sh
# nvm use --delete-prefix lts/dubnium --silent

# Use pyenv.
eval "$(pyenv init -)"

###############################################################################
# Functions                                                                   #
###############################################################################

# Enter a running Docker container.
dockent() {
	if [[ ! "$1" ]] ; then
		echo "You must supply a container ID or name."
		return 0
	fi
	docker exec -it "$1" bash
	return 0
}

# Remove all exited Docker containers.
dockrm() {
	# Word splitting is needed here.
	# shellcheck disable=SC2046
	docker rm $(docker ps -a | grep 'Exited' | awk '{print $1}' | xargs)
}

# Super useful Docker container oneshots.
# Usage: dockrun [centos7|fedora27|debian9|debian8|ubuntu1404|etc.]
dockrun() {
	docker run -it geerlingguy/docker-"${1:-ubuntu1604}"-ansible /bin/bash
}

# Download .gitignore templates from gitignore.io.
gig() {
	curl -fsSL "https://www.gitignore.io/api/$*"
}

runlike() {
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock assaflavie/runlike "$1" | sed 's/--/\n--/g' | sed 's/^ //g'
}
