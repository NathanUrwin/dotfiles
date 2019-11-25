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
alias gbd="git branch --delete"
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
alias gsm="git submodule"
alias gsmu="git submodule update"
alias gst="git stash"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash push"
alias gstpo="git stash pop"
alias gsts="git stash show -p"

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
# export REQUESTS_CA_BUNDLE="/usr/local/etc/openssl/cert.pem"

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

# Setup gpg-agent.
export GPG_TTY
GPG_TTY=$(tty)
if [ -z "$(pgrep gpg-agent)" ]; then
    eval "$(gpg-agent --daemon)"
fi

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
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock assaflavie/runlike "$1" | sed 's/--/\\\n--/g' | sed 's/^ //g'
}
