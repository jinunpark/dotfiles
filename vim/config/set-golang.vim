let g:go_addtags_transform = "camelcase"
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_template_autocreate = 0

let g:go_info_mode='guru'

let g:go_term_enabled = 0
let g:go_term_mode = "10split"
let g:go_term_reuse = 0

" vim-go 의 snippets가 작동하지 않도록 한다. 나는 내 ultisnips 설정을 쓴다.

" johngrib 님은 ultisnips를 많이 쓰기 때문에, snippet을 꺼 두었지만
" 나는 쓰지 않으므로 아래 옵션을 해제하고, 원하는 snippet을 쓸 때 다시
" 결정하기로 한다.

" let g:go_loaded_gosnippets = 1


augroup vim_golang_coc
    let g:go_def_mapping_enabled = 0
    autocmd FileType go nmap <silent> <C-]> <Plug>(coc-definition)
    autocmd FileType go nmap <silent> gy <Plug>(coc-type-definition)
    autocmd FileType go nmap <silent> gr <Plug>(coc-references)
    autocmd VimLeavePre go TagbarClose
augroup END

augroup vim_vim_go
    autocmd FileType go nmap s? :vs ~/dotfiles/nvim/vim-include/set-golang.vim<CR>

    " Eval And Execute Code: - "se"
    autocmd FileType go nnoremap seb :GoBuild<CR>
    autocmd FileType go nnoremap sef :GoRun %<CR>
    autocmd FileType go nnoremap ser :GoRun<CR>

    autocmd FileType go nnoremap sta :GoTest<CR>
    autocmd FileType go nnoremap stt :GoTestFunc<CR>

    " Code Typing: - "sc"
    autocmd FileType go nmap <silent> scr <Plug>(coc-rename)
    autocmd FileType go nnoremap sci :GoImport<Space>

    " Code Analyse: - "sa"
    autocmd FileType go nnoremap sak :GoDoc<CR>
    autocmd FileType go nnoremap saK :GoDocBrowser<CR>
    autocmd FileType go nnoremap <Tab>c :GoCoverageToggle<CR>
    autocmd FileType go nmap sal :GoLint<CR>

    " Testing: - "st"
    autocmd FileType go nnoremap st' :GoAlternate<CR>
    autocmd FileType go nnoremap st` :CocCommand go.test.toggle<CR>

    " Find: - "s/"
    " 파일의 모든 function과 type declaration을 검색한다.
    autocmd FileType go nnoremap sff :GoDecls<SPACE>
    autocmd FileType go nnoremap sf/ :GoDeclsDir<SPACE>

    " Insert Mode:
    autocmd FileType go inoremap <C-f> <Esc>:let @z=@/<CR>/\v[)"}]<CR>:let @/=@z<CR>a
    autocmd FileType go inoremap <C-b> <Esc>:let @z=@/<CR>?\v[("{]<CR>:let @/=@z<CR>i

    " Etc:
    autocmd FileType go setlocal nolist
    autocmd FileType go setlocal colorcolumn=81
augroup END

" autocmd FileType go nnoremap <Tab>i :GoInfo<CR>
set updatetime=100

let $GINKGO_EDITOR_INTEGRATION = "true"
