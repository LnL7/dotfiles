return {

  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local codecompanion = require("codecompanion")
      codecompanion.setup({
        interactions = {
          chat = {
            keymaps = {
              close = false
            }
          }
        },
        rules = { "AGENTS.md" }
      })

      vim.keymap.set("n", "<Leader>at", codecompanion.toggle, {})
      vim.keymap.set("n", "<Leader>an", codecompanion.chat, {})
      vim.keymap.set("n", "<Leader>ax", codecompanion.close_last_chat, {})
      vim.keymap.set("v", "<LocalLeader>a", codecompanion.add, { noremap = true, silent = true })
    end
  },

  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "normen/vim-pio",
    config = function()
    end
  },

  {
    "mistweaverco/kulala.nvim",
    ft = { "http" },
    config = function()
      local kulala = require("kulala")
      kulala.setup({
        ui = {
          win_opts = {
            wo = { foldmethod = "manual" },
          },
        }
      })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
        pattern = { "*.http" },
        group = vim.api.nvim_create_augroup("lnl-http-keymap", { clear = true }),
        callback = function(event)
          vim.keymap.set("n", "<CR>", kulala.run, { buffer = event.buf, desc = "Run request" })
          vim.keymap.set("n", "<Leader>G", kulala.download_graphql_schema,
            { buffer = event.buf, desc = "Graphql schema" })
        end
      })
    end
  },

}
