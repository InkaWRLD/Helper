@echo off
attrib -s -h Console.bat
attrib -s -h Sources
mode con:cols=40 lines=30
chcp 65001
cls
set RAND=%TIME:~10,1%
cls
title Помощник
color %RAND%
goto LOL
:ER
echo Такого варианта нет
:LOL
set RAND=%TIME:~10,1%
color %RAND%
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
echo Введите номер действия:
echo 1. Показать мусор на рабочем столе
echo 2. Убрать мусор на рабочем столе
echo 3. Показать ярлыки
echo 4. Убрать ярлыки
echo 5. Антивирус (закрытие помощника)
echo 6. Блокировка
echo 7. Секретное хранилище
echo 8. Открыть приложение
echo 9. Таймер выключения
echo 10. Школьный режим
echo 11. Exit
set/p "do=>"
if %do%== 1 goto ONE
if %do%== 2 goto TWO
if %do%== 3 goto THREE
if %do%== 4 goto FOUR
if %do%== 5 goto FIVE
if %do%== 6 goto LOCK
if %do%== 7 goto SEVEN
if %do%== 8 goto EIGHT
if %do%== 9 goto NINE
if %do%== 10 goto TEN
if %do%== 11 goto END
if %do%== Sources start Sources & cls & goto LOL
if %do%== sources start Sources & cls & goto LOL
if %do%== Cmd start cmd & cls & goto LOL
if %do%== cmd start cmd & cls & goto LOL
if %do%== error32 goto error32
cls
goto ER
:ONE
Attrib -s -h "" 
cd Sources
nircmd.exe shellrefresh
cd ..
PAUSE
cls
goto LOL
:TWO
Attrib +s +h ""
cd Sources
nircmd.exe shellrefresh
cd ..
PAUSE
cls
goto LOL
:THREE
Attrib -s -h "Корзина.lnk"
Attrib -s -h "Треки.lnk"
Attrib -s -h "Microsoft To Do.lnk"
Attrib -s -h "Браузер Opera GX.lnk"
Attrib -s -h "Adobe Photoshop 2021.lnk"
Attrib -s -h "VEGAS Pro 18.0.lnk"
Attrib -s -h "FL Studio 20.LNK"
Attrib -s -h "PyCharm 2020.3.3 x64.LNK"
Attrib -s -h "iZotope RX8 Audio Editor.lnk"
cd Sources
nircmd.exe shellrefresh
cd ..
echo OK
PAUSE
cls
goto LOL
:FOUR
Attrib +s +h "Корзина.lnk"
Attrib +s +h "Треки.lnk"
Attrib +s +h "Microsoft To Do.lnk"
Attrib +s +h "Браузер Opera GX.lnk"
Attrib +s +h "FL Studio 20.LNK"
Attrib +s +h "PyCharm 2020.3.3 x64.LNK"
Attrib +s +h "Adobe Photoshop 2021.lnk"
Attrib +s +h "VEGAS Pro 18.0.lnk"
Attrib +s +h "iZotope RX8 Audio Editor.lnk"
cd Sources
nircmd.exe shellrefresh
cd ..
echo OK
PAUSE
cls
goto LOL
:FIVE
start Sources\Anvir.lnk
goto END
:LOCK
start Sources\Lock.lnk
goto END
:SEVEN
cls
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
echo Введите пароль!
set/p "pswd=>"
if %pswd%== Error goto OKAY
cls
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
echo Данная функция в разработке
pause
cls
goto LOL
:OKAY
cd Sources\Фон
Attrib -s -h Background.jpg
ren Background.jpg Error.rar
md Error
"C:\Program Files\WinRAR\winrar.exe" x -O+ -IBCK Error.rar "C:\Users\Inka\Desktop\Sources\Фон"
start Error
ren Error.rar Background.jpg
Attrib +s +h Background.jpg
cls
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
echo Успешно
pause
Attrib -s -h Background.jpg
ren Background.jpg Error.rar
"C:\Program Files\WinRAR\WinRAR.exe" a -r -m5 Error.rar Error
RD /S /Q Error
ren Error.rar Background.jpg
Attrib +s +h Background.jpg
cd ..
cd ..
cls
goto LOL
:EIGHT
cls
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
echo Что вы хотите открыть:
echo 1. Корзина
echo 2. Microsoft To Do
echo 3. Браузер Opera GX
echo 4. FL Studio 20
echo 5. Треки
echo 6. MediaGet
echo 7. Adobe Photoshop 2021
echo 8. Назад
set/p "open=>"
cls 
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
if %open%== 1 goto OPENONE
if %open%== 2 goto OPENTWO
if %open%== 3 goto OPENTHREE
if %open%== 4 goto OPENFOUR
if %open%== 5 goto OPENFIVE
if %open%== 6 goto OPENSIX
if %open%== 7 goto OPENSEVEN
if %open%== 8 goto OPENEXIT
echo Ты идиот?
pause
goto LOL
:GOOD
echo Успешно
pause
cls
goto LOL
:OPENONE
start "" "Корзина.lnk" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENTWO
start "" "Microsoft To Do.lnk" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENTHREE
start "" "Браузер Opera GX.lnk" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENFOUR
start "" "FL Studio 20.LNK" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENFIVE
start "" "Треки.lnk" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENSIX
start ""  "MediaGet.lnk" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENSEVEN
start ""  "Adobe Photoshop 2021.lnk" && goto GOOD
echo Ошибка!
pause
cls 
goto LOL
:OPENEXIT
cls
goto LOL
:NINE
cls
echo.
echo             ┏┓    ┏┓
echo             ┃┃    ┃┃
echo             ┃┗━┳━━┫┃┏━━┳━━┳━┓
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┏┓┃┃━┫┃┃┏┓┃┃━┫┏┛╋╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╋╋┃┃┃┃┃━┫┗┫┗┛┃┃━┫┃╋╋╋╋╋╋╋╋╋╋╋╋
echo             ┗┛┗┻━━┻━┫┏━┻━━┻┛
echo                     ┃┃
echo                     ┗┛
echo.
@echo off
echo Введите время выключения(hhmm):
echo (Для выхода введите Exit)
set/p "timer=>"
if %timer%== Exit cls & goto LOL
set hh=%TIME:~0,2%
set /a hh*=60
set mm=%TIME:~3,2%
set /a hh+=%mm%
set poltime=%hh%

set gg=%timer:~0,2%
set /a gg*=60
set nn=%timer:~2,2%
set /a gg+=%nn%
set poltimer=%gg%

set /a poltimer-=%poltime%
set /a poltimer*=60
shutdown -s -f -t %poltimer%

echo Успешно
pause
cls
goto LOL
:error32
H:
cd МАМА РАБОТА && ren "Мама работа.zip" "Мама работа.tc" 
start "" "H:\МАМА РАБОТА\Мама работа.tc"
C:
cd C:\Users\Inka\Desktop
cls
echo.
echo                     ╔═══╦═══╗
echo ╋╋╋╋╋╋╋╋╋╋╔═╦╦╦╦╦═╦╦╣╔═╗║╔═╗║╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋║╩╣╔╣╔╣╬║╔╩╝╔╝╠╝╔╝║╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╚═╩╝╚╝╚═╩╝╔╗╚╗╠═╝╔╝╋╋╋╋╋╋╋╋╋╋
echo                     ║╚═╝║║╚═╗
echo.
echo Нажмите любою кнопку по завершению
pause
if exist M: goto DISKFOUND
if exist N: goto DISKFOUND
if exist O: goto DISKFOUND
if exist P: goto DISKFOUND
if exist Q: goto DISKFOUND
if exist R: goto DISKFOUND
if exist S: goto DISKFOUND
if exist T: goto DISKFOUND
if exist U: goto DISKFOUND
if exist V: goto DISKFOUND
if exist W: goto DISKFOUND
if exist X: goto DISKFOUND
if exist Y: goto DISKFOUND
if exist Z: goto DISKFOUND
cls
echo.
echo                     ╔═══╦═══╗
echo ╋╋╋╋╋╋╋╋╋╋╔═╦╦╦╦╦═╦╦╣╔═╗║╔═╗║╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋║╩╣╔╣╔╣╬║╔╩╝╔╝╠╝╔╝║╋╋╋╋╋╋╋╋╋╋
echo ╋╋╋╋╋╋╋╋╋╋╚═╩╝╚╝╚═╩╝╔╗╚╗╠═╝╔╝╋╋╋╋╋╋╋╋╋╋
echo                     ║╚═╝║║╚═╗
echo.
echo Данная функция в разработке
pause
cls 
goto LOL
:DISKFOUND
start Sources\bgkill.bat
cls 
goto END
:TEN
@set "hive=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
@reg Add "%hive%" /v ProxyServer /d учи.уроки:80 /f 
@reg Add "%hive%" /v ProxyEnable /t REG_DWORD /d 1 /f
start Sources/Timer.lnk
goto END
:END