" <F2>      - сохранить файл
" <F4>      - очистить подсветку
" <C-F4>    - удаление текущей вкладки
" <F5>      - Tagbar
" <C-F11>   - проверка орфографии
" <F12>     - выбор кодировки чтения через <Tab> utf8,cp1251,koi8,cp866
" <S-F12>   - выбор кодировки записи через <Tab> utf8,cp1251,koi8,cp866
" <C-F12>   - выбор конца строк через <Tab> - unix,dos,mac

" <C-l>     - Автокомплит выбор
" <C-n>     - Автокомплит перемещение вниз
" <C-p>     - Автокомплит перемещение вверх

" <C-Y>,    -
" <C-Y>/    
" <Ctrl-Y>i -Emet
" <Ctrl-Y>a |
" <Ctrl-Y>m -

" cs"'      - замена " на '     \
" cs[{      - замена скобок     \
" ds"       - удаление кавычек  \ - surround
" ds[       - удаление скобок   \

" <Ctrl+_>  - TComment
" gc
" gcc

" <C-H>     -\
" <C-J>     -\ ускоренное передвижение
" <C-K>     -\ по тексту
" <C-L>     -\

" <A-H>     -\
" <A-J>     -\ ускоренное передвижение
" <A-K>     -\ по тексту в режиме вставки
" <A-L>     -\

" <C-Tab>   - Переключение на следующую вкладку
" <C-S-Tab> - Переключение на предыдущую вкладку
" <A-Left>  - Перемещение вкладки влево
" <A-Right> - Перемещение вкладки вправо

" <C-F>     - переключение раскладки в en-ru в insert mode
" mz        - выход из insert mode
" <leader>Q - поиск подкурсорного тега в CSS файле

":RcEdit    - редактирование vimrc
":RcReload  - перезагрузка всех vimrc

"MAPPING <=======================================================
	"Сохранить файл <F2>
		nmap <F2> :w!<CR>
		imap <F2> <Esc>:w!<CR>
		vmap <F2> <Esc>:w!<CR>
	"Очистить подсветку последнего найденного выражения <F4>
		nmap <F4> :nohlsearch<CR>
		imap <F4> <Esc>:nohlsearch<CR>
		vmap <F4> <Esc>:nohlsearch<CR>gv
	"Переключение раскладки через <Ctrl-F>
		imap <silent> <C-F> 
		cmap <silent> <C-F> 
		nmap <silent> <C-F> 
		vmap <silent> <C-F> 
	"exit insert-mode <ii>
		inoremap mz <Esc>
		inoremap ья <Esc>
	"Автоматическое закрытие скобок < ({[ >
		imap [ []<Left>
		imap ( ()<Left>
		imap { {}<Left>
    imap <C-Enter> <Enter><ESC>ko
    imap <A-Enter> <ESC>la<Space>
	"Ускоренное передвижение по тексту
		imap <A-h> <C-o>h
		imap <A-j> <C-o>j
		imap <A-k> <C-o>k
		imap <A-l> <C-o>l
		nmap <C-H> 7h
		nmap <C-J> 7j
		nmap <C-K> 7k
		nmap <C-L> 7l
	"Более привычные Page Up/Down, когда курсор остаётся в той же строке,
	"а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
	"Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
	"привязка делается к двойному нажатию этих комбинаций.
		nmap <PageUp> <C-U><C-U>
		imap <PageUp> <C-O><C-U><C-O><C-U>
		nmap <PageDown> <C-D><C-D>
		imap <PageDown> <C-O><C-D><C-O><C-D>
	"Управление вкладками
		nnoremap <C-Tab> :tabnext<CR>
		nnoremap <C-S-Tab> :tabprevious<CR> 
		nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR> 
		nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR> 
		nnoremap <C-F4> :tabclose<CR>
"MAPPING set-off ====>

"COMMANDS <======================================================
	"edit ~/.vimrc file
		command! RcEdit e $MYVIMRC
	"reload ~/.vimrc config
		command! RcReload source $MYVIMRC
"COMMANDS set-off ====>

"GENERAL SETTINGS <==============================================
	"Включает определение типа файла, загрузку соответствующих плагинов
	filetype plugin indent on "требуется для tagbar
	"Отключение совместимости с Vi
		set nocompatible "требуется для tagbar
	let maleader = " "
	let localleader = "\\"
	set ttyfast "быстрый коннект с терминалом
	"Do not create backup and swap files
		set nobackup
		set nowritebackup
		set noswapfile
	set scrolloff=5 "расстояние до края при вертик.прокрутке
	set title "отображение имени буфера в заголовке терминала
	"не выгружать буфер при переходе на другой
	set hidden
	"автодополнение командной строки в стиле zsh
		set wildmode=longest:list,full
	set exrc
	set secure
	"Запоминаем прыжки от тега к тегу - optional
	set tagstack
	set showmatch "brackets
	set nu "Разрешаем нумерацию строк
	set cursorline "подсветка строки
	set showcmd "отображение команды в проавом углу
"GENERAL SETTINGS set-off ====>

"PLUGIN <=======================================================
	"PLUGINS MANAGER (plug.vim) <------------------------------
		"cd ~/vimfiles/pack
		"инициализируем git для последующего апдейта плагинов
			"git init "делается один раз при создании папки pack
		"устанавливаем плагин для автозагрузки
			"git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree		
		"устанавливаем плагин для опциональной загрузки
			"git submodule add https://github.com/scrooloose/nerdtree plugins/opt/bla
		"инициализируем справочную информацию из среды Vim
			"для этого в конце vimrc вставлены две строки
				" packloadall
				" silent! helptags ALL
			"вручную это можно сделать так:
			"либо из командной строки
				"vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
			"либо из vim
				"либо для каждого плагина отдельно
					":helptags ~/vimfiles/pack/plugins/start/nerdtree
				"либо для всех
					":helptags ALL
		"для апдейта набираем
		"git submodule update --remote --merge
		"git commit
	"PLUGIN MANAGER set-off ---->

	"PLUGINS <---------------------------------------
		"SEARCH <............................................
			"CTAGS - построение структуры документов проекта <----
				"CTAGS установлен глобально через Chocolatey
				"VIM-GUTENTAGS - создание и обновление файла ctags в корне проекта <----
					"Plug 'ludovicchabant/vim-gutentags'
				"VIM-GUTENTAGS set-off ---->
			"CTAGS set-off --->
			"FZF - command-line fuzzy finder <----
				"FZF установлен глобально через Chocolatey для коммандной строки
				"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
				"Plug 'junegunn/fzf.vim'
				"устраняем ограничение ширины окна в 120 знаков
				let g:fzf_preview_window = ''
				"[Buffers] Jump to the existing window if possible
				let g:fzf_buffers_jump = 1
				"[[B]Commits] Customize the options used by 'git log':
				let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
				"[Tags] Command to generate tags file
				let g:fzf_tags_command = 'ctags -R'
				"[Commands] --expect expression for directly executing the command
				let g:fzf_commands_expect = 'alt-enter,ctrl-x'
			"FZF set-off --->
			"ACK & AG - A code-searching tool <----
				"AG установлен глобально через Chocolatey
				let g:ackprg = 'ag --vimgrep'
			"ACK & AG set-off --->
		"SEARCH end-off ....>

		"WORK WITH CODE <....................................
			"YOUCOMPLETEME <----
        "Plug 'ycm-core/YouCompleteMe'
			"YOUCOMPLETEME end-off ---->
			"SNIPPETS <----
        "SirVr/ultisnips
        "honza/vim-snippets
        let g:UltiSnipsExpandTrigger='<c-l>'
        let g:UltiSnipsJumpForwardTrigger="<c-n>"
        let g:UltiSnipsJumpBackwardTrigger="<c-p>"
			"SNIPPETS end-off ---->
			"T-COMMENT - comments tools <----
				"Plug 'tomtom/tcomment_vim'
			"T-COMMENT end-off ---->
			"SURROUND - work with brackets,quotes,tags <----
				"Plug 'tpope/vim-surround'
			"SURROUND end-off ---->
		"WORK WITH CODE end-off ....>

		"FILE/PROJECTS NAVIGATION <..........................
			"VIM-STARTIFY - start screen with last-files <----
				"Plug 'mhinz/vim-startify'
        let g:startify_change_to_dir = 1
				"Automatically update sessions in two cases: 
				"- Before leaving Vim 
				"- Before loading a new session via :SLoad
				let g:startify_session_persistence = 1
			"VIM-STARTIFY set-off ---->
		"FILE/PROJECTS NAVIGATION set-off ....>

		"SYNTAX <............................................
			"Проверка синтаксиса
				"Plug 'dense-analysis/ale'
			"Подсветка синтаксиса
				"Plug 'digitaltoad/vim-pug'
				"Plug 'pangloss/vim-javascript'
          let g:javascript_plugin_jsdoc = 1
          let g:javascript_plugin_ngdoc = 1
		"SYNTAX set-off ....>

		"APPEARANCE - внешность <............................
			" "Airline - Learn & mean status/tabline <----
			" 	Plug 'vim-airline/vim-airline'
			" 	Plug 'vim-airline/vim-airline-themes'
			" 	let g:airline_theme='badwolf'
			" 	let g:airline_enable_syntastic=1
			" 	let g:airline_enable_ctrlp=1
			" 	let g:airline_enable_tagbar=1
			" 	let g:airline_powerline_fonts=1
			" 	let g:airline#extensions#tabline#enabled=1 "smarter tab line
			" 	let g:airline#extensions#tabline#formatter='unique_tail'
			" "Airline set-off ---->
		"APPEARANCE set-off ....>
	"PLUGINS set-off ---->
"PLUGIN set-off ====>

"MOUSE <=========================================================
	"Включаем мышкуе в текстовом режиме
	"(очень удобно при копировании из терминала, т. к. без этой опции,
	"например, символы табуляции раскладываются в кучу пробелов).
	set mouse=a
	"set mousemodel=popup
"MOUSE set-off ====>

"INDENTS/WRAPS/FOLDING <=========================================
	"Отступы <-------------------------------------------------
		"set smarttab
		"Размер табуляции
			set tabstop=2 
			set softtabstop=2
		"Размер сдвига при нажатии на клавиши << и >>
			set shiftwidth=2 
		"Копирует отступ от предыдущей строки 
			set autoindent
			set smartindent
			set backspace=indent,eol,start whichwrap+=<,>,[,]
		"Заменять табуляцию пробелами
			set expandtab
			"set dy=lastline
		"Отображение табуляции, концевых пробелов и др.
			set list
			set lcs=tab:_.,trail:-,extends:>,nbsp:.
		"Перенос
			set wrap "Включаем перенос строк
			set linebreak "Перенос строк по словам, а не по буквам
	"Отступы set-off ---->
	"Фолдинг <------------------------------------------------
		set foldenable "Включаем фолдинга
		set foldnestmax=9 "Глубина вложенности фолдинга
		set foldmethod=indent "фолдинг на основе отступов
		"Первый уровевень вложенности открыт, остальные закрыты
		set foldlevel=1
		"Отображение полосу для управлением сворачиванием
		set foldcolumn=1
		"Автооткрытие свертока при заходе в него 
			"set foldopen=all
	"Фолдинг set-off ---->
		"Определение блоков вручную
			"set foldmethod=marker
		"Определение блоков на основе синтаксиса файла
			"set foldmethod=syntax
"INDENTS/WRAPS/FOLDING set-off ====>

"SEARCH & REPLACEMENT <==========================================
	set gdefault "Add the g flag to search/replace by default
	"Включаем подсветку выражения, которое ищется в тексте
		set hlsearch
	"Выключаем подсветку поиска при загрузке конфигурации
		nohlsearch
	"При поисковом наборе перескакивать на найденные слова
		set incsearch
	"Останавливать поиск при достижении конца файла
		set nowrapscan
	"Игнорировать регистр букв при поиске
		set ignorecase
	"Override th 'ignorecase' option if the search patter ncontains upper
	"case...
		set smartcase
	"Disable higlighting search result on Enter key
		nnoremap <silent> <cr> :nohlsearch<cr><cr>
	"Поиск совпадения скобок
		set showmatch
	"Поиск вхождений в css-файлах
		"добавляет в состав искомого слова тире
			set iskeyword+=-
		function! JumpToCSS()
			let id_pos = searchpos("id", "nb", line('.'))[1]
			let class_pos = searchpos("class", "nb", line('.'))[1]
			if class_pos > 0 || id_pos > 0
				if class_pos < id_pos
					execute ":vim '#".expand('<cword>')."' **/*.css"
				elseif class_pos > id_pos
					execute ":vim '.".expand('<cword>')."' **/*.css"
				endif
			endif
		endfunction
	"Маппинг
		nnoremap <leader>q :call JumpToCSS()<CR>zz
"SEARCH & REPLACEMENT set-off ====>

"WINDOW <========================================================
	"Пытаемся занять максимально большое пространство на экране
	if has('gui')
		" if has('win32')
		" 	au GUIEnter * call libcallnr('maximize','Maximize',11)
		" elseif has('gui_gtk2')
		" 	au GUIEnter * :set lines=54 columns=211
		" endif
	endif
	set visualbell "Включает виртуальный звонок
	set winminheight=0 "Минимальная высота
	set winminwidth=0 "Минимальная ширина
	set showcmd "отображение команды в правом нижнем углу
"WINDOW set-off ====>

"ENCODING <======================================================
	"Установка кодировки
		set fileencodings=utf-8,cp1251,koi8-r,cp866 "файлы кодировок для автоопределения
		set encoding=utf-8 "установка UTF-8 по умолчанию
	"Установка раскладки
		set keymap=russian-jcukenwin "русская раскладка
		set iminsert=0
		set imsearch=0
	"Отображение кириллицы во внутренних сообщениях программы В КОНЦЕ БЛОКА ENCODING
		lan mes ru_RU.UTF-8
	"Отображение кириллицы в меню В КОНЦЕ БЛОКА ENCODING
		source $VIMRUNTIME/delmenu.vim
		set langmenu=ru_RU.UTF-8
		source $VIMRUNTIME/menu.vim
	"Kill RUS when leaving insert mode.
		au InsertLeave * set iminsert=0 "в режиме вставки по умолчанию раскладка английская
		au InsertLeave * set imsearch=0 "при поиске по умолчанию раскладка английская
	"Избавляемся от кирилицы в обычном режиме
		set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э\',яz,чx,сc,
		\мv,иb,тn,ьm,ю.,ё\',ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х\{,Ъ\},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\:,
		\Э\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\<,Ю\>
		noremap <A-й> <A-q>
		noremap <A-ц> <A-w>
		noremap <A-у> <A-e>
		noremap <A-к> <A-r>
		noremap <A-е> <A-t>
		noremap <A-ф> <A-a>
		noremap <A-ы> <A-s>
		noremap <A-в> <A-d>
		noremap <A-а> <A-f>
		noremap <A-п> <A-g>
		noremap <A-я> <A-z>
		noremap <A-ч> <A-x>
		noremap <A-с> <A-c>
		noremap <A-м> <A-v>
		noremap <A-и> <A-b>
		noremap <A-н> <A-y>
		noremap <A-г> <A-u>
		noremap <A-ш> <A-i>
		noremap <A-щ> <A-o>
		noremap <A-з> <A-p>
		noremap <A-х> <A-[>
		noremap <A-ъ> <A-]>
		noremap <A-р> <A-h>
		noremap <A-о> <A-j>
		noremap <A-л> <A-k>
		noremap <A-д> <A-l>
		noremap <A-ж> <A-;>
		noremap <A-э> <A-'>
		noremap <A-т> <A-n>
		noremap <A-ь> <A-m>
		noremap <A-б> <A-,>
		noremap <A-ю> <A-.>
		noremap <A-ё> <A-`>
		noremap <C-й> <C-q>
		noremap <C-ц> <C-w>
		noremap <C-у> <C-e>
		noremap <C-к> <C-r>
		noremap <C-е> <C-t>
		noremap <C-ф> <C-a>
		noremap <C-ы> <C-s>
		noremap <C-в> <C-d>
		noremap <C-а> <C-f>
		noremap <C-п> <C-g>
		noremap <C-я> <C-z>
		noremap <C-ч> <C-x>
		noremap <C-с> <C-c>
		noremap <C-м> <C-v>
		noremap <C-и> <C-b>
		noremap <C-н> <C-y>
		noremap <C-г> <C-u>
		noremap <C-ш> <C-i>
		noremap <C-щ> <C-o>
		noremap <C-з> <C-p>
		noremap <C-х> <C-[>
		noremap <C-ъ> <C-]>
		noremap <C-р> <C-h>
		noremap <C-о> <C-j>
		noremap <C-л> <C-k>
		noremap <C-д> <C-l>
		noremap <C-ж> <C-;>
		noremap <C-э> <C-'>
		noremap <C-т> <C-n>
		noremap <C-ь> <C-m>
		noremap <C-б> <C-,>
		noremap <C-ю> <C-.>
		noremap <C-ё> <C-`>
	"EncodingMenu
		"Выбор кодировки при открытии файла <F12>
			set wildmenu
			set wcm=<Tab>
			menu Encoding.Read.utf-8 :e ++enc=utf8 <CR>
			menu Encoding.Read.windows-1251 :e ++enc=cp1251<CR>
			menu Encoding.Read.koi8-r :e ++enc=koi8-r<CR>
			menu Encoding.Read.cp866 :e ++enc=cp866<CR>
			"В разделt маппинга - map <F12> :emenu Encoding.Read.<TAB>
		"Выбор кодировки, в которой сохранять файл -->
			set wildmenu
			set wcm=<Tab>
			menu Encoding.Write.utf-8 :set fenc=utf8 <CR>
			menu Encoding.Write.windows-1251 :set fenc=cp1251<CR>
			menu Encoding.Write.koi8-r :set fenc=koi8-r<CR>
			menu Encoding.Write.cp866 :set fenc=cp866<CR>
			"В разделt маппинга - map <S-F12> :emenu Encoding.Write.<TAB>
		"Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) -->
			set wildmenu
			set wcm=<Tab>
			menu Encoding.End_line_format.unix :set fileformat=unix<CR>
			menu Encoding.End_line_format.dos :set fileformat=dos<CR>
			menu Encoding.End_line_format.mac :set fileformat=mac<CR>
		"Mapping <F12>,<C-F12>,<S-F12>
			map <F12>   :emenu Encoding.Read.<TAB>
			map <S-F12> :emenu Encoding.Write.<TAB>
			map <C-F12> :emenu Encoding.End_line_format.<TAB>
"ENCODING set-off ====>

"SPELLING <======================================================
	if version >= 700
		setlocal spell spelllang= "Установка по умолчанию
		setlocal spelllang=ru_ru,en_us spell "Подключаем словари
		setlocal nospell "залетный залётный залтный
		function! ChangeSpellLang()
			if &spelllang =~ "ru,en"
				setlocal spell spelllang=ru
				echo "spelllang: ru"
			elseif &spelllang =~ "ru"
				setlocal spell spelllang=en
				echo "spelllang: en"
			elseif &spelllang =~ "en"
				setlocal spell spelllang=
				setlocal nospell
				echo "spelllang: off"
			else
				setlocal spell spelllang=ru,en
				echo "spelllang: ru-en"
			endif
		endfunc
	endif
	map <C-F11> <Esc>:call ChangeSpellLang()<CR>
"SPELLING set-off ====>

"TRANSLATE <=====================================================
	"Перевод слов при помощи словаря mueller -->
	"Перед применением обновить страницу! :so%
		function! MyBalloonExpr()
			let s:phrase = v:beval_text
			if match(s:phrase, '\c[a-z]') != -1
				return system('$HOME\vimfiles\dict\mueller-base.sh "'.s:phrase.'"')
			endif
			return ''
		endfunction
			set bexpr=MyBalloonExpr()
			set ballooneval
			set balloondelay=500
	"--
	"Более короткий вариант
		"function! MyBalloonExpr()
			"return system("$HOME/vimfiles/dict/mueller-base.sh ". v:beval_text)
		"endfunction
			"set bexpr=MyBalloonExpr()
			"set ballooneval
			"set balloondelay=500
	"--
	" Вариант без всплывающего окошка
		"function! TranslateWord()
			"let s:dict    = "dict/mueller-base.sh"
			"let s:phrase  = expand("<cword>")
			"let s:tmpfile = tempname()
			"silent execute "!" . s:dict . " " . s:phrase . " > " . s:tmpfile
			"execute "botright sp " . s:tmpfile
		"endfunction
		"map <F9> :call TranslateWord()<CR>
"TRANSLATE set-off ====>

"SYNTAX-COLOR <==================================================
 syntax on "Подсветка синтаксиса
	"Подключаем цветовую тему
	if has("gui_running")
		let g:karadag_original = 0
	else
		let g:rehash256 = 1
	endif
	colorscheme karadag
	"Цвет курсорной линии в режимах вставки обычном
	autocmd InsertEnter * highlight CursorLine guibg=black ctermfg=white
	\ ctermbg=233
	autocmd InsertLeave * highlight CursorLine guibg=#222222 ctermfg=white
	\ ctermbg=235
	"Вертикальная линия рекомендуемого ограничения ширины кода справа
	set colorcolumn=100
	highlight ColorColumn ctermbg=darkgray
"SYNTAX-COLOR set-off ====>

"PROJECT_SESSION <===============================================
	"Adding automatons for when entering or leaving Vim
	"function! MakeSession()
	"	if (filewritable(g:sessiondir) != 2)
	"		exe 'silent !mkdir -p ' g:sessiondir
	"		redraw!
	"	endif
	"	exe "mksession! " . g:sessionfile
	"endfunction
	"function! LoadSession()
	"	if (filereadable(g:sessionfile))
	"		exe 'source ' g:sessionfile
	"	else
	"		echo "No session loaded."
	"	endif
	"endfunction
	"if !exists("g:sessiondir")
	"	let g:sessiondir = getcwd()."/.vim"
	"	let g:sessionfile = g:sessiondir."/session.vim"
	"endif
	"au VimLeave * :call MakeSession()
	"if(argc() == 0)
	"	au VimEnter * nested :call LoadSession()
	"endif
"PROJECT_SESSION set-off ====>

" Plugins need to be added to runtimepath before helptags can be generated.
	packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
	silent! helptags ALL
