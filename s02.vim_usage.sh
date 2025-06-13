# Vim Usage Tutorial

Vim is a powerful, highly configurable text editor built to enable efficient text editing. It is an improved version of the vi editor distributed with most UNIX systems. This tutorial will guide you through the basics of Vim, from opening files to editing and saving your work.

---

## Table of Contents

1. Starting Vim
2. Vim Modes
3. Basic Navigation
4. Editing Text
5. Saving and Exiting
6. Useful Commands
7. Further Resources

---

## 1. Starting Vim

To open Vim, type the following command in your terminal:

```sh
vim filename
```

- If `filename` exists, it will open the file.
- If it doesn't exist, Vim will create a new file with that name.

---

## 2. Vim Modes

Vim has several modes, but the two most important are:

- **Normal Mode**: For navigation and commands (default mode when you open Vim).
- **Insert Mode**: For inserting text.

**Switching Modes:**

- **Normal Mode**: Press `Esc`
- **Insert Mode**: Press `i` (insert before cursor), `a` (append after cursor), or `o` (open new line below)

---

## 3. Basic Navigation

In **Normal Mode**, use these keys to move around:

- `h` - move left
- `j` - move down
- `k` - move up
- `l` - move right

Other useful navigation:

- `w` - jump to the start of the next word
- `b` - jump to the start of the previous word
- `0` (zero) - move to the beginning of the line
- `$` - move to the end of the line
- `gg` - go to the first line
- `G` - go to the last line

---

## 4. Editing Text

### Inserting Text

- `i` - insert before cursor
- `a` - append after cursor
- `o` - open a new line below

### Deleting Text

- `x` - delete character under cursor
- `dd` - delete current line
- `dw` - delete word

### Undo/Redo

- `u` - undo last change
- `Ctrl + r` - redo undone change

### Copy and Paste

- `yy` - yank (copy) current line
- `p` - paste after cursor
- `P` - paste before cursor

---

## 5. Saving and Exiting

In **Normal Mode**, type `:` to enter command-line mode, then:

- `:w` - save (write) file
- `:q` - quit
- `:wq` or `:x` - save and quit
- `:q!` - quit without saving

---

## 6. Useful Commands

- `/pattern` - search for `pattern`
- `n` - repeat search in same direction
- `N` - repeat search in opposite direction
- `:%s/old/new/g` - replace all occurrences of `old` with `new` in the file

---

## 7. Further Resources

- Run `vimtutor` in your terminal for an interactive tutorial.
- [Vim Documentation](https://www.vim.org/docs.php)
- [Open Vim Tutorial](https://www.openvim.com/)

---

## Summary Table

| Action             | Normal Mode Command |
|--------------------|--------------------|
| Insert text        | `i`, `a`, `o`      |
| Save file          | `:w`               |
| Quit               | `:q`               |
| Save & Quit        | `:wq`              |
| Undo               | `u`                |
| Redo               | `Ctrl + r`         |
| Copy line          | `yy`               |
| Paste              | `p`                |
| Delete line        | `dd`               |

---

Vim has a steep learning curve, but with practice, it becomes an incredibly efficient tool for editing text. Happy Vimming!
