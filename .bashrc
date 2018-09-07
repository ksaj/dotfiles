# .bashrc

SHELL=/bin/bash
PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/X11/bin:~/bin

# PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

export TERM=xterm-256color  # for vim and some terminals

PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:\007"'

alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
alias grep="grep --colour"
alias fbscale="sips --resampleWidth 600"
alias df="df -H"
export ECHO_NEST_API_KEY="KSAJ-XXX" # Obviously edited out for the greater good of mankind...

# security related aliases
alias sha1='openssl sha1'
alias httpheader='curl -I'
alias wget='wget -c'

# Mac specific stuff
if [[ "$OSTYPE" == "darwin"* ]]; then
        # w00t!
fi

# RPi (Raspbian) specific stuff
if [[ "$OSTYPE" == "linux-gnueabihf"* ]]; then
        # w00t!
fi
