return {

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
      vim.g.lsp_zero_ui_float_border = "rounded"
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "gbprod/none-ls-shellcheck.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.hover.printenv,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,

          require("none-ls-shellcheck.diagnostics"),
          require("none-ls-shellcheck.code_actions"),
          -- require("lnl.odin-check.diagnostics"),
        },
      })
    end
  },

  { "mason-org/mason.nvim", opts = {} },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
    },
    config = function()
      vim.lsp.config('pyright', {
        settings = {
          disableTaggedHints = true,
        },
      })
      vim.lsp.config('ruff', {
        init_options = {
          settings = {
            lineLength = 119,
            organizeImports = false,
            lint = {
              enable = true,
              select = { "E", "F", "W", "U", "C4", "LOG0", "ANN" },
              ignore = { "E203", "E501", "E731", "E741", "UP032", "ANN401" },
            }
          },
        },
      })

      require("mason-lspconfig").setup({
        automatic_enable = true,
        ensure_installed = { "gopls", "rust_analyzer", "pyright", "ts_ls" },
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    cmd = { "LspInfo", "LspInstall", "LspStart" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lsp_zero = require("lsp-zero")
      lsp_zero.extend_lspconfig()

      lsp_zero.on_attach(function(_, bufnr)
        -- see :help lsp-zero-keybindings to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })

        vim.keymap.set("n", "K", function()
          vim.lsp.buf.hover({ border = "single", max_height = 25, max_width = 120 })
        end, { buffer = bufnr })
        vim.keymap.set("i", "<C-h>", function()
          vim.lsp.buf.signature_help({ border = "single" })
        end, { buffer = bufnr })

        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, { buffer = bufnr })
        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, { buffer = bufnr })

        vim.keymap.set("n", "g.", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code action" })
        vim.keymap.set("n", "cd", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })

        -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr })
        -- vim.keymap.set("n", "gA", vim.lsp.buf.references, { buffer = bufnr })
        -- vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = bufnr })
        -- vim.keymap.set("n", "gO", vim.lsp.buf.document_symbol, { buffer = bufnr })
        -- vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { buffer = bufnr })

        -- language server
        vim.keymap.set("n", "<Leader>ld", vim.diagnostic.open_float, { buffer = bufnr, desc = "Hover diagnostics" })
        vim.keymap.set("n", "<Leader>lF", vim.lsp.buf.format, { buffer = bufnr, desc = "Format" })
        vim.keymap.set("n", "<Leader>lD", function()
          local config = vim.diagnostic.config() or {}
          vim.diagnostic.config({ virtual_text = not config.virtual_text })
        end, { buffer = bufnr, desc = "Toggle diagnostics virtual text" })

        vim.diagnostic.config({
          virtual_text = false,
          signs = {
            severity = { min = vim.diagnostic.severity.INFO },
          },
          jump = {
            severity = { min = vim.diagnostic.severity.WARN },
          },
        })
      end)

      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function()
          local mode = vim.api.nvim_get_mode().mode
          local filetype = vim.bo.filetype
          if vim.bo.modified == true and mode == 'n' and filetype == "python" then
            vim.cmd('lua vim.lsp.buf.format()')
          else
          end
        end
      })
    end
  },

  {
    "github/copilot.vim",
    cmd = "Copilot",
    keys = {
      {"<M-Tab>", mode = "i"},
    },
    config = function()
      vim.g.copilot_filetypes = {["*"] = false}
      vim.keymap.set("i", "<M-Tab>", "<Plug>(copilot-suggest)", { silent = true })
    end,
  }

}
