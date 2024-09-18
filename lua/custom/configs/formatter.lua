local M = {
    filetype = {
        javascript = {
            require("formatter.filetypes.javascript").prettier
        },
        typescript = {
            require("formatter.filetypes.typescript").prettier
        },
        javascriptreact = {
            require("formatter.filetypes.javascriptreact").prettier
        },
        typescriptreact = {
            require("formatter.filetypes.typescriptreact").prettier
        },
        html = {
            require("formatter.filetypes.html").prettier
        },
        css = {
            require("formatter.filetypes.css").prettier
        },
        svelte = {
            require("formatter.filetypes.svelte").prettier
        },
        python = {
            require("formatter.filetypes.python").ruff
        },
        -- go = {
        --     require("formatter.filetypes.go").gofmt
        -- },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailling_whitespace
        }
    }
}

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    command = "FormatWriteLock"
})

return M
