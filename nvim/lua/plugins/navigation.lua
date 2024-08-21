return {

  -- { "chentoast/marks.nvim", opts = {} },

  { "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = {"FzfLua"},
    keys = {
      {"<Leader>f", "Fzf files"},
      {"<Leader>e", "Fzf relative to file"},
      {"<Leader>p", "Fzf (sub)commands"},
    },
    config = function ()
      local fzf = require("fzf-lua")
      fzf.setup({
        fzf_opts = { ["--layout"] = "default" },
      })

      vim.keymap.set("n", "<Leader>f", fzf.files)
      vim.keymap.set("n", "<Leader>e", function() fzf.files({ cwd = vim.fn.expand("%:h") }) end)

      vim.keymap.set("n", "<Leader>pb", fzf.buffers)
      vim.keymap.set("n", "<Leader>pf", fzf.git_files)
      vim.keymap.set("n", "<Leader>pg", fzf.live_grep)
      vim.keymap.set("n", "<Leader>pl", fzf.grep_last)
      vim.keymap.set("n", "<Leader>pc", fzf.git_commits)
      vim.keymap.set("n", "<Leader>pm", fzf.marks)
      vim.keymap.set("n", "<Leader>ps", fzf.git_status)

      vim.keymap.set("n", "<Leader>pw", fzf.grep_cword)
      vim.keymap.set("n", "<Leader>pW", fzf.grep_cWORD)

      vim.keymap.set("n", "<Leader>ld", fzf.lsp_document_symbols)
      vim.keymap.set("n", "<Leader>lw", fzf.lsp_live_workspace_symbols)
      -- vim.keymap.set("n", "<Leader>lC", function() fzf.lsp_live_workspace_symbols({ regex_filter = "Class" }) end)
      -- vim.keymap.set("n", "<Leader>lM", function() fzf.lsp_live_workspace_symbols({ regex_filter = "Method" }) end)
    end,
  },

  { "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {"nvim-lua/plenary.nvim"},
    cmds = {"Telescope"},
  },

  { "ThePrimeagen/harpoon",
    -- dev = true,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {"<C-\\>", "Harpoon toggle"},
      {"<Leader>h", "Harpoon (sub)commands"},
    },
    config = function ()
      local harpoon = require("harpoon");
      harpoon:setup()

      local extensions = require("harpoon.extensions")
      harpoon:extend(extensions.builtins.navigate_with_number());

      vim.keymap.set("n", "<C-\\>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
      vim.keymap.set("n", "<Leader>hm", function() harpoon:list():add() end)
      vim.keymap.set("n", "<Leader>hp", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<Leader>hn", function() harpoon:list():next() end)
    end,
  },

}
