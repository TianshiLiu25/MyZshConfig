# After git repo sync (git submodule update --init --remote)
# run this script to init environment

INIT_CONFIG_BACKUP="${HOME}/$(date +"%Y%m%d_%H%M%S")_InitConfigBackup"
mkdir -p $INIT_CONFIG_BACKUP

# zsh
DEFAULT_ZSH_CONFIG_PATH="${HOME}/.zshrc"
mv $DEFAULT_ZSH_CONFIG_PATH $INIT_CONFIG_BACKUP/zshrc
echo "source $(realpath $(dirname $0:A))/env.zsh" > $DEFAULT_ZSH_CONFIG_PATH

# tmux
# mv ${HOME}/.tmux.conf $INIT_CONFIG_BACKUP/tmux.conf
# mv ${HOME}/.tmux $INIT_CONFIG_BACKUP/tmux
# mkdir -p ~/.tmux/plugins/
# ln -s $(realpath $(dirname $0:A))/tmux/tmux.conf "${HOME}/.tmux.conf"
# cp -r $(realpath $(dirname $0:A))/tmux/tpm ~/.tmux/plugins/

# ranger
mv ${HOME}/.config/ranger $INIT_CONFIG_BACKUP/
mkdir -p ~/.config/
ln -s $(realpath $(dirname $0:A))/ranger ~/.config/ranger

mkdir -p ${HOME}/LocalConfig/
cp ./LocalConfig/local_env.sh.template ${HOME}/LocalConfig/local_env_before.sh
chmod +x ${HOME}/LocalConfig/local_env_before.sh
touch ${HOME}/LocalConfig/local_env_after.sh
chmod +x ${HOME}/LocalConfig/local_env_after.sh

# nvim
# git clone https://github.com/tianshi25/nvim.git -b tianshi --depth=1