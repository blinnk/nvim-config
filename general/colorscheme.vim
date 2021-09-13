set t_Co=256
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme yami

" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_transparent_background = 1
" let g:gruvbox_color_column = 'bg2'
" colorscheme gruvbox

" set background=light
" let g:mountaineer_transparent_background = 1
" colorscheme happy_hacking
" colorscheme base16-black-metal-bathory
" colorscheme base16-black-metal-venom
" set background=light
" colors sobrio


" let g:spacegray_low_contrast = 1
" let g:spacegray_use_italics = 1
" let g:spacegray_underline_search = 1
" colors spacegray


" colors mountaineer-grey
" colors mayanfog
" colors schellar

" let g:enable_italic_font = 1
" let g:hybrid_transparent_background = 1
" let g:enable_bold_font = 1

colors crayon

" colors hybrid

highlight NORMAL guibg=NONE ctermbg=NONE
highlight ColorColumn guibg=#1F1F1F ctermbg=0
highlight DiffChange guibg=NONE ctermbg=NONE
highlight GitGutterChange guifg=#5f8787 guibg=NONE ctermfg=66 ctermbg=NONE
highlight GitGutterAdd guifg=#87afaf guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
highlight DiffAdd guifg=#afd7d7 guibg=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
highlight DiffDelete guifg=#dfafaf guibg=NONE ctermbg=NONE
highlight GitGutterDelete guifg=#dfafaf guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight FoldColumn guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
" highlight VertSplit cterm=NONE guibg=NONE
" highlight Split ctermbg=NONE guibg=NONE
" hi Visual  guifg=#000000 guibg=#FFFFFF gui=none

highlight NvimTreeFolderIcon guifg=#fafafa
highlight NvimTreeRootFolder guifg=#95958d
highlight NvimTreeFolderName guifg=#858282
highlight NvimTreeFileName guifg=#95958d
highlight NvimTreeSymlink guifg=blue gui=bold,underline
highlight NvimTreeTypescriptIcon guifg=#315C9C
highlight NvimTreeOpenedFolderName guifg=#CD9395
highlight NvimTreeImageFile guifg=#716172
highlight NvimTreeOpenedFile guifg= #B1D234 gui=underline,italic,bold
highlight NvimTreeLuaIcon guifg=#1118C2
highlight NvimTreeJavascript guifg=#6E8E7E
highlight NvimTreeHtmlIcon guifg=#EDB077
highlight NvimTreeReactIcon guifg=#60708C
highlight NvimTreeCIcon guifg=#fafafa
highlight NvimTreeExecFile guifg=#7273B0
highlight NvimTreeOpenedFile guifg=#CD9395

" Errors in Red
hi LspDiagnosticsVirtualTextError guifg=#DD9999 ctermfg=Red
" Warnings in Yellow
hi LspDiagnosticsVirtualTextWarning guifg=#E2BC83 ctermfg=Yellow
" Info and Hints in White
hi LspDiagnosticsVirtualTextInformation guifg=#9D9D9D ctermfg=White
hi LspDiagnosticsVirtualTextHint guifg=#9D9D9D ctermfg=White
" Underline the offending code
hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE cterm=underline gui=underline

lua << EOF
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 vim.lsp.diagnostic.on_publish_diagnostics, {
   -- Enable underline, use default values
   underline = true,
   -- Enable virtual text only on Warning or above, override spacing to 2
   virtual_text = {
     spacing = 2,
     severity_limit = "Warning",
   },
 }
)
EOF

autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

