return {

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "julianolf/nvim-dap-lldb",
      "leoluz/nvim-dap-go",
      "mfussenegger/nvim-dap-python",
    },
    cmds = { "DapNew" },
    keys = {
      {"<Leader>d", desc = "Debugger"},
    },
    config = function()
      local dap = require('dap')
      local dap_go = require("dap-go")
      local dap_lldb = require("dap-lldb")
      local dap_python = require("dap-python")
      dap_go.setup({})
      dap_lldb.setup({})
      dap_python.setup("python3", {})
      dap_python.test_runner = "pytest"

      require("nvim-dap-virtual-text").setup({
        enabled = true
      })

      dap.configurations.odin = {
        {
          type = "lldb",
          request = "launch",
          name = "Launch LLDB",
          program = function()
            return "src.bin"
          end
        },
      }

      -- debugger
      vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
      vim.keymap.set("n", "<Leader>dd", dap.clear_breakpoints, { desc = "Clear breakpoints" })
      vim.keymap.set("n", "<Leader>dg", dap.run_to_cursor, { desc = "Run until cursor" })
      vim.keymap.set("n", "<Leader>dh", dap.step_over, { desc = "Step over" })
      vim.keymap.set("n", "<Leader>dj", dap.step_into, { desc = "Step into" })
      vim.keymap.set("n", "<Leader>dk", dap.step_out, { desc = "Step out" })
      vim.keymap.set("n", "<Leader>dx", dap.continue, { desc = "Continue debugger" })
      vim.keymap.set("n", "<Leader>dc", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end, { desc = "Add condition" })
      vim.keymap.set("n", "<Leader>dl", function()
        local message = "TRACE {" .. vim.fn.expand("<cword>") .. "}"
        dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: ", message))
      end, { desc = "Add logpoint" })

      vim.keymap.set("n", "<Leader>dA", function() dap.list_breakpoints(true) end, { desc = "Breakpoint list" })
      vim.keymap.set("n", "<Leader>dQ", dap.terminate, { desc = "Terminate" })
      vim.keymap.set("n", "<Leader>dR", dap.restart, { desc = "Restart" })
    end
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dapui = require("dapui")
      local widgets = require('dap.ui.widgets')

      dapui.setup({
        layouts = {
          {
            elements = {
              { id = "scopes", size = 0.6 },
              { id = "stacks", size = 0.2 },
              { id = "breakpoints", size = 0.2 },
            },
            position = "right",
            size = 60,
          },
          {
            elements = {
              { id = "repl", size = 1 },
            },
            position = "bottom",
            size = 30
          },
        }
      })

      -- debugger
      vim.keymap.set("n", "<Leader>dv", dapui.toggle, { desc = "Toggle debugger UI" })
      vim.keymap.set("n", "<Leader>dh", widgets.hover, { desc = "Hover value" })
      vim.keymap.set("n", "<Leader>ds", function()
        widgets.centered_float(widgets.scopes)
      end, { desc = "Display scopes" })
    end
  },

}
