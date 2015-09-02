#!/bin/bash
# part of the .bashrc

vimgrep() {
    cmd=""
    for arg in "$@"; do
        cmd="${cmd} \"${arg}\""
    done
    vim -c "grep ${cmd}"
}

alias ls='ls --color=auto'
alias l='ls -lq'
alias ll='ls -laq'
alias grep='grep --color'
alias gnr='grep -Inr'
alias gnir='grep -Inir'
alias vimgnr='vimgrep -r'
alias vimgnir='vimgrep -ir'
alias v='vim'
alias sv='vim -c AS'
alias vd='vimdiff'
alias remount='sudo umount -a -t cifs -l && sudo mount -a'
alias remake='make clean all'
alias alert="zenity --info --text='Done!'"
alias tmux-alert='tmux display-message "Done!"'
alias eclimd='$ECLIPSE_HOME/eclimd'
alias car='echo "Vroom Vroom!" && read -n 1 c && cat'
alias tag='[[ -f tags-descriptor ]] && ctags -R $(cat tags-descriptor) || echo "no tags-descriptor file"'
alias bashrc-tmux-source='tmux-run-everywhere "source ~/.bashrc"'
alias gd='git diff'
alias gdc='git diff --cached'
alias gis='git status'
alias gg='git graph'
alias ggg='git full-graph'
alias myip="curl -v --silent 'http://www.whatsmyip.us/imgcode.php' 2>&1 | sed -rn 's/^([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}).*/\1/p'"

# change directory
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

if [[ -a $HOME/local_dotfiles/.bash_aliases ]]; then
    source $HOME/local_dotfiles/.bash_aliases
fi
