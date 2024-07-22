-- 目录树
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  filters = {custom = {"^.git$"}},
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  }
}
