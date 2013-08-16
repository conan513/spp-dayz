@echo off
COLOR 0B
set mod=%1

tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld">NUL
if "%ERRORLEVEL%"=="0" goto menu
if "%ERRORLEVEL%"=="1" start tools\3rdparty\silentcmd tools\database\bin\mysqld --defaults-file=tools\Database\bin\my.ini --standalone --console & echo Starting Database server... & REM ping -n 10 127.0.0.1>nul & goto menu

:menu
cls
echo ###############################
echo # Single Player Project: DayZ #
echo #   by ConanHUN and Whit33r   #
echo ###############################
echo.
echo DayZ servers:
echo -------------
echo 1 - Chernarus (1.7.7.1 - Official Hive)
echo.
echo DayZ servers with AI:
echo ---------------------
echo 2 - Chernarus + DZAI (1.7.7.1 - Official Hive)
echo 3 - Chernarus + Sarge AI (1.7.7.1 - Official Hive)
echo 4 - Chernarus + DZAI (1.7.7.1 - Reality Private Hive)
echo 5 - Taviana for DayZ 1.7.7 + Sarge AI (Tact's Build) [under development]
echo.
echo Mod servers with AI:
echo --------------------
echo 6 - DayZ Epoch + DZAI (1.0.1.5)
echo 7 - DayZ Origins + DZAI (1.7.1)
REM echo 5 - DayZ Overwatch (0.2.2) [under development]
echo.
echo 9 - Tools
echo.
set /P server=Server number: 

if "%server%"=="1" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz\cfgdayz\config.cfg" "-cfg=ServerFiles\dayz\cfgdayz\basic.cfg" "-profiles=ServerFiles\dayz\cfgdayz" -name=Reality "-mod=@dayz;expansion\beta;expansion\beta\expansion;Expansion\beta\expansion\addons;ServerFiles\dayz\@Hive" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
if "%server%"=="2" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz\cfgdayz_dzai\config.cfg" "-cfg=ServerFiles\dayz\cfgdayz_dzai\basic.cfg" "-profiles=ServerFiles\dayz\cfgdayz_dzai" -name=Reality "-mod=@dayz;expansion\beta;expansion\beta\expansion;Expansion\beta\expansion\addons;ServerFiles\dayz\@Hive_dzai" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
if "%server%"=="3" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz\cfgdayz_sarge\config.cfg" "-cfg=ServerFiles\dayz\cfgdayz_sarge\basic.cfg" "-profiles=ServerFiles\dayz\cfgdayz_sarge" -name=Reality "-mod=@dayz;expansion\beta;expansion\beta\expansion;Expansion\beta\expansion\addons;ServerFiles\dayz\@Hive_sarge" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
if "%server%"=="4" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz\dayz_1.chernarus\config.cfg" "-cfg=ServerFiles\dayz\dayz_1.chernarus\basic.cfg" "-profiles=ServerFiles\dayz\dayz_1.chernarus" -name=Reality "-mod=@dayz;expansion\beta;expansion\beta\expansion;Expansion\beta\expansion\addons;ServerFiles\dayz\@reality_1.chernarus" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
if "%server%"=="5" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_tavi\Tavi_config\config.cfg" "-cfg=ServerFiles\dayz_tavi\Tavi_config\basic.cfg" "-profiles=ServerFiles\dayz_tavi\Tavi_config" -name=Reality "-mod=@DayZTavi;expansion\beta;expansion\beta\expansion;Expansion\beta\expansion\addons;ServerFiles\dayz_tavi\@Reality_1.tavi" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048

if "%server%"=="6" goto epoch
if "%server%"=="7" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_origins\dayz_1.origins.tavi\config.cfg" "-cfg=ServerFiles\dayz_origins\dayz_1.origins.tavi\basic.cfg" "-profiles=ServerFiles\dayz_origins\dayz_1.origins.tavi" -name=Origins "-mod=expansion;expansion\beta;expansion\beta\expansion;@DayzOrigins;ServerFiles\dayz_origins\@dayz_1.origins.tavi" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
REM if "%server%"=="4" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_overwatch\dayz_overwatch\config.cfg" "-cfg=ServerFiles\dayz_overwatch\dayz_overwatch\basic.cfg" "-profiles=ServerFiles\dayz_overwatch\dayz_overwatch" -name=Origins "-mod=expansion;expansion\beta;expansion\beta\expansion;@DayzOverwatch;ServerFiles\dayz_overwatch\@dayz_overwatch" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048

if "%server%"=="9" goto tools

start tools\3rdparty\silentcmd tools\check.bat
exit

:dayzhive
.\tools\database\bin\mysql.exe --user=dayz --password=123456 --port=3310 --execute="call pMain(1)" hivemind
.\tools\database\bin\mysql.exe --user=dayz --password=123456 --port=3310 --execute="call pCleanup()" dayz_origins
.\tools\database\bin\mysql.exe --user=dayz --password=123456 --port=3310 --execute="call pMain()" dayz_origins

goto menu

:tools
cls
echo 0 - Back
echo.
echo 1 - Change CD key
echo 2 - Block Arma 2 key server   (Pirate mode on)
echo 3 - Unblock Arma 2 key server (pirate mode off)
echo.
echo 4 - Install .Net 4.0
echo 5 - Apply vehicle fix reg file
echo 6 - Install the latest ArmA 2 Beta patch
echo.
set /P server=Number: 
if "%server%"=="0" goto menu
if "%server%"=="1" start tools\3rdparty\arma2_keygen.exe & start tools\ArmaKeyChanger.exe & cls & goto tools
if "%server%"=="2" start tools\portblock.exe & cls & goto tools
if "%server%"=="3" start tools\portblock_del.exe & cls & goto tools

if "%server%"=="4" start tools\redist\dotNetFx40_Full_setup.exe & cls & goto tools
if "%server%"=="5" start tools\redist\vehicle_fix.reg & cls & goto tools
if "%server%"=="6" start tools\redist\ARMA2_OA_Build_107882.exe & cls & goto tools

goto tools

:epoch
cls
echo 1 - Chernarus
echo 2 - Utes
echo 3 - Takistan
echo.
set /P server=Server number: 

if "%server%"=="1" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\config.cfg" "-cfg=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\basic.cfg" "-profiles=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus" -name=dayz_epoch_11_Chernarus "-mod=@DayZ_Epoch;ServerFiles\dayz_epoch\@DayZ_Epoch_Server;" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
if "%server%"=="2" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_epoch\instance_2_utes\config.cfg" "-cfg=ServerFiles\dayz_epoch\instance_2_utes\basic.cfg" "-profiles=ServerFiles\dayz_epoch\instance_2_utes" -name=instance_2_utes "-mod=@DayZ_Epoch;ServerFiles\dayz_epoch\@DayZ_Epoch_Server;" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
REM if "%server%"=="3" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_epoch\instance_13_tavi\config.cfg" "-cfg=ServerFiles\dayz_epoch\instance_13_tavi\basic.cfg" "-profiles=ServerFiles\dayz_epoch\instance_13_tavi" -name=instance_13_tavi "-mod=@DayZ_Epoch;ServerFiles\dayz_epoch\@DayZ_Epoch_Server;@Taviana;" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
if "%server%"=="3" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_epoch\instance_1_takistan\config.cfg" "-cfg=ServerFiles\dayz_epoch\instance_1_takistan\basic.cfg" "-profiles=ServerFiles\dayz_epoch\instance_1_takistan" -name=instance_1_takistan "-mod=@DayZ_Epoch;ServerFiles\dayz_epoch\@DayZ_Epoch_Server;" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048
REM if "%server%"=="1" start "arma2" /min "Expansion\beta\arma2oaserver.exe" -port=2302 "-config=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\config.cfg" "-cfg=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus\basic.cfg" "-profiles=ServerFiles\dayz_epoch\dayz_epoch_11_Chernarus" -name=dayz_epoch_11_Chernarus "-mod=@DayZ_Epoch;ServerFiles\dayz_epoch\@DayZ_Epoch_Server;" -noPause -noSound -cpuCount=1 -exThreads=1 -maxMem=2048

exit
