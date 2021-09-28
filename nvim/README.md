## Overview
Using Neovim with VSCode is a much better solution than using VSCodeVim
because VSCodeVim emulates Vim, whereas VSCode Neovim runs commands through
the nvim binary. As a result, it [ends up being faster](https://galenwong.github.io/blog/2021-03-22-vscode-neovim-vs-vscodevim/#:~:text=VSCodeVim%20and%20vscode-neovim%20are%20implemented%20differently.%20VSCodeVim%20simulated,the%20text%20buffer%20is%20manipulated%20by%20Neovim%20instead.).

## Required VSCode Addons

In order for this to work with VSCode, the following addons have to be
installed (or rather, should be installed).

- [VSCode Neovim](https://github.com/asvetliakov/vscode-neovim)
  - This connects with Neovim and runs commands through there. The alternative
    is emulating the VIM experience, but it was rather laggy (and the settings
    really sucked).
- [Which Key](https://github.com/VSpaceCode/vscode-which-key)
  - This is setup using this config. Press <spacebar> in normal mode and a
    context menu will show up with a lot of different options.

# Changelog
**12 Sept 2021**
- Copied the settings from ChrisAtMachine to make VSCode a little more like
  Neovim
- Missing VSCode settings file (settings.json)