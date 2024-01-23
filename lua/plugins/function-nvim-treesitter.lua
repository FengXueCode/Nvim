return  {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
	  require 'nvim-treesitter.configs'.setup({
		  -- 高亮语言
		ensure_installed = {
			"html",
			"css",
			"vim",
			"lua",
			"javascript",
			"typescript",
			"vue",
			"java"
		},
		-- 启动高亮功能
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false
		},
		-- 启动增量选择
		incremental_selection = {
			enable = true,
			keymap = {
				init_selection = '<CR>',
				node_incremental = '<CR>',
				node_decremental = '<BS>',
				scope_incremental = '<TAB>'
			}
		},
		-- 代码格式化
		indent = {
			enable = true
		}

	  })
  end
}

