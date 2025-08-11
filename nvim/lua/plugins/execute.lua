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
    cmd = "Neotest",
    keys = {
      {"<Leader>t", desc = "Neotest"},
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
          require("neotest-python")({ runner = "pytest", args = {"-vvv", "--log-level=INFO"} }),
          require("neotest-elixir"),
          require("neotest-go"),
          require("neotest-rust"),
          require("neotest-zig"),

          require("lnl.neotest-odin"),
        }
      })

      vim.keymap.set("n", "<Leader>tr", function() neotest.run.run() end, { desc = "Neotest run" })
      vim.keymap.set("n", "<Leader>td", function() neotest.run.run({ strategy = "dap" }) end, { desc = "Neotest debug" })
      vim.keymap.set("n", "<Leader>tf", function() neotest.run.run(vim.fn.expand("%:h")) end, { desc = "Neotest run current file" })
      vim.keymap.set("n", "<Leader>ts", function() neotest.summary() end, { desc = "Neotest show summary" })
      vim.keymap.set("n", "<Leader>to", function() neotest.output.open({ enter = true }) end, { desc = "Neotest show output" })
      vim.keymap.set("n", "<Leader>tO", function() neotest.output_panel.toggle() end, { desc = "Neotest open output panel" })

      vim.keymap.set("n", "t<CR>", neotest.run.run_last)
      vim.keymap.set("n", "[t", function() neotest.jump.prev({ status = "failed" }) end)
      vim.keymap.set("n", "]t", function() neotest.jump.next({ status = "failed" }) end)

    end,
  },

  { "normen/vim-pio",
    config = function ()
    end
  },

}
