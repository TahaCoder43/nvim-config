local M = {}

M.disabled = {
    n = {
        ["<leader>n"] = "",
        ["<leader>ma"] = "",
    }
}

M.abc = {
    n = {
        ["<leader>,"] = {"/,$\n:nohlsearch<CR>", "Go to next coma at end of line"},
        ["gr"] = {"viw<cmd>Telescope lsp_references<CR>", "show references"},
        ["<leader>fa"] = {"<cmd>Telescope live_grep<CR>", "find all"},
        ["<leader>fh"] = {"<cmd>Telescope current_buffer_fuzzy_find <CR>", "find here (in this buffer)"},
        ["<leader>f?"] = {"<cmd>Telescope help_tags <CR>", "find help"},
        ["wa"] = {"<cmd>tabnew<CR>", "Add a workspace"},
        ["wn"] = {"<cmd>tabnext<CR>", "Next workspace"},
        ["wp"] = {"<cmd>tabprevious<CR>", "Previous workspace"},
        ["z{"] = {"/{$\n:nohlsearch<CR>zfa{", "search {} folds"},
        ["zn"] = {"n<ESC>zfa{", "make next fold"},
        -- ["<leader>rc"] = {"yaw<cmd>s/<C-V>/"},
        ["<C-l>"] = {"0^", "Go to first non-space character on line"},
        ["<A-b>"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "Toggle horizontal term"
        },
        ["<A-n>"] = {
            function()
                require("nvterm.terminal").toggle "vertical"
            end,
            "Toggle Vertical term"
        },
        ["<A-h>"] = {"<cmd> TmuxNavigateLeft <CR>", "move to the left pane"},
        ["<A-j>"] = {"<cmd> TmuxNavigateDown <CR>", "move to the down pane"},
        ["<A-k>"] = {"<cmd> TmuxNavigateUp <CR>", "move to the left pane"},
        ["<A-l>"] = {"<cmd> TmuxNavigateRight <CR>", "move to the left pane"},
        ["<leader>nl"] = { "<cmd> set nu! <CR>", "Toggle line number" },
        ["<leader>ur"] = {"<cmd> Navbuddy <CR>", "ranger style symbol navigator"},
        ["<leader>fs"] = {"<cmd> Telescope lsp_document_symbols <CR>", "Search document symbols"},
        ["<leader>gp"] = {"<cmd> Gitsigns prev_hunk <CR>", "Jump to previous git hunk"},
        ["<leader>gn"] = {"<cmd> Gitsigns next_hunk <CR>", "Jump to next git hunk"},
        ["<leader>go"] = {"<cmd> Gitsigns preview_hunk <CR>", "Show git hunks inline"},
        ["<leader>gi"] = {"<cmd> Gitsigns preview_hunk_inline <CR>", "Show git hunks inline"},
        ["<leader>gs"] = {"<cmd> Gitsigns stage_hunk <CR>", "Stage hunk on cursor"},
        ["<leader>gu"] = {"<cmd> Gitsigns undo_stage_hunk <CR>", "Remove hunk from stage on cursor"},
        ["<leader>gr"] = {"<cmd> Gitsigns stage_hunk <CR>", "Reset hunk"},
    },
    v = {
        ["gr"] = {"<cmd>Telescope lsp_references<CR>", "show references"},
        ["<A-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "move to the left pane"},
        ["<A-j>"] = {"<cmd> TmuxNavigateDown<CR>", "move to the down pane"},
        ["<A-k>"] = {"<cmd> TmuxNavigateUp<CR>", "move to the left pane"},
        ["<A-l>"] = {"<cmd> TmuxNavigateRight<CR>", "move to the left pane"},

        --[":"] = {"<cmd>FineCmdline '<, '><CR>", "Open fine Cmd"},
    },
    i = {
        ["<A-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "move to the left pane"},
        ["<A-j>"] = {"<cmd> TmuxNavigateDown<CR>", "move to the down pane"},
        ["<A-k>"] = {"<cmd> TmuxNavigateUp<CR>", "move to the left pane"},
        ["<A-l>"] = {"<cmd> TmuxNavigateRight<CR>", "move to the left pane"},

    },
    t = {
         ["<A-b>"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "Toggle horizontal term"
        },
        ["<A-n>"] = {
            function()
                require("nvterm.terminal").toggle "vertical"
            end,
            "Toggle Vertical term"
        },
        ["<A-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "move to the left pane"},
        ["<A-j>"] = {"<cmd> TmuxNavigateDown<CR>", "move to the down pane"},
        ["<A-k>"] = {"<cmd> TmuxNavigateUp<CR>", "move to the left pane"},
        ["<A-l>"] = {"<cmd> TmuxNavigateRight<CR>", "move to the left pane"},    }
}

return M
