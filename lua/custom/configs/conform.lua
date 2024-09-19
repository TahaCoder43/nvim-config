local M = {
    format_on_save = {
        lsp_format = "fallback",
    },
    formatters_by_ft = {
        lua = { "stylua" },
        astro = { "prettier" },
        html = {"prettier"},
        css = {"prettier"},
        svelte = {"prettier"},
    },
}

return M
