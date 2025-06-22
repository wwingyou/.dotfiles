# NOTE: 
# >> THIS PART MIGHT NOT WORK
ZSH_THEME="spaceship"

# Instal oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

prompt_context() {
  prompt_segment black default "👾"
}

# alias
alias vim=nvim
alias lg=lazygit
alias dls="ll | grep ^d"

# fzf setting
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

# Tmuxifier setting
export PATH="$HOME/.tmuxifier/bin:$PATH"

# fzf shell integration
source <(fzf --zsh)

# Set default editor to nvim
export EDITOR=nvim

# Quick test alias for Spring Boot application testing and debuging
ts() {
  ./gradlew test
  if [ $? -ne 0 ]; then
    open build/reports/tests/test/index.html
  fi
}
