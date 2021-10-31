@echo off
title Komprimovani zalohy Datovky
echo Pro pokracovani je potreba, aby aplikace Datovka byla vypnuta. Jinak hrozi poskozeni dat!!!
echo.
echo Stiskem jakekoliv klavesy bude proces pokracovat...
pause >nul
cd C:\Program Files\7-Zip
FOR /F "tokens=* USEBACKQ" %%F IN (`powershell -Command "Get-Date -format yyyy-MM-dd__HH-mm-ss"`) DO (
SET datetime=%%F
)
7z a "C:\Users\UZIVATEL\Documents\Datovka\ds-zaloha-%datetime%.7z" "C:\Users\UZIVATEL\AppData\Roaming\.dsgui" -mx=9 -mmt=6
move C:\Users\UZIVATEL\Documents\Datovka\ds-zaloha-%datetime%.7z C:\Users\UZIVATEL\Documents\Datovka\zaloha
echo.
echo.
echo Stiskni jakoukoliv klavesu nebo zavri toto okno...
pause >nul