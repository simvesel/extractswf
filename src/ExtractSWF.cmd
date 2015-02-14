@echo off
if not exist EXTRTSWF.exe echo Not Found EXTRTSWF.exe & goto END
dir *.exe /A:-D /B /O:n /S | EXTRTSWF.exe -m -q
:END
pause>nul