autocmd FileType rust let test#strategy = "neovim"
autocmd FileType rust nmap stt :TestNearest<CR>
autocmd FileType rust nmap stf :TestFile<CR>
