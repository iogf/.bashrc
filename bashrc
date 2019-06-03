#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export SUDO_ASKPASS=/usr/bin/qt4-ssh-askpass
export EDITOR="vy"
export PATH=$PATH:~/bin
export SSH_ASKPASS=/usr/bin/qt4-ssh-askpass

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

PATH="/usr/local/heroku/bin:$PATH"
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

function build_regex() {
    local str=$1
    for ind in "${@:2}"; do 
        str="$str.+$ind"
    done

    echo "$str"
}

function f() {
    str=$(build_regex "$@")
    ack "$str" ~/projects/
}

function l() {
    str=$(build_regex "$@")
    ack "$str" $PWD
}

# function git2() {
    # sudo iptables -A OUTPUT -t filter -p tcp --dport 22 -j ACCEPT;
    # `which git` $@;
    # sudo iptables -D OUTPUT -t filter -p tcp --dport 22 -j ACCEPT;
# }
# 
# function ssh2() {
    # sudo iptables -A OUTPUT -t filter -p tcp --dport 22 -j ACCEPT;
    # `which ssh` $@;
    # sudo iptables -D OUTPUT -t filter -p tcp --dport 22 -j ACCEPT;
# }
# 
# export -f git2
# export -f ssh2
# assuming there is a DROP policy in the chains
# for connections on port 22.






