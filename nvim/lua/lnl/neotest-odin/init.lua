local async = require("neotest.async")
local lib = require("neotest.lib")

local M = {
    name = "neotest-odin",
    version = "0.0.1",
}

M.setup = function(opts)
    print("setup")
    return M
end

M.root = lib.files.match_root_pattern("*.odin", "*.git")

M.is_test_file = function(file_path)
    return vim.endswith(file_path, ".odin")
end

M.discover_positions = function(file_path)
    print("discover_positions")
    print(file_path)
    -- (procedure_declaration)
    --  (attributes)
    --   (attribute)
    --    (identifier)
    local query = [[
        ;; query
        ((procedure_declaration)
        ) @test.declaration
    ]]
    print(vim.inspect(lib.treesitter.parse_positions(file_path, query, {})))
    return lib.treesitter.parse_positions(file_path, query, {})
end

M.build_spec = function (args)
    print("build_spec")
    local spec = {
        command = "odin test hello",
    }
    return spec
end

M.results = function (spec, result, tree)
    print("results")
    local results = {}
    return results
end

return M
