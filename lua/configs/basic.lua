---@diagnostic disable: undefined-global
-- 使用 utf8编码
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
-- 禁止折行显示文本
vim.o.wrap = true
-- 光标移动的时候始终上下左右保持8个空格
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示行号
vim.o.number = true
vim.o.relativenumber = true -- 相对行号
-- 左侧图标列
vim.wo.signcolumn = "yes"
-- 右侧参考列
--vim.wo.colorcolumn = 80
-- 高亮显示光标所在行
vim.wo.cursorline = true
-- 使用空格替代 tab
vim.opt.expandtab = true
-- NORMAL 模式下 >> << 和 INSERT 模式下 CTRL-T CTRL-D 的缩进长度
vim.o.shiftround = true
vim.o.shiftwidth = 2
-- 1 个 tab 显示为 2 个空格
vim.opt.tabstop = 2
vim.opt.tabstop = 2
-- INSERT 模式下 1 个 tab 代表 2 个空格
vim.opt.softtabstop = 2
-- 新行对齐当前行
vim.opt.autoindent = true
vim.opt.smartindent = true
-- 搜索大小写不敏感 而在包含大写的时候让搜索变成大小写敏感
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索结果不高亮显示
vim.o.hlsearch = false
-- 输入的同时搜索
vim.g.incsearch = true
-- 把空格显示成一个点
vim.o.list = true
vim.o.listchars = "space:·"
