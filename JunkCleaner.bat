@echo off
title Full Windows Trash Cleaner

echo This will permanently delete:
echo - Recycle Bin
echo - Temp files (User + System)
echo - Prefetch
echo - Windows Update cache
echo - Thumbnail cache
echo - Delivery optimization files
echo - Windows upgrade folders ($WINDOWS.~BT / $WINDOWS.~WS)
echo.
pause

echo Cleaning...

:: Recycle Bin (all users)
powershell -command "Get-ChildItem 'C:\$Recycle.Bin' -Force -Recurse | Remove-Item -Force -Recurse" >nul 2>&1
powershell -command "Clear-RecycleBin -Force" >nul 2>&1

:: User Temp
cd /D "%TEMP%"
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1

:: Windows Temp
cd /D "%SYSTEMROOT%\Temp"
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1

:: Prefetch
cd /D "%SYSTEMROOT%\Prefetch"
del /f /q * >nul 2>&1

:: Windows Update Cache
cd /D "%SYSTEMROOT%\SoftwareDistribution\Download"
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1

:: Delivery Optimization
cd /D "%ProgramData%\Microsoft\Network\Downloader"
del /f /q * >nul 2>&1

:: Thumbnail Cache (current user)
del /f /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db" >nul 2>&1

:: Windows Upgrade Folders
rd /s /q "%SystemDrive%\$WINDOWS.~BT" >nul 2>&1
rd /s /q "%SystemDrive%\$WINDOWS.~WS" >nul 2>&1

echo Done. All accessible junk files have been deleted.
echo Press any key to exit.
pause >nul
