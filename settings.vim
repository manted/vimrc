" show file name
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))

" vroom
let g:vroom_use_vimux = 1
let g:vroom_clear_screen = 0
map ,rf :VroomRunTestFile<CR>
map ,rn :VroomRunNearestTest<CR>
map ,rl :VroomRunLastTest<CR>
map ,== gg=G

map <F5> :vsplit %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F1> :e 
map <F2> :lcd 
map <F3> :pwd<CR>
map <F4> :e.<CR>
map <D-]> <C-w>w
map <D-[> <C-w>W 
map <D-S-LEFT> <C-w>v
map <D-S-RIGHT> <C-w>v<C-w>w
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" nerd commenter https://github.com/scrooloose/nerdcommenter
map ,cc <plug>NERDCommenterToggle
map <CR><CR> :w<CR>
map ,qq :q<CR>
map ,vs :vs<CR>
map ,ff *
map ,fa :Ag!<space><cword><CR>
let NERDTreeShowHidden=1

" open NERDTree
map <C-n> :NERDTreeToggle<CR>

" ============ Search related =======================
map <leader>ag :Ag!<space>
