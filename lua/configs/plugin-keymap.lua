local opts = { noremap = true, silent = true }
local term_opts = { silent = true}
local map = vim.api.nvim_set_keymap

-- NvimTree
map("n","<C-b>",":NvimTreeToggle<CR>",opts)
