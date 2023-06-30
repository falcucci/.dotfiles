local vimrc = vim.fn.stdpath("config") .. "/init-backup.vim"
vim.cmd.source(vimrc)

require('nvim-picgo').setup()
