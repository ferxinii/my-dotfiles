local opt = vim.opt 

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true
opt.linebreak = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard (use the system's!)
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- consider - part of a word
opt.iskeyword:append("-")

-- make default netrw tree view
vim.g.netrw_liststyle=3



----------------------------------
------------ KEYMAPS -------------
local keymap = vim.keymap

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- jump wrapped lines
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true })
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true })

-- general keymaps
keymap.set("i","jk","<Esc>")  -- use jk to exit insert mode  
keymap.set("n","<leader>nh",":nohl<CR>") -- remove highlight after search
keymap.set("n","x",'"_x') -- dont copy character after removing it with x
keymap.set("n","<leader>+","<C-a>")  -- augment value of a number
keymap.set("n","<leader>-","<C-x>")  -- decrease value of a number
keymap.set("i","<Esc><BS>","<C-w>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window


