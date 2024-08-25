local logger = require("lnl.neotest-odin.logging")
local async = require("neotest.async")
local lib = require("neotest.lib")

local M = {}

M.Adapter = {
    name = "types-odin",
    version = "0.0.1",
    init = function () end,
}

M.Adapter.root = lib.files.match_root_pattern("*.odin", "*.git")

--- @async
--- @param file_path string
--- @return boolean
M.Adapter.is_test_file = function(file_path)
    return vim.endswith(file_path, "_test.odin")
end

--- Given a file path, parse all the tests within it.
--- @async
--- @param file_path string Absolute file path
--- @return neotest.Tree | nil
M.Adapter.discover_positions = function(file_path)
    local query = [[
        ;; query for test procedures
        (procedure_declaration
            (attributes
                (attribute
                    (identifier) @test.attriute
                    (#eq? @test.attriute "test")))
            (identifier) @test.name
            (procedure)) @test.definition
    ]]

    -- TODO: investigate filetype detection error

    --- @type neotest.Tree
    local tree = lib.treesitter.parse_positions(file_path, query, {})

    return tree
end

--- Build the runspec, which describes what command(s) are to be executed.
--- @param args neotest.RunArgs
--- @return neotest.RunSpec | neotest.RunSpec[] | nil
M.Adapter.build_spec = function (args)
    --- @type neotest.Position
    local pos = args.tree:data()

    local file_path = vim.fn.fnamemodify(pos.path, ":h")
    local spec = {
        command = "odin test " .. file_path .. " -file",
        context = {},
    }
    return spec
end

--- Process the test command output and result. Populate test outcome into the
--- Neotest internal tree structure.
--- @async
--- @param spec neotest.RunSpec
--- @param result neotest.StrategyResult
--- @param tree neotest.Tree
--- @return table<string, neotest.Result> | nil
M.Adapter.results = function (spec, result, tree)
    --- @type neotest.Position
    local pos = tree:data()

    local test_status = "failed"
    if result.code == 0 then
        test_status = "passed"
    elseif pos.type == "file" then
        -- TODO: detect individual tests
    elseif pos.type == "test" then
        local raw_output = async.fn.readfile(result.output)
        test_status = "passed"
        for _, line in ipairs(raw_output) do
            if string.match(line, ":" .. pos.name .. "()") then
                test_status = "failed"
                break
            end
        end
    end

    --- @type table<string, neotest.Result>
    local results = {}
    results[pos.id] = {
        status = test_status,
        output = result.output,
    }

    return results
end

return M.Adapter
