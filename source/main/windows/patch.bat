@echo off
setlocal

cd /d %userprofile%
echo Welcome.
set /p folderName="Please input the name of the folder containing your CavEX download: "
set /p pack="Please choose between [option_1] [option_2] [option_3]. In order for it to work, you MUST type the option EXACTLY: "
cd %userprofile%\CavEX-RM\source\packs\%pack%

move /Y terrain.png %userprofile%\%folderName%\assets\
move /Y clouds.png %userprofile%\%folderName%\assets\environment\
move /Y sun.png %userprofile%\%folderName%\assets\environment\
move /Y moon.png %userprofile%\%folderName%\assets\environment\

echo Patched successfully.
