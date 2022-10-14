# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM
export EDITOR=vim
PS1="comp3301:\w$ "

alias vi='vim'
export vi
alias c='clear'
export c
alias ll='ls -la'
export ll
alias la='ls -a'
export la
alias reset='ccidctl reset ccid1'
export reset
alias show='ccidctl show ccid1'
export show
alias yk='ccidctl ykselect ccid1'
export yk
alias usbpath='cd /sys/dev/usb'
export usbpath 
alias bin='cd /usr/src/usr.bin'
export bin 
alias sbin='cd /usr/src/usr.sbin'
export sbin 
alias rb='doas reboot'
export rb
