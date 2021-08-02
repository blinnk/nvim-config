 set t_Co=256
 set termguicolors
"  if has('termguicolors')
"       set termguicolors
"     endif
set background=dark
"colorscheme sierra
"colorscheme zenburn

let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_palette = 'material'
" colorscheme gruvbox-material
let g:nord_italic_comments = 1
let g:nord_italic = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold_vertical_split_line = 1
"colorscheme nord

let g:mountaineer_transparent_background = 1
"colorscheme mountaineer

" colorscheme yami
let g:alduin_Shout_Aura_Whisper = 1
"colorscheme alduin

let g:everforest_transparent_background = 1
" colorscheme everforest

let g:miramare_transparent_background = 1
let g:miramare_enable_italic = 1
"colorscheme miramare

" colorscheme elly
colorscheme despacio
" colorscheme nefertiti
" colorscheme snow
" colorscheme sacredforest
" colorscheme gruvbit

" let ayucolor="dark"
" colorscheme ayu

"colorscheme lake

let g:buftabline_show = 0

hi Comment cterm=italic
highlight ColorColumn guibg=LightGray ctermbg=2
  highlight DiffChange guibg=NONE ctermbg=NONE
  highlight GitGutterChange guifg=#5f8787 guibg=NONE ctermfg=66 ctermbg=NONE
  highlight GitGutterAdd guifg=#87afaf guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
  highlight DiffAdd guifg=#afd7d7 guibg=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
  highlight DiffDelete guifg=#dfafaf guibg=NONE ctermbg=NONE
 highlight GitGutterDelete guifg=#dfafaf guibg=NONE ctermbg=NONE
 highlight SignColumn guibg=NONE ctermbg=NONE
 highlight FoldColumn guibg=NONE ctermbg=NONE
 highlight LineNr guibg=NONE ctermbg=NONE
 highlight NORMAL guibg=NONE ctermbg=NONE
 " highlight VertSplit cterm=NONE guibg=NONE
 " highlight Split ctermbg=NONE guibg=NONE
hi Visual  guifg=#000000 guibg=#FFFFFF gui=none






