@echo off
:checker
tasklist /FI "IMAGENAME eq arma2oaserver.exe" 2>NUL | find /I /N "arma2oaserver">NUL
if "%ERRORLEVEL%"=="0" ping -n 10 127.0.0.1>nul & goto checker
if "%ERRORLEVEL%"=="1" tools\database\bin\mysqladmin -u root -p123456 --port=3310 shutdown & exit