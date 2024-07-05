# Vim commands


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

