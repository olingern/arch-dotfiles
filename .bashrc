#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[[ -s "/home/olingern/.gvm/scripts/gvm" ]] && source "/home/olingern/.gvm/scripts/gvm"

PATH=$PATH:$(go env GOPATH)/binexport PATH=/home/olingern/.nvm/versions/node/v12.4.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/olingern/go/bin:/home/olingern/go/bin:/usr/local/go/bin
