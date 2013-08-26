source ~/.vim/+omnicompletion/tcl/Packages.vim
source ~/.vim/+omnicompletion/tcl/Tcl.vim
source ~/.vim/+omnicompletion/tcl/Tk.vim
source ~/.vim/+omnicompletion/tcl/Base.vim

if (exists("g:tcl_completion") && g:tcl_completion) || &cp || v:version < 700
    finish
endif
let g:tcl_completion = 1

setlocal omnifunc=TclComplete
let s:completion_type = ''

fu! TclComplete(findstart, base)
	echomsg 'findstart=' . a:findstart . ', base=' . a:base

	if a:findstart
		" return the starting point of the word
		let line = getline('.')
		let pos = col('.') - 1
		while pos > 0 && line[pos - 1] !~ ' \|,^\|,\|\[\|\s\|\t\|:'
			let pos -= 1
		endwhile

		" Дополнение пространств имен
		if line[pos - 1] == ':'
			" Сдвиг на две позиции назад
			let start = pos - 2
		" TODO: Дополнение опций
		elseif line[pos - 1] == '-'
			let start = pos - 1
		" Дополнение подкомманд
		elseif line[pos - 1] =~ ' \|\t'
			let start = pos - 1
		else
			let labelstr = 'default'
		endif

		" Получение слова для дополнения
		if exists("start") 
			let labelpos = start

			while labelpos > 0 && line[labelpos - 1] =~ '[]a-zA-Z_:0-9\.\"\{\} -<>\\]'
				let labelpos -= 1
			endwhile

			let labelstr=strpart(line, labelpos, start - labelpos)

			"Определение последнего ключевого слова в строке
			let len = strlen(labelstr)
			let newlabelstr = substitute(labelstr,"::","_ns_","")
			while len > 1 && !exists("b:".newlabelstr)
				""let newlabelstr = substitute(strpart(labelstr,0,len),"::","_ns_","")
				""let newlabelstr = substitute(newlabelstr," ","_sp_","")

				let newlabelstr = Escape(strpart(labelstr,0,len))

				"FIXME: Для отладки
				""echo system ("echo -: ".substitute(strpart(labelstr,0,len),"::","_",""))
				let len -= 1
			endwhile

			if exists("b:".newlabelstr)
				let labelstr = newlabelstr
			endif
			
		endif

		if exists("labelstr") && labelstr != ""
			let s:completion_type = labelstr
		else
			let s:completion_type = 'default'
		endif
		
		" FIXME: Для отладки
		""echo system("echo labelstring == ".labelstr." completion == ".s:completion_type)

		return pos
	else
		let suggestions = []

		""let l:r = substitute(s:completion_type, "::", "_ns_", "")
		""let l:r = substitute(l:r, " ", "_sp_", "")

		let l:r = Escape(s:completion_type)
		if exists('b:'.l:r)
			exe 'let listing = b:'.l:r
		
			for entry in listing
				if entry.word =~ '^' . escape(a:base, '/')
					call add(suggestions, entry)
				endif
			endfor
		endif
		return suggestions

		if !has('gui_running')
			redraw!
		endif
	endif
endfu

function Escape(str)
	let result = substitute(a:str,"::","_ns_","g")
	let result = substitute(result," ","_sp_","g")

	return result
endfunction
