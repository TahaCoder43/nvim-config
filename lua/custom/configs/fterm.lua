local Fterm = require("FTerm")
local gitui = Fterm:new({
    ft = "fterm_gitui",
    cmd = "gitui -t tokyonight_storm.ron",
    dimensions = {
        height = 0.9,
        width = 0.9,
    },
})
local btop = Fterm:new({
    ft = "fterm_btop",
    cmd = "btop",
    dimensions = {
        height = 0.9,
        width = 0.9,
    },
})

Fterm.setup({
    border = "double",
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

vim.api.nvim_create_user_command("FloatingTerminal", Fterm.toggle, {bang = true})
vim.api.nvim_create_user_command("GituiToggle", function() gitui:toggle() end, {bang = true})
vim.api.nvim_create_user_command("BtopToggle", function() btop:toggle() end, {bang = true})
