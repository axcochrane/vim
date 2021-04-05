" ========================================== 
""General Guidelines for assigning shortcuts 
"==========================================
" Primary key: reserved  for instinctive actions e.g. navigation
" Leader key: reserverd for very common alt uses e.g. jump lines
" Comma leader: reserved for text snippet e.g. ,rspec ,req
" functions: should be called via command e.g. :accordion
"
"===================================== 
"  Vim Dependencies and Required paths     
"===================================== 
set rtp+=/usr/local/opt/fzf 
filetype on 
filetype plugin on
filetype indent on
set path+=**
set noreadonly
set autochdir
set nocompatible 
" persists g:CAPITAILISED global variables across sessions in .viminfo
:set viminfo+=!


"===================================== 
" Vundle Plugins        								  
"===================================== 
call plug#begin()
	Plug 'junegunn/vim-peekaboo'
	Plug 'tpope/vim-rails'
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'townk/vim-autoclose'
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'thoughtbot/vim-rspec'
	Plug 'mileszs/ack.vim'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-abolish'
	Plug 'simeji/winresizer'
	Plug 'preservim/nerdtree'
	Plug 'dbakker/vim-projectroot'
	Plug 'rainerborene/vim-reek'
	Plug 'justinmk/vim-sneak'
	Plug 'tomtom/tlib_vim'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-endwise'         " enables autocompletion of
	Plug 'christoomey/vim-rfactory'	 " Enables RFactory shortcuts to access Rails Factory objects
	Plug 'dkprice/vim-easygrep'
	Plug 'triglav/vim-visual-increment'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'HerringtonDarkholme/yats.vim'
  Plug 'leafgarland/typescript-vim'
call plug#end()										 " required

 
"===================================== 
" Vim Snippets and Autocomplete					  
"===================================== 
" we will use the inbuld Vim autocomplete tools <c-x> <c-n> 
" FYI this has been mapped to <cr><cr> see utilities for more info

	
"===================================== 
" Common Shortcut Setings								  
"===================================== 
let mapleader = "\<Space>"
set timeoutlen=700 ttimeoutlen=-1
nnoremap S :w!<Cr>
nnoremap Q @@
nnoremap <leader><leader> :



"=====================================
" Tab and alignment settings     								  
"===================================== 
set autoindent
set tabstop=2 "This changes how big tab spaces appear"
set softtabstop=2
set shiftwidth=2 "This controls the width of >> shortcut"
set numberwidth=4
set laststatus=2
set notitle
set number
set tags=./tags;
"set nowrap
set wrap
set splitright

 
"===================================== 
"  Basic Appearance Settings						  
"===================================== 
syntax on             " Enable syntax highlighting
colorscheme monokai
" colorscheme zenburn
set relativenumber
set lazyredraw  
set hidden


"===================================== 
"  Navigation Shortcuts  								  
"===================================== 
nnoremap <c-J> <C-W><C-J>    
nnoremap <c-K> <C-W><C-K>
nnoremap <c-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap K 5k5<c-y>
nnoremap J 5j5<c-e>
nnoremap <leader>q q
nnoremap q b


"===================================== 
"  Editing Shorcuts  								  
"===================================== 
nnoremap <Leader>o o<Esc>
set bs=2														 " Enable Backspace key as delete
nnoremap ,, A <Esc>
inoremap ,, <Esc>Ea
inoremap <CR><CR> <c-x><c-n> 
nmap m ]m
nmap M [m


"===================================== 
"  Sneak Plugin Shortcut                   
"===================================== 
" 2-character Sneaka (default)
map s <Plug>Sneak_s
map <Leader>s <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" visual-mode
xmap s <Plug>Sneak_s
xmap <Leader>S <Plug>Sneak_S
xmap t <Plug>Sneak_t
set ignorecase
set incsearch
let g:sneak#reset=0
let g:sneak#use_ic_scs = 1


"===================================== 
"  Utilities Shortcuts  								  
"===================================== 
noremap <leader>r :! cd ~/Enlist_rails && spring rspec %:p -f d <Cr>
noremap <leader>p :ProjectRootCD<Cr>:FZF<Cr>

" Run using double :: as leader key
cnoremap :source :silent! source ~/.vimrc<Cr>
cnoremap :bar call StatusLineCycle()<Cr>
cnoremap :info <esc><S-k>
cnoremap :min0 let w:minimal_mode = 0<Cr>
cnoremap :min1 let w:minimal_mode = 1<Cr>
cnoremap :acc call Accordion()<Cr>
cnoremap :reek :RunReek<Cr>
cnoremap :show :call ShowSpaces()<Cr>
cnoremap :trim :call TrimSpaces()<Cr>
cnoremap :search Ack -i   ~/enlist_rails <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>


nnoremap <leader><leader>source :silent! source ~/.vimrc<Cr>
nnoremap <leader><leader>bar :call StatusLineCycle()<Cr>
nnoremap <leader><leader>info <esc><S-k>
nnoremap <leader><leader>nums :set nu rnu<Cr>
nnoremap <leader><leader>nonum :set nornu nu!<Cr>
nnoremap <leader><leader>min0 :let w:minimal_mode = 0<Cr>
nnoremap <leader><leader>min1 :let w:minimal_mode = 1<Cr>
nnoremap <leader><leader>num0 :let w:num_hide_mode = 0<Cr>
nnoremap <leader><leader>num1 :let w:num_hide_mode = 1<Cr>
nnoremap <leader><leader>wrap0 :let w:wrap_mode = 0<Cr>
nnoremap <leader><leader>wrap1 :let w:wrap_mode = 1<Cr>
nnoremap <leader><leader>acc :call Accordion()<Cr>
nnoremap <leader><leader>ac1 :call Accordion(1)<Cr>
nnoremap <leader><leader>ac2 :call Accordion(2)<Cr>
nnoremap <leader><leader>ac3 :call Accordion(3)<Cr>
nnoremap <leader><leader>ac4 :call Accordion(4)<Cr>
nnoremap <leader><leader>ac5 :call Accordion(5)<Cr>
nnoremap <leader><leader>ac6 :call Accordion(6)<Cr>
nnoremap <leader><leader>reek :RunReek<Cr>
nnoremap <leader><leader>show :call ShowSpaces()<Cr>
nnoremap <leader><leader>trim :call TrimSpaces()<Cr>
nnoremap <leader><leader>search :Ack -i   ~/enlist_rails <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
vnoremap <leader><leader> :s//g<left><left>


"==========================================
" Custom RSpec Block Snippets
"==========================================
nnoremap ,rspec :-1read $HOME/.vim/snippets/rspec_snippet.html<CR>
nnoremap ,context :-1read $HOME/.vim/snippets/context_snippet.html<CR>
nnoremap ,describe :-1read $HOME/.vim/snippets/describe_snippet.html<CR>
nnoremap ,feature :-1read $HOME/.vim/snippets/rspec_feature_snippet.html<CR>
inoremap ,rspec <Esc>:-1read $HOME/.vim/snippets/rspec_snippet.html<CR>
inoremap ,context <Esc>:-1read $HOME/.vim/snippets/context_snippet.html<CR>
inoremap ,describe <Esc>:-1read $HOME/.vim/snippets/describe_snippet.html<CR>
inoremap ,feature <Esc>:-1read $HOME/.vim/snippets/rspec_feature_snippet.html<CR>
inoremap ,factory <Esc>:-1read $HOME/.vim/snippets/factory_snippet.html<CR>
nnoremap ,factory <Esc>:-1read $HOME/.vim/snippets/factory_snippet.html<CR>
inoremap ,req require ''<left>
nnoremap ,req irequire ''<left>


"==========================================
" Highlight inbetween parens
"==========================================
inoremap f'' <Esc>/''<CR>a 
nnoremap f'' <Esc>/''<CR>a
inoremap f]] <Esc>/]<CR>vi]
nnoremap f]] <Esc>/]<CR>vi]
inoremap f)) <esc>/)<cr>vi)
noremap f)) <esc>/)<cr>vi)
inoremap f}} <esc>/}<cr>vi}
noremap f}} <esc>/}<cr>vin}
noremap f[[ <esc>/[<cr>vi[
noremap f[[ <esc>/[<cr>vi]
noremap f(( <Esc>/(<CR>vi(
noremap f(( <Esc>/(<CR>vi(
noremap f{{ <Esc>/{<CR>vi{
nnoremap f{{ <Esc>/{<CR>vi{

"==========================================
" Rails Text Delimeter Shortcuts
"==========================================
" inoremap [[ ()<left>
" inoremap ]] {}<left>
" inoremap -- <%=  %><left><left><left>
" inoremap "" "#{}"<left><left>
nnoremap <leader><leader>m m

"==========================================
" RSpec Custom Block Snippets
"==========================================
inoremap spec<cr> <Esc>ddoRSpec.describe '' do<CR>end<Esc><up><Esc>f'a
inoremap specf<Cr> <Esc>ddoRSpec.feature '' do<CR>end<Esc><up><Esc>f'a
nnoremap spec<cr> <Esc>ddoRSpec.describe '' do<CR>end<Esc><up><Esc>f'a
nnoremap specf<Cr> <Esc>ddoRSpec.feature '' do<CR>end<Esc><up><Esc>f'a
inoremap describe<cr> describe '' do<CR>end<Esc><up><Esc>f'a
nnoremap describe<Cr> describe '' do<CR>end<Esc><up><Esc>f'a
inoremap context<cr> context '' do<CR>end<Esc><up><Esc>f'a
nnoremap context<Cr> context '' do<CR>end<Esc><up><Esc>f'a
inoremap scenario<cr> scenario '' do<CR>end<Esc><up><Esc>f'a
nnoremap scenario<Cr> scenario '' do<CR>end<Esc><up><Esc>f'a
inoremap feature<cr> feature '' do<CR>end<Esc><up><Esc>f'a
nnoremap feature<Cr> feature '' do<CR>end<Esc><up><Esc>f'a
inoremap it<cr> it '' do<CR>end<Esc><up><Esc>f'a
nnoremap it<Cr> it '' do<CR>end<Esc><up><Esc>f'a


"#####################################
"#####################################
"###### BELOW HERE IS FUNCTIONS ######
"#####################################
"#####################################
"
"===================================== 
" Reek setings
"===================================== 
let g:reek_on_loading = 0

"===================================== 
" Custom Accordion Window Arrangement      
"===================================== 
let w:accordion = 5
let w:minimal_mode = 0
let w:num_hide_mode = 1
let w:wrap_mode = 0
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


"========================================
"  TrimSpace command line function       
"========================================
function ShowSpaces(...)
	let @/='\v(\s+$)|( +\ze\t)'
	let oldhlsearch=&hlsearch
	if !a:0
		let &hlsearch=!&hlsearch
	else
		let &hlsearch=a:1
	end
	return oldhlsearch
endfunction

function TrimSpaces() range
	let oldhlsearch=ShowSpaces(1)
	execute a:firstline.",".a:lastline."substitute ///gec"
	let &hlsearch=oldhlsearch
endfunction


"========================================
"  NERDTree Settings                     
"========================================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
let g:NERDTreeBookmarksFile = $HOME ."/.vim/bundle/nerdtree/bookmarks" "existing path to bookmark
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 0
hi Directory ctermfg=DarkGrey
hi NERDTreeOpenable ctermfg=236  cterm=NONE 
hi NERDTreeClosable ctermfg=Yellow
let NERDTreeOpenable='  '
let NERDTreeDelimiter='  '
hi NERDTreeNodeDelimiter ctermfg=DarkGrey
hi NERDTreeCWD ctermfg=DarkGrey
hi NERDTreePath ctermfg=Red
hi NERDTreeDirNode ctermfg=Blue
hi NERDTreeFileNode ctermfg=Green
let NERDTreeAutoCenter=1 
let NERDTreeAutoCenterThreshold=5
let NERDTreeShowLineNumbers=1
noremap <Leader>nt :NERDTree ~/enlist_rails<Cr> 
nnoremap <Leader>nd :NERDTreeToggle<Cr>
let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']
let NERDTreeIgnore += ['\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$']


"===================================== 
" Toggle Statusline Function							  
"===================================== 
" let b:hidden_all = 0
let g:status_line_default_mode = get(g:, 'status_line_default_mode', 'shown')
let g:status_line_mode = get(g:, 'status_line_mode', 'shown')

function StatusLineCycle()
	let g:status_line_mode = get(g:, 'status_line_mode', 'shown')
	if g:status_line_mode == 'shown' | call StatusLineHide()
	elseif g:status_line_mode == 'pomodoro' | call StatusLineDefault()
	elseif g:status_line_mode == 'hidden' | call StatusLinePomodoro()
	else | call StatusLineDefault()
	endif
endfunction

function StatusLineDefault()
	let g:status_line_default_mode = get(g:, 'status_line_default_mode', 'shown')
	if g:status_line_default_mode == 'amber' | call StatusLineAmber()
	elseif g:status_line_default_mode == 'shown' | call StatusLineShow()
	endif
	let &statusline='___%t_%m'
endfunction

function StatusLineHide()
	let g:status_line_mode = 'hidden'
	set noshowmode
	set noruler
	set laststatus=0
	set noshowcmd
	hi StatusLine ctermbg=NONE ctermfg=244
	hi StatusLineNC ctermbg=NONE ctermfg=238
	set showtabline=0
	highlight EndOfBuffer ctermbg=NONE ctermfg=236
endfunction

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
	hi TabLine ctermfg=NONE ctermbg=NONE cterm=NONE
	hi TabLineSel ctermfg=yellow ctermbg=NONE cterm=NONE
	hi StatusLine ctermbg=NONE ctermfg=242
	hi StatusLineNC ctermbg=NONE ctermfg=238
	hi EndOfBuffer ctermbg=NONE
	set fillchars=stl:_
	set fillchars+=vert:│
	set fillchars+=stlnc:_
endfunction

function StatusLineAmber()
	let g:status_line_default_mode = 'amber'
	let g:status_line_mode = 'shown'
	set showmode
	set ruler
	set showcmd
	set laststatus=1
	set showtabline=1
	hi VertSplit ctermbg=NONE ctermfg=238
	hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
	hi TabLine ctermfg=NONE ctermbg=NONE cterm=NONE
	hi TabLineSel ctermfg=yellow ctermbg=NONE cterm=NONE
	hi StatusLine ctermbg=NONE ctermfg=220
	hi StatusLineNC ctermbg=NONE ctermfg=229
	let &statusline='___%t_%m%y'
	set fillchars=stl:_
	set fillchars+=vert:│
	set fillchars+=stlnc:_
endfunction

function StatusLinePomodoro()
	call StatusLineDefault()
	let g:status_line_mode = 'pomodoro'
	let tally = '[' . g:POMODORO_TALLY . ']'
	let &statusline = '___%t_%m%y' . tally
endfunction

function MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" select the highlighting
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		" set the tab page number (for mouse clicks)
		let s .= '%' . (i + 1) . 'T'

		" the label is made by MyTabLabel()
		let tabnames = ['---MainTab---  ', '  ---TaskLog---  ', '  ---Tab3---  ', '  ---Tab4---  ']
		" let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
		let s .= tabnames[i]
	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	" right-align the label to close the current tab page
	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999X'
	endif

	return s
endfunction

" Now the MyTabLabel() function is called for each tab page to get its label. >

function MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	return bufname(buflist[winnr - 1])
endfunction

:set tabline=%!MyTabLine()
"========================================
"  Minimal Mode                          
"========================================
set cursorline
highlight LineNr term=NONE cterm=NONE ctermfg=238 ctermbg=NONE
highlight CursorLineNr term=NONE cterm=bold ctermfg=240 
highlight CursorLine ctermbg=NONE ctermfg=NONE
highlight Cursor ctermbg=214 ctermfg=NONE 

autocmd InsertEnter * highlight CursorLine ctermbg=24 ctermfg=255 cterm=bold
autocmd InsertEnter * highlight LineNr term=NONE cterm=NONE ctermfg=234 ctermbg=234
autocmd InsertEnter * highlight CursorLineNr term=NONE cterm=NONE ctermfg=234 ctermbg=234
autocmd InsertLeave * highlight CursorLine ctermbg=none ctermfg=NONE cterm=NONE
autocmd InsertLeave * highlight LineNr term=NONE cterm=NONE ctermfg=238 ctermbg=NONE
autocmd InsertLeave * highlight CursorLineNr term=NONE cterm=bold ctermfg=238 ctermbg=NONE
au BufEnter * setlocal cursorline
au BufLeave * setlocal nocursorline
 
function UndoBlankLine()
	if w:minimal_mode == 1
		normal u
	elseif w:minimal_mode == 0
	endif
endfunction

function SetNoWrap()
	if w:wrap_mode == 1
		setlocal nowrap
	else
	endif
endfunction

function SetWrap()
	if w:wrap_mode == 1
		setlocal wrap
	else
	endif
endfunction

function HideNumbers()
	if w:num_hide_mode == 1
		setlocal nonumber
		setlocal norelativenumber
	else
	endif
endfunction

function ShowNumbers()
	if w:num_hide_mode == 1
		setlocal number
		setlocal relativenumber
	else
	endif
endfunction

function SetCursorLine()
	if w:minimal_mode == 1
		setlocal cursorline
		highlight CursorLineNr ctermfg=220
		highlight LineNr term=NONE ctermfg=242
	else 
	endif
endfunction

function SetNoCursorLine()
	if w:minimal_mode == 1
		setlocal nocursorline
	else
	endif
endfunction

function EnterBlankLine()
	if w:minimal_mode == 1
		normal o
		normal C
	else
	endif
endfunction

function CheckWindowDefaults()
	if !exists("w:minimal_mode")
		let w:minimal_mode = 0
	endif
	if !exists("w:num_hide_mode")
		let w:num_hide_mode = 1
	endif
	if !exists("w:wrap_mode")
		let w:wrap_mode = 0
	endif
	if !exists("w:accordion")
		let w:accordion = 5
	endif
endfunction

augroup win_enter
	autocmd!
		autocmd WinEnter * call CheckWindowDefaults()
		autocmd WinEnter * call ShowNumbers()
		autocmd WinEnter * call SetWrap()
		autocmd WinEnter * call SetCursorLine()
		autocmd BufEnter * call UndoBlankLine()
augroup END
 
augroup win_leave
	autocmd!
		autocmd BufLeave * call CheckWindowDefaults()
		autocmd BufLeave * call HideNumbers() 
		autocmd BufLeave * call SetNoWrap() 
		autocmd WinLeave * call SetNoCursorLine() 
		autocmd BufLeave * call EnterBlankLine() 
augroup END

"========================================
"  Custom Jump Navigation Mapping        
"========================================
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>a<leader> j
nnoremap <leader>s<leader> :+2<Cr>
nnoremap <leader>d<leader> :+3<Cr>
nnoremap <leader>f<leader> :+4<Cr>
nnoremap <leader>g<leader> :+5<Cr>
nnoremap <leader>h<leader> :+6<Cr>
nnoremap <leader>j<leader> :+7<Cr>
nnoremap <leader>k<leader> :+8<Cr>
nnoremap <leader>l<leader> :+9<Cr>
nnoremap <leader>;<leader> :+10<Cr>
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
nnoremap <leader><leader>a k
nnoremap <leader><leader>s<leader> :-2<Cr>
nnoremap <leader><leader>d<leader> :-3<Cr>
nnoremap <leader><leader>f<leader> :-4<Cr>
nnoremap <leader><leader>g<leader> :-5<Cr>
nnoremap <leader><leader>h<leader> :-6<Cr>
nnoremap <leader><leader>j<leader> :-7<Cr>
nnoremap <leader><leader>k<leader> :-8<Cr>
nnoremap <leader><leader>l<leader> :-9<Cr>
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

"==========================================
" Quickfix Shortcuts
"==========================================
" When using `dd` in the quickfix list, remove the item from the quickfix list.
function! RemoveQFItem()
  let curqfidx = line('.') - 1
  let qfall = getqflist()
  call remove(qfall, curqfidx)
  call setqflist(qfall, 'r')
  execute curqfidx + 1 . "cfirst"
  :copen
endfunction
:command! RemoveQFItem :call RemoveQFItem()
" Use map <buffer> to only map dd in the quickfix window. Requires +localmap
autocmd FileType qf map <buffer> dd :RemoveQFItem<cr>


"==========================================
" Pomodoro Timer PlugIn
"==========================================
"### API ###
let g:POMODORO_STATUS = get(g:, 'POMODORO_STATUS', 'Inactive')
let g:POMODORO_TALLY = get(g:, 'POMODORO_TALLY', '')
let g:POMODORO_ROUND_COUNT = get(g:, 'POMODORO_ROUND_COUNT', 0)
let g:POMODORO_SESSION_COUNT = get(g:, 'POMODORO_SESSION_COUNT', 0)
let g:POMODORO_ALLTIME_COUNT = get(g:, 'POMODORO_ALLTIME_COUNT', 0)
let g:TASK_CURRENT = get(g:, 'TASK_CURRENT', '')
let g:pomodoro_round_size = get(g:, 'pomodoro_round_size', 4)
let g:pomodoro_pause_time = get(g:, 'pomodoro_pause_time', 2400000)
let g:pomodoro_stopped_time = get(g:, 'pomodoro_stoppped_time', 2400000)
let g:pomodoro_long_break = get(g:, 'pomodoro_long_break', 1500000)
let g:pomodoro_short_break = get(g:, 'pomodoro_short_break', 300000)
let g:pomodoro_length = get(g:, 'pomodoro_length', 2400000)

nnoremap <leader><leader>poms :call PomodoroStatus()<Cr>
nnoremap <leader><leader>pomi :call PomodoroInfo()<Cr>
nnoremap <leader><leader>pomc :call PomodoroCounters()<Cr>

nnoremap <leader><leader>todo :call PomodoroTask()<Cr>
nnoremap <leader><leader>log :call PomodoroLog()<Cr>
nnoremap <leader><leader>clockout :call PomodoroClockOut()<Cr>
nnoremap <leader><leader>clockin :call PomodoroClockIn()<Cr>

nnoremap <leader><leader>add :call TaskAdd('')<left><left>
nnoremap <leader><leader>resume :call TaskResume('')<left><left>
nnoremap <leader><leader>task :call TaskStart('')<left><left>
nnoremap <leader><leader>done :call TaskDone()<cr>

nnoremap <leader><leader>start :call PomodoroStart()<Cr>
nnoremap <leader><leader>stop :call PomodoroStop()<cr>
nnoremap <leader><leader>skip :call PomodoroSkipBreak()<Cr>
nnoremap <leader><leader>pause :call PomodoroPause()<cr>

"### Public Functions: Open Files ###
function PomodoroTask(...)
	:vert botright split ~/.vim/task_list
endfunction

function PomodoroLog(...)
	:vert botright split ~/.vim/task_log
endfunction

"### Public Functions: Pomodoro ###
function PomodoroClockIn()
	let g:POMODORO_ROUND_COUNT = 0
	let g:POMODORO_SESSION_COUNT = 0
	let g:POMODORO_TALLY = ''
	let g:POMODORO_STATUS = 'Inactive'
	let g:status_line_mode = 'amber'

	:vert botright split ~/.vim/task_log
	normal! G
	:put =strftime('%a-%d%b%Y  %H%M-XXXX   ')
	normal! A 
	normal ZZ
endfunction

function PomodoroClockOut()
	:vert botright split ~/.vim/task_log
	:put =strftime('%H%M')
	normal! diW"_ddGfXv4lpa 
	normal ZZ
	:execute "normal \<c-w>\<c-w>"
	echo 'Well done you completed ' . g:POMODORO_SESSION_COUNT . ' pomodoros this session'
endfunction

function PomodoroRecordTask(...)
	let task = "#" . get(a:, 1, g:TASK_CURRENT)
	:vert botright split ~/.vim/task_log
	:put = task
	:normal! diW"_ddG$pA 
	normal! G03f-Eldt#i  
	normal ZZ
	let g:TASK_CURRENT = ''
	echo 'Well done you completed ' . task
endfunction

function PomodoroStart(...)
	let task = get(a:, 1, g:TASK_CURRENT)
	let time = get(a:, 2, g:pomodoro_length)
	let rounds = get(a:, 3, g:pomodoro_round_size)
	let resumed_from = get(a:, 4, 'none')
	let g:status_line_default_mode = 'shown'
	if (g:POMODORO_STATUS == 'Stopped' || resumed_from == 'stoppage')
		let time = g:pomodoro_stopped_time
		let g:POMODORO_STATUS	= 'Resuming stopped pomodoro'
		echo 'Resuming stopped pomodoro with ' . time / 60000 . ' minutes remaining'
	elseif (g:POMODORO_STATUS == 'Paused' || resumed_from == 'pause')
		let time = g:pomodoro_pause_time
		let g:POMODORO_STATUS	= 'Resuming paused pomodoro'
		call timer_stopall()
		echo 'Resuming paused pomodoro with ' . time / 60000 . ' minutes remaining'
	else
		let g:POMODORO_STATUS	= 'Working'
		echo (time / 60000)  . ' minute pomodoro started.  ' . (g:POMODORO_ROUND_COUNT + 1) . ' of ' . g:pomodoro_round_size
	endif
	call StatusLineShow()
	call TaskCurrent(task)
	call TaskStart()
  call timer_start(time, 'PomodoroComplete')
	" normal ZZ
	" :execute "normal \<c-w>\<c-w>"
	" normal! 0
endfunction

function PomodoroStop(...)
	let g:pomodoro_stopped_time = timer_info()[0]['remaining']
	let time_in_mins = g:pomodoro_stopped_time / 60000
	let g:POMODORO_STATUS	= 'Stopped'
	call timer_stopall()
	echo 'Pomodoro stopped with ' . time_in_mins . ' minutes remaining'
endfunction

function PomodoroPause(...)
	let paused_status = timer_info()[0]['paused']  
	if paused_status == 0 
		let g:paused_timer_id = timer_info()[0]['id']
		let g:pomodoro_pause_time = timer_info()[0]['remaining']
		let g:POMODORO_STATUS	= 'Paused'
		let time_left_in_mins = g:pomodoro_pause_time / 60000
		call timer_pause(g:paused_timer_id, 1)
		call StatusLineAmber()
		echo 'Pomodoro paused with ' . time_left_in_mins . 'mins remaining'
	elseif paused_status == 1 
		call timer_stop(g:paused_timer_id)
		let g:pomodoro_pause_time = get(g:, 'pomodoro_pause_time', 2400000)
		call PomodoroStart(g:TASK_CURRENT, g:pomodoro_pause_time, g:pomodoro_round_size, 1)
		" :execute "normal \<c-w>\<c-w>"
	else
		echo "Pause function didn't run, perhaps because no timer is active"
	endif 
endfunction

function PomodoroInfo(...)
	echo timer_info()
endfunction	

function PomodoroStatus(...)
	if (g:POMODORO_STATUS == 'Inactive' || g:POMODORO_STATUS == 'Stopped')
		echo "No active timer. Run PomodoroStart() to begin"
	else
		let time_remaining_in_mins = timer_info()[0]['remaining'] / 60000
		echo 
			\	 "COUNTDOWN = " . time_remaining_in_mins . "mins" 
			\ ."             "
			\ ."STATUS = "   . g:POMODORO_STATUS 
			\ ."             "
			\ ."SESSION COUNT = "    . g:POMODORO_SESSION_COUNT
			\ ."             "
			\ ."TALLY = " . g:POMODORO_TALLY
			\ ."             "
			\ ."TASK = #" . g:TASK_CURRENT
	endif
endfunction

function PomodoroCounters()
		echo 
			\	"ROUND " . (g:POMODORO_ROUND_COUNT + 1) . " of " . g:pomodoro_round_size
			\ ."             "
			\ ."SESSION = " . g:POMODORO_SESSION_COUNT 
			\ ."             "
			\ ."ALLTIME = " . g:POMODORO_ALLTIME_COUNT
			\ ."             "
			\ ."TALLY = " . g:POMODORO_TALLY
			\ ."             "
			\ ."TASK = #" . g:TASK_CURRENT
endfunction

"### Private Functions: Pomodoro ###
function PomodoroComplete(...)
	call PomodoroIncreaseCounters(1)
	call PomodoroRecordPom()
	call TaskLogPom()
	if g:POMODORO_ROUND_COUNT == g:pomodoro_round_size
		call PomodoroLongBreak()
		let g:POMODORO_ROUND_COUNT = 0
	else
		call PomodoroShortBreak()
	endif
endfunction

function PomodoroLongBreak(...)
	let time = get(a:, 1, g:pomodoro_long_break)
	let time_in_mins = time / 60000
	let g:POMODORO_STATUS = 'Long Break'
	:vert botright split ~/.vim/task_log
	normal! G2f,wEa.
  call timer_start(time, 'LongBreakComplete')
	normal ZZ
	:execute "normal \<c-w>\<c-w>"
	call StatusLineAmber()
	echo time_in_mins . ' min break started'
endfunction

function PomodoroShortBreak(...)
	let time = get(a:, 1, g:pomodoro_short_break)
	let time_in_mins = time / 60000
	let g:POMODORO_STATUS = 'Short break'
  call timer_start(time, 'ShortBreakComplete')
	call StatusLineAmber()
	echo time_in_mins . ' min break started'
endfunction
 
function LongBreakComplete(...)
	let timer_id = get(a:, 1, 'Status unknown') 
	call PomodoroRecordBreak()
	echo 'Long break complete'
	call PomodoroStart()
endfunction

function ShortBreakComplete(...)
	let timer_id = get(a:, 1, 'Status unknown') 
	echo 'Short Break Complete'
	call PomodoroStart()
endfunction

function PomodoroSkipBreak(...)
	if g:POMODORO_STATUS == 'Short break'
		let timer_id = get(a:, 1, 'Status unknown') 
		echo 'Short Break Complete'
		call PomodoroStart()
	elseif g:POMODORO_STATUS == 'Long break'
		let timer_id = get(a:, 1, 'Status unknown') 
		call PomodoroRecordBreak()
		echo 'Long break complete'
		call PomodoroStart()
	else
		echo "Skip only works when you're currently on a break.\
					\ You can't skip Pomodoros you lazy twat"
	endif
endfunction

function PomodoroRecordPom()
	:vert botright split ~/.vim/task_log
	:execute "normal G4fXa   \<Esc>wdTXviwyviwc   \<esc>pa-\<Esc>\"wdiW\<Esc>\"_dTXi  \<Esc>\"wp"
	let g:POMODORO_TALLY = g:POMODORO_TALLY . '-'
	normal! G03f-EwdT-i  
	normal! ZZ
	:execute "normal \<c-w>\<c-w>"
	normal! 0
endfunction

function PomodoroRecordBreak()
	:vert botright split ~/.vim/task_log
	:execute "normal G4fXa   \<Esc>wdTXviwyviwc   \<esc>pa.\<Esc>\"wdiW\<Esc>\"_dTXi  \<Esc>\"wp"
	let g:POMODORO_TALLY = g:POMODORO_TALLY . '.'
	normal! G03f-EwdT.i  
	normal! ZZ
	:execute "normal \<c-w>\<c-w>"
	normal! 0
endfunction

function PomodoroIncreaseCounters(...)
	let l:increment = get(a:, 1, 1)
	let g:POMODORO_ROUND_COUNT = g:POMODORO_ROUND_COUNT + l:increment
	let g:POMODORO_SESSION_COUNT = g:POMODORO_SESSION_COUNT + l:increment
	let g:POMODORO_ALLTIME_COUNT = g:POMODORO_ALLTIME_COUNT + l:increment
endfunction

"===================================== 
" Task Manager							  
"===================================== 
"### Public API ###
" taska
" taskd

"### Public Functions: Task Manager ###
function TaskAdd(...)
	let task = get(a:, 1, 'empty')
	let poms = get(a:, 2, 4)
	:vert botright split ~/.vim/task_list
	if task == 'empty' | normal GyypwviWWEecXXXXX:XXXX   XXXXX:XXXX   QUEUE
	else 
		normal GyypwviWWEecXXXXX:XXXX   XXXXX:XXXX   QUEUE
		:execute "normal 0\<c-a>\<esc>GWWWWciW" . task . "\<esc>be\<esc>ld$"
		call cursor('.',81) | let col = col('.') | let diff = 81 - col
		execute "normal " . diff . "a " . "\<esc>" . poms . "a-"
	endif
	echom 'You added ' . task . ' task to todo list'
  normal ZZ 
  " :execute "normal \<c-w>\<c-w>"
	normal 0
	" note this fixes nerdtree bug
endfunction

function TaskStart(...)
	let task = get(a:, 1, 'empty')
	if task == 'empty' 
		echo 'Cotinuing with #' . g:TASK_CURRENT . ' task'
	else 
		let g:TASK_CURRENT = task
		:vert botright split ~/.vim/task_list
		:put =strftime('%d%b:%H%M   XXXXX:XXXX')
		normal! "zdiW"_ddgg
		let line_no = search(task)
		normal! 0WviW"zpWWviWcSTART
		normal! ddGp
		normal 0
		normal ZZ
		:execute "normal \<c-w>\<c-w>"
		silent! echom 'You have started #' . g:TASK_CURRENT . ' task'
	endif
endfunction

function TaskResume(...)
	let task = get(a:, 1, 'empty')
	if task == 'empty' | echo 'Cotinuing with #' . g:TASK_CURRENT . ' task'
	else 
		let g:TASK_CURRENT = task
		:vert botright split ~/.vim/task_list
		let line_no = search(task)
		normal! ddGp
		normal 0
	endif
	normal ZZ
	:execute "normal \<c-w>\<c-w>"
	echom 'You have resumed #' . g:TASK_CURRENT . ' task'
endfunction

function TaskLogPom(...)
	let task = get(a:, 1, g:TASK_CURRENT)
	:vert botright split ~/.vim/task_list
	let line_no = search(task)
	normal W
	let tally = expand('<cword>')
	if stridx(tally, '-') == -1
	  silent! execute "normal! Xi#\<esc>"
	else
	  silent! execute "normal! viw:s/-/#/\<Cr>"
	endif
	normal ZZ
	" :execute "normal \<c-w>\<c-w>"
	normal 0
endfunction

function TaskCurrent(...)
	let task = get(a:, 1, 'empty')
	if task == 'empty'
		echo g:TASK_CURRENT
	else
		let g:TASK_CURRENT = task
	endif
endfunction

function TaskDone(...)
	let task = get(a:, 1, g:TASK_CURRENT)
		:vert botright split ~/.vim/task_list
		:put =strftime('%d%b:%H%M')
		normal! "zdiW"_ddgg
		let line_no = search(task)
		normal 0WWviWp0WWWciWDONE 
		call TaskLogPom()
		call PomodoroRecordTask()
		normal ZZ
endfunction

function TaskCount(...)
		:vert botright split ~/.vim/task_list
		let line_no = search('QUEUE')
		:execute "normal! VG:s/-/-/gn"
endfunction

"==========================================
" Navigating to next braces
"==========================================
nnoremap ]] <Esc>/]<CR>
noremap )) <esc>/)<cr>
noremap }} <esc>/}<cr>
noremap }} <esc>/}<cr>
noremap <leader>cir /{<cr>ciB<space><space><left>
noremap <leader>cib /(<cr>cib
noremap <leader>ciq /"<cr>ci"
noremap <leader>cis /'<cr>ci'
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
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

autocmd BufEnter *.{} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Use K to show documentation in preview window
nnoremap <tab> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" sync open file with NERDTree
" " Check if NERDTree is open or active
" function! IsNERDTreeOpen()        
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()

let g:NERDTreeGitStatusWithFlags = 1

" coc config
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>do <Plug>(coc-codeaction)

"==========================================
" Function to run on Load
"==========================================
" :call ToggleHiddenAll()
:call StatusLineDefault()

" let g:SuperTabClosePreviewOnPopupClose = 1


"==========================================
" Typescript code generation snippets
"==========================================
nnoremap ,func <Esc>:-1read $HOME/.vim/snippets/js_function_snippet.html<CR>

" Make <TAB> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR><Esc>"

" set completeopt-=preview
" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

