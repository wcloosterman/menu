@ECHO OFF

net session >nul 2>&1

    if %errorLevel% == 0 (

        setlocal
        cd /d %~dp0

        if exist BRU-uninstall-helpers\streams.exe (

            BRU-uninstall-helpers\streams.exe /accepteula -s -d *.ps1
            BRU-uninstall-helpers\streams.exe /accepteula -s -d *.bat
            BRU-uninstall-helpers\streams.exe /accepteula -s -d BRU-uninstall-helpers\*.exe
            BRU-uninstall-helpers\streams.exe /accepteula -s -d BRU-uninstall-helpers\*.dll
            BRU-uninstall-helpers\streams.exe /accepteula -s -d BRU-uninstall-helpers\*.vbs
        )

powershell.exe -noprofile -executionpolicy bypass -file C:\BRU\Bloatware-Removal-Utility.ps1 -s -exclude "keyboard","driver","HP Universal Camera Driver","HP Hotkey Support","HP Wireless Button Driver","Microsoft\ Office","Microsoft\.Office","Microsoft Office 365 - en-us" -includelast "HP Client Security Manager","HP Support Assistant" -norestorepoint
	pause
    rem exit

    ) else (

        echo You must be logged in as a member of the Adminstrators group and right-click
        echo this batch file then "Run as Administrator" for the PowerShell script
        echo to execute properly.

    )    

PAUSE
