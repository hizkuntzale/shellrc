" Vim syntax file
" Language: doctools
" Author:   Likhachev Maxim
" Created:  Втр 19 Июл 2011 19:27:39
" Modified: Втр 19 Июл 2011 21:59:33

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

if !exists("did_tcl_doctools_syntax_inits")
	let did_tcl_doctools_syntax_inits = 1

	syn region string start=/{\|"/ end=/}\|"/
	syn region markup start=/\[/ end=/\]/ contains=string

	syntax match doctoolsMarkup "\[moddesc.*\]"    conceal cchar=* contains=string
	syntax match doctoolsMarkup "\[titledesc.*\]"  conceal cchar=* contains=string
	syntax match doctoolsMarkup "\[section.*\]"    conceal cchar=§ contains=string
	syntax match doctoolsMarkup "\[uri.*\]"        conceal cchar=⬆ contains=string
	syntax match doctoolsMarkup "\[para\]"         conceal cchar=¶
	syntax match doctoolsMarkup "\[bullet\]"       conceal cchar=⚫
	syntax match doctoolsMarkup "\[nl\]"           conceal cchar=⏎
	syntax match doctoolsMarkup "\[list_begin.*\]" conceal cchar=⇉
	syntax match doctoolsMarkup "\[list_end\]"     conceal cchar=⇇

	" Подсветка синтаксиса работает только со стандартным файлом!
	syntax include @TCL /usr/share/vim/vim73/syntax/tcl.vim
	syntax region tclSnip matchgroup=Snip contains=@TCL start=/\[example_begin\]/ end=/\[example_end\]/

	hi link markup Constant
	hi link string String
	hi link doctoolsMarkup Statement

	hi! link Conceal Statement
	hi! link Snip SpecialComment

	setlocal conceallevel=2
endif

let b:current_syntax="tcl_doctools"

