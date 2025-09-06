return {

  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("codecompanion").setup({
      })
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
