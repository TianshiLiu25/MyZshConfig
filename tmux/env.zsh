local DEFAULT_TMUX_CONFIG_PATH="${HOME}/.tmux.conf"

ln -s $(dirname $0:A)/tmux.conf $DEFAULT_TMUX_CONFIG_PATH
