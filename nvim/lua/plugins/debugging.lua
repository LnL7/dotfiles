return {

  { "mfussenegger/nvim-dap-python",
    dependencies = {"mfussenegger/nvim-dap"},
    cmds = {"DapContinue", "DapToggleBreakpoint"},
    config = function ()
      require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3")
      table.insert(require('dap').configurations.python, {
        type = 'python',
        request = 'launch',
        name = 'Python launch configuration',
        program = '${file}',
      })
    end
  },

  -- { "rcarriga/nvim-dap-ui",
  --   dependencies = {"mfussenegger/nvim-dap-python"},
  --   config = function ()
  --     require("dapui").setup()
  --   end
  -- },

}
