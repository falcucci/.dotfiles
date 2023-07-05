set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

function! LoadPlugins()
lua << EOF
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

  ----------------------------
  --  nvim colorizer setup  --
  ----------------------------
  if vim.g.loaded_colorizer then
    return
  end

  local command = vim.api.nvim_create_user_command
  local c = require "colorizer"
  c.setup()

  command("ColorizerToggle", function()
    local c = require "colorizer"
    if c.is_buffer_attached(0) then
      c.detach_from_buffer(0)
    else
      c.attach_to_buffer(0)
    end
  end, {})

  vim.g.loaded_colorizer = true
EOF
endfunction
call LoadPlugins()
