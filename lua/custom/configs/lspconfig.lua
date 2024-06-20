local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"
local navbuddy = require("nvim-navbuddy")

function custom_on_attach(client, bufnr)
    navbuddy.attach(client, bufnr)
    on_attach(client, bufnr)
end

capabilities.textDocument.foldingRange = {
    dynamicRegisteration = false,
    lineFoldingOnly = true,
}

local function organize_imports()
    local params = {
        command = "_typescript.organizeImports",
        arguments = {vim.api.nvim_buf_get_name(0)},
    }
    vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup {
    on_attach = custom_on_attach,
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = true
        }
    },
    commands = {
        OrganizeImports = {
            organize_imports,
            description = "Organize imports",
        }
    }

}

lspconfig.gopls.setup {
    on_attach = custom_on_attach,
    capabilities = capabilities,
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            }
        }
    }
}

lspconfig.cssls.setup {
    on_attach = custom_on_attach,
    capabilities = capabilities,
    cmd = {"vscode-css-language-server", "--stdio"},
    filetypes = {"css", "scss", "less"},
    root_dir = util.root_pattern("package.json", ".git", "index.html"),
    settings = {
        css = {
            validate = true
        },
        less = {
            validate = true
        },
        scss = {
            validate = true
        }
    },
    single_file_support = true
}

lspconfig.cssmodules_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"cssmodules-language-server"},
    filetypes = {"javascript", "typescript", "javascriptreact", "typescriptreact"},
    root_dir = util.root_pattern("package.json", ".git", "index.html")

}

lspconfig.custom_elements_ls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "custom-elements-languageserver", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "html" },
    init_options = {
        hostInfo = "neovim"
    },
    root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git", "index.html"),
}

require("ufo").setup()
lspconfig.svelte.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"svelteserver", "--stdio"},
    filetypes = {"svelte"},
    root_pattern = {"package.json", ".git"}
}

lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
}
