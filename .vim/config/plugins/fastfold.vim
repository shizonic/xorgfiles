" disable update folds when saving the buffer
let g:fastfold_savehook = 0

" disable default normal mode mapping (zuz)
nmap <SID>(DisableFastFoldUpdate) <Plug>(FastFoldUpdate)

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
