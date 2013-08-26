au BufNewFile,BufRead	*.hs set foldexpr=HaskellFold(v:lnum)
au BufNewFile,BufRead	*.hs set foldmethod=expr

au BufNewFile,BufRead	*.test set filetype=tcl

au BufRead,BufNewFile	* setfiletype txt
au BufRead,BufNewFile	*.tex set filetype=tex
au BufRead,BufNewFile	*.pro set filetype=prolog
au BufRead,BufNewFile	*.xpt.vim set filetype=xpt.vim
au BufRead,BufNewFile	*.xpt.vim set filetype=xpt.vim
au BufRead,BufNewFile	*.vim set filetype=vim
au BufRead,BufNewFile	*.mutt set filetype=muttrc
au BufRead,BufNewFile	*rtorrent.rc* set filetype=rtorrent 
au BufRead,BufNewFile	*.gv set filetype=graphviz
au BufRead,BufNewFile	*.r set filetype=rebol
au BufRead,BufNewFile	rfc* set filetype=rfc
au BufRead,BufNewFile	bash-fc* set filetype=sh
au BufRead,BufNewFile	*.wiki set filetype=vimwiki
au BufWinEnter,BufRead,BufNewFile *.wiki set nocursorline
au BufRead,BufNewFile	*.timelog set filetype=timelog
au BufRead,BufNewFile	*.rkt set filetype=racket

au BufRead,BufNewFile	*.scm runtime plugin/RainbowParenthsis.vim 
au BufRead,BufNewFile	*.lisp runtime plugin/RainbowParenthsis.vim 
au BufRead,BufNewFile	*.rkt runtime plugin/RainbowParenthsis.vim 

au BufRead,BufNewFile	*.scm set lisp
au BufRead,BufNewFile	*.lisp set lisp

au BufReadPre		*.doc set ro
au BufReadPre		*.doc set hlsearch!
au BufReadPost		*.doc %!antiword "%"
au BufReadPost		*.doc set filetype=txt

au BufReadPre		*.odt set ro
au BufReadPre		*.odt set hlsearch!
au BufReadPost		*.odt %!odt2txt "%"
au BufReadPost		*.odt set filetype=txt

au BufReadPre		*.pdf set ro
au BufReadPre		*.pdf set hlsearch!
au BufReadPost		*.pdf %!pdftotext -nopgbrk "%" - | fmt -csw78
au BufReadPost		*.pdf set filetype=txt
