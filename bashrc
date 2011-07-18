# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Make the matches that grep finds show up color hilighted (in green)
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# Make ls colorize its output and make the colors useful on a termal with a black background
alias ls='ls --color'
LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jpg=01;35:*.png=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.png=01;35:*.mpg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:';

# Timezone is Mountain
export TZ='America/Denver'

# History ----------------------------------------------------------
export HISTCONTROL=ignoredups
export HISTFILESIZE=3000
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll:lla:ls -l:ls -lrt:ls- l"
alias h=history
hf(){
      grep "$@" ~/.bash_history
}

EDITOR=vim

# Add some color to the prompt
export PS1='[\u@\h \W]\[\e[0;36m\]\$\[\e[0m\] '

