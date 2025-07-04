return {

  "tpope/vim-tbone",

  { "tpope/vim-dispatch",
    dependencies = {"tpope/vim-tbone"},
    config = function ()
    end,
  },

  { "nvim-neotest/neotest",
    dependencies = {
      "jfpedroza/neotest-elixir",
      "lawrence-laz/neotest-zig",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-python",
      "nvim-neotest/nvim-nio",
      "nvim-treesitter/nvim-treesitter",
      "rouge8/neotest-rust",
    },
    lazy = false,
    cmd = "Neotest",
    keys = {
      {"<Leader>t", desc = "Neotest (sub)commands"},
      {"t<CR>", desc = "Neotest run"},
      {"t[", desc = "Previous failed test"},
      {"t]", desc = "Previous failed test"},
    },
    config = function ()
      local neotest = require("neotest")
      neotest.setup({
        discovery = {
          enabled = false,
        },
        output = { open_on_run = false },
        output_panel = { open = "vsplit" },
        adapters = {
          require("neotest-python")({ runner = "pytest", args = {"-vv", "--log-level=INFO"} }),
          require("neotest-elixir"),
          require("neotest-go"),
          require("neotest-rust"),
          require("neotest-zig"),

          require("lnl.neotest-odin"),
        }
      })

      vim.keymap.set("n", "<Leader>tf", function() neotest.run.run(vim.fn.expand("%:h")) end)
      vim.keymap.set("n", "<Leader>tl", function() neotest.run.run_last() end)
      vim.keymap.set("n", "<Leader>to", function() neotest.output.open({ enter = true }) end)
      vim.keymap.set("n", "<Leader>tO", function() neotest.output_panel.toggle() end)

      vim.keymap.set("n", "t<CR>", neotest.run.run)
      vim.keymap.set("n", "[t", function() neotest.jump.prev({ status = "failed" }) end)
      vim.keymap.set("n", "]t", function() neotest.jump.next({ status = "failed" }) end)

    end,
  },

  { "normen/vim-pio",
    config = function ()
    end
  },

}
