alias listalias="cat ~/.custom/aliases.sh"

alias vi="nvim"
alias ctl='systemctl'
alias cls="clear"
alias ls="ls --color"
alias :wq="exit"
alias fuck="sudo pacman -Syu && sudo pacman -Syy"

alias pbcopy="xsel --input --clipboard"
alias pbpaste="xsel --output --clipboard"

alias netreset="systemctl restart NetworkManager"
alias netshow="nmcli | grep ^wlan0 | grep -oE '[^ ]+$'"
alias netscan="nmcli dev wifi list"
alias netcon="nmcli device wifi connect"

alias run-ai="ollama run tinyllama"
alias run-ai-un="ollama run uncensored"

alias clocktty="tty-clock -cDBC 5"
alias matrix='unimatrix -abfs 96 -l o'
alias pipes='pipes.sh -t 3'

alias cd='z'
alias cdi='zi'
alias inv='nvim $(fzf --preview="bat --color=always {}")'

alias gittoken='sudo cat ~/gittoken.txt | pbcopy'
alias got=git

alias docker='sudo docker'
alias kalilinux='docker start kalilinux && docker exec -it kalilinux bash'
alias kalilinux-stop='docker stop kalilinux'
