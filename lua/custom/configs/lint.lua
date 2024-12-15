-- settings default linters
require("lint").linters_by_ft = {
    javascript = {"eslint"},
    typescript = {"eslint"},
    javascriptreact = {"eslint"},
    typescriptreact = {"eslint"},
    python = {"ruff"},
    -- astro = {"biomejs"},
    -- python = {"ruff", "mypy"},
}

-- adding command line arguments to be run with linters
-- local mypy = require("lint").linters.mypy
-- mypy.args = {
--     "--checked-untyped-defs"
-- }

-- setting the linter to be run, whenever we write a file
vim.api.nvim_create_autocmd({"BufWritePost"}, {
    callback = function()
        require("lint").try_lint()
    end,
})
