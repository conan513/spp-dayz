@echo off

bin\mysqld --defaults-file=bin\my.ini --standalone --console

if errorlevel 1 goto error
goto finish

:error
echo.
echo MySQL konnte nicht gestartet werden
echo MySQL could not be started
pause

:finish
