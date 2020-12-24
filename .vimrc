" use visual bell instead of beeping
set vb

" incremental search
set incsearch

" syntax highlighting
set bg=light
syntax on
autocmd BufEnter *.ctp set syn=php

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showmatch
set number

" dont use Q for Ex mode
map Q :q

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

" comment/uncomment blocks of code (in vmode)
vmap _c :s/^/#/gi<Enter>
vmap _C :s/^#//gi<Enter>

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

nmap <silent> ` :NERDTreeToggle<CR>
nmap <silent> <C-f> :FufFile<CR>

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

set keywordprg=pman

map <C-B> :!php -l %<CR>
