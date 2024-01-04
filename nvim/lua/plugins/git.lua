return {

  "tpope/vim-fugitive",

  { "tpope/vim-rhubarb",
    dependencies = { "tpope/vim-fugitive" },
  },

  { "lewis6991/gitsigns.nvim", opts = {} },

}
