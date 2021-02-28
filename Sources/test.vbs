push	0	   ;lpParam
push	hInst	 ;hInstance
push	NULL	;menu
push	NULL	;parent hwnd
push	280	 ;высота окна
push	430	 ;ширина окна
push    300	 ;координата y левого верхнего угла окна
push	350	 ;координата x левого верхнего угла
push	WS_CAPTION	          ;стиль окна
push	offset szTitleName	  ;Строка заголовка окна
push	offset szClassName	;имя класса окна
push	WS_EX_TOPMOST         ;Расширенный стиль окна
call	   CreateWindowExA