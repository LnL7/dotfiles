return {

  "tpope/vim-fugitive",

  { "tpope/vim-rhubarb",
    dependencies = { "tpope/vim-fugitive" },
    config = function ()
    end
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

  {
    "jceb/jiejie.nvim",
    config = function()
    end,
  },

  -- {
  --   "NicolasGB/jj.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   version = "v1.0.0",
  --   config = function()
  --     require("jj").setup({
  --     })
  --   end,
  -- },

  -- {
  --   "martintrojer/jj-fugitive",
  --   config = function()
  --   end,
  -- },

  { "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
  },

  {
    "julienvincent/hunk.nvim",
    cmd = { "DiffEditor" },
    config = function()
      require("hunk").setup()
    end,
  },

  {
    "rafikdraoui/jj-diffconflicts",
    config = function()
    end,
  },

}
