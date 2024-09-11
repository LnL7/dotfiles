return {

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "julianolf/nvim-dap-lldb",
      "leoluz/nvim-dap-go",
      "mfussenegger/nvim-dap-python",
    },
    cmds = { "DapContinue", "DapToggleBreakpoint" },
    config = function()
      local dap = require('dap')
      local dap_go = require("dap-go")
      local dap_lldb = require("dap-lldb")
      local dap_python = require("dap-python")
      dap_go.setup()
      dap_lldb.setup()
      dap_python.setup()

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

      vim.keymap.set("n", "<Leader>B", dap.toggle_breakpoint)
      vim.keymap.set("n", "<Leader>X", dap.run_to_cursor)
      vim.keymap.set("n", "<Leader>C", dap.continue)
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
              { id = "stacks", size = 0.7 },
              { id = "breakpoints", size = 0.3 },
            },
            position = "right",
            size = 70,
          },
          {
            elements = {
              { id = "repl", size = 1 },
            },
            position = "bottom",
            size = 20
          },
        }
      })

      vim.keymap.set("n", "<Leader>~", dapui.toggle)
      vim.keymap.set("n", "<Leader>K", widgets.hover)
      vim.keymap.set("n", "<Leader>S", function() widgets.centered_float(widgets.scopes) end)
    end
  },

}
