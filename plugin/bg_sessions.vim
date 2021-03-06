command! -nargs=? -complete=customlist,bg_sessions#SessionComplete SaveSession call bg_sessions#SaveSession(<q-args>)
command! -nargs=? -complete=customlist,bg_sessions#SessionComplete LoadSession call bg_sessions#LoadSession(<q-args>)
command! -nargs=1 -complete=customlist,bg_sessions#SessionComplete DeleteSession call bg_sessions#DeleteSession(<q-args>)
command! Sessions call bg_sessions#Sessions()
command! CurrentSession call bg_sessions#CurrentSession()

augroup bg_sessions
    autocmd!
    autocmd BufEnter,VimLeave * call bg_sessions#SaveLastSession()
    autocmd BufEnter,VimLeave * call bg_sessions#SaveCurrentSession()
augroup END
