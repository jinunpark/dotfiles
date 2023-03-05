nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require("telescope").load_extension "file_browser"
nnoremap <leader>fr <cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>
