## Overview

- Copied the settings from ChrisAtMachine to make VSCode a little more like
  Neovim
- Missing VSCode settings file (settings.json)

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

## Important VSCode Settings

```js
// settings.json
{
  // If this is set, then rather than using the Windows installation of
  // Neovim, it will use the Linux version that I'm running through WSL.
  "vscode-neovim.useWSL": true,

  // Set both of these to where the bin of Neovim is (`which nvim`), and
  // where the config is. These are the default paths.
  "vscode-neovim.neovimExecutablePaths.linux": "/usr/bin/nvim",
  "vscode-neovim.neovimInitVimPaths.linux": "~/.config/nvim/init.vim",

  "vscode-neovim.highlightGroups.highlights": {
    "Directory": "vim",
    "IncSearch": {
        "backgroundColor": "theme.editor.findMatchBackground",
        "borderColor": "theme.editor.findMatchBorder"
    },
"Search": {
        "backgroundColor": "theme.editor.findMatchHighlightBackground",
        "borderColor": "theme.editor.findMatchHighlightBorder"
    },
    "Visual": {
        "backgroundColor": "theme.editor.selectionBackground"
    },
    "Conceal": "vim",
    "Substitute": "vim"
  },

  // Makes it so I can use ctrl+c, ctrl+v, and ctrl+x for copy, paste, and
  // cut when using insert mode. The yank-to-buffer system can be a little
  // janky sometimes, so I native cut, copy, and paste when performing these
  // operations between different programs, like Firefox and VSCode. Also,
  // ctrl+a. I mean, right?
  "vscode-neovim.useCtrlKeysForInsertMode": false,
}
```
```js
// keybindings.json
{
  // jj and jk escapes in insert mode
  {
    "command": "vscode-neovim.compositeEscape1",
    "key": "j",
    "when": "neovim.mode == insert && editorTextFocus",
    "args": "j"
  },
  {
    "command": "vscode-neovim.compositeEscape1",
    "key": "j",
    "when": "neovim.mode == insert && editorTextFocus",
    "args": "k"
  },

  // j and k navigation when list is focused
  {
    "key": "j",
    "command": "list.focusDown",
    "when": "listFocus && !inputFocus"
  },
  {
    "key": "k",
    "command": "list.focusUp",
    "when": "listFocus && !inputFocus"
  }, 

  // Selection for code suggestions (e.g. ctrl+space code completion)
  {
    "key": "j",
    "command": "list.focusDown",
    "when": "listFocus && !inputFocus"
  },
  {
    "key": "k",
    "command": "list.focusUp",
    "when": "listFocus && !inputFocus"
  },
  {
    "key": "ctrl+j",
    "command": "selectNextSuggestion",
    "when": "editorTextFocus && suggestWidgetMultipleSuggestions && suggestWidgetVisible"
  },
  {
    "key": "tab",
    "command": "selectNextSuggestion",
    "when": "editorTextFocus && suggestWidgetMultipleSuggestions && suggestWidgetVisible"
  },
  {
    "key": "ctrl+k",
    "command": "selectPrevSuggestion",
    "when": "editorTextFocus && suggestWidgetMultipleSuggestions && suggestWidgetVisible"
  },
  {
    "key": "shift+tab",
    "command": "selectPrevSuggestion",
    "when": "editorTextFocus && suggestWidgetMultipleSuggestions && suggestWidgetVisible"
  },
  {
    "key": "ctrl+j",
    "command": "workbench.action.quickOpenNavigateNext",
    "when": "inQuickOpen"
  },
  {
    "key": "tab",
    "command": "workbench.action.quickOpenNavigateNext",
    "when": "inQuickOpen"
  },
  {
    "key": "shift+tab",
    "command": "workbench.action.quickOpenNavigatePrevious",
    "when": "inQuickOpen"
  },
  {
    "key": "ctrl+k",
    "command": "workbench.action.quickOpenNavigatePrevious",
    "when": "inQuickOpen"
  },
  {
    "key": "enter",
    "command": "list.select",
    "when": "explorerViewletVisible && filesExplorerFocus"
  },

  // Show hover (to display types and such)
  {
    "key": "shift+k",
    "command": "editor.action.showHover",
    "when": "editorTextFocus && neovim.mode != 'insert'"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "-editor.action.showHover",
    "when": "editorTextFocus"
  },
}

```