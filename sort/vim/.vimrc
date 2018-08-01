" 控制
syntax enable  								" 开起高亮显示
set shortmess=atI							" 启动的时候不显示那个援助乌干达儿童的提示  
syntax on 									" 自动语法高亮
set autoread  								" 文件在vim外修改过，自动重载  
set nocompatible							" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set confirm  								" 在处理未保存或只读文件时，弹出确认消息
set scrolloff=3 							" 光标移动到距离顶部或底部开始滚到距离 
set noswapfile								" 关闭交换文件
filetype plugin indent on					" 侦测文件类型
set number 									" 显示行号
set cursorline								" 突出显示当前行
set clipboard+=unnamed						" 共享剪贴板  
"set textwidth=80							" 设置超过80行自动换行
set ruler 									" 打开状态栏标尺
set mouse=a 								" 设置在vim中可以使用鼠标
set magic 									" 设置魔术
set backspace=indent,eol,start"
" 显示
colorscheme whg								" 设置配色方案
set t_Co=256 								" 指定配色方案为256色
set incsearch 								" 输入搜索内容时就显示搜索结果
set hlsearch 								" 搜索时高亮显示被找到的文本
set showcmd									" 显示输入的命令
set showmatch								" 高亮括号匹配
"set fdm=indent								" 设置代码合并
set matchtime=1								" 匹配括号高亮的时间(十分之一秒)  
set matchpairs={:},(:)						" 匹配括号"{}""()"  
" 格式
set noexpandtab  							" 不要将tab转换为空格 
set tabstop=4 								" 设定 tab 长度为 4
set softtabstop=4 						" 制表符为4
set shiftwidth=4 							" 设置缩进的空格为4
set autoindent 								" 设置自动缩进
set cindent 									" 设置C自动缩进
filetype plugin indent on 		" 开启插件
set ignorecase smartcase 			" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
" UTF-8 编码
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk
set helplang=cn
"***************************************************************************
autocmd BufNewFile *.h,*.c exec ":call SetTitle()"
func SetTitle() 
    if &filetype == 'c' 
        call setline(1,				"/*************************************************************************") 
        call append(line("."),		" * 文件名称：".expand("%")) 
        call append(line(".")+1,	" * 作    者：whg") 
        call append(line(".")+2,	" * 创建时间：".strftime("%c")) 
        call append(line(".")+3,	" * 模块名称：")
		call append(line(".")+4,	" * 主要函数：")
		call append(line(".")+5,	" * 版    本：")
		call append(line(".")+6,	" * 修改记录：")
        call append(line(".")+7,	" ************************************************************************/") 
        call append(line(".")+8,	"")
		call append(line(".")+9,    "#include <stdio.h>")
    else
		call setline(1,				"/*************************************************************************") 
        call append(line("."),		" * 文件名称：".expand("%")) 
        call append(line(".")+1,	" * 作    者：whg") 
        call append(line(".")+2,	" * 创建时间：".strftime("%c")) 
        call append(line(".")+3,	" * 模块名称：")
		call append(line(".")+4,	" * 主要函数：")
		call append(line(".")+5,	" * 功    能：")
		call append(line(".")+6,	" * 版    本：")
		call append(line(".")+7,	" * 与其他文件的关系：")
		call append(line(".")+8,	" * 修改记录：")
        call append(line(".")+9,	" ************************************************************************/") 
        call append(line(".")+10,	"#ifndef __H__")
        call append(line(".")+11,	"#define __H__")
        call append(line(".")+12,	"")
        call append(line(".")+13,	"#endif")
        call append(line(".")+14,	"")
	endif
"	if &filetype == 'sh'
"		call setline(1,"\#########################################################################") 
"        call append(line("."),		"\# 文件名称: ".expand("%")) 
"        call append(line(".")+1,	"\# 作    者: whg") 
"        call append(line(".")+2,	"\# 创建时间: ".strftime("%c")) 
"        call append(line(".")+3,	"\#########################################################################") 
"        call append(line(".")+4,	"\#!/bin/bash") 
"        call append(line(".")+5,	"") 
"    endif 
	"if &filetype == 'h'
    "endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"***************************************************************************
"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"***********************************************
"                  NERDTree
"***********************************************
map <F8> :NERDTreeMirror<CR>
map <F8> :NERDTreeToggle<CR>
let NERDChristmasTree=1 				"	显示增强
let NERDTreeAutoCenter=1 				"	自动调整焦点
let NERDTreeMouseMode=2 				"	鼠标模式：目录单击，文件双击
let NERDTreeShowFiles=1 				"	显示文件
let NERDTreeShowHidden=1 				"	显示隐藏文件
let NERDTreeHightCursorline=1			"	高亮显示当前文件或目录
let NERDTreeShowLineNumbers=1			"	显示行号
let NERDTreeWinPos='left'				"	窗口位置
let NERDTreeWinSize=31 					"	窗口宽度
let NERDTreeMinimalUI=1 				"	不显示帮助
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd VimEnter * NERDTree				"	默认显示NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"
"************************************************
"                  taglist
"************************************************
"map <F9> :TlistToggle<CR>
map <F9> :Tlist<CR>
let Tlist_Show_One_File=1 			" 不同时显示多个文件的tag,只显示当前文件的
let Tlist_Exit_OnlyWindow=1 		" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1 		" 在右边显示
"let Tlist_Auto_Open=1               " 启动VIM后，自动打开
"************************************************
"                  ctags
"************************************************
"map :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q . :TlistUpdate
"imap :!ctags -R --ds=+p --fields=+iaS --extra=+q . :TlistUpdate
"map <F6> :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q . 
"imap :!ctags -R --ds=+p --fields=+iaS --extra=+q . 
"map <F5> :!ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --fields=+S -R -f ~/.vim/systags /usr/include /usr/local/include
map <F5> :!ctags -R *
set tags=tags
set tags+=./tags 										" 可在本地目录查找
"set tags+=~/work/linux-2.6.0/tags 	" 我的linux目录
"************************************************
"                  QuickFix
"************************************************
":make	编译程序
"cw		打开编译错误窗口
map <F6> :make
"nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
"************************************************
"                  Winmanager
"************************************************
let loaded_winmanager = 1
"************************************************
"                  cscope
"************************************************
set cscopequickfix=s+,c+,d+,i+,t+,e+
"set cst			"同时查找cscope数据库和tags文件
"set csto=0		"cscope数据会优先查找
"set csverb		"显示增加数据库成功或失败信息
"set cspc=3		"显示路径的最后3个部分
"cs add cscope.out
if has("cscope")
	"set csprg=/usr/local/bin/cscope
	set csto=0
	set cst
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
	set cscopetag
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"************************************************
"                  rainbow
"************************************************
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"************************************************
"			vim-commentary 对代码进行注释
"************************************************
"autocmd FileType apache setlocal commentstring=#\ %s
