return {

  {
    "crispybaccoon/evergarden",
    lazy = true,
    -- config = function ()
    --   require("evergarden").setup({
    --     transparent_background = true,
    --   })
    -- end
  },

  {
    "EdenEast/nightfox.nvim",
    config = function()
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

  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
      })

      require("nvim-treesitter").install({ "bash", "c", "diff", "json", "lua", "python", "vim", "vimdoc" })

      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          local buf, filetype = args.buf, args.match
          local language = vim.treesitter.language.get_lang(filetype)
          local parsers = require("nvim-treesitter").get_installed('parsers')
          if vim.tbl_contains(parsers, filetype) then
            vim.treesitter.start(buf, language)
          end
        end,
      })

      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldmethod = 'expr'
      vim.opt.foldenable = false
    end,
  },

  -- {
  --   "nvim-treesitter/nvim-treesitter-context",
  --   dependencies = { "nvim-treesitter/nvim-treesitter" },
  --   config = function()
  --     require("treesitter-context").setup({
  --       mode = "cursor",
  --     })
  --   end,
  -- },

  -- { "RRethy/vim-illuminate",
  --   opts = {
  --     delay = 2000,
  --   },
  --   config = function (_, opts)
  --     require("illuminate").configure(opts)
  --   end,
  -- },

}
