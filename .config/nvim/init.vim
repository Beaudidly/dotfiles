call plug#begin()

"Plug 'Shougo/deoplete.nvim'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'scrooloose/nerdtree'
Plug 'zah/nim.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set ruler
set showcmd
set showmode

filetype plugin indent on
set number

" nim
fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Airline
" remove seperators
let g:airline_left_sep=''
let g:airline_right_sep=''
" remove unused modes
let g:airline_enable_branch=0
let g:airline_enable_syntastic=0
" further customization
" disable whitespace/tabs detection
let g:airline_detect_whitespace=0
" set third section to filename
let g:airline_section_b="%f"
" empty third and fourth sections
let g:airline_section_c=""
let g:airline_section_x=""
" put filetype in fifth section
let g:airline_section_y="%Y"

" colorscheme
set t_CO=256
set background=dark
" colo atelier-cave
syntax on

"eclim play nice with YCM
let g:EclimCompletionMethod = 'omnifunc'

" Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

" deoplete enable
let g:deoplete#enable_at_startup = 1

" disable YCM asking everytime
let g:ycm_confirm_extra_conf = 0

let g:ycm_enable_diagnostic_highlighting = 0
