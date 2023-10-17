---@type ChadrcConfig
local M = {}

M.ui = {
    theme="tokyonight",
    theme_toggle = {"tokyonight", "one_light"},
    statusline = {
        theme="default",
    },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
