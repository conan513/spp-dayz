@echo off
COLOR 0B
set mod=%1

echo ###############################
echo # Single Player Project: DayZ #
echo #   by ConanHUN and Whit33r   #
echo ###############################
echo.
echo DayZ mod launcher.
echo.
echo DayZ maps:
echo 1 - Chernarus (1.7.7.1)
echo 2 - Taviana for DayZ 1.7.7 (Tact's Build)
echo.
echo DayZ mods:
echo 3 - DayZ Epoch     (1.0.1.5)
echo 4 - DayZ Origins   (1.7.1)
REM echo 5 - DayZ Overwatch (0.2.2)
echo.
set /P mod=Mod number: 
if "%mod%"=="1" start Expansion\beta\arma2oa.exe -mod=@Dayz -beta=Expansion\beta;Expansion\beta\Expansion -nosplash
if "%mod%"=="2" start Expansion\beta\arma2oa.exe -mod=@DayzTavi -beta=Expansion\beta;Expansion\beta\Expansion -nosplash
if "%mod%"=="3" start Expansion\beta\arma2oa.exe -mod=@DayZ_Epoch -beta=Expansion\beta;Expansion\beta\Expansion -nosplash -world=Chernarus
if "%mod%"=="4" start Expansion\beta\arma2oa.exe -mod=@DayzOrigins -beta=Expansion\beta;Expansion\beta\Expansion -nosplash -world=empty
REM if "%mod%"=="5" start Expansion\beta\arma2oa.exe -mod=@DayzOverwatch -beta=Expansion\beta;Expansion\beta\Expansion -nosplash -world=empty

exit

