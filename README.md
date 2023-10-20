# nvim-config

My Neovim configuration

## Prequistories

1. install [neovim][https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package]
2. install npm (for downloading language servers for css, javascript, typescript, html)
3. install go (for downloading language servers for go)
4. install rust (rust language server will be installed without installing rust, but to use it you need rust)

## How to install ❓

1. save your prevoius configuration by `cp ~/.config/nvim ~/nvim_backup` (if you have one)
2. now run `rm -rf ~/.config/nvim` and `rm -rf ~/.local/share/nvim/`
3. run `mkdir ~/.local/nvim` and `git clone https://github.com/TahaCoder43/nvim-config ~/.local/nvim`
4. now run nvim and it will start installing stuff, wait for it to install
5. now go in nvim press `:` and type `MasonInstallAll` that should open up a window installing all the language servers
