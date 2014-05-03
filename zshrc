source ~/.zshenv

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

ZSH_CUSTOM=~/src/github.com/rricard/dotfiles/custom/

plugins=(atom bower brew brew-cask bundler coffee colored-man colorize
  command-aliases gem git git-extras git-flow github go golang heroku
  last-working-dir lein node npm osx postgres python rails rake rbenv redis-cli ruby
  sbt scala sudo vagrant xcode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom -w'
fi

alias "g?"="git status"
alias "g+"="git add"
alias "g-"="git rm"
alias "g!"="git commit -am"
alias "g%"="git sync"
