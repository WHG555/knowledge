"һ���޸ĵ��ǲ�ɫ�ն˵�����
"not wrap  
set nowrap  
  
if filereadable("tags.vim")  
    so tags.vim  
endif  


syn keyword	wType		linklist_w
syn keyword cType		uint8 uint16 uint32 int8 int16 int32 que
hi def link wType		gType

"״̬��			GUIǰ��ɫ		GUI����ɫ		GUI����		��ɫ�ն�ǰ��ɫ	��ɫ�ն˱���ɫ	��ɫ�ն˵�����		
hi StatusLine	guifg=#d3d3d5	guibg=#444444	gui=italic	ctermfg=253		ctermbg=238		cterm=italic
" goto break return continue asm
hi Statement																				ctermfg=20
" while for do
hi Repeat																					ctermfg=37
" ��������
hi Type																						ctermfg=127 
hi Comment																					ctermfg=14
"�ַ����е��е������ַ� 
hi Special		guifg=#ff4a4a					gui=none									ctermfg=90
" �Զ�����������
hi gType																					ctermfg=11
