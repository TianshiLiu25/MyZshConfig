# After git repo sync (git submodule update --init --remote)
# run this script to init environment

INIT_CONFIG_BACKUP="${HOME}/$(date +"%Y%m%d_%H%M%S")_InitConfigBackup"
mkdir -p $INIT_CONFIG_BACKUP

# zsh
DEFAULT_ZSH_CONFIG_PATH="${HOME}/.zshrc"
mv $DEFAULT_ZSH_CONFIG_PATH $INIT_CONFIG_BACKUP/zshrc
echo "source $(dirname $0:A)/env.zsh" > $DEFAULT_ZSH_CONFIG_PATH

# tmux
mv ${HOME}/.tmux.conf $INIT_CONFIG_BACKUP/tmux.conf
mv ${HOME}/.tmux $INIT_CONFIG_BACKUP/tmux
mkdir -p ~/.tmux/plugins/tpm
cp $(dirname $0:A)/tmux/tmux.conf "${HOME}/.tmux.conf"
cp -r $(dirname $0:A)/tmux/tpm ~/.tmux/plugins/

# ranger
mv ${HOME}/.config/ranger $INIT_CONFIG_BACKUP/
cp -r $(dirname $0:A)/ranger ~/.config/
