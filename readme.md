# ManosPK's NeoVim Configuration
## Installation
Some prerequisites are needed to be installed before using this configuration. First and formost, you need to have NeoVim installed (obviously). Furthermore, you will need a python3 version for UtilSnips. After that you can install the configuration by running the following commands. Make sure that the .config/nvim folder is backed up because you will lose your previous configurations.
```
git clone https://github.com/manoskamarianos/nvim.git \
mv nvim ~/.config/nvim \
nvim
```
After that, lazy will have probably installed all the plugins. Make sure to run `checkhealth <plugin_in_question>` in order to see if everything is installed correctly.

## Plugins Used
- Nvim Tree
- Telescope
- Treesitter
- Mason
- Mason-lspconfig
- Lspconfig
- Which Key
- Lua Line
- Tokyonight
- Neogit
- Barbar
- Alpha Nvim
- Autopairs
- Presence
- Blink-cmp

## To Do
- Extend Keybinds for all plugins
- Add setup for latex
- Add setup for markdown
- Search Telescope
- Edit Readme
- Edit file tree
- Edit lualine
- Add setup for neorg
- Customize alpha dash

## Plugin Information
#### Nvim Tree
You change root with Control+]

#### Blinc
You accept autocompletions with Control+Y
You traverse through autocompletions with Control+[p/n]
