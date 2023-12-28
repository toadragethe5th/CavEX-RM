@echo off
setlocal

cd %USERPROFILE%
echo Welcome.

set /p "folderName=Please input the name (NOT THE PATH) of the folder containing your CavEX download: "

if not defined folderName (
    echo Invalid folder name. Exiting.
    exit /b 1
)

set /p "pack=Please choose your pack: Faithful, BetaFine, [option_3]. TYPE YOUR ANSWER EXACTLY THE SAME AS THE CHOICE! "

if /i "%pack%" neq "Faithful" if /i "%pack%" neq "option_2" if /i "%pack%" neq "option_3" (
    echo Invalid pack selection. Exiting.
    exit /b 1
)

set "packDirectory=%USERPROFILE%\CavEX-RM\source\packs\%pack%"
set "CavEX=%USERPROFILE%\%folderName%"

if exist "%packDirectory%\terrain.png" move /y "%packDirectory%\terrain.png" "%CavEX%\assets\"

if exist "%packDirectory%\clouds.png" move /y "%packDirectory%\clouds.png" "%CavEX%\assets\environment\"

if exist "%packDirectory%\sun.png" if exist "%packDirectory%\moon.png" (
    move /y "%packDirectory%\sun.png" "%packDirectory%\moon.png" "%CavEX%\assets\terrain\"
)

echo Patched successfully. Exiting.
exit /b 0



REM I don't really know batch, so I relied on a code converter for this. I sure hope it works.
