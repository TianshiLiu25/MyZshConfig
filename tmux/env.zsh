local DEFAULT_TMUX_CONFIG_PATH="${HOME}/.tmux.conf"

if [[ -L $DEFAULT_TMUX_CONFIG_PATH ]]
then
    ln -s $(dirname $0:A)/tmux.conf $DEFAULT_TMUX_CONFIG_PATH
fi
