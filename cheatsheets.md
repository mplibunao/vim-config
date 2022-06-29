
[[toc]]

### Notes

- Lots of missing things here as I like to use `which-key` for my shortcuts which act as documentation for me
- Check out [mappings index vim](mappings/index.vim) especially [mappings space_whichkey vim](mappings/space_whichkey.vim)

### Global

| Shortcut     | Long form  | Description            |
|--------------|------------|------------------------|
| `:h keyword` | `help`     | Open help for keyword  |
| `:sav file`  | `saveas`   | Save file as           |
| `:clo`       | `close`    | Close current pane     |
| `ter`        | `terminal` | open terminal window   |
| `K`          |            | open man page for word |

### Exiting

| Shortcut | Description                                     |
|----------|-------------------------------------------------|
| `:q`     | Close file (fails if there are unsaved changes) |
| `:q!`    | Close file without saving                       |
| `:qa`    | Close all files                                 |
| `:qa!`   | Close all files without saving                  |
| `:w`     | Save                                            |
| `:wq`    | Save and close file                             |
| `Esc`    | Exit insert/visual mode                         |

### Navigating

| Shortcut      | Description  |
|---------------|--------------|
| `h`           | move left    |
| `j`           | move down    |
| `k`           | move up      |
| `l`           | move right   |

### Word

| Shortcut | Description                                       |
|----------|---------------------------------------------------|
| `b`      | jump backwards to start of word                   |
| `B`      | jump backward to start of word (skip punctuation) |
| `w`      | jump forward to start of word                     |
| `W`      | jump forward to start of word (skip punctuation)  |
| `e`      | jump forward to end of word                       |
| `E`      | jump forward to end of word (skip punctuation)    |

### Line

| Shortcut | Description                 |
|----------|-----------------------------|
| `0`      | start of line               |
| `$`      | end of line                 |
| `^`      | first character of the line |

### Document

| Shortcut      | Description                               |
|---------------|-------------------------------------------|
| `gg`          | first line                                |
| `G`           | last line                                 |
| `5G` or `5gg` | go to line 5                              |
| `{`           | jump to prev paragraph, function or block |
| `}`           | jump to next paragraph, function or block |
|               |                                           |

### Character

| Shortcut | Description                                                   |
|----------|---------------------------------------------------------------|
| `fx`     | go to next occurence of char x                                |
| `Fx`     | go to previous occurence of char x                            |
| `tx`     | go to 1 char before the next occurence of char x              |
| `Tx`     | go to 1 char before the previous occurence of char x          |
| `;`      | go to next instance of `T`, `t`, `f`, `F` within the line     |
| `,`      | go to previous instance of `T`, `t`, `f`, `F` within the line |
| `%`      | go to matching [] {} ()                                       |

### Window

| Shortcut | Description            |
|----------|------------------------|
| `zz`     | center this line       |
| `zt`     | top this line          |
| `zb`     | bottom this line       |
| `H`      | go to top of screen    |
| `M`      | go to middle of screen |
| `L`      | go to bottom of screen |

### Search

| Shortcut             | Description                                                       |
|----------------------|-------------------------------------------------------------------|
| `/pattern`           | search for pattern within file                                    |
| `?pattern`           | search backward for pattern within file                           |
| `n`                  | next search result                                                |
| `N`                  | previous search result                                            |
| `*`                  | jump to next instance of current word                             |
| `#`                  | jump to previous instance of current word                         |
| `:s/<old>/<new>/`    | replace first occurence of old with new in the current line       |
| `:s/<old>/<new>/g`   | replace old with new in the current line                          |
| `:%s/<old>/<new>/g`  | replace old with new throughout the file                          |
| `:%s/<old>/<new>/gc` | replace old with new throughout the file with confirmation        |
| `:s/<old>//`         | new is considered as an empty string; deletes the matched pattern |

#### Replace confirmation keys

| Command  | Description                               |
|----------|-------------------------------------------|
| `y`      | replace the match                         |
| `l`      | replace the match and quit                |
| `n`      | skit the match                            |
| `q`      | quit                                      |
| `Esc`    | quit                                      |
| `a`      | replace match and all remaining occurence |
| `CTRL+y` | scroll screen down                        |
| `CTRL+e` | scroll up                                 |

```
Combine number with movement commands to execute them multiple times
Example:
10j to move down 10 lines
2} to go down to paragraphs
10b to back 10 words
```

### Editing

| Shortcut         | Description                                            |
|------------------|--------------------------------------------------------|
| `cw`             | change (replace) to end of the word                    |
| `ciw`            | change (replace) entire word                           |
| `ct` + character | change (replace) until that character                  |
| `C` or `c$`      | change (replace) until end of the line                 |
| `ci` + delimiter | change (replace) text inside delimiter                 |
| `ca` + delimiter | change (replace) text including delimter               |
| `cc`             | change (replace) entire line                           |
| `s`              | delete char and insert                                 |
| `S`              | change (replace) entire line                           |
| `cl`             | delete char and insert (alternative for sneak users)   |
| `r`              | replace single character                               |
| `R`              | enter replace mode                                     |
| `J`              | join line below to current line with one space between |
| `gJ`             | join line below to current line w/o space between      |
| `gwip`           | reflow paragraph                                       |
| `g~`             | swap lower case motion                                 |
| `gU`             | change to upper case motion                            |
| `gu`             | change to lower case motion                            |
| `u`              | undo                                                   |
| `<C-r>`          | redo                                                   |
| `.`              | repeat last command                                    |


### Examples

| Command | Description                                     |
|---------|-------------------------------------------------|
| `cta`   | replace from character til `a`                  |
| `ci"`   | replace all character inside `"`                |
| `ca"`   | replace all character including `""`            |
| `g~e`   | swap case from cursor to end of word            |
| `gu$`   | swap to lower case from cursor to end of line   |
| `gU}`   | swap to upper case the paragraph                |
|         |                                                 |

### Inserting/Appending

| Shortcut | Description                            |
|----------|----------------------------------------|
| `i`      | insert                                 |
| `I`      | insert at beginning of the line        |
| `a`      | insert (append) after the cursor       |
| `A`      | insert (append) at the end of the line |
| `o`      | new line below                         |
| `O`      | new line above                         |


### Marks and positions

| Shortcut           | Description                                          |
|--------------------|------------------------------------------------------|
| `:marks`           | list of marks                                        |
| <code>`^</code>    | Last position of cursor in insert mode               |
| <code>`.</code>    | Last change in current buffer                        |
| <code>`"</code>    | Last exited current buffer                           |
| <code>`0</code>    | In last file edited                                  |
| <code>''</code>    | Back to line in current buffer where jumped from     |
| <code>``</code>    | Back to position in current buffer where jumped from |
| <code>`[</code>    | To beginning of previously changed or yanked text    |
| <code>`]</code>    | To end of previously changed or yanked text          |
| <code>`&lt;</code> | To beginning of last visual selection                |
| <code>`&gt;</code> | To end of last visual selection                      |
| `ma`               | Mark this cursor position as a                       |
| <code>\`a</code>   | Jump to the cursor position `a`                      |
| `'a`               | Jump to the beginning of the line with position `a`  |
| <code>d'a</code>   | Delete from current line to line of mark `a`         |
| <code>d\`a</code>  | Delete from current position to position of mark `a` |
| <code>c'a</code>   | Change text from current line to line of `a`         |
| <code>y\`a</code>  | Yank text from current position to position of `a`   |
| `:marks`           | List all current marks                               |
| `:delm a`          | Delete mark `a`                                      |
| `:delm a-d`        | Delete marks `a`, `b`, `c`, `d`                      |
| `:delm abc`        | Delete marks `a`, `b`, `c`                           |
| `:ju[mps]`         | list of jumps                                        |
| `<C-i>`            | go to newer position in jump list                    |
| `<C-o>`            | go to older position in jump list                    |
| `:changes`         | list of changes                                      |
| `g,`               | go to newer position in change list                  |
| `g;`               | go to older position in change list                  |


### Visual commands

| Shorcut | Description          |
|---------|----------------------|
| `>`     | indent right         |
| `<`     | indent left          |
| `y`     | yank (copy)          |
| `d`     | delete               |
| `~`     | switch case          |
| `u`     | change to lower case |
| `U`     | change to upper case |

### Macros

| Shortcut | Description          |
|----------|----------------------|
| `qa`     | record macro a       |
| `q`      | stop recording macro |
| `@a`     | run macro a          |
| `@@`     | rerun last run macro |

### Cut and paste

| Shortcut | Description                                    |
|----------|------------------------------------------------|
| `yy`     | yank (copy) a line                             |
| `2yy`    | yank (copy) 2 lines                            |
| `yw`     | yank (copy) from cursor to start of next word  |
| `y$`     | yank (copy) to end of line                     |
| `p`      | paste after the cursor                         |
| `P`      | paste before the cursor                        |
| `dd`     | delete (cut) a line                            |
| `2dd`    | delete (cut) 2 lines                           |
| `dw`     | delete (cut) from curson to start of next word |
| `D`      | delete (cut) to end of the line                |
| `d$`     | delete (cut) to the end of the line            |
| `x`      | delete (cut) character                         |

### Filetype

| Shortuct               | Description                                               |
|------------------------|-----------------------------------------------------------|
| `:set ft=yaml.ansible` | manually set the filetype if auto-detection does not work |

### Numbers

| Shortcut | Description          |
| ---      | ---                  |
| `Ctrl+a` | Increase number by 1 |
| `Ctrl+x` | Decrease number by 1 |

#### Making a list

- This uses a macro

```
# This creates the macro
qa
Y
p
Ctrl+a
q

# Perform the macro
10@a
```

### Folding

| Shortcut       | Description                     |
| ---            | ---                             |
| zo             | Open fold                       |
| zc             | Close fold                      |
| za             | Toggle fold                     |
| zO             | Open fold nested levels         |
| zC             | Close fold nested levels        |
| zA             | Toggle fold nested levels       |
| v + zf         | select in visual mode then fold |
| :Fold          | Fold everything                 |
| ---            | ---                             |
| Manual folding |                                 |
| ---            | ---                             |
| zf{motion}     | Fold manually                   |
| zf3j           | Fold next 3 lines               |
| zfa{           | Fold previous block             |


### Splits

| Shortcut              | Description                               |
| ---                   | ---                                       |
| `<ctrl-w> +`          | increase height by one line               |
| `<ctrl-w> -`          | decrease height by one line               |
| `:resize +1`          | increase height by one line               |
| `:resize -1`          | decrease height by one line               |
| `:resize 50`          | change height to 50 lines                 |
| `:vertical resize 50` | change width to 50 lines                  |
| `:vertical resize -1` | decrease width by one line                |
| `:vertical resize +1` | increase width by one line                |
| `<ctrl-w> >`          | increase width by one line                |
| `<ctrl-w> <`          | decrease width by one line                |
| `<ctrl-w> =`          | equalize splits                           |
| `:vsplit`             | split window right                        |
| `:split`              | split window below                        |
| `<ctrl-w> J`          | moves the active to the bottom            |
| `<ctrl-w> H`          | moves the active split to the left        |
| `<ctrl-w> K`          | moves the active split to the top         |
| `<ctrl-w> L`          | moves the active split to right           |
| `<ctrl-w> r`          | rotates splits to the right/down          |
| `<ctrl-w> R`          | rotates splits to the left/up             |
| `<ctrl-w> o`          | Close all other splits except current one |

#### References

- [vimtricks p resize splits](https://vimtricks.com/p/resize-splits/)
- [vimtricks p close all other splits](https://vimtricks.com/p/close-all-other-splits/)
- [vimtricks p vimtrick moving splits](https://vimtricks.com/p/vimtrick-moving-splits/)
- [vimtricks p maximize the current split](https://vimtricks.com/p/maximize-the-current-split/)

### References

- [devhints vim](https://devhints.io/vim)
- [vim rtorr](https://vim.rtorr.com/)
- [Vim tutoral video](https://www.youtube.com/watch?v=IiwGbcd8S7I)
- [linuxize post vim find replace](https://linuxize.com/post/vim-find-replace/)
- [increasing or decreasing numbers](https://vim.fandom.com/wiki/Increasing_or_decreasing_numbers#:~:text=In%20normal%20mode%2C%20typing%20Ctrl,keys%20to%20perform%20other%20functions.)

