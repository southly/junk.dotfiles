export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export MANPATH=$HOME/local/man:$MANPATH
export DISPLAY=:0.0
export LIBRARY_PATH=$HOME/local/lib:$LIBRARY_PATH
export C_INCLUDE_PATH=$HOME/local/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$HOME/local/include:$CPLUS_INCLUDE_PATH

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`gdircolors -b`"
    alias ls='gls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

alias base64=gbase64
alias basename=gbasename
alias cat=gcat
alias chcon=gchcon
alias chgrp=gchgrp
alias chmod=gchmod
alias chown=gchown
alias chroot=gchroot
alias cksum=gcksum
alias comm=gcomm
alias cp=gcp
alias csplit=gcsplit
alias cut=gcut
alias date=gdate
alias dd=gdd
alias df=gdf
alias dir=gdir
alias dircolors=gdircolors
alias dirname=gdirname
alias du=gdu
alias echo=gecho
alias env=genv
alias expand=gexpand
alias expr=gexpr
alias factor=gfactor
alias false=gfalse
alias fmt=gfmt
alias fold=gfold
alias groups=ggroups
alias head=ghead
alias hostid=ghostid
alias id=gid
alias install=ginstall
alias join=gjoin
alias kill=gkill
alias link=glink
alias ln=gln
alias logname=glogname
#alias ls=gls
alias md5sum=gmd5sum
alias mkdir=gmkdir
alias mkfifo=gmkfifo
alias mknod=gmknod
alias mktemp=gmktemp
alias mv=gmv
alias nice=gnice
alias nl=gnl
alias nohup=gnohup
alias od=god
alias paste=gpaste
alias pathchk=gpathchk
alias pinky=gpinky
alias pr=gpr
alias printenv=gprintenv
alias printf=gprintf
alias ptx=gptx
alias pwd=gpwd
alias readlink=greadlink
alias rm=grm
alias rmdir=grmdir
alias runcon=gruncon
alias seq=gseq
alias sha1sum=gsha1sum
alias sha224sum=gsha224sum
alias sha256sum=gsha256sum
alias sha384sum=gsha384sum
alias sha512sum=gsha512sum
alias shred=gshred
alias shuf=gshuf
alias sleep=gsleep
alias sort=gsort
alias split=gsplit
alias stat=gstat
alias stty=gstty
alias sum=gsum
alias sync=gsync
alias tac=gtac
alias tail=gtail
alias tee=gtee
alias test=gtest
alias touch=gtouch
alias tr=gtr
alias true=gtrue
alias tsort=gtsort
alias tty=gtty
alias uname=guname
alias unexpand=gunexpand
alias uniq=guniq
alias unlink=gunlink
alias uptime=guptime
alias users=gusers
alias vdir=gvdir
alias wc=gwc
alias who=gwho
alias whoami=gwhoami
alias yes=gyes

# some more ls aliases
alias ll='ls -l'
alias la='ls -a'
#alias l='ls -CF'
alias grep='grep --color=auto'

alias firefox='open -a Firefox'
alias cmacs='open -a Emacs'
alias x11='open -a X11'

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
# if [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
# fi

PS1='\n\[\033[34m\]\u@ \w\[\033[00m\]\n\$ '

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=ignoredups
