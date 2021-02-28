# https://github.com/Angelmmiguel/pm
# project path manager
source $(dirname $0:A)/pm.zsh

alias pma="pm add"
alias pmg="pm go"
alias pmrm="pm remove"
alias pml="pm list"

if [[ ! -f ${HOME}/LocalConfig/pm ]] then
    mkdir -p ${HOME}/LocalConfig/pm
fi

export PM_BASE=${HOME}/LocalConfig/pm