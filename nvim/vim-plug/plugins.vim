"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall
autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

 call plug#begin('~/.config/nvim/autoload/plugged')
"	 Better Syntax Support
          Plug 'sheerun/vim-polyglot'
          " File Explorer
          Plug 'scrooloose/NERDTree'
          " Auto pairs for '(' '[' '{'
          Plug 'jiangmiao/auto-pairs'
          "Themes"
          Plug 'vim-airline/vim-airline' 
          Plug 'vim-airline/vim-airline-themes'
          "You complete me"
          "Plug 'valloric/youcompleteme'
          "jedi autocmpleter"
          Plug 'davidhalter/jedi-vim'
          " Stable version of coc
          Plug 'neoclide/coc.nvim', {'branch': 'release'}
          " Keeping up to date with master
          Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
          "Plugin 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
          Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
          Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
          Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
          Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
          
          "FloatTerm
          Plug 'voldikss/vim-floaterm'

          "Plug 'lokaltog/vim-powerline'


call plug#end()
