" save fzf history in $VIMPATH
let g:fzf_history_dir = $VIMPATH.'/.fzf-history'

" prepend FZF to commands
let g:fzf_command_prefix = 'FZF'

" jump to the existing window if possible
let g:fzf_buffers_jump = 1

" preview files using highlight
let g:fzf_files_options = printf('--preview "%s {} | head -'.&lines.'"',
  \ g:plugs['fzf.vim'].dir.'/bin/preview.sh')

" cat /usr/share/dict/words
imap <C-X><C-K> <Plug>(fzf-complete-word)

" path completion using find (file + dir)
imap <C-X><C-F> <Plug>(fzf-complete-path)

" file completion using ag
imap <C-X><C-J> <Plug>(fzf-complete-file-ag)

" line completion (current buffer only)
imap <C-X><C-L> <Plug>(fzf-complete-line)

" open files from CWD
nnoremap <silent> <leader>o :FZFFiles<CR>

" select buffer
nnoremap <silent> <leader>lz :FZFBuffers<CR>

" select marks
nnoremap <silent> <M-`> :FZFMarks<CR>

" search lines in current buffer
nnoremap <silent> <M-f> :FZFBLines<CR>

" search lines in loaded buffers
nnoremap <silent> <M-F> :FZFLines<CR>

" simple MRU file search
nnoremap <silent> <M-m> :FZFHistory<CR>

" hide statusline when fzf starts in a :terminal buffer
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" vim: set filetype=vim foldmethod=marker foldlevel=0 nowrap:
