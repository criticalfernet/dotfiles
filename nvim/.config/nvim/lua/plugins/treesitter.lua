local langs = { "c", "lua", "vim", "vimdoc", "query", "bash", "cpp", "css", "go", "python", "rasi", "regex", "rust", "javascript", "ini" }

return  {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      ensure_installed = langs,
      highlight = {enable = true},
      indent = {enable = true}
    })
  end
}
