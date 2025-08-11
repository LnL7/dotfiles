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

      local symbol_filter = function(item, _)
        if item.kind:match('Class') or item.kind:match('Struct') or item.kind:match('Enum') or item.kind:match('Method') or item.kind:match('Function') then
          return true
        else
          return false
        end
      end
      vim.keymap.set("n", "g/", fzf.live_grep, { desc = "grep" })
      vim.keymap.set("n", "gs", function()
        fzf.lsp_document_symbols({ regex_filter = symbol_filter, exclude = true })
      end, { desc = "symbols" })

      vim.keymap.set("n", [[<C-\>]], fzf.resume)

      vim.keymap.set("n", "<Leader>f", fzf.files, { desc = "Fzf" })
      vim.keymap.set("n", "<Leader>e", function()
        fzf.files({ cwd = vim.fn.expand("%:h") })
      end, { desc = "Fzf (relative)" })
      -- buffers
      vim.keymap.set("n", "<Leader>bf", fzf.buffers, { desc = "Find buffers" })
      vim.keymap.set("n", "<Leader>bg", fzf.grep_curbuf, { desc = "Search buffer content" })
      vim.keymap.set("n", "<Leader>bl", fzf.git_bcommits, { desc = "Commit log for buffer" })
      -- project
      vim.keymap.set("n", "<Leader>pf", fzf.files, { desc = "Find files" })
      vim.keymap.set("n", "<Leader>pt", fzf.tags_live_grep, { desc = "Search tags" })
      vim.keymap.set("n", "<Leader>pg", fzf.live_grep, { desc = "Search in project" })
      vim.keymap.set("n", "<Leader>pw", fzf.grep_cword, { desc = "Search current word" })
      vim.keymap.set("n", "<Leader>pW", fzf.grep_cWORD, { desc = "Search current WORD" })
      vim.keymap.set("n", "<Leader>pb", fzf.git_branches, { desc = "Git branches" })
      vim.keymap.set("n", "<Leader>ps", fzf.git_status, { desc = "Git status" })
      -- langserver
      vim.keymap.set("n", "<Leader>pl", fzf.lsp_finder, { desc = "Language server" })
      vim.keymap.set("n", "<Leader>pS", fzf.lsp_live_workspace_symbols, { desc = "Search symbols" })
    end,
  },

  { "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {"<Leader>x", desc = "Trouble"},
    },
    config = function ()

      -- This filter doesn't seem to apply consistently, also doesn't detect multi-line imports
      local filter_python_lsp_imports = function(item)
        -- eg. {source = "lsp", item = {client = "pylsp", text = "<line>"}}
        return not string.find(item.item.text, "^from ")
      end

      local trouble = require("trouble")
      trouble.setup({
        focus = true,
        auto_refresh = false,
        auto_preview = false,
        modes = {
          diagnostics = {
            auto_refresh = true,
            filter = { buf = 0 },
            groups = { "severity", "filename" },
            sort = { "pos" },
            source = "diagnostics",
          },
          symbols = {
            win = { position = "left" },
          },
          lsp_base = {
            params = {
              include_current = true,
            },
          },
          lsp_references = {
            groups = {},
            format = "{text:ts}\t\t{filename}:{pos}",
            sort = { "filename", "pos" },
            keys = {
              C = {
                action = function(view)
                  view:filter({ any = {ft = "python", function(item) return string.find(item.item.text, "^class ") end} }, { toggle = true })
                end,
                desc = "Toggle class definition filter",
              },
            },
            filter = {
              any = { ft = "python", filter_python_lsp_imports },
            },
          },
        },
      })

      vim.keymap.set("n", "<C-q>", function()
        if trouble.is_open() then trouble.close() end
        pcall(vim.cmd, "cclose")
      end)

      local jump_opts = { skip_groups = true, jump = true }
      vim.keymap.set("n", "<C-k>", function()
        if trouble.is_open() then trouble.prev(jump_opts) else pcall(vim.cmd, "cprev") end
      end)
      vim.keymap.set("n", "<C-j>", function()
        if trouble.is_open() then trouble.next(jump_opts) else pcall(vim.cmd, "cnext") end
      end)
      vim.keymap.set("n", "[x", trouble.prev)
      vim.keymap.set("n", "]x", trouble.next)

      -- language server
      vim.keymap.set("n", "gd", function() trouble.toggle("lsp_definitions") end, { desc = "definitions" })
      vim.keymap.set("n", "gD", function() trouble.toggle("lsp_declarations") end, { desc = "declarations" })
      vim.keymap.set("n", "gA", function() trouble.toggle("lsp_references") end, { desc = "references" })
      vim.keymap.set("n", "gI", function() trouble.toggle("lsp_implementations") end, { desc = "implementations" })
      vim.keymap.set("n", "gO", function() trouble.toggle("lsp_document_symbols") end, { desc = "document_symbols" })
      vim.keymap.set("n", "gy", function() trouble.toggle("lsp_type_definitions") end, { desc = "type definitions" })
      -- trouble
      vim.keymap.set("n", "<Leader>xs", function() trouble.toggle("symbols") end, { desc = "List symbols" })
      vim.keymap.set("n", "<Leader>xd", function() trouble.toggle("diagnostics") end, { desc = "List diagnostics" })
      vim.keymap.set("n", "<Leader>xq", function() trouble.toggle("quickfix") end, { desc = "List quickfix" })
      vim.keymap.set("n", "<Leader>xx", function() trouble.close() end, { desc = "List close" })
    end,
  },

  { "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
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
      vim.keymap.set("n", "[h", function() harpoon:list():prev() end)
      vim.keymap.set("n", "]h", function() harpoon:list():next() end)

      vim.keymap.set("n", "<Leader>1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<Leader>2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<Leader>3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<Leader>4", function() harpoon:list():select(4) end)
      vim.keymap.set("n", "<Leader>5", function() harpoon:list():select(5) end)
      vim.keymap.set("n", "<Leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon" })
      -- buffers
      vim.keymap.set("n", "<Leader>ba", function() harpoon:list():add() end, { desc = "Harpoon current buffer" })
    end,
  },

  { "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {"nvim-lua/plenary.nvim"},
    cmds = {"Telescope"},
  },

}
