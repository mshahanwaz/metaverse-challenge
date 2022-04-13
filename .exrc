if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <BS> coc#_insert_key('request', 'iPGJzPg==0')
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <C-W> u
inoremap <C-U> u
inoremap <silent> <expr> <C-@> coc#refresh()
inoremap <silent> <expr> <Nul> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
nnoremap <silent>  :TmuxNavigateLeft
snoremap <silent>  c
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
nnoremap <silent> <NL> :TmuxNavigateDown
nnoremap <silent>  :TmuxNavigateUp
map  :NERDTreeToggle
nnoremap <silent>  :TmuxNavigateRight
nnoremap  :Files
snoremap  "_c
xmap <silent>  <Plug>(coc-range-select)
nmap <silent>  <Plug>(coc-range-select)
nnoremap <silent>  :TmuxNavigatePrevious
nnoremap <nowait> <silent>  p :CocListResume
nnoremap <nowait> <silent>  k :CocPrev
nnoremap <nowait> <silent>  j :CocNext
nnoremap <nowait> <silent>  s :CocList -I symbols
nnoremap <nowait> <silent>  o :CocList outline
nnoremap <nowait> <silent>  c :CocList commands
nnoremap <nowait> <silent>  e :CocList extensions
nnoremap <nowait> <silent>  a :CocList diagnostics
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nmap ,cl <Plug>(coc-codelens-action)
nmap ,qf <Plug>(coc-fix-current)
nmap ,ac <Plug>(coc-codeaction)
nmap ,a <Plug>(coc-codeaction-selected)
xmap ,a <Plug>(coc-codeaction-selected)
nmap ,f <Plug>(coc-format-selected)
xmap ,f <Plug>(coc-format-selected)
nmap ,rn <Plug>(coc-rename)
xmap < <gv
xmap > >gv
xnoremap J :m '>+1gv=gv
xnoremap K :m '<-2gv=gv
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
xmap a% <Plug>(MatchitVisualTextObject)
omap ac <Plug>(coc-classobj-a)
xmap ac <Plug>(coc-classobj-a)
omap af <Plug>(coc-funcobj-a)
xmap af <Plug>(coc-funcobj-a)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
omap ic <Plug>(coc-classobj-i)
xmap ic <Plug>(coc-classobj-i)
omap if <Plug>(coc-funcobj-i)
xmap if <Plug>(coc-funcobj-i)
xnoremap <silent> <Plug>(coc-git-chunk-outer) :call coc#rpc#request('doKeymap', ['git-chunk-outer'])
onoremap <silent> <Plug>(coc-git-chunk-outer) :call coc#rpc#request('doKeymap', ['git-chunk-outer'])
xnoremap <silent> <Plug>(coc-git-chunk-inner) :call coc#rpc#request('doKeymap', ['git-chunk-inner'])
onoremap <silent> <Plug>(coc-git-chunk-inner) :call coc#rpc#request('doKeymap', ['git-chunk-inner'])
nnoremap <silent> <Plug>(coc-git-commit) :call coc#rpc#notify('doKeymap', ['git-commit'])
nnoremap <silent> <Plug>(coc-git-chunkinfo) :call coc#rpc#notify('doKeymap', ['git-chunkinfo'])
nnoremap <silent> <Plug>(coc-git-keepboth) :call coc#rpc#notify('doKeymap', ['git-keepboth'])
nnoremap <silent> <Plug>(coc-git-keepincoming) :call coc#rpc#notify('doKeymap', ['git-keepincoming'])
nnoremap <silent> <Plug>(coc-git-keepcurrent) :call coc#rpc#notify('doKeymap', ['git-keepcurrent'])
nnoremap <silent> <Plug>(coc-git-prevconflict) :call coc#rpc#notify('doKeymap', ['git-prevconflict'])
nnoremap <silent> <Plug>(coc-git-nextconflict) :call coc#rpc#notify('doKeymap', ['git-nextconflict'])
nnoremap <silent> <Plug>(coc-git-prevchunk) :call coc#rpc#notify('doKeymap', ['git-prevchunk'])
nnoremap <silent> <Plug>(coc-git-nextchunk) :call coc#rpc#notify('doKeymap', ['git-nextchunk'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
xnoremap <silent> <Plug>(coc-convert-snippet) :call coc#rpc#notify('doKeymap', ['convert-snippet'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <C-Bslash> :TmuxNavigatePrevious
nnoremap <silent> <C-K> :TmuxNavigateUp
nnoremap <silent> <C-J> :TmuxNavigateDown
nnoremap <silent> <C-H> :TmuxNavigateLeft
snoremap <C-R> "_c
snoremap <silent> <C-H> c
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
onoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Method', 'Function'])
onoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Method', 'Function'])
nnoremap <silent> <Plug>(coc-cursors-position) :call CocAction('cursorsSelect', bufnr('%'), 'position', 'n')
nnoremap <silent> <Plug>(coc-cursors-word) :call CocAction('cursorsSelect', bufnr('%'), 'word', 'n')
vnoremap <silent> <Plug>(coc-cursors-range) :call CocAction('cursorsSelect', bufnr('%'), 'range', visualmode())
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-cursor) :call       CocActionAsync('codeAction',         'cursor')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction',         'line')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <silent> <C-L> :TmuxNavigateRight
xmap <silent> <C-S> <Plug>(coc-range-select)
nmap <silent> <C-S> <Plug>(coc-range-select)
nnoremap <C-P> :Files
map <C-K><C-K> :NERDTreeToggle
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
inoremap <silent> <expr>  pumvisible() ? coc#_select_confirm(): "\u\\=coc#on_enter()\"
inoremap  u
inoremap  u
inoremap <silent> <expr> " coc#_insert_key('request', 'iIg==0')
inoremap <silent> <expr> ' coc#_insert_key('request', 'iJw==0')
inoremap <silent> <expr> ( coc#_insert_key('request', 'iKA==0')
inoremap <silent> <expr> ) coc#_insert_key('request', 'iKQ==0')
inoremap <silent> <expr> < coc#_insert_key('request', 'iPA==0')
inoremap <silent> <expr> > coc#_insert_key('request', 'iPg==0')
inoremap <silent> <expr> [ coc#_insert_key('request', 'iWw==0')
inoremap <silent> <expr> ] coc#_insert_key('request', 'iXQ==0')
inoremap <silent> <expr> ` coc#_insert_key('request', 'iYA==0')
inoremap jk 
inoremap <silent> <expr> { coc#_insert_key('request', 'iew==0')
inoremap <silent> <expr> } coc#_insert_key('request', 'ifQ==0')
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set belloff=esc
set clipboard=unnamed,unnamedplus
set cmdheight=2
set complete=.,w,b,u,t
set directory=~/.vim//,.,~/tmp,/var/tmp,/tmp
set display=lastline
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=tcqj
set helplang=en
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:¦\ 
set mouse=a
set nrformats=bin,hex
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/vim-sensible,~/.vim/plugged/material.vim,~/.vim/plugged/nerdtree,~/.vim/plugged/fzf,~/.vim/plugged/fzf.vim,~/.vim/plugged/coc.nvim,~/.vim/plugged/vim-polyglot,~/.vim/plugged/lightline.vim,~/.vim/plugged/ultisnips,~/.vim/plugged/vim-snippets,~/.vim/plugged/vim-tmux-navigator,~/.config/coc/extensions/node_modules/coc-fzf-preview,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vim81/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/plugged/vim-polyglot/after,~/.vim/plugged/ultisnips/after,~/.vim/after
set scrolloff=1
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize,terminal
set shiftwidth=4
set shortmess=filnxtToOSAc
set showmatch
set sidescrolloff=5
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=%{coc#status()}%{get(b:,'coc_current_function','')}
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabline=%!lightline#tabline()
set tabpagemax=50
set tabstop=4
set tags=./tags;,./TAGS,tags,TAGS
set termguicolors
set ttimeout
set ttimeoutlen=100
set updatetime=300
set viewoptions=folds,cursor,curdir
set viminfo=!,'100,<50,s10,h
set wildmenu
set window=32
set nowritebackup
" vim: set ft=vim :
