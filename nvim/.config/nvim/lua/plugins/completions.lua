return {
  {
    "L3MON4D3/LuaSnip",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require "cmp"
      cmp.setup {
        snippet = {
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            --vim.snippet.expand(args.body)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert {
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm { select = true },
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          -- { name = "vsnip" }, -- For vsnip users.
        }, {
          { name = "buffer" },
        }),
      }
    end,
  },
}