local plugins = {
    -- {
    --     "folke/todo-comments.nvim",
    --     dependencies = { "nvim-lua/plenary.nvim" },
    --     event = "BufRead",
    --     config = function ()
    --         require("todo-comments").setup()
    --     end
    -- }, not working
    {
        "folke/trouble.nvim",
        event = "BufRead",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            position = "right",
        },
        -- keys = {
        --
        -- }
    },
    {
        'piersolenski/telescope-import.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim'
        },
        config = function()
            require("telescope").load_extension("import")
            require("telescope").setup({extensions = {
                imports = {
                    insert_at_top = true,
                }
            }})
        end,
        ft = {
            "python", "javascript", "typescript", "javascriptreact", "typescriptreact", "jsx", "tsx", "lua", "cpp", "c++"
        },
        keys = {
            {"<leader>fi", mode = {"n"}, function() vim.cmd("Telescope import") end, desc = "Fuzzy find recommended imports"}
        }
    },
    {
        "nvim-telescope/telescope-symbols.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim"
        },
        config = function ()
            require("telescope.builtin").symbols{ sources = {"emoji", "kaomoji", "gitmoji"}}
        end,
        keys = {
            { "<leader>fe", mode={"n"}, function() vim.cmd("Telescope symbols") end, desc = "Search and insert emoji"},
        }
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
           "SmiteshP/nvim-navic",
           "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        config = function ()
            vim.opt.updatetime = 200
            require("barbecue.ui").toggle(true)
            require("barbecue").setup({
                create_autocmd = false,
            })

            vim.api.nvim_create_autocmd({
                 "WinScrolled",
                 "BufWinEnter",
                 "CursorHold",
                 "InsertLeave",
                 "BufModifiedSet",
            }, {
                group = vim.api.nvim_create_augroup("barbecue.updater", {}),
                callback = function()
                    require("barbecue.ui").update()
                end,
            })

        end
    },
    {
        "simrat39/symbols-outline.nvim",
        config = function ()
            require("symbols-outline").setup()
        end,
        keys = {
            {"<leader>sc", mode = {"n"}, function() vim.cmd("SymbolsOutline") end, desc = "Open symbols outline"},
        }

    },
    {
        "preservim/tagbar",
        keys = {
            {"<leader>ss", mode = {"n"}, function() vim.cmd("Tagbar") end, desc = "Open Tagbar"},
        }

    },
    {
        "folke/flash.nvim",
         opts = {},
         keys = {
              { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
              { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
              { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
              { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
              { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },
    {
        "gelguy/wilder.nvim",
        config = function()
            local wilder = require("wilder")
            wilder.setup({modes = {":" , "?"}})
            wilder.set_option('renderer', wilder.popupmenu_renderer(

                wilder.popupmenu_palette_theme({
                     border = 'rounded',
                     max_height = '75%',
                     min_height = 0,
                     prompt_position = 'top',
                     reverse = 0,
                     pumblend = 20,
                     highlighter = wilder.basic_highlighter(),
                     left = {' ', wilder.popupmenu_devicons()},
                     right = {' ', wilder.popupmenu_scrollbar()},
                })
            ))
        end,
        event = "CmdlineEnter"
    },
    -- {
    --     "VonHeikemen/fine-cmdline.nvim",
    --     dependencies = {
    --         "MunifTanjim/nui.nvim"
    --     },
    --     config = function ()
    --         require("fine-cmdline").setup(require "custom.configs.find-cmdline")
    --     end,
    --     lazy = false
    -- },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function()
            return require "custom.configs.tree-sitter"
        end
    },
    {
        "tpope/vim-dadbod",
        dependencies = {
            "kristijanhusak/vim-dadbod-ui",
            -- "kristijanhusak/vim-dadbod-completion",
        },
        keys = {
            {"<leader>do", mode = {"n"}, function() vim.cmd("DBUI") end, desc = "Open database ui"},
        },
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust-analyzer",
                "typescript-language-server",
                "prettier",
                "gopls",
                "css-lsp",
                "cssmodules-language-server",
                "custom-elements-languageserver "
            }
        }
    },
    {
        "mhartington/formatter.nvim",
        event = "VeryLazy",
        opts = function()
            return require "custom.configs.formatter"
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "SmiteshP/nvim-navbuddy",
                dependencies = {
                    "SmiteshP/nvim-navic",
                    "MunifTanjim/nui.nvim"
                },
                opts = { lsp = { auto_attach = true } }
            }
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        dependencies = "neovim/nvim-lspconfig",
        opts = function ()
            return require "custom.configs.rust-tools"
        end,
        config = function (_, opts)
            require("rust-tools").setup(opts)
        end,
    },
    {
        "mfussenegger/nvim-dap",
    },
    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function ()
            require "custom.configs.lint"
        end
    },
    {
        "kylechui/nvim-surround",
       	version = "*",
       	event = "VeryLazy",
       	config = function()
       	    require("nvim-surround").setup()
       	end
    },
    {
        "olexsmir/gopher.nvim",
        ft = "go",
        config = function (_, opts)
            require("gopher").setup(opts)
        end,
        build = function()
            vim.cmd [[silent! GoInstallDeps]]
        end
    }
    -- {
    --     "nvim-telescope/telescope.nvim",
    --     opts = function ()
    --         return require "custom.configs.telescope"
    --     end
    -- }
}

return plugins
