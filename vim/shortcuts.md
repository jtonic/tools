# vim shortcuts

## General operations

- `Ctrl + r` - redo
- `.` - repeat the last command
- `u` - undo

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
    - `ggVGd` - delete the entire buffer

## Buffer operations

- `:w` - save the file
- `:q` - quit the file
- `:q!` - quit the file without saving
- `:wq` - save and quit the file

## Searching

- `/` - search for a pattern
- `n` - move to the next match
- `N` - move to the previous match
- `*` - search for the word under the cursor
- `#` - search for the word under the cursor in the opposite direction/

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
- `d` - delete the selected text
- `x` - delete the selected text
- `c` - delete the selected text and enter insert mode
- `r` - replace the selected text
