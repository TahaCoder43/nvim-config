---@type ChadrcConfig
local M = {}

M.ui = {
    theme="tokyodark",
    theme_toggle = {"tokyodark", "one_light"},
    statusline = {
        theme="default",
    },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
