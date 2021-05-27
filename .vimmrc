"===================================== 
" Todo
"===================================== 
" - [ ] TODO: sneak backwards
" - [ ] TODO: sneak column implementation
" - [X] [IMPLEMENTED]: <ctrl-i> to backwards traverse jumplist. 
"   - [UPDATE] Implemented using <ctrl-p> as <ctrl-i> appears to be in use on 
" 	one of the coc.extensions. 

"===================================== 
" Basic Settings
"===================================== 
set noswapfile
set noundofile
set scrolloff=8
set shortmess+=c
set updatetime=50
set tags=./tags;
filetype on 
filetype plugin on
filetype indent on

"===================================== 
" Basic Appearance Settings						  
"===================================== 
set background=dark
syntax on
set lazyredraw  
set hidden
set notitle
set nowrap
set splitright
set cmdheight=1
set number
set relativenumber
set cursorline
set signcolumn=number
set ignorecase
set incsearch
set nohlsearch

"=====================================
" Tab and alignment settings     								  
"===================================== 
set autoindent
set tabstop=2 
set softtabstop=2
set shiftwidth=2 
set numberwidth=4
set laststatus=2

"========================================
" Hack to skip out of closed brackets
"========================================
nnoremap ,, A<Esc>  
inoremap ,, <Esc>Ea

"========================================
" Numbering and cursor
"========================================
highlight ColorColumn ctermbg=NONE
highlight ColorColumn guibg=Gray
highlight LineNr term=NONE cterm=NONE ctermfg=238 ctermbg=NONE
highlight CursorLine ctermbg=NONE ctermfg=NONE
highlight Cursor ctermbg=214 ctermfg=NONE 
highlight CursorLineNr term=NONE cterm=bold ctermfg=240 
"
"===================================== 
" Leader Settings
"===================================== 
let mapleader = "\<Space>"
nnoremap <leader><leader> :
set timeoutlen=700 ttimeoutlen=-1
nnoremap S :w!<Cr>
nnoremap Q @@

"===================================== 
"  Window Navigation
"===================================== 
nnoremap <C-W>j <C-W>h
nnoremap <C-W>k <C-W>j
nnoremap <C-W>l <C-W>k
nnoremap <C-W>; <C-W>l
nnoremap <leader>q q
nnoremap <leader><leader>m m
nnoremap q b
nnoremap L 8k8<c-y>
nnoremap K 8j8<c-e>

" // shift regular arrow keys one over so that fingers naturally
" // rest on the home keys
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ; l
vnoremap j h
vnoremap k j
vnoremap l k
vnoremap ; l


let g:sneak#s_next = 1
""========================================
""  NetRW Settings                     
""========================================
let g:netrw_banner=0
let g:netrw_browse_split = 0
let g:netr_altv=1
let g:netrw_liststyle=5
"
" enable line numbers in netrw window
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'
let g:netrw_usetab = 1
hi netrwTilde	term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
hi netrwTags term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red

""========================================
""  Toggle NetRW Function
""========================================
let g:NetrwIsOpen=0

function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i 
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
		let g:netrw_winsize = 50
	else
		let g:netrw_winsize = 25
		let g:NetrwIsOpen=1
		silent Lexplore
	endif
endfunction

augroup AutoDeleteNetrwHiddenBuffers
	au!
	au FileType netrw setlocal bufhidden=wipe
augroup end


noremap <Leader>nt :Vex<Cr>
noremap <Leader>nd :call ToggleNetrw()<Cr>

nnoremap <Leader><Leader>vex :Vex<CR>
nnoremap <Leader><Leader>sex :Sex<CR>
nnoremap <Leader><Leader>rex :Rex<CR>
nnoremap <Leader><Leader>lex :Lex<CR>
nnoremap <Leader><Leader>hex :Hex<CR>
nnoremap <Leader><Leader>ex :Ex<CR>
"
""========================================
""  Plugins
""========================================
call plug#begin('~/.vim/plugged')
  Plug 'triglav/vim-visual-increment'
  Plug 'sainnhe/vim-color-forest-night'
  Plug 'zeis/vim-kolor'
  Plug 'cocopon/iceberg.vim'
  Plug 'mhartington/oceanic-next'
  Plug 'ngmy/vim-rubocop'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-dispatch'
  Plug 'vim-ruby/vim-ruby'
	Plug 'thoughtbot/vim-rspec'
  Plug 'junegunn/fzf'
  Plug 'simeji/winresizer'
  Plug 'dbakker/vim-projectroot'
  Plug 'justinmk/vim-sneak'
  Plug 'rainerborene/vim-reek'
	Plug 'vim-syntastic/syntastic'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  if has('nvim')
		Plug 'nvim-lua/popup.nvim'
	  Plug 'nvim-lua/plenary.nvim'
	  Plug 'nvim-telescope/telescope.nvim'
	endif
	Plug 'autozimu/LanguageClient-neovim', {
		    \ 'branch': 'next',
	      \ 'do': 'bash install.sh',
	      \ }

call plug#end()

"==========================================
" Typescript CoC extensions
"==========================================
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-docker',
  \ 'coc-highlight',
  \ 'coc-marketplace',
  \ 'coc-sh',
  \ 'coc-sql',
  \ 'coc-tabnine',
  \ 'coc-yaml',
  \ 'coc-solargraph'
  \ ]

" // Popup menu styling
set updatetime=40000

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>diag :CocDiagnostic<Cr>
nmap <leader><leader>diag :CocDiagnostic<Cr>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
		echo 'nothing to see here'
  else
    call CocAction('doHover')
  endif
endfunction

function! s:show_signature_help()
	call CocAction('showSignatureHelp')
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nnoremap <tab> :call <SID>show_documentation()<CR>
nnoremap <leader><tab> :call <SID>show_signature_help()<CR>
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

"==========================================
" Macros
"==========================================
nnoremap <leader><leader>source :silent! source ~/.vimrc<Cr>
nnoremap <leader><leader>pre :CocCommand prettier.formatFile<cr>
nnoremap <leader><leader>info <esc><S-k>
nnoremap <leader><leader>reek :RunReek<Cr>
nnoremap <leader><leader>rub :RuboCop<Cr>
nnoremap <leader><leader>trim :call TrimSpaces()<Cr>
nnoremap <leader><leader>vimrc :vert botright split ~/.vimrc<Cr>
nnoremap <leader><leader>bar :call StatusLineCycle()<Cr>
vnoremap <leader><leader> :s//g<left><left>
nnoremap L 8k8<c-y>
nnoremap K 8j8<c-e>
nnoremap <leader><leader>tags :ProjectRootExe !ctags -R .<cr>
nnoremap <C-p> <C-i>

" /****************************************************/
" // Filename: home_row_numbers_plugin
" // Created:  Sandy Cochrane
" // Change history:
" // 6th May 2021 
" /****************************************************/
" // This set uf key bidings try to implement a simple
" // and natural feeling way of allowing us to jump up
" // and down the Vim editor window as we expect our
" // selves to do when we have relative number installed.
" //
" // By mapping the number keys on the homerow I believe
" // we remove a small barrier to this which us having
" // to potentially lift our hands in order to touch the 
" // number row of the keypad. 
" //
" // So the interface is quite simple in order to jump
" // down a number of lines we first hit the leader key
" // which is <space> in my case and then enter the 
" // number of lines where `a = 1`, `s = 2`, `d = 3`,
" // etc right through until `; = 9`. We can use the 
" // numbers just as regular numbers so we can enter
" // '24' by using the key combination 'sf'.
" // Once we have completed our number we should hit
" // the leader key again to execute the jump. So  in
" // my case to jump 16 lines down I would:
" // `<space>ah<space>`
" // At first it can take a while to get used to the
" // where the numbers are but it can be helpful to 
" // keep in mind that your index finers should 
" // natrually be resting on 4 and 7. 
" //
" // If we wish to jump up then we do exactly the same
" // however we hit the leader key twice before
" // entering our number
" // 
" // We also have the ability to Yank, Change and Delete
" // for n number of lines using the same method to 
" // select the number of lines we wish to act over.
"==========================================
" Navigating to Line Number #linejump
"==========================================
nnoremap <leader>s<leader> :+2<Cr>
nnoremap <leader>d<leader> :+3<Cr>
nnoremap <leader>f<leader> :+4<Cr>
nnoremap <leader>g<leader> :+5<Cr>
nnoremap <leader>h<leader> :+6<Cr>
nnoremap <leader>j<leader> :+7<Cr>
nnoremap <leader>k<leader> :+8<Cr>
nnoremap <leader>l<leader> :+9<Cr>
nnoremap <leader>a<leader> :+10<Cr>
nnoremap <leader>a;<leader> :+10<Cr>
nnoremap <leader>aa<leader> :+11<Cr>
nnoremap <leader>as<leader> :+12<Cr>
nnoremap <leader>ad<leader> :+13<Cr>
nnoremap <leader>af<leader> :+14<Cr>
nnoremap <leader>ag<leader> :+15<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>ah<leader> :+16<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>aj<leader> :+17<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>ak<leader> :+18<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>al<leader> :+19<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>s;<leader> :+20<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sa<leader> :+21<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>ss<leader> :+22<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sd<leader> :+23<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sf<leader> :+24<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sg<leader> :+25<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sh<leader> :+26<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sj<leader> :+27<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sk<leader> :+28<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>sl<leader> :+29<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader>d;<leader> :+30<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>s<leader> :-2<Cr>
nnoremap <leader><leader>d<leader> :-3<Cr>
nnoremap <leader><leader>f<leader> :-4<Cr>
nnoremap <leader><leader>g<leader> :-5<Cr>
nnoremap <leader><leader>h<leader> :-6<Cr>
nnoremap <leader><leader>j<leader> :-7<Cr>
nnoremap <leader><leader>k<leader> :-8<Cr>
nnoremap <leader><leader>l<leader> :-9<Cr>
nnoremap <leader><leader>a<leader> :-10<Cr>
nnoremap <leader><leader>;<leader> :-10<Cr>
nnoremap <leader><leader>a;<leader> :-10<Cr>
nnoremap <leader><leader>aa<leader> :-11<Cr>
nnoremap <leader><leader>as<leader> :-12<Cr>
nnoremap <leader><leader>ad<leader> :-13<Cr>
nnoremap <leader><leader>af<leader> :-14<Cr>
nnoremap <leader><leader>ag<leader> :-15<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>ah<leader> :-16<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>aj<leader> :-17<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>ak<leader> :-18<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>al<leader> :-19<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>s;<leader> :-20<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sa<leader> :-21<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>ss<leader> :-22<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sd<leader> :-23<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sf<leader> :-24<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sg<leader> :-25<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sh<leader> :-26<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sj<leader> :-27<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sk<leader> :-28<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>sl<leader> :-29<Cr>zz<c-e><c-e><c-e><c-e>
nnoremap <leader><leader>d;<leader> :-30<Cr>zz<c-e><c-e><c-e><c-e>
"
"==========================================
" Yank, cut and paste whole lines #linejump
"==========================================
nnoremap dls 2dd
nnoremap dld 3dd
nnoremap dlf 4dd
nnoremap dlg 5dd
nnoremap dlh 6dd
nnoremap dlj 7dd
nnoremap dlk 8dd
nnoremap dll 9dd
nnoremap dla 10dd
nnoremap dlaa 11dd
nnoremap dlas 12dd
nnoremap dlad 13dd
nnoremap dlaf 14dd
nnoremap dlag 15dd
nnoremap dlah 16dd
nnoremap dlaj 17dd
nnoremap dlak 18dd
nnoremap dlal 19dd
nnoremap dla; 20dd
nnoremap dlsa 21dd
nnoremap dlss 22dd
nnoremap dlsd 23dd
nnoremap dlsf 24dd
nnoremap dlsg 25dd
nnoremap dlsh 26dd
nnoremap dlsj 27dd
nnoremap dlsk 28dd
nnoremap dlsl 29dd

nnoremap Cle lc$
nnoremap cle c$
nnoremap cls 2cc
nnoremap cld 3cc
nnoremap clf 4cc
nnoremap clg 5cc
nnoremap clh 6cc
nnoremap clj 7cc
nnoremap clk 8cc
nnoremap cll 9cc
nnoremap cla 10cc
nnoremap claa 11cc
nnoremap clas 12cc
nnoremap clad 13cc
nnoremap claf 14cc
nnoremap clag 15cc
nnoremap clah 16cc
nnoremap claj 17cc
nnoremap clak 18cc
nnoremap clal 19cc
nnoremap cla; 20cc
nnoremap clsa 21cc
nnoremap clss 22cc
nnoremap clsd 23cc
nnoremap clsf 24cc
nnoremap clsg 25cc
nnoremap clsh 26cc
nnoremap clsj 27cc
nnoremap clsk 28cc
nnoremap clsl 29cc
 
nnoremap yle lc$
nnoremap yle c$
nnoremap yls 2yy
nnoremap yld 3yy
nnoremap ylf 4yy
nnoremap ylg 5yy
nnoremap ylh 6yy
nnoremap ylj 7yy
nnoremap ylk 8yy
nnoremap yll 9yy
nnoremap yla 10yy
nnoremap ylaa 11yy
nnoremap ylas 12yy
nnoremap ylad 13yy
nnoremap ylaf 14yy
nnoremap ylag 15yy
nnoremap ylah 16yy
nnoremap ylaj 17yy
nnoremap ylak 18yy
nnoremap ylal 19yy
nnoremap yla; 20yy
nnoremap ylsa 21yy
nnoremap ylss 22yy
nnoremap ylsd 23yy
nnoremap ylsf 24yy
nnoremap ylsg 25yy
nnoremap ylsh 26yy
nnoremap ylsj 27yy
nnoremap ylsk 28yy
nnoremap ylsl 29yy

"/****************************************************/
"// Filename: Vim plugin
"// Created: Sandy cochrane
"/****************************************************/
"
"  so this application was created as a bit of a joke a
"  to help me easily jump to next set of brackets because
"  i couldnt remember the bindings for my life. When 
"  I started learning javascript i found the constant 
"  navigating to between curly brackets and regular
"  brackets hard to adapt to. This application uses a
"  simple interface to navigate you to the next set of 
"  brackets:
"
"  We use the same action letters to determine our action
"  e.g. c for change, 'y' for yank, then we use 'i' fir
"  inside (this is the only location binding currently
"  in use we dont yet support 'a')
"  
"  then to determine which type of bracket encapsulation
"  you would like to engage we use the following:
"    b = brackets
"    c = curlies
"    a = angled
"    s = squares
"    q = quotes
"    ' = '
"  
"  `' being the little brother of " unfortunately does
"  not get a new binding.`

"/****************************************************/
"// EOF: Customer.cpp
"/****************************************************/
""
"==========================================
" Navigating to next braces
"==========================================

nnoremap <leader>cib /(*)<cr>cib
nnoremap <leader>vib /(*)<cr>vib
nnoremap <leader>yib /(*)<cr>yib
nnoremap <leader>pib /(*)<cr>pib
nnoremap <leader>cic /{*}<cr>ciB<space><space><left>
nnoremap <leader>vic /{*}<cr>vic
nnoremap <leader>yic /{*}<cr>yic
nnoremap <leader>pic /{*}<cr>pic
nnoremap <leader>cia /<*><cr>ci<
nnoremap <leader>via /<*><cr>vi<
nnoremap <leader>yia /<*><cr>yi<
nnoremap <leader>pia /<*><cr>pi<
nnoremap <leader>ciq /"*"<cr>ci"
nnoremap <leader>viq /"*"<cr>vi"
nnoremap <leader>yiq /"*"<cr>yi"
nnoremap <leader>piq /"*"<cr>pi"
nnoremap <leader>cis /\[*\]<cr>ci[
nnoremap <leader>vis /\[*\]<cr>vi[
nnoremap <leader>yis /\[*\]<cr>yi[
nnoremap <leader>pis /\[*\]<cr>pi[
nnoremap <leader>ci' /'*'<cr>ci'
nnoremap <leader>vi' /'*'<cr>vi'
nnoremap <leader>yi' /'*'<cr>yi'
nnoremap <leader>pi' /'*'<cr>pi'

"==========================================
" Navigating to Previous Braces
"==========================================

nnoremap <leader><leader>cib ?(*)<cr>cib
nnoremap <leader><leader>vib ?(*)<cr>vib
nnoremap <leader><leader>yib ?(*)<cr>yib
nnoremap <leader><leader>pib ?(*)<cr>pib
nnoremap <leader><leader>cic ?{*}<cr>ciB<space><space><left>
nnoremap <leader><leader>vic ?{*}<cr>vic
nnoremap <leader><leader>yic ?{*}<cr>yic
nnoremap <leader><leader>pic ?{*}<cr>pic
nnoremap <leader><leader>cia ?<*><cr>ci<
nnoremap <leader><leader>via ?<*><cr>vi<
nnoremap <leader><leader>yia ?<*><cr>yi<
nnoremap <leader><leader>pia ?<*><cr>pi<
nnoremap <leader><leader>ciq ?"*"<cr>ci"
nnoremap <leader><leader>viq ?"*"<cr>vi"
nnoremap <leader><leader>yiq ?"*"<cr>yi"
nnoremap <leader><leader>piq ?"*"<cr>pi"
nnoremap <leader><leader>cis ?\[*\]<cr>ci[
nnoremap <leader><leader>vis ?\[*\]<cr>vi[
nnoremap <leader><leader>yis ?\[*\]<cr>yi[
nnoremap <leader><leader>pis ?\[*\]<cr>pi[
nnoremap <leader><leader>ci' ?'*'<cr>ci'
nnoremap <leader><leader>vi' ?'*'<cr>vi'
nnoremap <leader><leader>yi' ?'*'<cr>yi'
nnoremap <leader><leader>pi' ?'*'<cr>pi'

" [test square brackets]
" { test curly brackets }
" (test brackets)
"\"test regular quotes"
" 'test single quotes'
" <test angle brackets>

"===================================== 
" Set Custom Status Line Format
"===================================== 
function StatusLineShow()
	let g:status_line_mode = 'shown'
	let &statusline='___%t_%m'
	set showmode
	set noruler
	set showcmd
	set laststatus=1
	set showtabline=1
	hi VertSplit ctermbg=NONE ctermfg=238
	hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
	hi TabLine ctermfg=238 ctermbg=NONE cterm=NONE
	hi TabLineSel ctermfg=yellow ctermbg=NONE cterm=NONE
	hi StatusLine ctermbg=NONE ctermfg=242
	hi StatusLineNC ctermbg=NONE ctermfg=238
	hi EndOfBuffer ctermbg=NONE
	set fillchars=stl:_
	set fillchars+=vert:│
	set fillchars+=stlnc:_
endfunction

function StatusLineHide()
	let g:status_line_mode = 'hidden'
	set noshowmode
	set noruler
	set laststatus=0
	set showtabline=0
	set noshowcmd
	hi StatusLine ctermbg=NONE ctermfg=244
	hi StatusLineNC ctermbg=NONE ctermfg=238
	highlight EndOfBuffer ctermbg=NONE ctermfg=236
endfunction

function StatusLineDefault()
	let    g:status_line_default_mode = get(g:, 'status_line_default_mode', 'shown')
	if     g:status_line_default_mode == 'amber' | call StatusLineAmber()
	elseif g:status_line_default_mode == 'shown' | call StatusLineShow()
	endif
	let    &statusline='___%t_%m'
endfunction

function StatusLineCycle(...)
	let    g:status_line_mode = get(g:, 'status_line_mode', 'start')
	if     g:status_line_mode == 'start'  | call StatusLineShow()                              | let g:status_line_mode = 'shown'   | let &statusline='___%t_%m'
	elseif g:status_line_mode == 'shown'  | set fillchars=stl:^,stlnc:_,vert:\│,fold:-,diff:-, | let g:status_line_mode = 'stock'   | let &statusline=' %t %m'
	elseif g:status_line_mode == 'stock'  | set fillchars=vert:\│,stl:_,stlnc:_,               | let g:status_line_mode = 'orig'    | let &statusline='___%t_%m'
	elseif g:status_line_mode == 'orig'   | set fillchars=vert:.,stl:_,stlnc:_,                | let g:status_line_mode = 'light'   | let &statusline='___%t_%m'
	elseif g:status_line_mode == 'light'  | set fillchars=vert:\ ,stl:_,stlnc:_,               | let g:status_line_mode = 'light_2' | let &statusline='___%t_%m'
	elseif g:status_line_mode == 'light_2'| set fillchars=vert:.,stl:.,stlnc:.,                | let g:status_line_mode = 'dots'    | let &statusline='...%t.%m'
	elseif g:status_line_mode == 'dots'   | set fillchars=vert:\ ,stl:\ ,stlnc:\ ,             | let g:status_line_mode = 'blank'   | let &statusline='   %t %m'
	elseif g:status_line_mode == 'blank'  | call StatusLineHide()                              | let g:status_line_mode = 'hidden'  | let &statusline=''
	elseif g:status_line_mode == 'hidden' | call StatusLineShow()                              | let g:status_line_mode = 'shown'   | let &statusline='___%t_%m'
	else                                  | call StatusLineShow()                              | let g:status_line_mode = 'shown'   | let &statusline='___%t_%m'
	endif
endfunction

" /****************************************************/
" // Filename: Customer.cpp
" // Created: John Doe
" // Change history:
" // 18.12.2008 / John Doe
" // 14.01.2009 / Sara Smith
" /****************************************************/

" This plugin allows us to cycle through a range of
" different layouts for vim. We use the interface `:acc`
" to cycle through the different styles. Or we can use
" `:ac{n}` to skip directly to the numbered layout which
" we desire. Where n represents the numer of the layout
" from 1 - n

" We also have modifiers for `minimal_mode` and `num_hide_mode`
" which change whether vim hides the status bar on existing
" the window and whether we hide the number line as a default

" /****************************************************/
" // EOF: Customer.cpp
" /****************************************************/
"===================================== 
" API for Accordion Plugin
"===================================== 
nnoremap <leader><leader>acc :call Accordion()<Cr>
nnoremap <leader><leader>ac1 :call Accordion(1)<Cr>
nnoremap <leader><leader>ac2 :call Accordion(2)<Cr>
nnoremap <leader><leader>ac3 :call Accordion(3)<Cr>
nnoremap <leader><leader>ac4 :call Accordion(4)<Cr>
nnoremap <leader><leader>ac5 :call Accordion(5)<Cr>
nnoremap <leader><leader>ac6 :call Accordion(6)<Cr>
"
"
"===================================== 
" Custom Accordion Window Arrangement      
"===================================== 
let w:accordion = 5
let w:minimal_mode = 0
let w:num_hide_mode = 1
let w:wrap_mode = 0

"===================================== 
"" Custom Accordion Window Arrangement      
"===================================== 
let w:accordion = 5
let w:minimal_mode = 0
let w:num_hide_mode = 1
let w:wrap_mode = 0
"
function! Accordion(...)
	if a:0 > 0
		let w:accordion = a:1 - 1
	else
	endif
	if w:accordion  == 0 
		let w:minimal_mode = 0
		let &winheight = (&lines *  100 / 100) + 1
		let &winwidth = (&columns * 100 / 100) + 1
		let w:accordion = 1
		echo 'Accordion:1'
	elseif w:accordion == 1
		let w:minimal_mode = 0
		let &winheight = &lines *  100 / 100
		let &winwidth = &columns * 50 / 100
		let NERDTreeWinSize=30
		let w:accordion = 2
		echo 'Accordion:2'
	elseif w:accordion == 2
		let w:minimal_mode = 1
		let &winheight = &lines *  100 / 100
		let &winwidth = &columns * 33 / 100
		let NERDTreeWinSize=30
		let w:accordion = 3
		echo 'Accordion:3'
	elseif w:accordion == 3
		let w:minimal_mode = 1
		let &winheight = &lines *  70 / 100
		let &winwidth = &columns * 70 / 100
		let NERDTreeWinSize=20
		let w:accordion = 4
		echo 'Accordion:4'
	elseif w:accordion == 4
		let w:minimal_mode = 0
		let &winheight = &lines *  70 / 100
		let &winwidth = &columns * 75 / 100
		let NERDTreeWinSize=30
		let w:accordion = 5
		echo 'Accordion:5'
	elseif w:accordion == 5
		let w:minimal_mode = 0
		let &winheight = 0
		let &winwidth = 0
		let NERDTreeWinSize=30
		let w:accordion = 0
		echo 'Accordion:6'
	else
	endif
endfunction

"===================================== 
"" Telescope default settings
"===================================== 
" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"===================================== 
"" Fuzzy Finder Settings
"===================================== 
set rtp+=/usr/local/opt/fzf 
nnoremap <leader>p :ProjectRootCD<Cr>:FZF<Cr>

"===================================== 
"" Vim-Rspec API
"===================================== 
map <Leader>spec :call RunCurrentSpecFile()<CR>
map <Leader>nspec :call RunNearestSpec()<CR>
map <Leader>lspec :call RunLastSpec()<CR>
map <Leader>rspec :call RunAllSpecs()<CR>

"===================================== 
" ColorSchemes
"===================================== 
colorscheme monokai

let w:color_scheme_cycle = 0

function! CycleColourScheme(...)
	if a:0 > 0
		let w:color_scheme_cycle = a:1 - 1
	else
	endif
	if w:color_scheme_cycle == 0 
		let w:color_scheme_cycle = 1
		colorscheme monokai
		echo 'ColorScheme: monokai'
	elseif w:color_scheme_cycle == 1 
		let w:color_scheme_cycle = 2
		colorscheme OceanicNext
		echo 'ColorScheme: OceanicNext'
	elseif w:color_scheme_cycle == 2 
		let w:color_scheme_cycle = 3
		colorscheme iceberg
		echo 'ColorScheme: iceberg'
	elseif w:color_scheme_cycle == 3 
		let w:color_scheme_cycle = 4
		colorscheme kolor
		echo 'ColorScheme: kolor'
	elseif w:color_scheme_cycle == 4 
		let w:color_scheme_cycle = 5
		colorscheme everforest
		echo 'ColorScheme; everforest'
	elseif w:color_scheme_cycle == 5 
		let w:color_scheme_cycle = 0
		echo 'ColorScheme:'
	else
	endif
endfunction

nnoremap <leader><leader>color  :call CycleColourScheme()<Cr>
nnoremap <leader><leader>color1 :call CycleColourScheme(1)<Cr>
nnoremap <leader><leader>color2 :call CycleColourScheme(2)<Cr>
nnoremap <leader><leader>color3 :call CycleColourScheme(3)<Cr>
nnoremap <leader><leader>color4 :call CycleColourScheme(4)<Cr>
nnoremap <leader><leader>color5 :call CycleColourScheme(5)<Cr>
nnoremap <leader><leader>color6 :call CycleColourScheme(6)<Cr>
"
"===================================== 
"" Set Syntastic Linters
"===================================== 
let g:syntastic_ruby_checkers = ["mri", "reek", "rubocop"]
"  let g:syntastic_quiet_messages = {
"" "type": "style",
"}

let g:syntastic_stl_format = "%E{[%e]}%W{[%w]}"
let g:syntastic_auto_jump = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1



"===================================== 
"" SolarGraph Config
"===================================== 
set runtimepath+=~/.vim-plugins/LanguageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['bundle exec solargraph stdio']
    \ }
"
" 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
" note that if you are using Plug mapping you should not use `noremap` mappings.
" nmap <F5> <Plug>(lcn-menu) 
" Or map each action separately
nnoremap <silent> <tab> :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()CR><
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()CR><>

"===================================== 
"" Set Popup Menu Colours
"===================================== 
function MenuColoursCycle()
	highlight Pmenu ctermbg=253 ctermfg=32 cterm=none term=none
	highlight PmenuSel ctermbg=250 ctermfg=32 cterm=none term=none
	highlight PmenuThumb ctermbg=81
	highlight PmenuSbar ctermbg=none
	highlight Tooltip ctermbg=81
	highlight Menu ctermbg=81
endfunction

" // Set MenuColoursCycle to the correct setting on Vim start
:call MenuColoursCycle()
"
"========================================
" Number Column and Cursor Line Colour
"========================================
" // Current line highlighting only in active window //
au BufEnter * setlocal cursorline
au BufLeave * setlocal nocursorline
au BufEnter * setlocal rnu number
au BufLeave * setlocal nornu nonumber

" // Change current line number colcur in Insert Mode //
autocmd InsertLeave * highlight CursorLineNr term=NONE cterm=NONE ctermfg=226 ctermbg=NONE
autocmd InsertEnter * highlight CursorLineNr term=NONE cterm=NONE ctermfg=41 ctermbg=NONE

" // Removes line numbers in Insert Mode //
autocmd InsertEnter * highlight LineNr term=NONE cterm=NONE ctermfg=235 ctermbg=NONE
autocmd InsertLeave * highlight LineNr term=NONE cterm=NONE ctermfg=238 ctermbg=NONE

" // Change line highlighting on Insert Mode //
autocmd InsertEnter * highlight CursorLine ctermbg=24 ctermfg=255 cterm=NONE
autocmd InsertLeave * highlight CursorLine ctermbg=none ctermfg=NONE cterm=NONE

" // Set Cusorline and Number column defaults on Vim start
highlight CursorLine ctermbg=none ctermfg=NONE cterm=NONE
highlight LineNr term=NONE cterm=NONE ctermfg=238 ctermbg=NONE
highlight CursorLineNr term=NONE cterm=NONE ctermfg=226 ctermbg=NONE

" // Set StatusLineCycle to the correct mode on Vim start
" :call StatusLineCycle('light_2')
"
"===================================== 
" Set Custom Tab Styles
"===================================== 
function MyTabLine(...)
	let s = ''
	for i in range(tabpagenr('$'))
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		let s .= '%' . (i + 1) . 'T'
		let tab_1 = get(a:, 1, 'README')
		let tab_2 = get(a:, 2, 'CODE')
		let tab_3 = get(a:, 3, 'TESTS')
		let tab_4 = get(a:, 4, 'FOUR')
		let concat_1 = " " . tab_1 . '...'
		let concat_2 = "..."  . tab_2 . '...'
		let concat_3 = "..."  . tab_3 . '...'
		let concat_4 = "..."  . tab_4 . '....'

		let tabnames = [concat_1, concat_2, concat_3, concat_4]
		let s .= tabnames[i]
	endfor

	let s .= '%#TabLineFill#%T'

	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999X'
	endif

	return s
endfunction

" Now the MyTabLabel() function is called for each tab page to get its label. >
function RedrawTabLine(...)
	let arg_1 = get(a:, 1, 'null')
	let arg_2 = get(a:, 2, 'null')
	let arg_3 = get(a:, 3, 'null')
	let arg_4 = get(a:, 4, 'null')

	if arg_1 == 'null'
		set tabline=%!MyTabLine()
	elseif arg_2 == 'null'
		set tabline=%!MyTabLine(arg_1)
	elseif arg_3 == 'null'
		set tabline=%!MyTabLine(arg_1, arg_2)
	elseif arg_4 == 'null'
		set tabline=%!MyTabLine(arg_1, arg_2, arg_3)
	else 
		set tabline=%!MyTabLine(arg_1, arg_2, arg_3, arg_4)
	endif

endfunction

nnoremap <leader><leader>tab :call RedrawTabLine()<cr>
nnoremap <leader><leader>1tab :call RedrawTabLine('')<left><left>
nnoremap <leader><leader>2tab :call RedrawTabLine('README', '')<left><left>
nnoremap <leader><leader>3tab :call RedrawTabLine('README', 'CODE', '')<left><left>
nnoremap <leader><leader>4tab :call RedrawTabLine('README', 'CODE', 'TESTS', '')<left><left>
nnoremap <leader><leader>atab :call RedrawTabLine('')<left><left>

"==========================================
" Snippets
"==========================================
nnoremap ,yard :-1read $HOME/.vim/snippets/yard_snippet.html<CR>
nnoremap ,todo :-1read $HOME/.vim/snippets/todo_snippet.html<CR>
"
"========================================
" Status Line and Tabline styling defaults
"========================================
hi VertSplit ctermbg=NONE ctermfg=238
hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLine ctermfg=238 ctermbg=NONE cterm=NONE
hi TabLineSel ctermfg=yellow ctermbg=NONE cterm=NONE
hi StatusLine ctermbg=NONE ctermfg=242
hi StatusLineNC ctermbg=NONE ctermfg=238
hi EndOfBuffer ctermbg=NONE

"========================================
" Dispatch Rspec runner
"========================================
nnoremap <leader><leader>spec :call RunCurrentSpecFile()<cr>
nnoremap <leader><leader>rspec :Dispatch bundle exec rspec -f p %<cr>
nnoremap <leader><leader>test :Dispatch ruby -Ilib:test test/*/**<cr>
" :RunAllSpec
" :RunLastSpec()
" :RunCurrentSpecFile()
