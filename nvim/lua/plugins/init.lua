return {

  "folke/lazy.nvim",

  -- {"LnL7/nvim-lnl",
  --   dev = true,
  --   opts = {},
  -- },

  "tpope/vim-abolish",
  "tpope/vim-commentary",
  "tpope/vim-eunuch",
  "tpope/vim-projectionist",
  "tpope/vim-repeat",
  "tpope/vim-sensible",
  "tpope/vim-sleuth",
  "tpope/vim-surround",

  { "laytan/cloak.nvim",
    opts = {
      patterns = {
        { file_pattern = "*.env", cloak_pattern = "=.+", replace = nil },
      },
    },
  },

  { "folke/which-key.nvim",
    opts = {},
  },

}
