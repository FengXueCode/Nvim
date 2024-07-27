local status, formatter = pcall(require, "formatter")
if (not status) then
  return
end
formatter.setup(
  {
    filetype = {
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },
      javascript = {
        function()
          return {
            exe = "prettier",
            stdin = true,
            args = {"--stdin-filepath", "%"}
          }
        end
      }
    }
  }
)
--配置保存文件自动格式化代码
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]], true)
