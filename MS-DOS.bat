#Work In Progress
@echo off
goto start

:start
echo Starting MS-DOS...
ping n- 127.0.0.1>nul
ping n- 127.0.0.1>nul
goto load_done

:load_done
goto cmd

:cmd
echo C:\
set /p input=
if %input% == dir goto dir
if %input% == clear goto clear
if %input% == shutdown goto shutdown
if %input% == CHKDISK goto checkdisk
if %input% == version goto version
if %input% == 

:dir
echo command.sys, command.exe
goto cmd

:clear
clr
goto cmd

:shutdown
S(hutdown), R(estart), or C(ancel)?
if %input% == S
taskkill/F /IM
if %input% == s
taskkill/F /IM
if %input% == R
clr
goto start
if %input% == r
clr
goto start
if %input% == C
goto cmd
if %input% == c
goto cmd

:checkdisk
echo Checking disk...
ping n- 127.0.0.1>nul
ping n- 127.0.0.1>nul
echo Disk status: good!
goto cmd

:version
(C) 1980-2013 Microsoft Corportation.
MS-DOS 1.0 Build 1246
goto cmd

