source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/colorscheme.vim
source $HOME/.config/nvim/general/config.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/lsp.vim
source $HOME/.config/nvim/vim-plug/prettier.vim
source $HOME/.config/nvim/vim-plug/markdown-preview-nvim.vim

luafile $HOME/.config/nvim/lua/init.lua

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" from http://howivim.com/2016/damian-conway/
" nmap  S  :%s//g<LEFT><LEFT>
" " SHIFT-M in vimscript here, since no expr mappings in lua yet?
" nmap <expr>  M  ':%s/' . @/ . '//g<LEFT><LEFT>'

" clearer lines between v splits
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=bg


" set viminfo='100,n$HOME/.vim/files/info/viminfo
" autocmd User Startified setlocal buflisted

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

source $HOME/.config/nvim/vim-plug/tree.vim
