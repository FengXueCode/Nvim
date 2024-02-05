-- 透明度
return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup(
      {
        extra_groups = {
          "NvimTreeNormal"
        } -- table: additional groups that should be cleared
      }
    )
  end
}
