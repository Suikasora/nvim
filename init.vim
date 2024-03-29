" __  ____   __  _   ___	 _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @Suikasora

" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx

" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir


" ===
" === Editor behavior
" ===
set number
set relativenumber
set cursorline
set noexpandtab
set tabstop=4
set shiftwidth=4 "when press <tab> or > to adjust
set softtabstop=-1
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster (always set
set lazyredraw "same as above
set visualbell

silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif

set colorcolumn=100 "max = 100chars
set updatetime=1000 "crash-recovery save every second
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
noremap ; :

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
"aihui
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" Open Startify
"noremap <LEADER>st :Startify<CR>

" Undo operations
noremap l u

" Insert Key
noremap k i
noremap K I

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

nnoremap > >>
" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/	/\t/g
vnoremap <LEADER>tt :s/	/\t/g

" aihui-search
nnoremap = n
nnoremap - N


" Folding
noremap <silent> <LEADER>o za

" Open up lazygit
noremap \g :Git
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>


" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
"	 ^
"	 u
" < n   i >
"	 e
"	 v
noremap <silent> u k
noremap <silent> n h
noremap <silent> e j
noremap <silent> i l
noremap <silent> gu gk
noremap <silent> ge gj

" U/E keys for 5 times u/e (faster navigation)
noremap <silent> U 5k
noremap <silent> E 5j

" N key: go to the start of the line
noremap <silent> N 0
" I key: go to the end of the line
noremap <silent> I $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" set h (same as n, cursor left) to 'end of word'
noremap h e

" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-U> 5<C-y>
noremap <C-E> 5<C-e>


" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A


" ===
" === Command Mode Cursor Movement
" ===
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>

" === aihui
" === cursor position mapping
" ===
noremap <C-i> <C-o>
noremap <C-o> <C-i>
" =================================================================================================

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>u <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>
"aihui
noremap t- :bprev<CR>
noremap t= :bnext<CR>


" =================================================================================================

" ===
" === Other useful stuff
" ===

" Press ` to change case (instead of ~)
noremap ` ~

" Move the next character to the end of the line with ctrl+9
inoremap <C-u> <ESC>lx$p

" Screen centered
noremap <C-c> zz

" Opening a cerminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet (a banner generates
noremap tx :r !figuet

noremap <LEADER>- :lN<CR>
noremap <LEADER>= :lne<CR>

" find and replace
noremap \s :%s//g<left><left>

" ===
" === Combine with Linux Windows System
" ===

" Open a new instance of st with the cwd
"nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged')

"telescope.nvim (like fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-github.nvim'

"Plug 'tiagofumo/dart-vim-flutter-layout'
Plug 'dart-lang/dart-vim-plugin'
Plug 'RRethy/vim-illuminate'
"Plug 'AndrewRadev/splitjoin.vim'
Plug 'KabbAmine/vCoolor.vim'
"Plug 'pechorinuE/any-jump.vim' "<leader>j to find definitions
"plug 'airblade/vim-rooter'
"Plug 'skywind3000/asynctasks.vim'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'junkblocker/git-time-lapse'

"" Pretty Dress
"Plug 'liuchengxu/eleline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'bling/vim-bufferline'
""Plug 'liuchengxu/space-vim-theme'
""Plug 'morhetz/gruvbox'
""Plug 'ayu-theme/ayu-vim'
"Plug 'rakr/vim-one' "Light and dark vim colorscheme (stolen from atom
""Plug 'mhartington/oceanic-next'
""Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ajmwagar/vim-deus'
""Plug 'arzg/vim-colors-xcode'


"" Genreal Highlighter
"Plug 'jaxbot/semantic-highlight.vim'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ap/vim-css-color'

"" File navigation
""Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdtree'
""Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
""Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"" Taglist
"Plug 'liuchengxu/vista.vim'

"" Debugger
"Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}

"" REPL
""Plug 'rhysd/reply.vim'

"" Error checking, handled by coc

"" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
"Plug 'wellle/tmux-complete.vim'

"" Snippets
Plug 'SirVer/ultisnips'
"Plug 'theniceboy/vim-snippets'
Plug 'honza/vim-snippets'

"" Undo Tree
Plug 'mbbill/undotree'

" TODOLIST
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

"" Git
"Plug 'tpope/vim-fugitive'
"Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
""Plug 'mhinz/vim-signify'
"Plug 'airblade/vim-gitgutter'

"" Tex
"Plug 'lervag/vimtex'

"" CSharp
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] } " omnisharp-vim dependency

"" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
"Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
""Plug 'jaxbot/browserlink.vim'

"Vue.js
Plug 'posva/vim-vue' "For .vue Single File Components

"" Go
"Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

"" Python
"Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
"Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
""Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
"Plug 'tweekmonster/braceless.vim'

"" Flutter
"Plug 'theniceboy/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'

"" Swift
"Plug 'keith/swift.vim'

"" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
"Plug 'theniceboy/bullets.vim'

"" Other filetypes
"Plug 'jceb/vim-orgmode', {'for': ['vim-plug', 'org']}

"" Editor Enhancement
""Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
"Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
Plug 'https://github.com/gregsexton/MatchTag.git'

"Folding
Plug 'Konfekt/FastFold'
Plug 'zhimsel/vim-stay'

"Plug 'Suikasora/nerdcommenter' "only <space>ci for commenterInvert
"Plug 'theniceboy/antovim' " gs to switch
"Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
"Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
"Plug 'junegunn/vim-after-object' " da= to delete what's after =
"Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph,
"Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
"Plug 'easymotion/vim-easymotion'
""Plug 'junegunn/vim-peekaboo'
"Plug 'wellle/context.vim'
"Plug 'svermeulen/vim-subversive'
"Plug 'theniceboy/argtextobj.vim'
"Plug 'rhysd/clever-f.vim'

"" Input Method Autoswitch
""Plug 'rlue/vim-barbaric' " slowing down vim-multiple-cursors

"" Formatter
Plug 'Chiel92/vim-autoformat'

"" For general writing
"Plug 'junegunn/goyo.vim'
""Plug 'reedes/vim-wordy'
""Plug 'ron89/thesaurus_query.vim'

"" Bookmarks
""Plug 'kshenoy/vim-signature'
"Plug 'MattesGroeger/vim-bookmarks'

"" Find & Replace
"Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
"Plug 'osyo-manga/vim-anzu'

"" Documentation
""Plug 'KabbAmine/zeavim.vim' " <LEADER>z to find doc

"" Mini Vim-APP
""Plug 'liuchengxu/vim-clap'
""Plug 'jceb/vim-orgmode'
""Plug 'mhinz/vim-startify'

"" Vim Applications
"Plug 'itchyny/calendar.vim'

"" Other visual enhancement
"Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
"Plug 'mg979/vim-xtabline'
"Plug 'wincent/terminus'

"" Other useful utilities
"Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite
"Plug 'makerj/vim-pdf'
""Plug 'xolox/vim-session'
""Plug 'xolox/vim-misc' " vim-session dep

"" Dependencies
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'kana/vim-textobj-user'
"Plug 'roxma/nvim-yarp'

""aihui-plug
"Plug 'lilydjwg/fcitx.vim'	"for chinese input in archlinux
"Plug 'yianwillis/vimcdoc'	"for chinese vimdoc
"Plug 'Yggdroot/indentLine'	"for beautiful tabcolumn (but bug with plug-nerdcommenter
"Plug 'iamcco/coc-tailwindcss', {'do': 'yarn install --frozen-lockfile && yarn run build'}
"Plug 'chrisbra/vim-diff-enhanced'

call plug#end()

" experimental
set lazyredraw
"set regexpengine=1


"" ===
"" === Dress up my vim
"" ===
	"set termguicolors " enable true colors support
	"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	""set background=dark
	""let ayucolor="mirage"
	""let g:oceanic_next_terminal_bold = 1
	""let g:oceanic_next_terminal_italic = 1
	""let g:one_allow_italics = 1

	""color dracula
	""color one
	"color deus
	""color gruvbox
	""let ayucolor="light"
	""color ayu
	""color xcodelighthc
	""set background=light
	""set cursorcolumn

color gruvbox
"let g:molokai_original = 1
"let g:rehash256 = 1



"hi NonText ctermfg=gray guifg=grey10
""hi SpecialKey ctermfg=blue guifg=grey70

"" ===================== Start of Plugin Settings =====================

"" ===
"" === vim-airline
"" ===
"let g:airline_theme='<theme>'

"" ==
"" == GitGutter
"" ==
"let g:gitgutter_signs = 0
"let g:gitgutter_map_keys = 0
"let g:gitgutter_override_sign_column_highlight = 0
"let g:gitgutter_preview_win_floating = 1
"autocmd BufWritePost * GitGutter
"nnoremap <LEADER>gf :GitGutterFold<CR>
"nnoremap H :GitGutterPreviewHunk<CR>
"nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
"nnoremap <LEADER>g= :GitGutterNextHunk<CR>


"" ===
"" === vim-fugitive
"" ===
"nnoremap gb :Gblame<CR>


"" ===
"" === coc
"" ===
 "fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
"aihui
"let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter', 'coc-todolist', 'coc-yaml', 'coc-tasks', 'coc-actions', 'coc-diagnostic']
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
 "use <tab> for trigger completion and navigate to the next complete item
"aihui comment shita

"function! s:check_back_space() abort
	"let col = col('.') - 1
	"return !col || getline('.')[col - 1]	=~ '\s'
"endfunction
""inoremap <silent><expr> <TAB>
			""\ pumvisible() ? "\<C-n>" :
			""\ <SID>check_back_space() ? "\<TAB>" :
			""\ coc#refresh()
""inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
""function! s:check_back_space() abort
	""let col = col('.') - 1
	""return !col || getline('.')[col - 1]  =~# '\s'
""endfunction
""inoremap <silent><expr> <c-space> coc#refresh()
""inoremap <silent><expr> <c-o> coc#refresh()
""
""aihui add
"inoremap <silent> <TAB> <ESC>la

"" Open up coc-commands
"nnoremap <c-c> :CocCommand<CR>
"" Text Objects
"xmap kf <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap kf <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)
"" Useful commands
"nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nmap <leader>rn <Plug>(coc-rename)
"nmap tt :CocCommand explorer<CR>
"" coc-translator
"nmap ts <Plug>(coc-translator-p)
"" Remap for do codeAction of selected region
"function! s:cocActionsOpenFromSelected(type) abort
	"execute 'CocCommand actions.open ' . a:type
"endfunction
"xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
"nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
"" coctodolist
"nnoremap <leader>tn :CocCommand todolist.create<CR>
"nnoremap <leader>tl :CocList todolist<CR>
"nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
"" coc-tasks
"noremap <silent> T :CocList tasks<CR>


"" ===
"" === MarkdownPreview
"" ===
"let g:mkdp_auto_start = 0
"let g:mkdp_auto_close = 1
"let g:mkdp_refresh_slow = 0
"let g:mkdp_command_for_global = 0
"let g:mkdp_open_to_the_world = 0
"let g:mkdp_open_ip = ''
"let g:mkdp_echo_preview_url = 0
""let g:mkdp_browserfunc = ''
"let g:mkdp_preview_options = {
			"\ 'mkit': {},
			"\ 'katex': {},
			"\ 'uml': {},
			"\ 'maid': {},
			"\ 'disable_sync_scroll': 0,
			"\ 'sync_scroll_type': 'middle',
			"\ 'hide_yaml_meta': 1
			"\ }
"let g:mkdp_markdown_css = ''
"let g:mkdp_highlight_css = ''
"let g:mkdp_port = ''
"let g:mkdp_page_title = '「${name}」'


"" ===
"" === vim-table-mode
"" ===
"noremap <LEADER>tm :TableModeToggle<CR>
""let g:table_mode_disable_mappings = 1
"let g:table_mode_cell_text_object_i_map = 'k<Bar>'

"" ===
"" === NERDTree file system
"" ===
let g:NERDCreateDefaultMappings = 0
nnoremap <C-n> :NERDTreeFocus<CR>
"noremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
"key mapping in NERDTree
"autocmd VimEnter * let g:NERDTreeMapOpenExpl = "notDefined" (not work
"unbind <e>
let g:NERDTreeMapOpenExpl = "notDefined"
"unbind <u>
let g:NERDTreeMapUpdir = "notDefined"
let g:NERDTreeMapUpdirKeepOpen = "notDefined"
"unbind <i>
let g:NERDTreeMapOpenSplit = "notDefined"
let g:NERDTreeMapToggleHidden = "notDefined"
"unbind unneccessary
let g:NERDTreeMapOpenInTab = "notDefined"
let g:NERDTreeMapOpenInTabSilent = "notDefined"

let g:NERDTreeMapOpenSplit = "I" "open split
let g:NERDTreeMapChangeRoot = "I" "change tree root to the selected dir
let g:NERDTreeMapUpdir = "N" "move tree root up a dir
"let g:NERDTreeMapToggleHidden = "<BS>"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMapQuit = "<C-n>" "<C-n> to open and close nerdtree



"" ===
"" === NERDComment
"" ===
let g:NERDCreateDefaultMappings = 1

"" ===
"" === FZF
"" ===
nmap <leader>fl :FzfPreviewBufferLines<CR>
nmap <leader>ff :FzfPreviewProjectFiles<CR>
nmap <leader>fg :FzfPreviewGitFiles<CR>
nmap <leader>fc :FzfPreviewCommandPalette<CR>

"" ===
"" === TODOLIST todo-comments.nvim
"" ===
nmap <leader>ft :FzfPreviewTodoComments<CR>
lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
" TODO this is a todo
" HACK r
" FIX rsat



"" ===
"" === CTRLP (Dependency for omnisharp)
"" ===
"let g:ctrlp_map = ''
"let g:ctrlp_cmd = 'CtrlP'


"" ===
"" === vim-bookmarks
"" ===
"let g:bookmark_no_default_key_mappings = 1
"nmap mt <Plug>BookmarkToggle
"nmap ma <Plug>BookmarkAnnotate
"nmap ml <Plug>BookmarkShowAll
"nmap mi <Plug>BookmarkNext
"nmap mn <Plug>BookmarkPrev
"nmap mC <Plug>BookmarkClear
"nmap mX <Plug>BookmarkClearAll
"nmap mu <Plug>BookmarkMoveUp
"nmap me <Plug>BookmarkMoveDown
"nmap <Leader>g <Plug>BookmarkMoveToLine
"let g:bookmark_save_per_working_dir = 1
"let g:bookmark_auto_save = 1
"let g:bookmark_highlight_lines = 1
"let g:bookmark_manage_per_buffer = 1
"let g:bookmark_save_per_working_dir = 1
"let g:bookmark_center = 1
"let g:bookmark_auto_close = 1
"let g:bookmark_location_list = 1


"" ===
"" === Undotree
"" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
"let g:undotree_ShortIndicators = 1 " e.g. using 'd' instead of 'days'
let g:undotree_WindowLayout = 2
"let g:undotree_DiffpanelHeight = 8
"let g:undotree_SplitWidth = 24 "if g:ShortIndicators then default 30 else default 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
	nmap <buffer> Q :UndotreeToggle<CR>
endfunc


"" ==
"" == vim-multiple-cursor
"" ==
"let g:multi_cursor_use_default_mapping = 0
"let g:multi_cursor_start_word_key = '<c-k>'
"let g:multi_cursor_select_all_word_key = '<a-k>'
"let g:multi_cursor_start_key = 'g<c-k>'
"let g:multi_cursor_select_all_key = 'g<a-k>'
"let g:multi_cursor_next_key = '<c-k>'
"let g:multi_cursor_prev_key = '<c-p>'
"let g:multi_cursor_skip_key = '<C-s>'
"let g:multi_cursor_quit_key = '<Esc>'


"" ===
"" === vim-visual-multi
"" ===
""let g:VM_theme			 = 'iceblue'
""let g:VM_default_mappings = 0
"let g:VM_leader = {'default': ',', 'visual': ',', 'buffer': ','}
"let g:VM_maps = {}
"let g:VM_custom_motions  = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
"let g:VM_maps['i']		 = 'k'
"let g:VM_maps['I']		 = 'K'
"let g:VM_maps['Find Under']		 = '<C-k>'
"let g:VM_maps['Find Subword Under'] = '<C-k>'
"let g:VM_maps['Find Next']		 = ''
"let g:VM_maps['Find Prev']		 = ''
"let g:VM_maps['Remove Region'] = 'q'
"let g:VM_maps['Skip Region'] = '<c-n>'
"let g:VM_maps["Undo"]	  = 'l'
"let g:VM_maps["Redo"]	  = '<C-r>'


"" ===
"" === Far.vim
"" ===
""noremap <LEADER>f :F  **/*<left><left><left><left><left>
""let g:far#mapping = {
			""\ "replace_undo" : ["l"],
			""\ }


"" ===
"" === vim-calc
"" ===
""noremap <LEADER>a :call Calc()<CR>
"" Testing
""if !empty(glob('~/Github/vim-calc/vim-calc.vim'))
""source ~/Github/vim-calc/vim-calc.vim
""endif


"" ===aih
"" === Bullets.vim
"" ===aih
""Bullets.vim is a Vim plugin for <<automated bullet lists.>>
""let g:bullets_set_mappings = 0
"let g:bullets_enabled_file_types = [
			"\ 'markdown',
			"\ 'text',
			"\ 'gitcommit',
			"\ 'scratch'
			"\]


"" ===
"" === Vista.vim
"" ===
"noremap <c-t> :silent! Vista finder coc<CR>
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista_default_executive = 'ctags'
"let g:vista_fzf_preview = ['right:50%']
"let g:vista#renderer#enable_icon = 1
"let g:vista#renderer#icons = {
			"\   "function": "\uf794",
			"\   "variable": "\uf71b",
			"\  }
"function! NearestMethodOrFunction() abort
	"return get(b:, 'vista_nearest_method_or_function', '')
"endfunction
"set statusline+=%{NearestMethodOrFunction()}
"autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


"" ===
"" === fzf-gitignore
"" ===
"noremap <LEADER>gi :FzfGitignore<CR>


"" ===
"" === Ultisnips
"" ===
"let g:tex_flavor = "latex"
"inoremap <c-n> <nop>
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-u>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/']
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
"" Solve extreme insert-mode lag on macOS (by disabling autotrigger)
"augroup ultisnips_no_auto_expansion
	"au!
	"au VimEnter * au! UltiSnips_AutoTrigger
"augroup END



"" ===
"" === vimtex
"" ===
""let g:vimtex_view_method = ''
"let g:vimtex_view_general_viewer = 'llpp'
"let g:vimtex_mappings_enabled = 0
"let g:vimtex_text_obj_enabled = 0
"let g:vimtex_motion_enabled = 0
"let maplocalleader=' '


"" ===
"" === vim-calendar
"" ===
""noremap \c :Calendar -position=here<CR>
"noremap \\ :Calendar -view=clock -position=here<CR>
"let g:calendar_google_calendar = 1
"let g:calendar_google_task = 1
"augroup calendar-mappings
	"autocmd!
	"" diamond cursor
	"autocmd FileType calendar nmap <buffer> u <Plug>(calendar_up)
	"autocmd FileType calendar nmap <buffer> n <Plug>(calendar_left)
	"autocmd FileType calendar nmap <buffer> e <Plug>(calendar_down)
	"autocmd FileType calendar nmap <buffer> i <Plug>(calendar_right)
	"autocmd FileType calendar nmap <buffer> <c-u> <Plug>(calendar_move_up)
	"autocmd FileType calendar nmap <buffer> <c-n> <Plug>(calendar_move_left)
	"autocmd FileType calendar nmap <buffer> <c-e> <Plug>(calendar_move_down)
	"autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_right)
	"autocmd FileType calendar nmap <buffer> k <Plug>(calendar_start_insert)
	"autocmd FileType calendar nmap <buffer> K <Plug>(calendar_start_insert_head)
	"" unmap <C-n>, <C-p> for other plugins
	"autocmd FileType calendar nunmap <buffer> <C-n>
	"autocmd FileType calendar nunmap <buffer> <C-p>
"augroup END


"" ===
"" === Anzu
"" ===
"set statusline=%{anzu#search_status()}
"nnoremap = n
"nnoremap - N


"" ===
"" === vim-go
"" ===
"let g:go_echo_go_info = 0
"let g:go_doc_popup_window = 1
"let g:go_def_mapping_enabled = 0
"let g:go_template_autocreate = 0
"let g:go_textobj_enabled = 0
"let g:go_auto_type_info = 1
"let g:go_def_mapping_enabled = 0
"let g:go_highlight_array_whitespace_error = 1
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_chan_whitespace_error = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_format_strings = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_function_parameters = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_generate_tags = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_space_tab_error = 1
"let g:go_highlight_string_spellcheck = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_trailing_whitespace_error = 1
"let g:go_highlight_types = 1
"let g:go_highlight_variable_assignments = 0
"let g:go_highlight_variable_declarations = 0
"let g:go_doc_keywordprg_enabled = 0


" ===
" === AutoFormat
" ===
"let g:formatdef_harttle = '"astyle --style=attch --pad-oper"'
"let g:formatdef_harttle = '"astyle --style=google --pad-oper"'
"let g:formatdef_harttle = '"astyle --style=ratliff --pad-oper"'
"let g:formatters_java = ['harttle']
"let g:formatters_cpp = ['harttle']
"let g:formatdef_astyle_cpp = '"astyle --style=ratliff -s10 --pad-oper"'
let g:formatdef_aih = '"astyle --style=attach --indent=spaces=2 --align-pointer=name --remove-braces --delete-empty-lines --pad-oper --pad-paren-out"'
let g:formatdef_aih_shell='"shfmt "'
let g:formatters_cpp = ['aih']
let g:formatters_java = ['aih']
let g:formatters_sh=['aih_shell']
nnoremap \f :Autoformat<CR>
nnoremap <c-f> :Autoformat<CR>
autocmd FileType vim let b:autoformat_autoindent = 0
let g:formatdef_aih_js = '"js-beautify "'
let g:formatters_js = ['aih_js']
let g:formatters_ejs = ['aih_js']
"au BufWrite * :Autoformat<CR>
"noremap S :call SaveAndAutoformat()<CR>
"func! SaveAndAutoformat()
	"if &filetype == 'java'
		"exec "Autoformat"
		"exec "w"
	"elseif &filetype == 'cpp'
		"exec "Autoformat"
		"exec "w"
	"else
		"exec "w"
	"endif
"endfunc


"" ===
"" === OmniSharp
"" ===
"let g:OmniSharp_typeLookupInPreview = 1
"let g:omnicomplete_fetch_full_documentation = 1

"let g:OmniSharp_server_use_mono = 1
"let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_highlight_types = 2
"let g:OmniSharp_selector_ui = 'ctrlp'

"autocmd Filetype cs nnoremap <buffer> gd :OmniSharpPreviewDefinition<CR>
"autocmd Filetype cs nnoremap <buffer> gr :OmniSharpFindUsages<CR>
"autocmd Filetype cs nnoremap <buffer> gy :OmniSharpTypeLookup<CR>
"autocmd Filetype cs nnoremap <buffer> ga :OmniSharpGetCodeActions<CR>
"autocmd Filetype cs nnoremap <buffer> <LEADER>rn :OmniSharpRename<CR><C-N>:res +5<CR>

"sign define OmniSharpCodeActions text=💡

"augroup OSCountCodeActions
	"autocmd!
	"autocmd FileType cs set signcolumn=yes
	"autocmd CursorHold *.cs call OSCountCodeActions()
"augroup END

"function! OSCountCodeActions() abort
	"if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
	"if !OmniSharp#IsServerRunning() | return | endif
	"let opts = {
				"\ 'CallbackCount': function('s:CBReturnCount'),
				"\ 'CallbackCleanup': {-> execute('sign unplace 99')}
				"\}
	"call OmniSharp#CountCodeActions(opts)
"endfunction

"function! s:CBReturnCount(count) abort
	"if a:count
		"let l = getpos('.')[1]
		"let f = expand('%:p')
		"execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
	"endif
"endfunction


"" ===
"" === vim-easymotion
"" ===
"let g:EasyMotion_do_mapping = 0
"let g:EasyMotion_do_shade = 0
"let g:EasyMotion_smartcase = 1
"map ' <Plug>(easymotion-bd-f)
"nmap ' <Plug>(easymotion-bd-f)
""map E <Plug>(easymotion-j)
""map U <Plug>(easymotion-k)
""nmap f <Plug>(easymotion-overwin-f)
""map \; <Plug>(easymotion-prefix)
""nmap ' <Plug>(easymotion-overwin-f2)
""map 'l <Plug>(easymotion-bd-jk)
""nmap 'l <Plug>(easymotion-overwin-line)
""map  'w <Plug>(easymotion-bd-w)
""nmap 'w <Plug>(easymotion-overwin-w)


"" ===
"" === goyo
"" ===
"map <LEADER>gy :Goyo<CR>


"" ===
"" === jsx
"" ===
"let g:vim_jsx_pretty_colorful_config = 1


"" ===
"" === fastfold
"" ===
"nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
	"let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
	"let g:fastfold_fold_movement_commands = [']z', '[z', 'ze', 'zu']
	"let g:markdown_folding = 1
	"let g:tex_fold_enabled = 1
	"let g:vimsyn_folding = 'af'
	"let g:xml_syntax_folding = 1
	"let g:javaScript_fold = 1
	"let g:sh_fold_enabled= 7
	"let g:ruby_fold = 1
	"let g:perl_fold = 1
	"let g:perl_fold_blocks = 1
	"let g:r_syntax_folding = 1
	"let g:rust_fold = 1
	"let g:php_folding = 1


"" ===
"" === vim-easy-align
"" ===
"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)


"" ===
"" === vim-after-object
"" ===
"autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')


"" ===
"" === rainbow
"" ===
let g:rainbow_active = 1


"" ===
"" === xtabline
"" ===
"let g:xtabline_settings = {}
"let g:xtabline_settings.enable_mappings = 0
"let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
"let g:xtabline_settings.enable_persistance = 0
"let g:xtabline_settings.last_open_first = 1
"noremap to :XTabCycleMode<CR>
"noremap \p :XTabInfo<CR>


"" ===
"" === vim-session
"" ===
""let g:session_directory = $HOME."/.config/nvim/tmp/sessions"
""let g:session_autosave = 'no'
""let g:session_autoload = 'no'
""let g:session_command_aliases = 1
""set sessionoptions-=buffers
""set sessionoptions-=options
""noremap sl :OpenSession<CR>
""noremap sS :SaveSession<CR>
""noremap ss :SaveSession
""noremap sc :SaveSession<CR>:CloseSession<CR>:q<CR>
""noremap so :OpenSession default<CR>
""noremap sD :DeleteSession<CR>
"""noremap sA :AppendTabSession<CR>


"" ===
"" === context.vim
"" ===
""let g:context_add_mappings = 0
""noremap <leader>ct :ContextToggle<CR>


"" ===
"" === suda.vim
"" ===
"cnoreabbrev sudowrite w suda://%
"cnoreabbrev sw w suda://%


"" ===
"" === vimspector
"" ===
"let g:vimspector_enable_mappings = 'HUMAN'
"function! s:read_template_into_buffer(template)
	"" has to be a function to avoid the extra space fzf#run insers otherwise
	"execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
"endfunction
"command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			"\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			"\   'down': 20,
			"\   'sink': function('<sid>read_template_into_buffer')
			"\ })
"noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
"sign define vimspectorBP text=☛ texthl=Normal
"sign define vimspectorBPDisabled text=☞ texthl=Normal
"sign define vimspectorPC text=🔶 texthl=SpellBad


"" ===
"" === reply.vim
"" ===
""noremap <LEADER>rp :w<CR>:Repl<CR><C-\><C-N><C-w><C-h>
""noremap <LEADER>rs :ReplSend<CR><C-w><C-l>a<CR><C-\><C-N><C-w><C-h>
""noremap <LEADER>rt :ReplStop<CR>


"" ===
"" === vim-markdown-toc
"" ===
""let g:vmt_auto_update_on_save = 0
""let g:vmt_dont_insert_fence = 1
"let g:vmt_cycle_list_item_markers = 1
"let g:vmt_fence_text = 'TOC'
"let g:vmt_fence_closing_text = '/TOC'


"" ===
"" === rnvimr
"" ===
"let g:rnvimr_ex_enable = 1
"let g:rnvimr_pick_enable = 1
"nnoremap <silent> R :RnvimrSync<CR>:RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
"let g:rnvimr_layout = { 'relative': 'editor',
			"\ 'width': &columns,
			"\ 'height': &lines,
			"\ 'col': 0,
			"\ 'row': 0,
			"\ 'style': 'minimal' }
"let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]


"" ===
"" === vim-subversive
"" ===
"nmap s <plug>(SubversiveSubstitute)
"nmap ss <plug>(SubversiveSubstituteLine)


"" ===
"" === vim-illuminate
"" ===
let g:Illuminate_delay = 750
"hi illuminatedWord cterm=undercurl gui=undercurl


"" ===
"" === vim-rooter
"" ===
"let g:rooter_patterns = ['__vim_project_root', '.git/']


"" ===
"" === AsyncRun
"" ===
"noremap gp :AsyncRun git push<CR>


"" ===
"" === AsyncTasks
"" ===
"let g:asyncrun_open = 6


"" ===
"" === dart-vim-plugin
"" ===
"let g:dart_style_guide = 2
"let g:dart_format_on_save = 1
"let g:dartfmt_options = " -l 100 --fix"

"" ===================== End of Plugin Settings =====================


"" ===
"" === Necessary Commands to Execute
"" ===
"exec "nohlsearch"


"" Open the _machine_specific.vim file if it has just been created
"if has_machine_specific_file == 0
	"exec "e ~/.config/nvim/_machine_specific.vim"
"endif


""=============aihui: skeleton from the past
""inoremap <c-i> <Esc>la ====== <TAB>
"change my <ESC> inoremap
inoremap jj <Esc>:w<CR>

"" ===================== Binds =====================
noremap ff $a;<Esc>
noremap ,, $a,<Esc>
"inoremap <leader>; <C-o>A;
""hi Normal guibg=NONE ctermbg=NONE
"inoremap <c-s> $$<left>
"noremap 2o o<Esc>o
"noremap s1 :w !sudo tee %<CR>
"noremap q1 :q!<CR>
"noremap <c-m> 0i
""copy all to system"
"nnoremap ya ggvG$"+y

"" ===================== Settings =====================
let &termencoding=&encoding
set fileencodings=utf-8,gbk
" shift + 8 : search next this word
"cpp c++
nnoremap fa a<++><Esc>gg3jo
set fileencodings=utf-8,ucs-born,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"eclim
filetype plugin indent on
"" ===================== Source =====================
source ~/.config/nvim/markdown-snippets.vim

