" Essentially took Derek Wyatt's .vimrc and heavily modified it through the
" years. Added various things, removed what I didn't like, etc.
"----------------------------------------------------------------------------
"Global Stuff
"-----------------------------------------------------------------------------

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" set numbers

set number

" Tabstops are 4 spaces
set tabstop=2
set shiftwidth=2

" set the search scan to wrap lines
set wrapscan

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" set the forward slash to be the slash of note.  Backslashes suck
set shellslash

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Set the status line the way i like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=ac

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=12

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" These things start comment lines
"set comments=sl:/*,mb:\ *,ex:\ */,O://,b:#,:%,:XCOMM,n:>,fb:-

" Disable encryption (:X)
set key=

" Make the command-line completion better
set wildmenu

" Same as default except that I remove the 'u' option
set complete=.,w,b,t

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 120 chars
set textwidth=120

" get rid of the silly characters in window separators
set fillchars=""

" Turn tabs into spaces
" set noexpandtab
set expandtab

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Initial path seeding
set path=
set path+=/usr/local/include/**
set path+=/usr/include/**
set path+=~/code/**

" Set the tags files to be the following
set tags=./tags,tags

" Let the syntax highlighting for Java files allow cpp keywords
let java_allow_cpp_keywords = 1

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

" allow command line editing like emacs
cnoremap <C-A>      <Home>
cnoremap <C-B>      <Left>
cnoremap <C-E>      <End>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <End>
cnoremap <C-P>      <Up>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>

" Maps to make handling windows a bit easier
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>
noremap <silent> ,sb :wincmd p<CR>
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
noremap <silent> ,s8 :vertical resize 83<CR>
noremap <silent> ,cj :wincmd j<CR>:close<CR>
noremap <silent> ,ck :wincmd k<CR>:close<CR>
noremap <silent> ,ch :wincmd h<CR>:close<CR>
noremap <silent> ,cl :wincmd l<CR>:close<CR>
noremap <silent> ,cc :close<CR>
noremap <silent> ,cw :cclose<CR>
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J
noremap <silent> <C-7> <C-W>>
noremap <silent> <C-8> <C-W>+
noremap <silent> <C-9> <C-W>+
noremap <silent> <C-0> <C-W>>

" Map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Make horizontal scrolling easier
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh

" Highlight all instances of the current word under the cursor
" nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>

" Search the current file for what's currently in the search
" register and display matches
nmap <silent> ,gs
      \ :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the word under the cursor and display matches
nmap <silent> ,gw
      \ :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nmap <silent> ,gW
      \ :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
" Store the bookmarks file in perforce
let NERDTreeBookmarksFile="~/.vim/NERDTreeBookmarks"

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
      \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
      \ '\.embed\.manifest$', '\.embed\.manifest.res$',
      \ '\.intermediate\.manifest$', '^mt.dep$' ]

map <Leader>n :NERDTreeToggle<CR>



"-----------------------------------------------------------------------------
" Functions
"-----------------------------------------------------------------------------

function! RunSystemCall(systemcall)
  let output = system(a:systemcall)
  let output = substitute(output, "\n", '', 'g')
  return output
endfunction

"-----------------------------------------------------------------------------
" Fix constant spelling mistakes
"-----------------------------------------------------------------------------

iab teh       the
iab Teh       The
iab taht      that
iab Taht      That
iab alos      also
iab Alos      Also
iab aslo      also
iab Aslo      Also
iab becuase   because
iab Becuase   Because
iab bianry    binary
iab Bianry    Binary
iab bianries  binaries
iab Bianries  Binaries
iab charcter  character
iab Charcter  Character
iab charcters characters
iab Charcters Characters
iab exmaple   example
iab Exmaple   Example
iab exmaples  examples
iab Exmaples  Examples
iab shoudl    should
iab Shoudl    Should
iab seperate  separate
iab Seperate  Separate
iab fone      phone
iab Fone      Phone
iab sop     System.out.println

"-----------------------------------------------------------------------------
" Set up the window colors and size
"-----------------------------------------------------------------------------
"colorscheme solarized
if has("gui_running")
  colorscheme Tomorrow-Night
else
  set background=dark
  colorscheme solarized
endif

:nohls

 "change esc
 imap jj <Esc>

 "next method remap
 map mm ]m
 map MM [m

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"ruby
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold


"Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
"nnoremap <Leader>u :ls<CR>
nnoremap <Leader>e :bp<CR>
nnoremap <Leader>o :bn<CR>
nnoremap <Leader>a :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" easymotion
"let g:EasyMotion_keys = '1234567890'
"let g:EasyMotion_do_shade = 0
let g:EasyMotion_leader_key = '<Leader>'
" let g:EasyMotion_leader_key = 'f'
map f <Leader>f
map F <Leader>F

" remapping e to _e to avoid conflicts 
" with my buffer scrolling
let g:EasyMotion_mapping_e = '_e'

nnoremap <leader>' :Ack 
nnoremap <leader>, :CommandT<CR>
nnoremap <leader>x :BufOnly<CR>
nnoremap <leader>q :Bclose<CR>

" Cmd-Shift-R for RSpec
nmap <silent> <D-R> :call RunRspecCurrentFileConque()<CR>
" Cmd-r for RSpec Current Line
nmap <silent> <D-r> :call RunRspecCurrentLineConque()<CR>

" Cmd-Shift-C for Cucumber
nmap <silent> <D-C> :call RunCucumberCurrentFileConque()<CR>
" Cmd-c for Cucumber Current Line
nmap <silent> <D-c> :call RunCucumberCurrentLineConque()<CR>

nnoremap <leader><tab> :Scratch<CR>
nnoremap <leader>. :LustyBufferGrep<CR>
nnoremap <Leader>u :LustyBufferExplorer<CR>

let g:LustyExplorerSuppressRubyWarning = 1

" tabing
set ts=8 sts=2 sw=2

" set period on trailing whitespace 
set list listchars=tab:\ \ ,trail:·

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Disable swap files - trying it out for now
set noswapfile

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" Tagbar toggle
map <Leader>= :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_autofocus=1

" Remember last location in file
" I LOVE THIS
if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>h :e <C-R>=expand("%:p:h") . "/" <CR>

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" automatically update buffer
" I LOVE THIS
set autoread

" :80D deletes a line in location 80
command! -range -nargs=0 D <line1>,<line2>d|norm ``

" cp yanks the path of the file
map cp :let @+ = expand("%:p")<CR>

" copies all yanking to clipboard
set clipboard=unnamed

" map that aligns on '=' marks
vnoremap <C-a> :Tabularize /=<CR>

" switch the mapping of 0 and ^
" since it's a little easier to
" reach and more useful IMHO
noremap 0 ^
noremap ^ 0

" lets command-t search through more files
let g:CommandTMaxFiles = 50000

" sets files for command-t to ignore
set wildignore+=.git,.svn,.log,*.png,*.jpg

" Disable plugins list
" There are a couple of plugins
" I'm just keeping around because
" I may want to use them later
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-asynccommand')
if !has("gui_running")
  call add(g:pathogen_disabled, 'vim-powerline')
else
  "set gfn=DejaVu\ Sans\ Mono:h12
  "set gfn=Menlo\ Bold:h12
  set gfn=Menlo:h12
endif

" this removes all the ruby deduggers in all buffers
map <Leader>d :bufdo g/^\s*debugger\s*$\\|^\s*binding.pry\s*$/d \| update <CR>

" swap 2 words
:nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>

call pathogen#infect()
call pathogen#helptags()
