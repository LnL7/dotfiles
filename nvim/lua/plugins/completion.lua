return {

  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })

      vim.keymap.set("n", "<Leader>lC", function() vim.cmd("Copilot toggle") end, { desc = "Copilot suggestions" })
    end
  },

  {
    'saghen/blink.cmp',
    dependencies = { "giuxtaposition/blink-cmp-copilot" },
    version = '1.*',
    config = function()
      require("blink.cmp").setup({
        completion = {
          accept = {
            auto_brackets = { enabled = false },
          },
          documentation = {
            auto_show = true,
            auto_show_delay_ms = 500,
            window = { border = 'single' },
          },
          list = {
            selection = {
              preselect = false,
              auto_insert = true
            },
          },
        },
        keymap = {
          preset = 'default'
        },
        signature = {
          enabled = true,
          trigger = { enabled = false },
          window = { border = 'single' },
        },
        sources = {
          default = { "lsp", "buffer", "copilot" },
          providers = {
            buffer = {
              min_keyword_length = 5,
            },
            lsp = {
              score_offset = 100,
              min_keyword_length = 1,
            },
            copilot = {
              name = "copilot",
              module = "blink-cmp-copilot",
              async = true,
            },
          },
        },
      })
    end,
  },

}
