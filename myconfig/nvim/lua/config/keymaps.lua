-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorten function name
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Register key mappings with descriptions
local wk = require("which-key")

-- key mappings for auto-session search_sessions
wk.register({
  a = { name = "Auto Session" },
  ["as"] = { require("auto-session.session-lens").search_session, "Search Sessions" },
}, { prefix = "<Leader>" })

keymap("n", "<Leader>as", require("auto-session.session-lens").search_session, opts)

-- Shortcut to source init.lua
keymap("n", "<C-S-s>", ":luafile ~/.config/nvim/lua/config/keymaps.lua<CR>", opts)

-- Remap 'x' to delete without copying to the clipboard
keymap("n", "x", '"_x', opts)

-- Remap 'd' to delete without copying to the clipboard
keymap("n", "d", '"_d', opts)

-- Optionally, remap 'c' to change without copying to the clipboard
keymap("n", "c", '"_c', opts)

-- Remap 'p' in Visual mode to paste without copying the replaced text to the clipboard
keymap("v", "p", '"_dP', opts)

-- Move the current line down
keymap("n", "<C-j>", ":m .+1<CR>==", opts)

-- Move the current line up
keymap("n", "<C-k>", ":m .-2<CR>==", opts)

-- Move selected lines down
keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)

-- Move selected lines up
keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Duplicate the current line below
keymap("n", "<C-S-j>", ":t.<CR>", opts)

-- Duplicate the current line above
keymap("n", "<C-S-k>", ":t-1<CR>", opts)

-- Duplicate selected lines below
keymap("v", "<C-S-j>", ":t'><CR>gv=gv", opts)

-- Duplicate selected lines above
keymap("v", "<C-S-k>", ":t'<-1<CR>gv=gv", opts)

-- Toggle Neotree
keymap("n", "<Leader>nt", ":Neotree toggle<CR>", opts)

-- focus Neotree
keymap("n", "<Leader>nf", ":Neotree focus<CR>", opts)

keymap("n", "<Leader>nn", ":Neotree find<CR>", opts)

wk.register({
  n = { name = "neotree" },
}, { prefix = "<Leader>" })

-- keymap("n", "<C-x>", ":pwd<CR>", opts)

-- Gitsigns next_hunk
keymap("n", "<C-b>", ":Gitsigns next_hunk<CR>", opts)

-- Gitsigns prev_hunk
keymap("n", "<C-S-b>", ":Gitsigns prev_hunk<CR>", opts)

-- New buffer
keymap("n", "<Leader>bn", ":enew<CR>", opts)

wk.register({
  ["bn"] = { ":enew<CR>", "New buffer" },
}, { prefix = "<Leader>" })

-- Copilot keymaps
keymap("i", "<Tab>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
