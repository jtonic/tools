# Vim commands


## [LazyVim shortcuts](https://www.lazyvim.org/keymaps#telescopenvim)


## File system command:

- `:pwd` - show the current directory 

- `:enew` - create a new buffer

- `:write <filename>`save the current buffer 

## Neotree

- `?` - show the help

### Telescope

- `:Telescope find_files` - search for files in the current directory:
- `:Telescope live_grep` - search for a pattern in the current directory
- `:Telescope buffers` - search for open buffers
- `Telescope command_history` - search for command history
- `:Telescope notify` - search for notifications

## Reload vim configuration

- `:source ~/.config/nvim/init.vim` - reload the configuration files
- `:source %` - reload the current file
- `source ~/.config/nvim/lua/config/keymaps.lua` - reload the keymaps file


## LSP

- for more information run `:h vim.lsp.buf`


## Goodies

- running a lua code with `nvim --headless`

```bash
nvim --headless -c 'lua print("Hello from Neovim!")' -c 'quit'
```
