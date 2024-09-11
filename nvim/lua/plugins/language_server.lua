return {

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
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
          null_ls.builtins.formatting.isort,

          require("none-ls-shellcheck.diagnostics"),
          require("none-ls-shellcheck.code_actions"),

          -- require("lnl.odin-check.diagnostics"),
        },
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason-lspconfig.nvim",
      "folke/neodev.nvim",
      "simrat39/rust-tools.nvim",
    },
    cmd = { "LspInfo", "LspInstall", "LspStart" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lsp_zero = require("lsp-zero")
      lsp_zero.extend_lspconfig()

      lsp_zero.on_attach(function(_, bufnr)
        -- see :help lsp-zero-keybindings to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr })
        vim.keymap.set("n", "gr", function()
          vim.lsp.buf.references({ includeDeclaration = false })
        end, { buffer = bufnr })

        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = bufnr })
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = bufnr })

        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, { buffer = bufnr })

        vim.keymap.set("n", "<Leader>A", vim.lsp.buf.code_action, { buffer = bufnr })
        vim.keymap.set("n", "<Leader>R", vim.lsp.buf.rename, { buffer = bufnr })
        vim.keymap.set("n", "<Leader>F", function()
          vim.lsp.buf.format({ async = true })
        end, { buffer = bufnr })

        vim.diagnostic.config({ virtual_text = false })

        vim.keymap.set("n", "<Leader>D", vim.diagnostic.open_float)
        vim.keymap.set("n", "<Leader>E", function()
          local config = vim.diagnostic.config()
          vim.diagnostic.config({ virtual_text = not config.virtual_text })
        end)
      end)

      require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "rust_analyzer", "pyright", "ts_ls" },
        handlers = {
          lsp_zero.default_setup,
          ["lua_ls"] = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require("lspconfig").lua_ls.setup(lua_opts)
          end,
          ["pyright"] = function()
            require("lspconfig").pyright.setup({
              settings = {
                pyright = {
                  disableTaggedHints = true,
                },
              },
            })
          end,
          ["ruff_lsp"] = function()
            require("lspconfig").ruff_lsp.setup({
              organizeImports = false,
            })
          end,
          ["rust_analyzer"] = function()
            local rust_tools = require('rust-tools')
            rust_tools.setup({
              server = {
                on_attach = function(_, bufnr)
                  vim.keymap.set("n", "K", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
                  vim.keymap.set("n", "<Leader>A", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
                end,
              },
            })
          end,
        }
      })

      require("lspconfig").ols.setup({})
      require('lspconfig').gleam.setup({})
    end
  },

  {
    "github/copilot.vim",
    cmd = "Copilot",
    config = function()
      -- vim.g.copilot_filetypes = {["*"] = false}
    end,
  }

}
