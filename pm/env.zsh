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

# TODO sudo cp _pm /usr/local/share/zsh/site-functions/

export PM_BASE=${HOME}/LocalConfig/pm