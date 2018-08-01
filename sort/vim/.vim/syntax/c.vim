"一般修改的是彩色终端的属性
"not wrap  
set nowrap  
  
if filereadable("tags.vim")  
    so tags.vim  
endif  


syn keyword	wType		linklist_w
syn keyword cType		uint8 uint16 uint32 int8 int16 int32 que
hi def link wType		gType

"状态栏			GUI前景色		GUI背景色		GUI属性		彩色终端前景色	彩色终端背景色	彩色终端的属性		
hi StatusLine	guifg=#d3d3d5	guibg=#444444	gui=italic	ctermfg=253		ctermbg=238		cterm=italic
" goto break return continue asm
hi Statement																				ctermfg=20
" while for do
hi Repeat																					ctermfg=37
" 数据类型
hi Type																						ctermfg=127 
hi Comment																					ctermfg=14
"字符串中的中的特殊字符 
hi Special		guifg=#ff4a4a					gui=none									ctermfg=90
" 自定义数据类型
hi gType																					ctermfg=11
