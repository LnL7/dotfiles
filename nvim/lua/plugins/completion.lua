return {

  "rafamadriz/friendly-snippets",

  { "L3MON4D3/LuaSnip",
    version = "v2.*",
    dependencies = {"rafamadriz/friendly-snippets"},
    opts = {
      history = true,
    },
    config = function ()
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  },

  { "hrsh7th/nvim-cmp",
    version = false,
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    events = {"CmdLineEnter", "InsertEnter"},
    config = function ()
      local lsp_zero = require("lsp-zero")
      lsp_zero.extend_cmp()

      local cmp = require("cmp")
      local cmp_action = lsp_zero.cmp_action()

      cmp.setup({
        formatting = lsp_zero.cmp_format(),
        mapping = cmp.mapping.preset.insert({
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
          ["<C-d>"] = cmp.mapping.scroll_docs(4),
          ["<C-f>"] = cmp_action.luasnip_jump_forward(),
          ["<C-b>"] = cmp_action.luasnip_jump_backward(),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = {
          { name = "buffer", keyword_length = 6 },
          { name = "nvim_lsp", keyword_length = 4 },
          { name = "luasnip", keyword_length = 2 },
        },
      })
      cmp.setup.cmdline({"/", "?"}, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer", keyword_length = 2 },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path", keyword_length = 6 }
        }, {
          { name = "cmdline", keyword_length = 2 }
        }),
      })
    end,
  },

  { "j-hui/fidget.nvim",
    opts = {
      notification = {
        window = { winblend = 0 },
      },
    },
  },

}
