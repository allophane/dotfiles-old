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
  Plug 'tpope/vim-rails'

  " From junegunn
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/vim-emoji'

  " UI
  "Plug 'allophane/vim-theme-frigid'
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'


  " Syntax
  Plug 'pangloss/vim-javascript'
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
  Plug 'raichoo/purescript-vim'
  Plug 'chr4/nginx.vim'
  Plug 'tbastos/vim-lua'
  Plug 'jparise/vim-graphql'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tikhomirov/vim-glsl'
  Plug 'fsharp/vim-fsharp', { 'for': 'fsharp', 'do':  'make fsautocomplete' }
  " Linting
  Plug 'w0rp/ale'
  " Git
  Plug 'rhysd/git-messenger.vim'
  " Snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  " Editing
  Plug 'scrooloose/nerdcommenter'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'jiangmiao/auto-pairs'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'matze/vim-move'
  Plug 'kshenoy/vim-signature'
  " Misc
  Plug 'ron89/thesaurus_query.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'jamessan/vim-gnupg'
  Plug 'mhinz/vim-startify'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ryanoasis/vim-devicons'

call plug#end()
