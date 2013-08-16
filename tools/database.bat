@echo off
tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld">NUL
if "%ERRORLEVEL%"=="0" exit
if "%ERRORLEVEL%"=="1" start 3rdparty\silentcmd database\bin\mysqld --defaults-file=Database\bin\my.ini --standalone --console & echo Starting Database server... & ping -n 10 127.0.0.1>nul
exit
