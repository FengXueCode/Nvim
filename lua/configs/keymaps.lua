-- 配置leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 配置快捷键
local opts = { noremap = true, silent = true }
local term_opts = { silent = true}
local map = vim.api.nvim_set_keymap

-- map{'模式','按键','映射为xx',opts}
-- 普通映射

-- nomore模式 
map("n","<leader>d","dd",opts)
map("n","<leader>h","<C-w>h",opts)
map("n","<leader>l","<C-w>l",opts)
map("n","<leader>j","<C-w>j",opts)
map("n","<leader>k","<C-w>k",opts)
map("n","<C-s>",":w!<CR> gg=G",opts)
-- insert模式
map("i","jj","<Esc>",opts)
map("i","<C-s>",":w<CR>",opts)

