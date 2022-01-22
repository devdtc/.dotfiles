
if [ -f ~/.shell_shared_configs ]; then
   . ~/.shell_shared_configs
fi


alias ll='ls -lFb'
alias la='ls -LaFb'



set -o vi

# emacs
alias red="emacsclient -e '(kill-emacs)'; emacs --daemon" # restart emacs daemon
alias ec="emacsclient -c --alternate-editor=\"\"" # open emacs client, starting daemon if needed

# git
alias gup="git add .; git commit -m \"Update $(date +%c)\"; git push" # git update and push

alias snip="scrot -s ~/tmp/screenshot.png && ~/.third_party/imgur.sh/imgur.sh ~/tmp/screenshot.png && rm ~/tmp/screenshot.png"

export EDITOR=emacs
export PAGER=less

export PATH="$PATH:~/.local/bin"

export RCLONE_PASSWORD_COMMAND="pass backup/rclone-config"

