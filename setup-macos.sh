DIR="$(cd "$(dirname "$0")" && pwd)"
ln -s $DIR/nvim ~/.config/nvim
ln -s $DIR/kitty ~/.config/kitty
ln -s $DIR/karabiner ~/.config/karabiner
ln -s $DIR/nnn ~/.config/nnn
ln -s $DIR/tmux ~/.tmux
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/tmuxifier ~/.tmuxifier
ln -s $DIR/custom_zshrc.sh ~/.custom_zshrc.sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tmux tokyonight dependencies
# See: https://github.com/janoamaral/tokyo-night-tmux?tab=readme-ov-file#requirements
brew install --cask font-monaspace-nerd-font font-noto-sans-symbols-2
brew install bash bc coreutils gawk gh glab gsed jq nowplaying-cli tree httpie
brew install fzf tmux neovim
brew install --cask ghostty
brew install --cask raycast
brew install --cask amethyst
echo "[IMPORTANT] You must give Amethyst accessability permission."
echo "Go to System settings and find Privacy & Security tab, Privacy -> Accessibilty."

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Manual installations
open "https://minbrowser.org/"
open "https://karabiner-elements.pqrs.org/"

# Append zshrc custom setting load script
echo "\n# zshrc custom settings\nsource .custom_zshrc.sh" >> "${DIR}/.zshrc"

