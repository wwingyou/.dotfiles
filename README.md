# wwingyou's .dotfiles

## Setup

### Install Dependencies

This dotfiles need many dependencies. To install all of them, Run
`install-dependencies-macos.sh`. This script install dependencies automatically
as possible, but some of them should be installed manually. For those
dependencies, this script opens installation page on the default browser. Follow
the instructions to install.

### Setup Configuration

Clone this repository wherever you want (e.g. `~/.dotfiles`) and run 
`setup-macos.sh`. This will create symlinks that points to the configuration
files of this repository. This makes all configuration files to be stored in one
place, making it easy to manage and upload them to the remote storage.

### Setup Min Browser

Min Browser stores configuration inside application package unlike the others
that home directory to store configuration files. For this reason, Setting up
Min browser should be conducted manually.

Go to `min` directory, and override the settings and userscript to the location
where you installed Min.

## Dependencies

### Common

- [homebrew](https://brew.sh/)
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux)
- [tmuxifier](https://github.cmanagedom/jimeh/tmuxifier)
- [ghostty](https://ghostty.org/)
- [neovim](https://neovim.io/)
- [min](https://minbrowser.org/)
- [httpie](https://httpie.io/)

### MacOS Only

- [oh my zsh](https://ohmyz.sh/)
- [karanier](https://karabiner-elements.pqrs.org/)
- [amethyst](https://github.com/ianyh/Amethyst)
- [raycast](https://www.raycast.com/)
