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

  -- nmap gr clashes with lsp goto references
  -- "inkarkat/vim-ReplaceWithRegister",

  { "folke/which-key.nvim",
    opts = {},
  },

  { "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
      { "<Leader>x", desc = "Trouble (sub)commands" },
    },
    config = function ()
      local trouble = require("trouble")
      vim.keymap.set("n", "<Leader>xx", trouble.toggle)
      vim.keymap.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end)
      vim.keymap.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end)
      vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end)
      vim.keymap.set("n", "<leader>xl", function() trouble.toggle("loclist") end)
      vim.keymap.set("n", "<Leader>xr", function() trouble.toggle("lsp_references") end)
      vim.keymap.set("n", "[d", function() trouble.previous({skip_groups = true, jump = true}) end)
      vim.keymap.set("n", "]d", function() trouble.next({skip_groups = true, jump = true}) end)
    end,
  },

}
