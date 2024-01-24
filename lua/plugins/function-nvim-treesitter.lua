return  {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require 'nvim-treesitter.configs'.setup{
			options = {
				-- 启动高亮
				highlight = { enable = true } , 
				-- 代码格式化
				indent = { enable = true }, 
				-- 高亮语言
				ensure_installed = {
					"html",
					"css",
					"scss",
					"vim",
					"lua",
					"typescript",
					"javascript",
					"java"
				}, 

			}
		}
	end
}

