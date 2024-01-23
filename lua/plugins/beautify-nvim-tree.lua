
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  keys = {
	{"<C-0>",":NvimTreeToggle<cr>"}
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
