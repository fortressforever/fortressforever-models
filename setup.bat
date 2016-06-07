@echo off
FOR /f "tokens=1,2*" %%E in ('reg query "HKEY_CURRENT_USER\Software\Valve\Steam"') DO (
	IF "%%E"=="SteamPath" (
		set SteamPath=%%G
	)
)
IF "%SteamPath%"=="" (
	echo Not able to determine Steam install path. Make sure you have Steam installed
	pause
	exit /B
)
IF "%sourcesdk%"=="" (
	echo SourceSDK environment variable is not set. Run Source SDK once before executing this script
	pause
	exit /B
)

set GameDir=%SteamPath%/steamapps/common/Fortress Forever
set ModDir=%GameDir%/FortressForever

IF NOT EXIST "%GameDir%" (
	echo "%GameDir%" does not exist. Make sure Fortress Forever is installed
	pause
	exit /B
)

set Ep1BinDir=%sourcesdk%\bin\ep1\bin
set SteamConfigFile=%SteamPath%\config\SteamAppData.vdf
set Ep1ConfigDir=%Ep1BinDir%\config
set Ep1ConfigFile=%Ep1ConfigDir%\SteamAppData.vdf
set GameInfoDir=%GameDir%/sdk
set GameInfoFile=%GameInfoDir%/gameinfo.txt

IF NOT EXIST "%SteamConfigFile%" (
	echo "%SteamConfigFile%" does not exist. Try launching Steam
	pause
	exit /B
)

IF NOT EXIST "%GameInfoDir%" mkdir "%GameInfoDir%"
echo(
echo Writing "%GameInfoFile%"...
(
echo "GameInfo"
echo {
echo 	game	"Fortress Forever"
echo 	title	"Fortress Forever"
echo 	name	"Fortress Forever"
echo 	type multiplayer_only
echo(
echo 	FileSystem
echo 	{
echo 		SteamAppId				215
echo 		ToolsAppId				211
echo 		SearchPaths
echo 		{
echo 			Game				^|gameinfo_path^|..\FortressForever
echo 			Game				^|gameinfo_path^|..\hl2
echo 			Game				^|gameinfo_path^|..\platform
echo 		}
echo 	}
echo }
) > "%GameInfoFile%"
echo  -^> Done

:: Need to copy SteamAppData.vdf from Steam/config/ to bin/ep1/bin so that studiomdl
:: doesn't throw a 'Can't find steam app user info' error
echo(
echo Writing "%Ep1ConfigFile%"...
IF NOT EXIST "%Ep1ConfigFile%" (
    IF NOT EXIST "%Ep1ConfigDir%" mkdir "%Ep1ConfigDir%"
    XCOPY /R /Y /V "%SteamConfigFile%" "%Ep1ConfigDir%"
    echo  -^> Done
) ELSE (
    echo  -^> File already exists
)

echo(
echo Source SDK setup completed successfully.
echo(

pause
