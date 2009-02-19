if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -d ~/bin ]; then
    PATH=~/bin:$PATH
fi

if [ -d ~/local/bin ]; then
    PATH=$PATH:~/local/bin
fi
