local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

return helpers.make_builtin({
    name = "odin check",
    method = null_ls.methods.DIAGNOSTICS,
    filetypes = { "odin" },
    generator = null_ls.generator({
        command = "odin",
        args = function (params)
            return { "check", vim.fs.dirname(params.bufname), "-vet" }
        end,
        from_stderr = true,
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
                pattern = "([^(]+)[(](%d+):(%d+)[)] (.*)",
                groups = { "filename", "row", "col", "message" },
            },
        }),
    }),
})
