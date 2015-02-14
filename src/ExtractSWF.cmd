@echo off
set log=
set cmdline=
:next
  if "%~1"=="" ( goto lbl1
  ) else if "%~1"=="-log" ( set log=^>^>EXTRTSWF.log
  ) else ( set cmdline=%cmdline% %1 )
  shift
goto next
:lbl1
:pause

if not exist EXTRTSWF.exe echo Not Found EXTRTSWF.exe & goto END
dir *.exe /A:-D /B /O:n /S | EXTRTSWF.exe -m -q%cmdline% %log%
:END
pause