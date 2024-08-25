return {

  -- { "chentoast/marks.nvim", opts = {} },

  { "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function ()
      local fzf = require("fzf-lua")
      local trouble = require("trouble.sources.fzf")

      fzf.setup({
        actions = {
          files = {
            true,
            ["ctrl-l"] = fzf.actions.file_sel_to_qf,
            ["ctrl-x"] = trouble.actions.open,
          },
        },
        fzf_opts = { ["--layout"] = "default" },
      })

      vim.keymap.set("n", "<Leader>z", fzf.builtin)
      vim.keymap.set("n", "<Leader>f", fzf.files)
      vim.keymap.set("n", "<Leader>e", function() fzf.files({ cwd = vim.fn.expand("%:h") }) end)
      vim.keymap.set("n", "<Leader>g", fzf.live_grep)
      vim.keymap.set("n", "<Leader>w", fzf.grep_cword)
      vim.keymap.set("n", "<Leader>W", fzf.grep_cWORD)

      vim.keymap.set("n", [[<C-\>]], fzf.resume)
    end,
  },

  { "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "Trouble" },
    keys = {
      { "<Leader>x", desc = "Trouble toggle" },
      { "<Leader>d", desc = "Trouble diagnostics" },
      { "<Leader>q", desc = "Trouble quickfix" },
      { "gr", desc = "Trouble goto references" },
      { "gs", desc = "Trouble document symbols" },
    },
    config = function ()
      local trouble = require("trouble")

      vim.keymap.set("n", "<Leader>x", trouble.toggle)
      vim.keymap.set("n", "<Leader>r", function() trouble.toggle("lsp_references") end)
      vim.keymap.set("n", "<Leader>s", function() trouble.toggle("lsp_document_symbols") end)
      vim.keymap.set("n", "<Leader>d", function() trouble.toggle("diagnostics") end)
      vim.keymap.set("n", "<Leader>q", function()
        vim.cmd("cclose")
        trouble.toggle("quickfix")
      end)

      vim.keymap.set("n", "<C-k>", function() trouble.prev({ skip_groups = true, jump = true }) end)
      vim.keymap.set("n", "<C-j>", function() trouble.next({ skip_groups = true, jump = true }) end)
      vim.keymap.set("n", "[x", trouble.prev)
      vim.keymap.set("n", "]x", trouble.next)
    end,
  },

  { "ThePrimeagen/harpoon",
    -- dev = true,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {"<Leader>h", "Harpoon menu toggle"},
      {"<Leader>1", "Harpoon select"},
      {"<Leader>2", "Harpoon select"},
      {"<Leader>3", "Harpoon select"},
      {"<Leader>4", "Harpoon select"},
      {"<Leader>a", "Harpoon add file"},
      {"[h", "Harpoon previous"},
      {"]h", "Harpoon next"},
    },
    config = function ()
      local harpoon = require("harpoon");
      harpoon:setup()

      local extensions = require("harpoon.extensions")
      harpoon:extend(extensions.builtins.navigate_with_number())
      harpoon:extend({
        UI_CREATE = function(cx)
          vim.keymap.set("n", "<C-c>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { buffer = cx.bufnr })
          vim.keymap.set("n", "<C-q>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { buffer = cx.bufnr })
        end,
      })

      vim.keymap.set("n", "<Leader>1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<Leader>2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<Leader>3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<Leader>4", function() harpoon:list():select(4) end)
      vim.keymap.set("n", "<Leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() end)
      vim.keymap.set("n", "[h", function() harpoon:list():prev() end)
      vim.keymap.set("n", "]h", function() harpoon:list():next() end)
    end,
  },

  { "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {"nvim-lua/plenary.nvim"},
    cmds = {"Telescope"},
  },

}
