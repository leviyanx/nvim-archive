
" ========================
" === plugin (windows) ===
" ========================
if has('win32')

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

call plug#end()

" ======
" ====== settings (windows)
" ======
set relativenumber



" =====================
" === plugin (unix) ===
" =====================
elseif has('unix')

" Auto load for first time uses
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf.vim' " fzf

" theme 
Plug 'dracula/vim', {'as': 'dracula'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'

" vim markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc' " toc

" markdown preview
Plug 'iamcco/markdown-preview.nvim'

" ultisnippet
Plug 'SirVer/ultisnips'

" number
Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()



" ======
" ====== settings (unix)
" ======
set number relativenumber


" ===
" python support
" ===
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'


" latex math format
let g:vim_markdown_math = 1  


" ===
" markdown preview
" ===
" path of chromium to preview markdown
let g:mkdp_path_to_chrome = 'firefox'    
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '?${name}?'


" ===
" snippet
" ===
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/Ultisnips/']

endif " end os 
