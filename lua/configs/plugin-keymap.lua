local opts = { noremap = true, silent = true }
local term_opts = { silent = true}
local map = vim.api.nvim_set_keymap

-- NvimTree
map("n","<C-b>",":NvimTreeToggle<CR>",opts) -- 开关树

-- buffline.nvim
map("n","<C-h>",":BufferLineCyclePrev<CR>",opts) -- 跳转上一个选项卡
map("n","<C-l>",":BufferLineCycleNext<CR>",opts) -- 跳转下一个选项卡
map("n","<C-c>h",":BufferLineCloseLeft<CR>",opts) -- 关闭左侧选项卡
map("n","<C-c>l",":BufferLineCloseRight<CR>",opts) -- 关闭右侧选项卡
map("n","<C-c>o",":BufferLineCloseOthers<CR>",opts) -- 关闭其他选项卡

-- NvimTreesitter
map("n","<C-A-l>","gg=G",opts) -- 格式化代码
