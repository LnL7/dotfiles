return {

  -- "tartansandal/vim-compiler-pytest",
  "5long/pytest-vim-compiler",

  "tpope/vim-tbone",

  { "tpope/vim-dispatch",
    dependencies = {"tpope/vim-tbone"},
    config = function ()
      -- let g:dispatch_compilers =
      --   \ { 'poetry run': ''
      --   \ }
      -- let g:cargo_makeprg_params = 'check'
    end,
  },

  -- { "luissimas/eval.nvim",
  --   cmd = "Eval",
  --   config = function ()
  --     local eval = require("eval")
  --     eval.setup({
  --       prefic_char = "> ",
  --       filetype = {
  --         lua = {cmd = "lua"},
  --         python = {cmd = "python3"},
  --       },
  --     })
  --   end,
  -- },

  -- { "neomake/neomake",
  --   config = function ()
  --   end,
  -- },

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
      {"t<CR>", desc = "Neotest run"},
      {"<Leader>t", desc = "Neotest (sub)commands"},
    },
    config = function ()
      local neotest = require("neotest")
      neotest.setup({
        output = { open_on_run = false },
        output_panel = { open = "vsplit" },
        -- quickfix = {
        --   open = function ()
        --     require("trouble").open({ mode = "quickfix", focus = false })
        --   end
        -- },
        adapters = {
          require("neotest-python")({ runner = "pytest", args = {"-vv"} }),
          require("neotest-elixir"),
          require("neotest-go"),
          require("neotest-rust"),
          require("neotest-zig"),
        }
      })

      vim.keymap.set("n", "t<CR>", neotest.run.run)
      vim.keymap.set("n", "t[", function() neotest.jump.prev({ status = "failed" }) end)
      vim.keymap.set("n", "t]", function() neotest.jump.next({ status = "failed" }) end)
      vim.keymap.set("n", "<Leader>tf", function() neotest.run.run(vim.fn.expand("%:h")) end)
      vim.keymap.set("n", "<Leader>to", function() neotest.output.open({ enter = true }) end)
      vim.keymap.set("n", "<Leader>tO", function() neotest.output_panel.toggle() end)

    end,
  },

  { "normen/vim-pio",
    config = function ()
    end
  },

}
