# wwingyou's .dotfiles

## Setup

### Clone Repository

This repository includes several git submodules. To get all submodules on local
machine, run following command.

```bash
git clone https://github.com/wwingyou/.dotfiles.git
cd .dotfiles
git submodule init
git submodule update
```

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

### Apply tmux theme

Tmux theme is not applied at first. Update theme by pressing `ctrl+f+I` inside
the tmux session.

### IntelliJ Settings

To apply Intellij Keymap, copy `intelliJ/MacOS-VIM.xml` file to the
`Users/{username}/Library/Application\
Support/JetBrains/{IntelliJ_Version}/keymaps`. Then select `MacOS-VIM` keymap
preset from IntelliJ settings -> Keymap.

To enable all vim functionallities, Install
[IdeaVim-EasyMotion](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion)
and [Which-Key](https://plugins.jetbrains.com/plugin/15976-which-key) plugins.

## Dependencies

### Common

- [homebrew](https://brew.sh/)
- [fzf](https://github.com/junegunn/fzf)
- [tmux](https://github.com/tmux/tmux)
- [tpm](https://github.com/tmux-plugins/tpm)
- [ghostty](https://ghostty.org/)
- [neovim](https://neovim.io/)
- [min](https://minbrowser.org/)
- [httpie](https://httpie.io/)
- [sdkman](https://sdkman.io/)

### MacOS Only

- [oh my zsh](https://ohmyz.sh/)
- [spaceship(zsh theme)](https://github.com/pascaldevink/spaceship-zsh-theme)
- [karanier](https://karabiner-elements.pqrs.org/)
- [amethyst](https://github.com/ianyh/Amethyst)
- [raycast](https://www.raycast.com/)
- [hammerspoon](http://www.hammerspoon.org/)
