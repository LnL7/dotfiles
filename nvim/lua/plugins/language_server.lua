return {

  {
    "j-hui/fidget.nvim",
    opts = {
      notification = {
        window = { winblend = 0 },
      },
    },
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

          require("none-ls-shellcheck.diagnostics"),
          require("none-ls-shellcheck.code_actions"),
          -- require("lnl.odin-check.diagnostics"),
          require("lnl.squawk.diagnostics"),
        },
      })
    end
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        automatic_enable = true,
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    lazy = false,
    -- event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.diagnostic.config({
        virtual_text = false,
        signs = {
          severity = { min = vim.diagnostic.severity.INFO },
        },
        jump = {
          severity = { min = vim.diagnostic.severity.WARN },
        },
      })

      vim.lsp.config("ctags_lsp", {
        cmd = { "ctags-lsp" },
        filetypes = {},
      })
      vim.lsp.enable("ctags_lsp")

      vim.lsp.config('ols', {
        cmd = { "ols" },
        filetypes = { 'odin' },
      })
      vim.lsp.enable('ols', true)

      vim.lsp.config('pyrefly', {
        filetypes = { 'python' },
      })

      vim.lsp.config('ruff', {
        filetypes = { 'python' },
        init_options = {
          settings = {
            lineLength = 119,
            organizeImports = false,
            lint = {
              enable = true,
              select = { "E", "F", "W", "U", "C4", "LOG0", "ANN" },
              ignore = { "E203", "E501", "E731", "E741", "UP032", "UP046", "ANN401" },
            }
          },
        },
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup('lnl-language-server', {}),
        callback = function(ev)
          local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

          vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover({ border = "single", max_height = 25, max_width = 120 })
          end, { buffer = ev.buf, desc = "Hover" })
          -- navigation
          vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, { buffer = ev.buf })
          vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, { buffer = ev.buf })
          -- actions
          vim.keymap.set("n", "g.", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action" })
          vim.keymap.set("n", "cd", vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
          -- language server
          vim.keymap.set("n", "<Leader>ld", function()
            vim.diagnostic.open_float({ border = "single" })
          end, { buffer = ev.buf, desc = "Hover diagnostics" })

          if client:supports_method('textDocument/formatting') then
            vim.keymap.set("n", "<Leader>lF", vim.lsp.buf.format, { buffer = ev.buf, desc = "Format" })
          end
        end,
      })
    end
  },

  {
    "stevearc/conform.nvim",
    config = function()
      local opts = {
        formatters_by_ft = {
          javascript = { "oxfmt", "oxlint" },
          python = { "isort", "black" },
        }
      }
      require("conform").setup(opts)

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("conform-auto-format", { clear = true }),
        callback = function(args)
          local mode = vim.api.nvim_get_mode().mode
          local filetype = vim.bo.filetype
          if vim.bo.modified == true and mode == 'n' and vim.tbl_contains(vim.tbl_keys(opts.formatters_by_ft), filetype) then
            require("conform").format({ bufnr = args.buf })
          end
        end
      })
    end
  },

}
