local opts = { noremap = true, silent = true }
local term_opts = { silent = true}
local map = vim.api.nvim_set_keymap

-- NvimTree
map("n","<C-b>",":NvimTreeToggle<CR>",opts)

-- buffline.nvim
map("n","<C-h>",":BufferLineCyclePrev<CR>",opts)
map("n","<C-l>",":BufferLineCycleNext<CR>",opts)


