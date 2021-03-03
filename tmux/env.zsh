alias tmux="tmux -f $(dirname $0:A)/tmux.conf"

if [[ ! -d ~/.tmux/plugins/tpm ]]; then
    mkdir -p ~/.tmux/plugins/tpm
    cp -r $(dirname $0:A)/tpm ~/.tmux/plugins/
fi
