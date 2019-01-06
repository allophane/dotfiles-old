set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

let plugged_dir = $HOME . "/.vim/plugged"

call plug#begin(plugged_dir)

  " From tpope
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-vinegar'
  " From junegunn
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  " UI
  Plug 'arcticicestudio/nord-vim'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Syntax
  Plug 'pangloss/vim-javascript'
  Plug 'kshenoy/vim-signature'
  Plug 'heavenshell/vim-jsdoc'
  Plug 'othree/jsdoc-syntax.vim'
  Plug 'posva/vim-vue'
  Plug 'tpope/vim-markdown'
  Plug 'elmcast/elm-vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'kylef/apiblueprint.vim'
  Plug 'digitaltoad/vim-pug'
  Plug 'ledger/vim-ledger'
  Plug 'mxw/vim-jsx'
  Plug 'frigoeu/psc-ide-vim'
  Plug 'raichoo/purescript-vim'
  " Linting
  " Plug 'w0rp/ale'
  Plug 'vim-syntastic/syntastic'
  Plug 'metakirby5/codi.vim'
  " Editing
  Plug 'scrooloose/nerdcommenter'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'jiangmiao/auto-pairs'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'terryma/vim-multiple-cursors'
  " Misc
  Plug 'editorconfig/editorconfig-vim'
  Plug 'jamessan/vim-gnupg'
  Plug 'mhinz/vim-startify'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'benmills/vimux'
  Plug 'fishman/vimux-repl'
  Plug 'ryanoasis/vim-devicons'
  " Plug 'beloglazov/vim-online-thesaurus'

call plug#end()
