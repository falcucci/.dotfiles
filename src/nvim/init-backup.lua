local vimrc = vim.fn.stdpath("config") .. "/init-backup.vim"
vim.cmd.source(vimrc)

----------------------------
--  nvim colorizer setup  --
----------------------------

require("nvim-picgo").setup()
local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
  update_interval = 1000,
  set_dark_mode = function()
    vim.cmd("call ChangeTheme('light')")
  end,
  set_light_mode = function()
    vim.cmd("call ChangeTheme('dark')")
  end,
})
auto_dark_mode.init()
