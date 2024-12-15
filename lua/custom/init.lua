vim.opt.tabstop = 4 -- setting tab to 4
vim.opt.shiftwidth = 4 -- setting tab to 4
vim.opt.expandtab = true
vim.opt.relativenumber = true -- line numbers as how far away they are from cursor
vim.opt.wrap = true -- wraps lines if they overflow instead of scrolling
vim.opt.list = true -- what did this do
vim.opt.lcs = vim.opt.lcs + "space:꭪" -- replacing space with this dot character. To know how many spaces there are
vim.opt.scrolloff = 999 -- keeps cursor in the middle, always, except at end of files
vim.cmd("source ~/.config/nvim/lua/custom/macros.vim")
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.mdx"},
    command = "setfiletype mdx",
}) -- find out why `set filetype mdx` not work
