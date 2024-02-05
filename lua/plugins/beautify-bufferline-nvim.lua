-- 顶部缓冲区
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
          }
        }
      }
    }
    -- 设置透明度
    vim.g.transparent_groups =
      vim.list_extend(
      vim.g.transparent_groups or {},
      vim.tbl_map(
        function(v)
          return v.hl_group
        end,
        vim.tbl_values(require("bufferline.config").highlights)
      )
    )
  end
}
