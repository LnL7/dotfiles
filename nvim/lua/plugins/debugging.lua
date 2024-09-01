return {

  { "mfussenegger/nvim-dap-python",
    dependencies = {"mfussenegger/nvim-dap"},
    cmds = {"DapContinue", "DapToggleBreakpoint"},
    config = function ()
      local dap = require('dap')
      local widgets = require('dap.ui.widgets')
      local dap_python = require("dap-python")
      dap_python.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3")

      table.insert(dap.configurations.python, {
        type = "python",
        request = "launch",
        name = "Django",
        program = "./manage.py",
        args = {"runserver", "127.0.0.1:8081"},
      })

      vim.keymap.set("n", "<Leader>B", dap.toggle_breakpoint)
      vim.keymap.set("n", "<Leader>K", widgets.hover)
    end
  },

  { "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap-python"},
    config = function ()
      local dapui = require("dapui")
      dapui.setup()

      vim.keymap.set("n", "<Leader>~", dapui.toggle)
    end
  },

}
