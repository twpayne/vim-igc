igc.vim
=======

VIM syntax hightlighting for IGC files
Copyright &copy; Tom Payne 2010


Installation
============

1. Copy `igc.vim` to `~/.vim/syntax`.

2. Add the following lines to your `~/.vimrc`:

        au BufNewFile,BufRead *.igc setlocal filetype=igc
        au BufNewFile,BufRead *.IGC setlocal filetype=igc
