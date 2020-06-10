"ВНЕШНИЙ ВИД <==================================================================
	set guioptions-=T "отключаем панель инструментов
	set guioptions+=c "отключаем графические диалоги
	set guioptions-=e "отключаем графические табы (текстовые занимают меньше места)
	set guioptions-=r "отключаем правую полосу прокрутки
	set guioptions-=L "отключаем левую полосу прокрутки
	set gfn=DejaVu_Sans_Mono_for_Powerline:h11
"==>внешний вид - set-of
autocmd GUIEnter * call system("wmctrl -ir " . v:windowid . " -b add,maximized_vert,maximized_horz")
"МЕНЮ (для gvimrc все команды меню через Shift) <===============================
	"Отображение/скрытие gvim-меню в шапке окна
		set guioptions-=m "по умолчанию меню скрыто
		function! MyToggleMenu()
			let old_guioptions = &guioptions
			"Если меню в данный момент видимо
			if stridx(old_guioptions, 'm') != -1
				set guioptions-=m
			else
				set guioptions+=m
			endif
		endfunction
		cmap <S-F11> <ESC>:call MyToggleMenu()<CR>
		imap <S-F11> <ESC>:call MyToggleMenu()<CR>
		nmap <S-F11> :call MyToggleMenu()<CR>
		vmap <S-F11> <ESC>:call MyToggleMenu()<CR>
"==> меню - set-of
