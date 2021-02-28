local DEFAULT_TMUX_CONFIG_PATH="${HOME}/.tmux.conf"

if [[ ! -f $DEFAULT_TMUX_CONFIG_PATH ]]; then
    ln -s $(dirname $0:A)/.tmux.conf $DEFAULT_TMUX_CONFIG_PATH
fi

if [[ ! -d ~/.tmux/plugins/tpm ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
