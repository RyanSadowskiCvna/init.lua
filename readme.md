work setup for nvim

# .ideavimrc
```
let mapleader=" "
set number
set tabstop=4
set ignorecase
set smartcase
set showmode
set so=5
set incsearch
set nu
set commentary
set clipboard+=unnamedplus
set undofile
set undodir=~/.ideavim/undodir

nnoremap <leader>ca :action ShowIntentionActions<CR>
nnoremap <leader>cf :action ReformatCode<CR>

noremap <leader>ss :action SplitVertically<CR>
noremap <leader>sv :action SplitHorizontally<CR>

nnoremap <leader>tn :action NextTab<CR>
nnoremap <leader>tp :action PreviousTab<CR>

nnoremap <leader>fg :action Vcs.QuickListPopupAction<CR>
nnoremap <leader>ff :action SearchEverywhere<CR>
nnoremap <leader>fu :action FindUsages<CR>

nnoremap <leader>gd :action GotoDeclaration<CR>
nnoremap <leader>gi :action GotoImplementation<CR>
nnoremap <leader>gt :action GotoTypeDeclaration<CR>

nnoremap <leader>e :action ActivateProjectToolWindow<CR>
nnoremap <leader>ec :action CloseActiveTab<CR>

nnoremap <leader>b :action Build<CR>
nnoremap <leader>r :action Run<CR>
nnoremap <leader>d :action Debug<CR>
nnoremap <leader>s :action Stop<CR>
```
