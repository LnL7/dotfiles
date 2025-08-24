local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

return helpers.make_builtin({
    name = "squawk",
    method = null_ls.methods.DIAGNOSTICS,
    filetypes = { "sql" },
    generator = null_ls.generator({
        command = "squawk",
        args = function (params)
            return { params.bufname }
        end,
        format = "line",
        multiple_files = true,
        check_exit_code = function(code, stderr)
            local success = code <= 1
            if not success then
                print(stderr)
            end
            return success
        end,
        on_output = helpers.diagnostics.from_patterns({
            {
                pattern = "([^:]+):(%d+):(%d+): warning: (.*)",
                groups = { "filename", "row", "col", "message" },
            },
        }),
    }),
})
