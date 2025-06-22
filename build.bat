@echo off

ECHO Bundling APBX package...

where 7z >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO 7-Zip is not installed. Please install 7-Zip and try again.
    EXIT /B 1
)

setlocal

rem Define the output file name
set "outputFile=BetterNT.apbx"

rem Define the source directory
set "sourceDir=.\"

REM Create the APBX package using 7-Zip (with passwd "malte")
7z a -tzip "%outputFile%" "%sourceDir%*" -x!*.bat -x!build.bat -x!*.log -x!*.tmp -x!*.zip -x!*.7z -x!*.rar -x!*.tar -x!*.gz -x!*.xz -p"malte"