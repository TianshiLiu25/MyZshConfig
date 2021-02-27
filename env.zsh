local LOCAL_PATH=$(dirname $0:A)

# oh-my-zsh
source $LOCAL_PATH/oh-my-zsh/zshrc.zsh

# pm
source $LOCAL_PATH/pm/env.zsh

# tmux
source $LOCAL_PATH/tmux/env.zsh

# machine specific
local MACHINE_SPECIFIC_FILE="$LOCAL_PATH/machine_specific/spec_env.sh"
source $MACHINE_SPECIFIC_FILE
alias rf="source $MACHINE_SPECIFIC_FILE"
alias ef="vi $MACHINE_SPECIFIC_FILE"

local ALL_CONFIG_FILE="$LOCAL_PATH/env.zsh"
alias rfa="source $ALL_CONFIG_FILE"
alias efa="vi $ALL_CONFIG_FILE"

# proxy
function proxy_on {
    export http_proxy="$PROXY_CONFIG";
    export https_proxy="$PROXY_CONFIG";
}
function proxy_off {
    unset http_proxy;
    unset https_proxy;
}

# pipenv
export WORKON_HOME=${HOME}/python_envs
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# enhancd
# https://github.com/b4b4r07/enhancd
# cd with fuzzy search
source $LOCAL_PATH/enhancd/init.sh

# go
export PATH=/usr/local/go/bin:$PATH
export GO_PATH=${HOME}/go

# git
git config --global core.editor vim

# shortcuts
alias nvim=$NVIM_PATH
alias vim=nvim
alias vi=nvim

alias R=". ranger"

alias rp=realpath

# general
export PATH=$PATH:${HOME}/bin
# ubuntu
export PATH=$PATH:${HOME}/.local/bin
