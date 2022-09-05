# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

alias kys="sudo shutdown now"
alias ll="ls -al"
alias icat="kitty +kitten icat"
alias clip="kitty +kitten clipboard"
alias ssh="kitty +kitten ssh"
alias torbrowser="env LD_PRELOAD=/home/nissl/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/shim.so torbrowser-launcher"
alias snip="scrot -s /tmp/screenshot.jpg"
#alias less="less -r"

# Put your fun stuff here.
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="${HOME}/.local/bin:/opt/idea-IC-222.3345.118/bin:${PATH}"
export PATH
set -o vi
export EDITOR="vim"
export VISUAL="vim"
export NODE_OPTIONS=--max_old_space_size=4096
