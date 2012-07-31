#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# The order matters.
zstyle ':omz:load' omodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'history-substring-search' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'git'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'sorin'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...
export PATH=/usr/local/bin:$PATH

function c() {
	cd $1
	ls
}

# awesome for finding files
function findr() {
  find . -name "*$1*"
}

function omvim() {
  head -n $1 | tail -n 1 | xargs mvim
}

# quickly spellcheck a word by calling ie:
# spell piza
#
# you have to install the following
# sudo port install hunspell
# sudo port install hunspell-dict-en_US
function spell() {
  echo "$1" | hunspell -d en_US
}

# source ~/.rvm/scripts/rvm

# rvm default
[[ -s "/Users/nescribano/.rvm/scripts/rvm" ]] && source "/Users/nescribano/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export CC=gcc-4.2

alias ber='bundle exec rspec'
alias bes='bundle exec spork'
alias bec='bundle exec cucumber'
alias be='bundle exec'
alias pry='pry -r ./config/environment'
alias bpry='bundle exec pry -r ./config/environment'
alias xmvim='xargs mvim'
# modify files that have are unstagged
alias mmvim='git diff --name-only $1 | xargs mvim'
# modify files that have been stagged
alias mmmvim='git diffs --name-only $1 | xargs mvim'

