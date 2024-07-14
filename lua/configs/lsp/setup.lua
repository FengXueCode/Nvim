---@dagnostic disable: undefined-global
-- 配置masonUI
require("mason").setup(
  {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  }
)
-- 配置LSP语言
require("mason-lspconfig").setup(
  {
    -- A list of servers to automatically install if they're not already installed
    ensufe_installed = {
      "html",
      "jsonls",
      "lua_ls",
      "tsserver",
      "volar",
      "stylelint",
      "stylelint_lsp",
      "prettierd"
    }
  }
)

local lspconfig = require("lspconfig")
--{ on_attach = on_attach }
lspconfig.html.setup({}) -- HTML
lspconfig.jsonls.setup({}) -- JSON
lspconfig.lua_ls.setup({}) -- lua
lspconfig.tsserver.setup({}) -- TS
lspconfig.volar.setup({}) -- Vue
lspconfig.stylelint_lsp.setup({}) -- Css
