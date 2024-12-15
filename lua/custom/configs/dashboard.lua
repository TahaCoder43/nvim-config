local M = {
    theme = "hyper",
    hide = {
        tabline=true,
        winbar=true
    },
    config = {
        week_header = {
            enable = false
        },
        shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
                icon = ' ',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            -- {
            --     desc = ' Apps',
            --     group = 'DiagnosticHint',
            --     action = 'Telescope app',
            --     key = 'a',
            -- },
            -- {
            --     desc = ' dotfiles',
            --     group = 'Number',
            --     action = 'Telescope dotfiles',
            --     key = 'd',
            -- },
        },
        header = {
              [[                                                ]],
              [[                                          _.oo. ]],
              [[                  _.u[[/;:,.         .odMMMMMM' ]],
              [[               .o888UU[[[/;:-.  .o@P^    MMM^   ]],
              [[              oN88888UU[[[/;::-.        dP^     ]],
              [[             dNMMNN888UU[[[/;:--.   .o@P^       ]],
              [[            ,MMMMMMN888UU[[/;::-. o@^           ]],
              [[            NNMMMNN888UU[[[/~.o@P^              ]],
              [[            888888888UU[[[/o@^-..               ]],
              [[           oI8888UU[[[/o@P^:--..                ]],
              [[        .@^  YUU[[[/o@^;::---..                 ]],
              [[      oMP     ^/o@P^;:::---..                   ]],
              [[   .dMMM    .o@^ ^;::---...                     ]],
              [[  dMMMMMMM@^`       `^^^^                       ]],
              [[ YMMMUP^                                        ]],
              [[                                                ]],
            -- [[                                                     ]],
            -- [[                                                     ]],
            -- [[  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
            -- [[  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
            -- [[ ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
            -- [[ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
            -- [[ ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
            -- [[ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
            -- [[ ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
            -- [[    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
            -- [[          ░    ░  ░    ░ ░        ░   ░         ░    ]],
            -- [[                                 ░                   ]],
            -- [[                                                     ]],
        },
        footer = {
            "",
            "✨ A powerful, fast IDE in a terminal ✨"
        }
    }
}

return M
