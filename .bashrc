# .bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

SHELL=/bin/bash
PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/X11/bin:~/bin

# PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

export TERM=xterm-256color  # for vim and some terminals

PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:\007"'

shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
force_color_prompt=yes

alias cd..="cd .."
alias ls="ls --color"
alias ll="ls -lh"
alias la="ls -lah"
alias l="ls -CF"
alias grep="grep --color"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias df="df -H"
alias diff="colordiff"

# Update to complement vi and term colours
man() {
        env \
        LESS_TERMCAP_md=$(printf "\e[1;36m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}

# security related aliases
alias sha1='openssl sha1'
alias httpheader='curl -I'
alias wget='wget -c'

rot13()
{
        if [ $# = 0 ] ; then
                tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]"
        else
                tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]" < $1
        fi
}

# Mac specific stuff
if [[ "$OSTYPE" == "darwin"* ]]; then
        alias fbscale="sips --resampleWidth 600"
        export ECHO_NEST_API_KEY="KSAJ-XXX" # Obviously edited out for the greater good of mankind...
# INCOMPLETE...
fi

# RPi (Raspbian) specific stuff
if [[ "$OSTYPE" == "linux-gnueabihf"* ]]; then
        export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:~/bin
fi

# Fun stuff - Need to update font for these characters...
meh() { echo "¯\_(ツ)_/¯"; }
tableflip() { echo "（╯°□°）╯ ┻━┻"; }
