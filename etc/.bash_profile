#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# shellcheck source=/dev/null
# See https://github.com/geerlingguy/dotfiles

# Include alias file (if present) containing aliases.
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Include bashrc file (if present).
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
