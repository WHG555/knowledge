" Maintainer	:	whg
" Version			: 1.0
" Last Change	:	2017-2-8 14:51:44

" �����ն�˵��
"term         �ڰ��ն˵�����  
"cterm        ��ɫ�ն˵�����  
"ctermfg      ��ɫ�ն�ǰ��ɫ  
"ctermbg      ��ɫ�ն˱���ɫ  
"gui          GUI����  
"guifg        GUIǰ��ɫ  
"guibg        GUI����ɫ
" ����Ϊ��ɫ��
set background=dark
" ���������﷨����
hi clear

if exists("syntax_on")
  syntax reset
endif
" �����ļ�����
let colors_name = "whg"

" Vim >= 7.0 specific colors
if version >= 700
	" ���������  	GUI����ɫ     	��ɫ�ն˱���ɫ	GUI����  				��ɫ�ն�ǰ��ɫ  ��ɫ�ն˱���ɫ	��ɫ�ն˵�����	
  hi CursorLine 	guibg=#2d2d2d 	ctermbg=236
  " ���������										
  hi CursorColumn guibg=#2d2d2d 	ctermbg=236
  hi MatchParen 	guifg=#d0ffc0 	guibg=#2f2f2f 	gui=bold 				ctermfg=157 		ctermbg=237 		cterm=bold
  " �����˵�  		GUIǰ��ɫ     	GUI����ɫ     ��ɫ�ն�ǰ��ɫ ��ɫ�ն˱���ɫ
  hi Pmenu 				guifg=#ffffff 	guibg=#444444 	ctermfg=255    	ctermbg=238
  " �˵���ǰѡ����
  hi PmenuSel 		guifg=#000000 	guibg=#b1d631 	ctermfg=0 			ctermbg=148
endif

" General colors
"��������ַ�  	GUIǰ��ɫ     	GUI����ɫ     	GUI����  				��ɫ�ն�ǰ��ɫ  ��ɫ�ն˱���ɫ	��ɫ�ն˵�����																																																																																															
hi Cursor 			guifg=NONE    	guibg=#626262 	gui=none 				ctermbg=241											
hi Normal 			guifg=#e2e2e5 	guibg=#202020 	gui=none 				ctermfg=253 		ctermbg=234
"����β����~��@���Լ��ı���ʵ�ʲ���ʾ���ַ�
hi NonText 			guifg=#808080 	guibg=#303030 	gui=none 				ctermfg=244 		ctermbg=235
"�к�
hi LineNr 			guifg=#808080 	guibg=#000000 	gui=none 				ctermfg=84 		ctermbg=232
"״̬��
hi StatusLine 	guifg=#d3d3d5 	guibg=#444444 	gui=italic 			ctermfg=253 		ctermbg=238 		cterm=italic
"�ǵ�ǰ���ڵ�״̬��
hi StatusLineNC guifg=#939395 	guibg=#444444 	gui=none 				ctermfg=246 		ctermbg=238
"��ֱ�ָ�ڵı߿�
hi VertSplit 		guifg=#444444 	guibg=#444444 	gui=none 				ctermfg=238 		ctermbg=238
hi Folded 			guibg=#384048 	guifg=#a0a8b0 	gui=none 				ctermbg=4 			ctermfg=248
hi Title				guifg=#f6f3e8 	guibg=NONE			gui=bold 				ctermfg=254 		cterm=bold
hi Visual				guifg=#faf4c6 	guibg=#3c414c 	gui=none 				ctermfg=254 		ctermbg=4
hi SpecialKey		guifg=#808080 	guibg=#343434 	gui=none 				ctermfg=244 		ctermbg=236

" Syntax highlighting
"ע��						GUIǰ��ɫ 			GUI���� 				��ɫ�ն�ǰ��ɫ
																
hi Comment 			guifg=11 				gui=italic 			ctermfg=11
"TODO��HACK��FIXME�ȱ�ǩ
hi Todo 				guifg=#8f8f8f 	gui=italic 			ctermfg=245
hi Boolean      guifg=#b1d631 	gui=none 				ctermfg=148
"�ַ���
hi String 			guifg=#bbbbbb 	gui=italic 			ctermfg=148
hi Identifier 	guifg=#b1d631 	gui=none 				ctermfg=148
hi Function 		guifg=#736a9e 	gui=bold 				ctermfg=93
"��������
hi Type 				guifg=#bb00bb 	gui=none 				ctermfg=103
hi Statement 		guifg=#7e8aa2 	gui=none 				ctermfg=103
"�������  
hi Keyword			guifg=#00bbbb 	gui=none 				ctermfg=93
"����
hi Constant 		guifg=#ff9800 	gui=none  			ctermfg=1
"����
hi Number				guifg=#ff9800 	gui=none 				ctermfg=214
"�ַ����е��е������ַ� 
hi Special			guifg=#ff4a4a 	gui=none 				ctermfg=75
"Ԥ����
hi PreProc 			guifg=#faf4c6 	gui=none 				ctermfg=124
"TODO��HACK��FIXME�ȱ�ǩ
hi Todo         guifg=#000000 	guibg=#e6ea50 	gui=italic

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103

