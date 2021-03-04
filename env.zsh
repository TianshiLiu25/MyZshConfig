local LOCAL_PATH=$(realpath $(dirname $0:A))

# oh-my-zsh
source $LOCAL_PATH/oh-my-zsh/zshrc.zsh

# pm
source $LOCAL_PATH/pm/env.zsh

# machine specific
local MACHINE_SPECIFIC_FILE="${HOME}/LocalConfig/local_env.sh"
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
if [[ $PROXY_ON == true ]] then
    proxy_on
    echo "proxy is on"
fi

# pipenv
if [[ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh
]] then
    export WORKON_HOME=${HOME}/python_envs
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
fi

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
alias gsu='git submodule update --recursive --init;'

# nvim
export NVIM_PATH=${LOCAL_PATH}/nvim/nvim.appimage
alias nvim=$NVIM_PATH
alias vim=nvim
alias vi=nvim

# tmux
tmux source ~/.tmux.conf

alias R=". ranger"

alias rp=realpath

# general
export PATH=$PATH:${HOME}/bin
# ubuntu
export PATH=$PATH:${HOME}/.local/bin
# go
export PATH=${LOCAL_PATH}/go:$PATH
export GO_PATH=${HOME}/go

# Color Setting
# My Theme: Tango Light
export LSCOLORS='Excxfxdxbxahahahahahah'
export LS_COLORS='di=1;34:ln=32:so=35:pi=33:ex=31:bd=30;47:cd=30;47:su=30;47:sg=30;47:tw=30;47:ow=30;47:st=37;44:ex=1;35:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.md=00;31'