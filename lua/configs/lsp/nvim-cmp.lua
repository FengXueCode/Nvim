-- 检测光标前面是否有单词
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))

  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup(
  {
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      -- 指定代码片段引擎
      expand = function(args)
        require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
      end
    },
    mapping = cmp.mapping.preset.insert(
      {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4), -- 向上滚动4行
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- 向下滚动4行
        ["<CR>"] = cmp.mapping.confirm({select = true}), -- 确认选择
        -- A super tab
        -- sourc: https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip
        ["<Tab>"] = cmp.mapping(
          function(fallback)
            -- Hint: if the completion menu is visible select next one
            if cmp.visible() then
              cmp.select_next_item()
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end,
          {"i", "s"}
        ), -- i - insert mode; s - select mode
        ["<S-Tab>"] = cmp.mapping(
          function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end,
          {"i", "s"}
        )
      }
    ),
    -- 格式设置
    formatting = {
      -- Set order from left to right
      -- kind: single letter indicating the type of completion
      -- abbr: abbreviation of "word"; when not empty it is used in the menu instead of "word"
      -- menu: extra text for the popup menu, displayed after "word" or "abbr"
      fields = {"abbr", "menu"},
      -- customize the appearance of the completion menu
      format = function(entry, vim_item)
        vim_item.menu =
          ({
          nvim_lsp = "[Lsp]",
          luasnip = "[Luasnip]",
          buffer = "[File]",
          path = "[Path]"
        })[entry.source.name]
        return vim_item
      end
    },
    -- 在 命令行/模式下启动补全
    -- cmp.setup.cmdline(
    --  "/",
    -- {
    --  mapping = cmp.mapping.preset.cmdline(),
    -- sources = {
    --  {name = "buffer"}
    -- }
    --}
    --),
    -- 在 命令行:模式下启动补全
    cmp.setup.cmdline(
      ":",
      {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
          {
            {name = "path"}
          },
          {
            {name = "cmdline"}
          }
        )
      }
    ),
    -- 设置提示源
    sources = cmp.config.sources(
      {
        {name = "nvim_lsp"}, -- For nvim-lsp
        {name = "luasnip"}, -- For luasnip user
        {name = "buffer"}, -- For buffer word completion
        {name = "path"} -- For path completion
      }
    )
  }
)
