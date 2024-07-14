-- 代码片段
return {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  config = function()
    local ls =require("luasnip")
    ls.snippets_paths = {
      "~\\AppData\\Local\\nvim\\lua\\configs\\snip-configs"
    }

    require("configs.snip-configs.test")
  end
}
