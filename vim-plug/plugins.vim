
 function! Cond(cond, ...)
   let opts = get(a:000, 0, {})
   return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
 endfunction

call plug#begin('~/.vim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'airblade/vim-rooter'
Plug 'oberblastmeister/rooter.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'fhill2/telescope-ultisnips.nvim'

" Lsp
Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
" Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
Plug 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/vim-jsx-improve'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'wakatime/vim-wakatime'

" Utils
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'windwp/nvim-ts-autotag'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " mostly used so that vim-surround can be repeated
Plug 'tpope/vim-eunuch' " Move, rename, other stuffs
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'
Plug 'abecodes/tabout.nvim'
"--- tmux
" Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
"--- git
Plug 'kdheepak/lazygit.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'

" Snippets
Plug 'junegunn/vim-emoji'
Plug 'hrsh7th/nvim-compe'
"-- todo
" Install nvim-cmp
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-buffer'
" Install the buffer completion source
Plug 'L3MON4D3/LuaSnip'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'kitagry/vs-snippets'
Plug 'honza/vim-snippets'
Plug 'rafamadriz/friendly-snippets'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'
Plug 'stevearc/vim-vsnip-snippets'
Plug 'mlaursen/vim-react-snippets'

"  Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'branch' : '0.5-compat', 'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects', {'branch' : '0.5-compat'}
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Formatting
Plug 'mhartington/formatter.nvim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" General UX/UI
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'KabbAmine/vCoolor.vim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'karb94/neoscroll.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ray-x/lsp_signature.nvim'
Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'master' }

" Organization + Notes
Plug 'itchyny/calendar.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kevinhwang91/rnvimr'
Plug 'vim-scripts/BufOnly.vim'

" Themes
Plug 'TheNiteCoder/mountaineer.vim'
Plug 'AlessandroYorba/Sierra'
Plug 'dylanaraps/wal'
Plug 'danishprakash/vim-yami'
Plug 'AlessandroYorba/Alduin'
Plug 'AlessandroYorba/Despacio'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'chriskempson/base16-vim'

Plug 'elvessousa/sobrio'
Plug 'mildewchan/takodachi.vim'
Plug 'banga/vim-muted'
Plug 'isobit/vim-darcula-colors'
Plug 'thenewvu/vim-colors-arthur'
Plug 'tstelzer/kauz.vim'
Plug 'arzg/vim-mayanfog'
Plug 'igungor/schellar'
Plug 'ackyshake/Spacegray.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mcchrish/zenbones.nvim'
Plug 'rayes0/blossom.vim'

Plug 'sff1019/hogwarts.vim'
Plug 'mihaifm/4colors'
Plug 'micke/vim-hybrid'
Plug 'kbrsh/nox'
Plug 'jordwalke/VimCleanColors'
Plug 'initrc/spring'
Plug 'vim-scripts/darknight256.vim'
Plug 'dylanaraps/crayon'
Plug 'chrisdiana/itg_flat_vim'
Plug 'queyenth/oxeded.vim'
Plug 'ecssiah/nyx'

call plug#end()

