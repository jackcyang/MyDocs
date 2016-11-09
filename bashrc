# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# User specific aliases and functions
export PATH=$HOME/.config/composer/vendor/bin:$PATH
export WWW=/var/www/html

alias l="ls -l"
alias ll="ls -al"
alias v="vim"
alias vi="vim"
alias vd="vimdiff"
alias gvd="gvimdiff"
alias dr="drush"
alias grep="grep -n --color=auto"
alias cdw='cd /var/www/html'
alias sdnow='sync;sync;sudo shutdown -h now'
alias open=xdg-open

# git commands
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gpom='git push origin master'
alias gd='git diff'
alias gdc='git diff --cached'

# Drupal coding standards
alias dpcs="phpcs --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt,md'"
# Drupal best practice
alias dpcsp="phpcs --standard=DrupalPractice --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt,md'"
# Automatically fix coding standards
alias dpcbf="phpcbf --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt,md'"

alias va="vagrant"
