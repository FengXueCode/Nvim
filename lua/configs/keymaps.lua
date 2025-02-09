-- 配置快捷键
local opts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap
-- map{'模式','按键','映射为xx',opts}

-- 普通映射

-- nomore模式
-- 删除一行
map("n", "<leader>d", "dd", opts)
-- 保存
map("n", "<C-s>", ":w!<CR>", opts)

-- 控制窗口跳转
map("n", "<A-h>", "<C-w>h", opts)
map("n", "<A-l>", "<C-w>l", opts)
map("n", "<A-j>", "<C-w>j", opts)
map("n", "<A-k>", "<C-w>k", opts)

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)
map("n", "s,", ":vertical resize -20<CR>", opts)
map("n", "s.", ":vertical resize +20<CR>", opts)

-- 上下比例
map("n", "sj", ":resize +10<CR>", opts)
map("n", "sk", ":resize -10<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Up>", ":resize -2<CR>", opts)

-- 等比例
map("n", "s=", "<C-w>=", opts)

-- insert模式
map("i", "jj", "<Esc>", opts)
map("i", "<C-s>", "<Esc> :w! <CR>", opts)

-- 插件映射
-- NvimTree
map("n", "<C-b>", ":NvimTreeToggle<CR>", opts) -- 开关树

-- buffline.nvim
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opts) -- 跳转上一个选项卡
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opts) -- 跳转下一个选项卡
map("n", "<C-c>o", ":BufferLineCloseOthers<CR>", opts) -- 关闭其他选项卡
map("n", "<C-c>w", ":bd<CR>", opts) -- 关闭当前选项卡

-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- 查找文件
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts) -- 搜索代码
map("n", "<leader>fb", ":Telescope buffers<CR>", opts) -- 搜索缓冲区
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts) -- 帮助
map("n", "<leader>q", ":Telescope oldfiles<CR>", opts) -- 查找旧文件
map("n", "<leader>rs", ":Telescope resume<CR>", opts) -- 恢复上次搜索列表

-- trouble
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", opts)
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", opts)
map("n", "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", opts)
map("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", opts)

-- lsp快捷键设置
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts) -- 重命名
-- 文件跳转
map("n", "gd", "<cmd>lua  vim.lsp.buf.definition()<CR>", opts) -- 跳转函数定义
map("n", "gD", "<cmd>lua  vim.lsp.buf.declaration()<CR>", opts) -- 跳转函数定义
map("n", "gh", "<cmd>lua  vim.lsp.buf.hover()<CR>", opts) -- 文档提示
map("n", "gi", "<cmd>lua  vim.lsp.buf.implementation()<CR>", opts) -- 定位当前代码
map("n", "gr", "<cmd>lua  vim.lsp.buf.references()<CR>", opts) -- 查找所有引用

map("n", "<C-A-l>", "<cmd> lua vim.lsp.buf.format()<CR>", opts) -- 格式化代码
map("n", "<leader>ca", "<cmd> lua vim.lsp.buf.code_action()<CR>", opts) -- 查看可用代码操作
map("n", "<leader>wa", "<cmd> lua vim.lsp.buf.add_workspace_folder()<CR>", opts) -- 添加文件夹到当前工作区
map("n", "<leader>wr", "<cmd> lua vim.lsp.buf.remove_workspace_folder()<CR>", opts) -- 从当前工作区删除指定文件夹

-- luasnip
local ls = require("luasnip")
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true}) -- 展开
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true}) -- 光标跳转上一条
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true}) -- 光标跳转下一条

vim.keymap.set({"i", "s"}, "<C-E>", function()--更改活动选择
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
