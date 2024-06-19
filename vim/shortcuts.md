# vim shortcuts

## Modes

- (n) - Normal Mode
- (i) - Insert Mode
- (v) - Visual Mode
- (x) - Visual Block Mode
- (t) - Term Mode
- (c) - Comand Mode

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
- `?<pattern>` - search backwaeds
- `n` - move to the next match
- `N` - move to the previous match
- `*` - search for the word under the cursor
- `#` - search for the word under the cursor in the opposite direction/

## Replacing

- `:%s/<patter>/<replacement>/gc` - replace in the entire file, with confirmation
- `:%s/<patter>//gc` - delete in the entire file, with confirmation
- `:%s/<pattern>/<replacement>/gi` - replace in the entire file case insensitive
**Notes**:
  If %s is relaced with s in the command above the search and replace take place in the current line.

## Visual mode

- `v` - start visual mode
- `V` - start visual line mode
- `viw` - select the current word - viw
- `ggVG | :%y+` - select the entire buffer

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

## Next shortcuts to figure out
- move a line up and down
- move a block of text up and down


## Sneak plugin

-  `s{char}{char}` (n) - search for {char}{char} with highlight. E.g. sab search for ab
  - `;` next occurence
  - `,` previous occurence
-    
-  ; 

**Note:**
    - To check if clipboard is enabled in vim, run `vim --version | grep clipboard`.
    
    If it returns `-clipboard`, then you need to install a version of vim that has clipboard support.
