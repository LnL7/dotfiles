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

  { "williamboman/mason.nvim",
    lazy = false,
    config = true,
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

          -- ['<Tab>'] = cmp.mapping.confirm {
          --   behavior = cmp.ConfirmBehavior.Insert,
          --   select = true,
          -- },

          -- ['<Tab>'] = cmp.mapping(function(fallback)
          --   if cmp.visible() then
          --     cmp.select_next_item()
          --   elseif luasnip.expand_or_locally_jumpable() then
          --     luasnip.expand_or_jump()
          --   else
          --     fallback()
          --   end
          -- end, { 'i', 's' }),
          -- ['<S-Tab>'] = cmp.mapping(function(fallback)
          --   if cmp.visible() then
          --     cmp.select_prev_item()
          --   elseif luasnip.locally_jumpable(-1) then
          --     luasnip.jump(-1)
          --   else
          --     fallback()
          --   end
          -- end, { 'i', 's' }),
        }),
        sources = {
          { name = "buffer", keyword_length = 5 },
          { name = "nvim_lsp", keyword_length = 2 },
          { name = "luasnip", keyword_length = 2 },
        },
      })
      cmp.setup.cmdline({"/", "?"}, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer", keyword_length = 5 },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path", keyword_length = 5 }
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
