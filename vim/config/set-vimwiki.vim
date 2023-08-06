let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_dir_link = 'index'

autocmd FileType vimwiki setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType vimwiki nnoremap <Leader>wk :!pandoc -f gfm -t docx -o '%:p:r.docx' %:p
autocmd FileType vimwiki nnoremap <Leader>t :VimwikiToggleListItem<CR>
