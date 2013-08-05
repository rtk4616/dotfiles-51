" vim 7.3+
set nocompatible
call pathogen#infect()
set laststatus=2

"let g:Powerline_symbols = 'fancy'

set backspace=indent,eol,start
" make arrow keys wrap lines and whitespace properly
set whichwrap=b,s,<,>,[,]
syntax on
set number
set ic
set smartcase
set autoindent
set incsearch

" match by highlight as well (still need to press return to search, however)
set hlsearch
" Clear search highlight by hitting enter
nnoremap <silent> <CR> :noh<CR>

" Spell checking. Does not offer suggestions :-)
set spell

set cursorline " Highlight current line
set autoread " Reload files that have changed

filetype on
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.ino  set filetype=c
au BufNewFile,BufRead *.pde  set filetype=c
au BufNewFile,BufRead *.md   set filetype=markdown
au BufNewFile,BufRead *.fish set filetype=sh

" It's not the 70's anymore. Use git or something.
set noswapfile
set nobackup

" get rid of the engulfing behavior of highlighting matching brackets
" when inside parenthesis. It makes the cursor hard to distinguish.
set noshowmatch


" NoMatchParen " this works as a command but not a setting
" this does work, fooling the matching system into
let loaded_matchparen = 1


" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" no point in pressing/releasing the shift key!
nnoremap ; :

" if you want to force yourself to use hjkl, uncomment this:
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

let g:SuperTabNoCompleteAfter = ['^', '\s', '//', '#']

" 16-color terminal with solarised theme is preferable.
" failing this, the following option can be set to use a degraded 256 color palette
let g:solarized_termcolors=256

" good on crap laptop monitors
let g:solarized_contrast="high"


" Configure solarised per machine.
set background=dark
colorscheme solarized

" anti typo
ca WQ wq
ca Wq wq
ca wQ wq
ca qw wq
ca W w
ca Q q
ca q1 q!

" <tab> to toggle nerdtree, persistent across all tabs with vim-nerdtree-tabs!
" or, choose standard NERDtree
nnoremap <tab> :NERDTreeTabsToggle<CR>
"nnoremap <tab> :NERDTreeToggle<CR>
let NERDTreeMapQuit='\t'
" when changing to a tab, file should be focused
let g:nerdtree_tabs_focus_on_files=1

" gf opens the file under cursor, which is great for navigating a hierarchy of files.
" Change gF to open file under cursor in new tab, not new pane, like CTRL+W gF
nnoremap gF <C-w>gf

" Ex mode? WTF VIM?
map Q <Nop>

" I never use macros. My plugins are a better replacement. q just serves to
" annoy me, otherwise.
map q <Nop>

" re-flow entire paragraph
nmap Q gqap

" http://nvie.com/posts/how-i-boosted-my-vim/
" Finally, a trick by Steve Losh "for when you forgot to sudo before editing a
" file that requires root privileges (typically /etc/hosts). This lets you use
" w!! to do that after you opened the "file already:
cmap w!! w !sudo tee % >/dev/null

" Enable mouse mode. Use xterm >= 277 for mouse mode for large terms.
set mouse=a

" abbreviations
ab teh the
ab THe The
ab eb be

" Hide toolbar by default
if has("gui_running")
	set guioptions=egmrt
endif

" max. number of tabs open at once. I use a large term.
set tabpagemax=20

" disable useless viminfo files
set viminfo=

" open help in new tab
cabbrev help tab help

" abbreviate messages in every way to avoid hit-enter prompt
set shortmess=a
