set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

function! LoadPlugin()
lua << EOF
  require("nvim-picgo").setup()
EOF
endfunction
call LoadPlugin()
