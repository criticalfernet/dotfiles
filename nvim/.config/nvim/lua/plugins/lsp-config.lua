local lsp_list = {"lua_ls",
  --"bashls","clangd","cssls","gopls","tsserver","basedpyright","rust_analyzer","vimls",
}


return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = lsp_list
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require "lspconfig"
      lspconfig.lua_ls.setup { capabilities = capabilities }
      lspconfig.bashls.setup { capabilities = capabilities }
      lspconfig.clangd.setup { capabilities = capabilities }
      lspconfig.cssls.setup { capabilities = capabilities }
      lspconfig.gopls.setup { capabilities = capabilities }
      lspconfig.tsserver.setup { capabilities = capabilities }
      lspconfig.basedpyright.setup { capabilities = capabilities }
      lspconfig.rust_analyzer.setup { capabilities = capabilities }
      lspconfig.vimls.setup { capabilities = capabilities }

      vim.keymap.set("n", "<leader>v", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>c", vim.lsp.buf.code_action, {})
    end,
  },
}
