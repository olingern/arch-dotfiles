#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias bye="git branch -D $1"
alias oops="git reset --soft HEAD~1"
alias new_branch="git checkout -b $1"
alias pr="gh pr create --fill"
alias draft="gh pr create --fill --draft"
alias master="git checkout master"
alias goto-interpreter="cd ~/go/src/github.com/olingern/interpreter"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[[ -s "/home/olingern/.gvm/scripts/gvm" ]] && source "/home/olingern/.gvm/scripts/gvm"

