
if [ -f ~/.shell_shared_configs ]; then
   . ~/.shell_shared_configs
fi


alias ll='ls -lFb'
alias la='ls -LaFb'



set -o vi

# emacs
alias red="emacsclient -e '(kill-emacs)'; emacs --daemon #restart emacs daemon
alias ec="emacsclient -c --alternate-editor=\"\"" # open emacs client, starting daemon if needed

# git
alias gup="git add . && git commit -m \"Update $(date +%c)\" && gitp ush" # git update and push

export EDITOR=emacs
export PAGER=less

export PATH="$PATH:~/.local/bin"
