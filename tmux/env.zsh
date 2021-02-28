local DEFAULT_TMUX_CONFIG_PATH="${HOME}/.tmux.conf"

if [ ! -f $(dirname $0:A)/tmux.conf ]; then
    ln -s $(dirname $0:A)/tmux.conf $DEFAULT_TMUX_CONFIG_PATH
fi
