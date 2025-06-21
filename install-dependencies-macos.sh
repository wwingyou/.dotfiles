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
curl -s "https://get.sdkman.io" | bash
echo "[IMPORTANT] You must give Amethyst accessability permission."
echo "Go to System settings and find Privacy & Security tab, Privacy -> Accessibilty."

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Manual installations
open "https://minbrowser.org/"
open "https://karabiner-elements.pqrs.org/"

