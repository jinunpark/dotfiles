let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_dir_link = 'index'

autocmd FileType vimwiki setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType vimwiki nnoremap <Leader>wk :!pandoc -f gfm -t docx -o '%:p:r.docx' %:p
autocmd FileType vimwiki nnoremap <Leader>t :VimwikiToggleListItem<CR>

lua require("telescope").load_extension "vimwiki"
autocmd FileType vimwiki nnoremap <Leader>wf <cmd>lua require('telescope').extensions.vimwiki.vimwiki()<cr>
autocmd FileType vimwiki nnoremap <Leader>wg <cmd>lua require('telescope').extensions.vimwiki.live_grep()<cr>
autocmd FileType vimwiki nnoremap <Leader>wl :Telescope vimwiki link<cr>
