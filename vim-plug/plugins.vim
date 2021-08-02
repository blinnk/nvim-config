
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/plugged')

"Organization
Plug 'itchyny/calendar.vim'

" Files/Buffer Handling
Plug 'preservim/nerdtree'
Plug 'jballanc/nerdtree-space-keys'
Plug 'kevinhwang91/rnvimr'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" allows \bo to close all buffers except current focus
Plug 'vim-scripts/BufOnly.vim'
" Plug 'tpope/vim-obsession'
" Plug 'dhruvasagar/vim-prosession'
" Plug 'sheerun/vim-polyglot'


" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-project.nvim'
" Plug 'airblade/vim-rooter'
Plug 'oberblastmeister/rooter.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'fhill2/telescope-ultisnips.nvim'

" UI
" if has("nvim")
"   " this one appears to work with nvim while vitality works with vim. vitality is not preferred since it
"   " attempts to do cursor changes (yuck)
"   Plug 'tmux-plugins/vim-tmux-focus-events'
" else
"   Plug 'sjl/vitality.vim'
" endif
Plug 'karb94/neoscroll.nvim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'mhinz/vim-startify'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'master' }
Plug 'voldikss/vim-floaterm'
Plug 'norcalli/nvim-colorizer.lua', Cond(has('termguicolors'))


" Snippets & Language & Syntax
Plug 'mhartington/formatter.nvim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" Plug 'zeekay/vim-beautify'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'hrsh7th/vim-vsnip'
Plug 'kitagry/vs-snippets'
Plug 'honza/vim-snippets'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
" Plug 'suy/vim-context-commentstring'

" Lsp
Plug 'stevearc/vim-vsnip-snippets'
Plug 'neovim/nvim-lspconfig'
"Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
" Plug 'folke/lsp-trouble.nvim'
Plug 'ray-x/lsp_signature.nvim'
" React Development
Plug 'leafgarland/typescript-vim'
" Plug 'yuezk/vim-js'
"---
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
"---
Plug 'peitalin/vim-jsx-typescript'
Plug 'mlaursen/vim-react-snippets'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/vim-jsx-improve'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'neovim/nvim-lsp'


" Utils
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " mostly used so that vim-surround can be repeated
Plug 'tpope/vim-eunuch' " Move, rename, other stuffs
Plug 'matze/vim-move'
Plug 'junegunn/vim-easy-align'
Plug 'folke/todo-comments.nvim'
Plug 'tpope/vim-commentary'
Plug 'abecodes/tabout.nvim'
Plug 'christoomey/vim-tmux-navigator'

" Git
Plug 'kdheepak/lazygit.nvim'
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'


" Themes
Plug  'TheNiteCoder/mountaineer.vim'
Plug 'ajgrf/sprinkles'
Plug 'AlessandroYorba/Sierra'
Plug 'dylanaraps/wal'
Plug 'cocopon/iceberg.vim'
Plug 'a/vim-trash-polka'
Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'keith/parsec.vim'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'romainl/Disciple'
Plug 'nightsense/snow'
Plug 'karoliskoncevicius/sacredforest-vim'
Plug 'danishprakash/vim-yami'
Plug 'AlessandroYorba/Alduin'
Plug 'teloe/bland.vim'
Plug 'AlessandroYorba/Despacio'
Plug 'sainnhe/everforest'
Plug 'habamax/vim-gruvbit'
Plug 'morhetz/gruvbox'
Plug 'gilgigilgil/anderson.vim'
Plug 'bf4/vim-dark_eyes'
Plug 'franbach/miramare'
Plug 'ulwlu/elly.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'antonk52/lake.vim'
Plug 'thomasstep/lichen'
Plug 'https://github.com/jnurmine/Zenburn'

call plug#end()

