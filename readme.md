# ManosPK's NeoVim Configuration
This NeoVim configuration serves as my daily text editor, IDE, and university note/assignment tool. Built with Lua and powered by the Lazy package manager, it is designed to be minimal yet feature-rich, offering modern IDE conveniences without bloat. Special attention was given to enhancing support for note-taking languages like Markdown and Neorg, as well as typesetting with LaTeX, ensuring a seamless writing experience.

## Installation
Some prerequisites are needed to be installed before using this configuration. First and foremost, you need to have NeoVim installed (obviously). Furthermore, you will need a python3 version for UtilSnips. After that you can install the configuration by running the following commands. Make sure that the `.config/nvim` folder is backed up because you will lose your previous configurations.
```
git clone https://github.com/manoskamarianos/nvim.git;\
mv nvim ~/.config;\
nvim
```
After that, lazy will have probably installed all the plugins. Make sure to run `checkhealth <plugin>` in order to see if everything is installed correctly.

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
- Render-markdown
- Vimtex
- ToggleTerm

## Plugin Information

#### Nvim Tree
You change root with Control+]

#### Blink
You accept autocompletions with Control+Y
You traverse through autocompletions with Control+[p/n]

## To Do
- make file tree explorer on alpha open to the directory of your chosing
- Extend Keybinds for all plugins
- Add snipets for latex
- Search Telescope
- Edit Readme
- Edit lualine
- Add setup for neorg
- Customize alpha dash

