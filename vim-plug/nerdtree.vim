nnoremap <silent> <Space>b :NERDTreeToggle<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

   let NERDTreeQuitOnOpen = 1
   let g:NERDTreeMinimalUI = 1
  let g:NERDTreeIgnore = ['undodir', 'autoload', 'node_modules' ]
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeShowHidden=1
  let NERDTreeShowLineNumbers=1
  let g:NERDTreeMinimalUI = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Private helpers {{{
" function! s:SID()
"     if ! exists('s:sid')
"         let s:sid = matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
"     endif
"     return s:sid
" endfunction
" let s:SNR = '<SNR>'.s:SID().'_'

" call NERDTreeAddKeyMap({
"             \ 'key': 'w',
"             \ 'callback': s:SNR.'toggle_width',
"             \ 'quickhelpText': 'Toggle window width' })

" function! s:toggle_width()
"     let l:max = 0
"     for l:z in range(1, line('$'))
"         let l:len = len(getline(l:z))
"         if l:len > l:max
"             let l:max = l:len
"         endif
"     endfor
"     exe 'vertical resize '.(l:max == winwidth('.') ? g:NERDTreeWinSize : l:max)
" endfunction

" " Plugin: Smart h/l navigation {{{
" " @see https://github.com/jballanc/nerdtree-space-keys
" " ---
" call NERDTreeAddKeyMap({
"             \ 'key':           'l',
"             \ 'callback':      s:SNR.'descendTree',
"             \ 'quickhelpText': 'open tree and go to first child',
"             \ 'scope':         'DirNode' })
" call NERDTreeAddKeyMap({
"             \ 'key':           'l',
"             \ 'callback':      s:SNR.'openFile',
"             \ 'quickhelpText': 'open file',
"             \ 'scope':         'FileNode' })
" call NERDTreeAddKeyMap({
"             \ 'key':           'h',
"             \ 'callback':      s:SNR.'closeOrAscendTree',
"             \ 'quickhelpText': 'close dir or move to parent dir',
"             \ 'scope':         'DirNode' })
" call NERDTreeAddKeyMap({
"             \ 'key':           'h',
"             \ 'callback':      s:SNR.'ascendTree',
"             \ 'quickhelpText': 'move to parent dir',
"             \ 'scope':         'FileNode' })

" function! s:descendTree(dirnode)
"     call a:dirnode.open()
"     call b:NERDTree.render()
"     if a:dirnode.getChildCount() > 0
"         let chld = a:dirnode.getChildByIndex(0, 1)
"         call chld.putCursorHere(0, 0)
"     end
" endfunction

" function! s:openFile(filenode)
"     call a:filenode.activate({'reuse': 'all', 'where': 'p'})
" endfunction

" function! s:closeOrAscendTree(dirnode)
"     if a:dirnode.isOpen
"         call a:dirnode.close()
"         call b:NERDTree.render()
"     else
"         call s:ascendTree(a:dirnode)
"     endif
" endfunction

" function! s:ascendTree(node)
"     let parent = a:node.parent
"     if parent != {}
"         call parent.putCursorHere(0, 0)
"         if parent.isOpen
"             call parent.close()
"             call b:NERDTree.render()
"         end
"     end
" endfunction
" " }}}


" " ---
" call NERDTreeAddKeyMap({
"             \ 'key': 'N',
"             \ 'callback': s:SNR.'create_in_path',
"             \ 'quickhelpText': 'Create file or dir',
"             \ 'scope': 'Node' })

" function! s:create_in_path(node)
"     if a:node.path.isDirectory && ! a:node.isOpen
"         call a:node.parent.putCursorHere(0, 0)
"     endif

"     call NERDTreeAddNode()
" endfunction
" " }}}

" function! s:closeOrAscendTree(dirnode)
" 	if a:dirnode.isOpen
" 		call a:dirnode.close()
" 		call b:NERDTree.render()
" 	else
" 		call s:ascendTree(a:dirnode)
" 	endif
" endfunction

