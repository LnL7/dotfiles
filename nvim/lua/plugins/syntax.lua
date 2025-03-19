return {

  { "crispybaccoon/evergarden",
    lazy = true,
    -- config = function ()
    --   require("evergarden").setup({
    --     transparent_background = true,
    --   })
    -- end
  },

  { "EdenEast/nightfox.nvim",
    config = function ()
      require('nightfox').setup({
        options = {
          transparent = true,
        },
        groups = {
          nightfox = {
            MatchParen = { bg = "palette.bg4" },
          },
        },
      })
      vim.cmd.colorscheme("nightfox")
    end,
  },

  { "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function ()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"bash", "c", "diff", "json", "lua", "python", "rust", "vim", "vimdoc"},
        highlight = {
          enable = true,
          -- additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        additional_vim_regex_highlighting = false,
      })

      -- vim.opt.foldmethod = "expr"
      -- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
      -- vim.opt.foldenable = false
    end,
  },

  { "nvim-treesitter/nvim-treesitter-context",
    dependencies = {"nvim-treesitter/nvim-treesitter"},
  },

  -- { "RRethy/vim-illuminate",
  --   opts = {
  --     delay = 2000,
  --   },
  --   config = function (_, opts)
  --     require("illuminate").configure(opts)
  --   end,
  -- },

}
