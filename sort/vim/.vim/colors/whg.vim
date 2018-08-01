" Maintainer	:	whg
" Version			: 1.0
" Last Change	:	2017-2-8 14:51:44

" 各种终端说明
"term         黑白终端的属性  
"cterm        彩色终端的属性  
"ctermfg      彩色终端前景色  
"ctermbg      彩色终端背景色  
"gui          GUI属性  
"guifg        GUI前景色  
"guibg        GUI背景色
" 设置为暗色调
set background=dark
" 重新设置语法高亮
hi clear

if exists("syntax_on")
  syntax reset
endif
" 配置文件名称
let colors_name = "whg"

" Vim >= 7.0 specific colors
if version >= 700
	" 光标所在行  	GUI背景色     	彩色终端背景色	GUI属性  				彩色终端前景色  彩色终端背景色	彩色终端的属性	
  hi CursorLine 	guibg=#2d2d2d 	ctermbg=236
  " 光标所在列										
  hi CursorColumn guibg=#2d2d2d 	ctermbg=236
  hi MatchParen 	guifg=#d0ffc0 	guibg=#2f2f2f 	gui=bold 				ctermfg=157 		ctermbg=237 		cterm=bold
  " 弹出菜单  		GUI前景色     	GUI背景色     彩色终端前景色 彩色终端背景色
  hi Pmenu 				guifg=#ffffff 	guibg=#444444 	ctermfg=255    	ctermbg=238
  " 菜单当前选择项
  hi PmenuSel 		guifg=#000000 	guibg=#b1d631 	ctermfg=0 			ctermbg=148
endif

" General colors
"光标所在字符  	GUI前景色     	GUI背景色     	GUI属性  				彩色终端前景色  彩色终端背景色	彩色终端的属性																																																																																															
hi Cursor 			guifg=NONE    	guibg=#626262 	gui=none 				ctermbg=241											
hi Normal 			guifg=#e2e2e5 	guibg=#202020 	gui=none 				ctermfg=253 		ctermbg=234
"窗口尾部的~和@，以及文本里实际不显示的字符
hi NonText 			guifg=#808080 	guibg=#303030 	gui=none 				ctermfg=244 		ctermbg=235
"行号
hi LineNr 			guifg=#808080 	guibg=#000000 	gui=none 				ctermfg=84 		ctermbg=232
"状态栏
hi StatusLine 	guifg=#d3d3d5 	guibg=#444444 	gui=italic 			ctermfg=253 		ctermbg=238 		cterm=italic
"非当前窗口的状态栏
hi StatusLineNC guifg=#939395 	guibg=#444444 	gui=none 				ctermfg=246 		ctermbg=238
"垂直分割窗口的边框
hi VertSplit 		guifg=#444444 	guibg=#444444 	gui=none 				ctermfg=238 		ctermbg=238
hi Folded 			guibg=#384048 	guifg=#a0a8b0 	gui=none 				ctermbg=4 			ctermfg=248
hi Title				guifg=#f6f3e8 	guibg=NONE			gui=bold 				ctermfg=254 		cterm=bold
hi Visual				guifg=#faf4c6 	guibg=#3c414c 	gui=none 				ctermfg=254 		ctermbg=4
hi SpecialKey		guifg=#808080 	guibg=#343434 	gui=none 				ctermfg=244 		ctermbg=236

" Syntax highlighting
"注释						GUI前景色 			GUI属性 				彩色终端前景色
																
hi Comment 			guifg=11 				gui=italic 			ctermfg=11
"TODO、HACK、FIXME等标签
hi Todo 				guifg=#8f8f8f 	gui=italic 			ctermfg=245
hi Boolean      guifg=#b1d631 	gui=none 				ctermfg=148
"字符串
hi String 			guifg=#bbbbbb 	gui=italic 			ctermfg=148
hi Identifier 	guifg=#b1d631 	gui=none 				ctermfg=148
hi Function 		guifg=#736a9e 	gui=bold 				ctermfg=93
"数据类型
hi Type 				guifg=#bb00bb 	gui=none 				ctermfg=103
hi Statement 		guifg=#7e8aa2 	gui=none 				ctermfg=103
"控制语句  
hi Keyword			guifg=#00bbbb 	gui=none 				ctermfg=93
"常量
hi Constant 		guifg=#ff9800 	gui=none  			ctermfg=1
"数字
hi Number				guifg=#ff9800 	gui=none 				ctermfg=214
"字符串中的中的特殊字符 
hi Special			guifg=#ff4a4a 	gui=none 				ctermfg=75
"预处理
hi PreProc 			guifg=#faf4c6 	gui=none 				ctermfg=124
"TODO、HACK、FIXME等标签
hi Todo         guifg=#000000 	guibg=#e6ea50 	gui=italic

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103

