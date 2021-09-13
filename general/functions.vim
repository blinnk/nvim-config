fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ECOSSE
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace() " trim white-spaces on entry
  autocmd BufEnter,WinEnter node_modules/*/** :LspStop
augroup END

" Highlight on yank
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

