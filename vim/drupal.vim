" Drupal 相关配置
autocmd BufNewFile,BufRead *.module,*.install,*.test,*.inc,*.profile,*.view set filetype=php | call SetDrupalOptions()
autocmd BufNewFile,BufRead *.js,*.css call SetDrupalOptions()
autocmd BufNewFile,BufRead *.info set filetype=dosini

function! SetDrupalOptions()
    set tabstop=2
    set shiftwidth=2
    if &filetype == "php"
        let g:syntastic_php_phpcs_args = "--standard=Drupal --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt,md'"
    else
        let g:syntastic_php_phpcs_args = ""
    endif
    " exec 'normal gg=G'
endfunction
