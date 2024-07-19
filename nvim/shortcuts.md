# vim shortcuts

## Modes

- (n) - Normal Mode
- (i) - Insert Mode
- (v) - Visual Mode
- (x) - Visual Block Mode
- (t) - Term Mode
- (c) - Command Mode

## Important 

- q: (n) commands history

## General operations

- `Ctrl + r` (n) redo
- `.`        (n) repeat the last command
- `u`        (n) undo

## Buffers

- `q`  (n) close current buffer
- `q!` (n) close current dirty buffer w/o saving
- `qa` (n) close all buffers (close vim/neovim)
- `w`  (n) save current dirty buffer
- `wq` (n) save and close current dirty buffer

## Files

- `e filename` (n) Create a new file in the current directory or near the currently open file

## Navigation

- `h` - move left
- `j` - move down
- `k` - move up
- `l` - move right
- `w` - move to the beginning of the next word
- move to the beginning of the next word, excluding its first character -
- `b` - move to the beginning of the previous word
- `e` - move to the end of the next word
- `0` - move to the beginning of the line
- `$` - move to the end of the line
- `gg` - move to the beginning of the file
- `G` - move to the end of the file
- `nn` - move to the beginning of the nn-th line from the cursor
- `nG` - move to the n-th line of the file
- `nj` - move n lines down
- `nk` - move n lines up
- `M` - move to the middle of the screen
- `H` - move to the top of the screen
- `L` - move to the bottom of the screen
- `zz` - move the cursor to the center of the screen

### Windows Navigation

- `Ctrl + w` (n) - switch to the next Windows
- `Ctrl + w + hjkl` (n) - move to the window on the left, down, up, right
- `Ctrl + w + =` (n) - make all windows equal size 

## Editing

### Insert

- `i` - insert mode before the cursor
- `a` - insert mode after the cursor
- `o` - insert mode on the next line
- `O` - insert mode on the previous line

### Delete

- `x` - delete the character under the cursor
- `dd` - delete the line
- `ggVGd | :%d` - delete the entire buffer

### Delete without yanking

- `"_<delete_pattern>`:
  - `w` - delete the word
  - `$` - delete the text from the cursor to the end of the line
  - `0` - delete the text from the cursor to the beginning of the line
  - `aw` - delete the word with trailing/leading whitespace
  - `iw` - delete the word without trailing/leading whitespace
  - `dd` - delete the line

## Buffer operations

- `:w` - save the file
- `:q` - quit the file
- `:q!` - quit the file without saving
- `:wq` - save and quit the file

## Searching

- `/<pattern>` - search for a pattern
- `?<pattern>` - search backwards
- `n` - move to the next match
- `N` - move to the previous match
- `*` - search for the word under the cursor
- `#` - search for the word under the cursor in the opposite direction/

## Replacing

- `:%s/<patter>/<replacement>/gc` - replace in the entire file, with confirmation
- `:%s/<patter>//gc` - delete in the entire file, with confirmation
- `:%s/<pattern>/<replacement>/gi` - replace in the entire file case insensitive
**Notes**:
  If %s is replaced with s in the command above the search and replace take place in the current line.

## Visual mode

- `v` - start visual mode
- `V` - start visual line mode
- `viw` - select the current word  
- `ggVG | :%y+` - select the entire buffer
- `:enew` - create a new buffer

## Copy and paste

- `y` - copy the selected text
- `yy` - copy the line
- `ggVGy` - copy the entire buffer
- `yaw|yiw` - copy the word with trailing/leading whitespace
- `yiw` - copy the word without trailing/leading whitespace
- `y$` - copy the text from the cursor to the end of the line
- `p` - paste the copied text (after the cursor or line)
- `P` - paste the copied text (before the cursor or line)
- `r` - replace the selected text

### Copy to system clipboard

- `"+y` - copy the selected text to the system clipboard
- `"+yy` - copy the line to the system clipboard
- `"+yiw` - copy the word to the system clipboard
- `"+y$` - copy the text from the cursor to the end of the line to the system clipboard
- `"+p` - paste the copied text from the system clipboard (after the cursor or line)
- `"+P` - paste the copied text from the system clipboard (before the cursor or line)
- `"+r` - replace the selected text with the text from the system clipboard

## Code

- `gcc` (n) toggle comment for the entire current line
- `gco` (n) toggle comment on the line below
- `gcO` (n) toggle comment on the line above
- `gc`  (x) toggle comment on selected text block
- `K` (n) (lsp) Hover
- `gd` (n) (lsp) Go To Definition
- `gr` (n) (lsp) Go To References

- `gd`, vim.lsp.buf.definition
- `K`, vim.lsp.buf.hover
- `gi`, vim.lsp.buf.implementation
- `<C-k>`, vim.lsp.buf.signature_help
- `<space>D`, vim.lsp.buf.type_definition
- `<space>rn`, vim.lsp.buf.rename
- `gr`, vim.lsp.buf.references
- `<space>e`, vim.diagnostic.open_float
- `[d`, vim.diagnostic.goto_prev
- `]d`, vim.diagnostic.goto_next
- `<space>q`, vim.diagnostic.setloclist


## Spelling 

- `]s` (n) next misspelled error
- `[s` (n) previous misspelled error
- `z=` (n) show suggestions for misspelled error
- `zg` (n) add the word under cursor in the dictionary 
- `zw` (n) remove the word under cursor from the dictionary


## Lazy-vim

- `Leader /` search for a pattern in root directory
- `Leader <space>` fuzzy search for a file in the root directory 
- `H` show/hide hidden files in the file explorer

## Next shortcuts to figure out
- move a line up and down (see the ./configuration.md on how to map keys to move lines up/down, or duplicate them up/down)
- move a block of text up and down (same as above)


## Sneak plugin

-  `s{char}{char}` (n) - search for {char}{char} with highlight. E.g. sab search for ab
  - `;` next occurrence
  - `,` previous occurrence

**Note:**
    - To check if clipboard is enabled in vim, run `vim --version | grep clipboard`.
    
    If it returns `-clipboard`, then you need to install a version of vim that has clipboard support.



