return {
  "williamboman/mason.nvim",
  build = ":MonsionUpdate",
  event = "VeryLazy", -- 等ui界面加载后才会加载插件
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

  end,
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  }
}
