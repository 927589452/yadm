"mastering vim quickly
set nocompatible


call plug#begin('~/.vim/plugged')
"
"   " Make sure you use single quotes
"
Plug 'pearofducks/ansible-vim'
Plug 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }

Plug 'lervag/vimtex'
"   " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"
"   " Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"   " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"   " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"   Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"   " Using a non-master branch
"   Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
"   " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"   Plug 'fatih/vim-go', { 'tag': '*' }
"
"   " Plugin options
"   Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
"   " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"   " Unmanaged plugin (manually installed and updated)
"   Plug '~/my-prototype-plugin'

Plug 'dhruvasagar/vim-table-mode'

"
Plug 'vim-scripts/c.vim'

"Todo management
Plug 'freitass/todo.txt-vim'

"Unicode search and  completion
Plug 'chrisbra/unicode.vim'
"
"enhanced whitespace highlighting
Plug 'ntpeters/vim-better-whitespace'

"better recovery
Plug 'chrisbra/Recover.vim'

Plug 'jreybert/vimagit'

"realpython
Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-syntastic/syntastic'
Plug 'jistr/vim-nerdtree-tabs'



"Plug 'vim-scripts/VimIRC.vim'
Plug 'welle/targets'
"   " Initialize plugin system
call plug#end()
"


"highlight hint add special chars
set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
set list
"indentation
set tabstop=8



"http://is.gd/IBV2013
highlight ColorColumn ctermbg=magenta
"set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)

"http://www.lukesmith.xyz/conf/.vimrc
set number
set relativenumber
set so=10

"""BASIC TOOLS
"Navigating with guides
inoremap <Space><<Space><Space> <Esc>/(<>)<Enter>"_c4l
"inoremap <Space><Space><<Backspace> (<>)<Esc>/(<>)<Enter>"_c4l
vnoremap <Space><<Space><Space> <Esc>/(<>)<Enter>"_c4l
map <Space><<Space><Space> <Esc>/(<>)<Enter>"_c4l
inoremap ;gui (<>)
"For normal mode when in terminals (in X I have caps mapped to esc, this replaces it when I don't have X)
inoremap jw <Esc>
inoremap wj <Esc>
"Easy saving
inoremap <C-s> <Esc>:w!<Enter>i
nnoremap <C-s> :w!<Enter>
"Spell-check set to F7
map <F7> :setlocal spell! spelllang=de_DE<CR>
"""END


"""LATEX
"autocmd FileType tex nnoremap <C-p> :w<Enter>:!/home/kulade/Documents/latex/compile.sh<Space><C-R>%<Backspace><Backspace><Backspace><Backspace><Enter><Enter>
autocmd FileType tex nnoremap <C-p> :w<Enter>:!(setsid<Space>pdflatex<Space><C-R>%<Space>&><space>/dev/null&)<Enter><Enter>
autocmd FileType tex nnoremap <C-t> :w<Enter>:!bibtex<Space><C-R>%<Backspace><Backspace><Backspace><Backspace><Enter>
autocmd FileType tex nnoremap <C-o> :!<Space>setsid<Space>evince<Space><C-R>%<Backspace><Backspace><Backspace>pdf<Space>&><Space>/dev/null<Space>&<Enter><Enter>

autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter>(<>)<Enter><Enter>\end{frame}<Enter><Enter>(<>)<Esc>6kf}i
autocmd FileType tex inoremap ;fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter>(<>)<Esc>3kA
autocmd FileType tex inoremap ;exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter>(<>)<Esc>3kA
autocmd FileType tex inoremap ;em \emph{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;it \textit{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;ct \citet{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;p \citep{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;glos {\gll<Space>(<>)<Space>\\<Enter>(<>)<Space>\\<Enter>\trans{``(<>)''}}<Esc>2k2bcw
autocmd FileType tex inoremap ;x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter>(<>)<Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter>(<>)<Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ref \ref{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;ta \begin{tabular}<Enter>(<>)<Enter>\end{tabular}<Enter><Enter>(<>)<Esc>4kA{}<Esc>i
autocmd FileType tex inoremap ;tab \begin{tableau}<Enter>\inp{(<>)}<Tab>\const{(<>)}<Tab>(<>)<Enter>(<>)<Enter>\end{tableau}<Enter><Enter>(<>)<Esc>5kA{}<Esc>i
autocmd FileType tex inoremap ;can \cand{}<Tab>(<>)<Esc>T{i
autocmd FileType tex inoremap ;con \const{}<Tab>(<>)<Esc>T{i
autocmd FileType tex inoremap ;v \vio{}<Tab>(<>)<Esc>T{i
autocmd FileType tex inoremap ;a \href{}{(<>)}<Space>(<>)<Esc>2T{i
autocmd FileType tex inoremap ;sc \textsc{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter>(<>)<Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter>(<>)<Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter>(<>)<Esc>2kf}i
autocmd FileType tex inoremap ;st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap ;beg \begin{%DELRN%}<Enter>(<>)<Enter>\end{%DELRN%}<Enter><Enter>(<>)<Esc>4kfR:MultipleCursorsFind<Space>%DELRN%<Enter>c
"autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
autocmd FileType tex inoremap ;up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex nnoremap ;up /usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex inoremap ;tt \texttt{}<Space>(<>)<Esc>T{i
autocmd FileType tex inoremap ;bt {\blindtext}
autocmd FileType tex inoremap ;nu $\varnothing$
autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter>(<>)<Enter>\end{column}<Enter>\end{columns}<Esc>5kA
"""END

"""Math Stuff
autocmd FileType tex inoremap ;arr \begin{array}{<Space>(<>)}
autocmd FileType tex inoremap ;bmat \begin{bmatrix}
autocmd FileType tex inoremap ;pmat \begin{pmatrix}
autocmd FileType tex inoremap ;lem \begin{lem}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;def \begin{defn}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;pro \begin{propt}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;bsp \begin{bsp}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;kor \begin{kor}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;thm \begin{thm}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;satz \begin{satz}[<Space>(<>)]<Enter>(<>)<Esc>2ki
autocmd FileType tex inoremap ;bem \begin{bem}[<Space>(<>)]<Enter>(<>)<Esc>2ki

autocmd FileType tex inoremap ;nota \begin{nota}[<Space>(<>)]<Enter>(<>)<Esc>2ki


"""Logical Symbols
"autocmd FileType tex inoremap ;m $$<Space>(<>)<Esc>2T$i
autocmd FileType tex inoremap ;eqn \begin{equation}<Enter>
autocmd FileType tex inoremap ;eqna \begin{eqnarray}<Enter>
autocmd FileType tex inoremap ;m \begin{math}<Enter>
autocmd FileType tex inoremap ;M $$<Esc>i
autocmd FileType tex inoremap ;neg {\neg}
autocmd FileType tex inoremap ;V {\vee}
autocmd FileType tex inoremap ;or {\vee}
autocmd FileType tex inoremap ;L {\wedge}
autocmd FileType tex inoremap ;and {\wedge}
autocmd FileType tex inoremap ;ra {\Rightarrow}
autocmd FileType tex inoremap ;la {\Leftarrow}
autocmd FileType tex inoremap ;lra {\Leftrightarrow}
autocmd FileType tex inoremap ;fa {\forall}
autocmd FileType tex inoremap ;ex {\exists}
autocmd FileType tex inoremap ;dia	{\Diamond}
autocmd FileType tex inoremap ;box	{\Box}
"""END


"""HTML
autocmd FileType html inoremap ;b <b></b><Space>(<>)<Esc>FbT>i
autocmd FileType html inoremap ;i <em></em><Space>(<>)<Esc>FeT>i
autocmd FileType html inoremap ;h1 <h1></h1><Enter><Enter><p>(<>)<Esc>2k2hi
autocmd FileType html inoremap ;h2 <h2></h2><Enter><Enter><p>(<>)<Esc>2k2hi
autocmd FileType html inoremap ;h3 <h3></h3><Enter><Enter><p>(<>)<Esc>2k2hi
autocmd FileType html inoremap ;p <p></p><Enter><Enter>(<>)<Esc>02kf>a
autocmd FileType html inoremap ;a <a<Space>href="">(<>)</a><Space>(<>)<Esc>14hi
autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter>(<>)<Esc>03kf<i
autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter>(<>)<Esc>03kf<i

"""END

""".bib
autocmd FileType bib inoremap ;a @article{<Enter>author<Space>=<Space>{(<>)},<Enter>year<Space>=<Space>{(<>)},<Enter>title<Space>=<Space>{(<>)},<Enter>journal<Space>=<Space>{(<>)},<Enter>volume<Space>=<Space>{(<>)},<Enter>pages<Space>=<Space>{(<>)},<Enter>}<Enter>(<>)<Esc>8kA,<Esc>i
autocmd FileType bib inoremap ;b @book{<Enter>author<Space>=<Space>{(<>)},<Enter>year<Space>=<Space>{(<>)},<Enter>title<Space>=<Space>{(<>)},<Enter>publisher<Space>=<Space>{(<>)},<Enter>}<Enter>(<>)<Esc>6kA,<Esc>i
autocmd FileType bib inoremap ;c @incollection{<Enter>author<Space>=<Space>{(<>)},<Enter>title<Space>=<Space>{(<>)},<Enter>booktitle<Space>=<Space>{(<>)},<Enter>editor<Space>=<Space>{(<>)},<Enter>year<Space>=<Space>{(<>)},<Enter>publisher<Space>=<Space>{(<>)},<Enter>}<Enter>(<>)<Esc>8kA,<Esc>i
"""END


au BufWinLeave * mkview
au BufWinEnter * silent loadview


"""vimtex
let g:vimtex_view_method = 'mupdf'

""https://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names#526940
set wildmode=longest,list,full
set wildmenu

"https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Undodir according to https://jovicailic.org/2017/04/vim-persistent-undo/
set undodir=~/.vim/undodir

" mastering vim quickly 12
" enable project specific vimrc
set exrc

"mastering vim quickly vim explorer
let g:netrw_browse_split = 4
"need to tweak the following
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

"
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set ruler
set visualbell
set tabpagemax=40

"scroll offset
set scrolloff=3
set sidescrolloff=5

"spelling
set spell
set spelllang=de_de,en_us,en_gb,de,en,tex,medical,math,de_med,en_med,eo

"show  statusline
set laststatus=2
set statusline=%t	"tail of filename
set statusline+=%{&ff}	"file format
set statusline+=%h	"help file flag
set statusline+=%m	"modified flag
set statusline+=%r	"read only flag
set statusline+=%y	"file type
set statusline+=%c	"cursor column
set statusline+=%l/%L	"cursor line/total line
set statusline+=\ %P	"percent through file

"centralized swap files
set directory=$HOME/.vim/swp//
set backupdir=$HOME/.vim/backup//

"longterm undo
set undofile
set undodir=$HOME/.vim/undodir

"show folds
set foldcolumn=4

"LateX tweaks
"https://wiki.ubuntuusers.de/VIM/Tipps/
let g:Tex_CompileRule_pdf = 'mkdir -p out && pdflatex -output-directory=out -interaction=nonstopmode $* && mv out/$*.pdf .'
filetype plugin on
filetype indent on
au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
"let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'evince'


"Latex stuff

let g:matchup_override_vimtex = 1

"Highlight Trailing Whitespace
match ErrorMsg '\s\+$'
"remove trailing whitespace automtically
autocmd BufWritePre * :%s/\s\+$//e


"https://realpython.com/vim-and-python-a-match-made-in-heaven/
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

""python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
    "project_base_dir = os.environ['VIRTUAL_ENV']
    "activate_this = os.path.join(project_base_dir,
    "'bin/activate_this.py')
    "execfile(activate_this, dict(__file__=activate_this))
"EOF
"
