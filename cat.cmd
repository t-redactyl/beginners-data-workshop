@echo off

rem helper for windows to allow usage of the cat command
setlocal EnableExtensions

:loop
if "%~1"=="" goto :done

rem Ignore notebook comments:
rem cat solutions/01_03.py # mac, linux
if "%~1"=="#" goto :done

set "file=%~1"

rem Convert Linux/mac-style paths to Windows paths
set "file=%file:/=\%"

type "%file%"

shift
goto :loop

:done
endlocal