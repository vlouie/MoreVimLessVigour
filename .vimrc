set ruler
set number

set mouse=a

syntax enable
set hls
set ts=4
set sw=4
set wildmode=longest,list
set ai
colo maroloccio

autocmd FocusGained * :set relativenumber
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

augroup myfiletypes
    " Clear out old autocmds in group.
    autocmd!

    " Set filetypes
    au BufNewFile,BufRead *.js.erb set filetype=javascript.ruby
    au BufNewFile,BufRead *.j setf objj
    au BufNewFile,BufRead Jakefile setf javascript
    au BufNewFile,BufRead *.god set filetype=ruby 

    " File type specific behaviour
    autocmd FileType cpp,php,ruby,eruby,yaml,html,xhtml,xml set sw=2 ts=2 expandtab
    autocmd FileType objj,javascript,javascript.ruby set sw=4 ts=4 expandtab
    autocmd FileType make set sw=8 ts=8 noexpandtab
augroup END
