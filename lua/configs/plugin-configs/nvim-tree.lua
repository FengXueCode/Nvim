require("nvim-tree").setup {
  view = {
    width = 40,
  },
  actions = {
    open_file = {
      -- 首次打开大小适配
      resize_window = true,
      -- 打开文件时关闭
      quit_on_open = true
    }
  }
}
