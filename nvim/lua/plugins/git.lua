return {

  "tpope/vim-fugitive",

  { "tpope/vim-rhubarb",
    dependencies = { "tpope/vim-fugitive" },
  },

  { "lewis6991/gitsigns.nvim",
    config = function ()
      local gitsigns = require('gitsigns')

      gitsigns.setup({
        on_attach = function (bufnr)
          vim.keymap.set('n', ']c', function()
            if vim.wo.diff then
              vim.cmd.normal({']c', bang = true})
            else
              gitsigns.nav_hunk('next')
            end
          end, { buffer = bufnr })

          vim.keymap.set('n', '[c', function()
            if vim.wo.diff then
              vim.cmd.normal({'[c', bang = true})
            else
              gitsigns.nav_hunk('prev')
            end
          end, { buffer = bufnr })
        end,
      })
    end,
  },

  { "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
  },

}
