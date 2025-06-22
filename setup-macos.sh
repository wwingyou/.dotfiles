DIR="$(cd "$(dirname "$0")" && pwd)"
ln -s $DIR/nvim ~/.config/nvim
ln -s $DIR/karabiner ~/.config/karabiner
ln -s $DIR/tmux ~/.tmux
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/custom_zshrc.sh ~/.custom_zshrc.sh

# Append zshrc custom setting load script
echo "\n# zshrc custom settings\nsource .custom_zshrc.sh" >> "${DIR}/.zshrc"

