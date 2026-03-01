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

      local languages = { "bash", "c", "diff", "elixir", "go", "json", "lua", "odin", "python", "vim", "vimdoc" }
      require("nvim-treesitter").install(languages)

      for _, lang in ipairs(languages) do
        vim.api.nvim_create_autocmd('FileType', {
          pattern = { lang },
          callback = function() vim.treesitter.start() end,
        })
      end

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
