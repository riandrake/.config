## Description
This repository contains all of the configuration needed for setting up my dotfile environment, using stow.

## Installation

### Common Setup
1. Check out this repository (Default recommended: `~/dotfiles`)
2. Install stow, and run `stow .` in the repostitory directory.
3. Set the `XDG_CONFIG_HOME` environment variable to the location of the symlinked `~/.config` folder

Warning: Use absolute path, rather than rely on `~` when using IdeaVim. IdeaVim doesn't seem to be able to handle it.
e.g. `~/.config` should be entered as `C:/Users/user.name/.config`

### Additional IdeaVim Setup (if applicable)
After following the steps in the previous section:
1. Install the IdeaVim plugin
2. Restart IDE

### Additional NeoVim Setup (if applicable)
After following the steps in the previous section:
1. Install NeoVim (Chocolately recommended: `choco install neovim`)
2. Open NeoVim
3. Execute `:PlugInstall`
4. (optional) Run the utility at: `./nvim/open_with_neovim.reg` to get right-click actions for "Open With NeoVim"

## Vim Configuration

### Common Configuration
For settings that apply to every vim implementation:
```
./common.vim
```

### IdeaVim Configuration
For settings that only apply to IdeaVim:
```
./ideavim/ideavimrc
```

### NeoVim Configuration
For settings that only apply to NeoVim:
```
./nvim/init.vim
```

