---@diagnostic disable: undefined-global
-- 配置masonUI
require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
-- 配置LSP语言
require('mason-lspconfig').setup({
  -- A list of servers to automatically install if they're not already installed
  ensure_installed = { 'html', 'jsonls', 'lua_ls', 'tsserver', 'volar' },
})

-- lsp快捷键设置
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)                    -- 跳转函数定义
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)                     -- 跳转函数定义
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)                           -- 文档提示
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)                 -- 定位当前代码
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)              -- 显示函数签名和参数
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)    --添加指定文件夹到当前工作区
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts) -- 从当前工作区删除指定文件夹
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)                                                         -- 打印当前工作目录
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts) -- 查找类型定义
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)         -- 重命名当前变量
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)    -- 查找可用的代码操作
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)            -- 查找符号的引用
  vim.keymap.set("n", "<C-A-l>", function()
    vim.lsp.buf.format({ async = true })
  end, bufopts) -- 格式化代码
end

local lspconfig = require('lspconfig')
lspconfig.html.setup({ on_attach = on_attach })     -- HTML
lspconfig.jsonls.setup({ on_attach = on_attach })   -- JSON
lspconfig.lua_ls.setup({ on_attach = on_attach })   -- lua
lspconfig.tsserver.setup({ on_attach = on_attach }) -- TS
lspconfig.volar.setup({ on_attach = on_attach })    -- Vue
