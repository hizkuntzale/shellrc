" Vim syntax file
" Language: TODO
" Author:   Lihachev Maxim
" Created:  Th 16 Apr 2009 10:18:10
" Modified: Пн 26 авг 2013 21:20:51

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn region article start=/-->/ end=/$/
syn region transcription start=/\[/ end=/\]/
syn match category /_.*/
syn match list /^\s*[0-9a-zа-я]\()\|>\|\.\)/


if !exists("did_dict_syntax_inits")
	let did_dict_syntax_inits = 1

	hi link article hArticle
	hi default hArticle ctermfg=lightblue

	hi link category hCategory
	hi default hCategory ctermfg=lightgreen

	hi link list hList
	hi default hList ctermfg=brown

	hi link transcription hTranscription
	hi default hTranscription ctermfg=lightyellow
endif

let b:current_syntax="dict"

