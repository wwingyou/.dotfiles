DIR="$(cd "$(dirname "$0")" && pwd)"
ln -s $DIR/nvim ~/.config/nvim
ln -s $DIR/kitty ~/.config/kitty
ln -s $DIR/karabiner ~/.config/karabiner
ln -s $DIR/nnn ~/.config/nnn
ln -s $DIR/tmux ~/.tmux
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/tmuxifier ~/.tmuxifier
ln -s $DIR/custom_zshrc.sh ~/.custom_zshrc.sh

# Install tmux tokyonight dependencies
# See: https://github.com/janoamaral/tokyo-night-tmux?tab=readme-ov-file#requirements
brew install --cask font-monaspace-nerd-font font-noto-sans-symbols-2
brew install bash bc coreutils gawk gh glab gsed jq nowplaying-cli

# Append zshrc custom setting load script
echo "\n# zshrc custom settings\nsource .custom_zshrc.sh" >> "${DIR}/.zshrc"
