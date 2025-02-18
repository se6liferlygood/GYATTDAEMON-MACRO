@echo off
title GYATTDAEMON!
set safety=0
if not exist %CD%\files\action_falling.mp3 (
    set safety=1
)
if not exist %CD%\files\action_falling.ogg (
    set safety=1
)
if not exist %CD%\files\action_jump.mp3 (
    set safety=1
)
if not exist %CD%\files\ClientAppSettings.json (
    set safety=1
)
if not exist %CD%\files\ouch.ogg (
    set safety=1
)
if %safety%==1 (
    echo ERROR MISSING FILES!
    timeout /t 5 /nobreak >NUL
    exit
)
echo GYATTDAEMON MACRO MADE BY LEADER OF LPI FART ARMY!
pause
echo HACKING ROBLOX!
timeout /t 3 /nobreak >NUL
set count=0
:loop
set /a count+=1
if %count% NEQ 10000 (
    echo %random%
    goto loop
)
cls
if not exist %localappdata%\Roblox\Versions\ (
    echo FAILED TO HACK ROBLOX GAME CLIENT!
    timeout /t 5 /nobreak >NUL
    exit
)
set opath=%CD%
set root_dir=%localappdata%\Roblox\Versions
set filename="RobloxPlayerBeta.exe"
set nice=0
for /d %%d in (%root_dir%\*) do (
    if exist "%%d\%filename%" (
        cd %%d
        set path=%%d
        set nice=1
    )
)
taskkill /im "RobloxPlayerBeta.exe" /f >NUL
cls
if %nice%==0 (
    echo FAILED TO HACK ROBLOX GAME CLIENT!
    timeout /t 5 /nobreak >NUL
    exit
) else (
    echo ROBLOX GAME CLIENT HACKED!
)
if exist "%path%\ClientSettings\" (
    rmdir /s /q "%path%\ClientSettings" >NUL
)
mkdir ClientSettings >NUL
copy "%opath%\files\ClientAppSettings.json" "%CD%\ClientSettings" >NUL
cd content\sounds
del action_falling.mp3
copy "%opath%\files\action_falling.mp3" "%CD%" >NUL
del action_falling.ogg
copy "%opath%\files\action_falling.ogg" "%CD%" >NUL
del action_jump.mp3
copy "%opath%\files\action_jump.mp3" "%CD%" >NUL
del ouch.ogg
copy "%opath%\files\ouch.ogg" "%CD%" >NUL
pause
echo STARTING GYATTDAEMON HACKED ROBLOX PLEASE WAIT!
start RobloxPlayerBeta.exe
pause
:trolled
echo GYATT!
pause >NUL
goto trolled