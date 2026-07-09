@echo off
chcp 65001 >nul
title Cashtime Landing - локальный сервер
echo.
echo  Запускаю локальный сервер на http://localhost:8080 ...
echo  (не закрывай это окно, пока смотришь сайт)
echo.

REM Стартуем статический сервер в отдельном окне
start "Cashtime server" powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0.claude\serve.ps1" -Port 8080

REM Ждём пару секунд, пока сервер поднимется, и открываем браузер
timeout /t 2 >nul
start "" "http://localhost:8080/landing.dc.html"

echo  Готово. Сайт открыт в браузере.
echo  Чтобы остановить сервер - закрой окно "Cashtime server".
timeout /t 4 >nul
