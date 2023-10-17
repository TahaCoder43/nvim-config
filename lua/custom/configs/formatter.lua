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
