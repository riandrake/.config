## About
This repository contains all of the configuration needed for my vim environment, but can be expanded in the future to include configurations for other programs.

Currently, I only retain configurations for:
- NeoVim
- IdeaVim

I used to include Vim and GVim, but after trying NeoVim I found that maintaining them would be redundant.

## Installation
1. Ensure this repository is checked out into `~/.config`
2. Set `XDG_CONFIG_HOME` environment variable to `~/.config`

## NeoVim Installation
After following the steps in the previous section:
1. Install NeoVim (Chocolately recommended: `choco install neovim`)
2. Open NeoVim
2. Execute `:PlugInstall`

