@echo off
echo All files in recyclebin, user temp, windows temp directories will be deleted.
pause
echo Cleaning...
rd /s /q %SYSTEMDRIVE%\$Recycle.bin >nul 2>&1
cd /D %TEMP%
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1
cd %SYSTEMDRIVE%\Windows\Temp >nul 2>&1
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1
cd %SYSTEMDRIVE%\Windows\Prefetch >nul 2>&1
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1
cd %SYSTEMDRIVE%\Windows\SoftwareDistribution\Download >nul 2>&1
for /d %%D in (*) do rd /s /q "%%D" >nul 2>&1
del /f /q * >nul 2>&1
echo Done. Deleted all accessible junk files.
echo Hit any key to exit.
pause >nul