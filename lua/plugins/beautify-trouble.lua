-- 浮窗
return {
  "folke/trouble.nvim",
  lazy = true,
  cmd = {"TroubleToggle", "Trouble", "TroubleRefresh"},
  config = function()
    require("trouble").setup()
  end
}
