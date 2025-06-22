DIR="$(cd "$(dirname "$0")" && pwd)"
if [ ! -d "$HOME/.config" ]; then mkdir ~/.config; fi
if [ ! -L "$HOME/.config/nvim" ]; then ln -s $DIR/nvim ~/.config/nvim; fi
if [ ! -L "$HOME/.config/karabiner" ]; then ln -s $DIR/karabiner ~/.config/karabiner; fi
if [ ! -L "$HOME/.tmux" ]; then ln -s $DIR/tmux ~/.tmux; fi
if [ ! -L "$HOME/.tmux.conf" ]; then ln -s $DIR/tmux.conf ~/.tmux.conf; fi
if [ ! -L "$HOME/.custom_zshrc.sh" ]; then ln -s $DIR/custom_zshrc.sh ~/.custom_zshrc.sh; fi
if [ ! -L "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  ln -s $DIR/zsh-plugins/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
if [ ! -L "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  ln -s $DIR/zsh-plugins/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
if [ ! -L "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme" ]; then
  ln -s $DIR/zsh-plugins/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme
fi

# Append zshrc custom setting load script
echo "\n# zshrc custom settings\nsource ~/.custom_zshrc.sh" >> ~/.zshrc
