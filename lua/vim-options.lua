vim.cmd("noremap <Up> <Nop>")
vim.cmd("noremap <Down> <Nop>")
vim.cmd("noremap <Left> <Nop>")
vim.cmd("noremap <Right> <Nop>")
vim.cmd("noremap <C-d> <C-d>zz")
vim.cmd("noremap <C-u> <C-u>zz")
vim.cmd("noremap n nzzzv")
vim.cmd("noremap N Nzzzv")

-- native copy paste keybinds 
vim.cmd("noremap <leader>y \"*y")
vim.cmd("noremap <leader>p \"*p")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader = " " -- <space> as the leader key

