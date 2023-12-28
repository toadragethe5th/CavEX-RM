#!/bin/bash

cd ~
echo -e "Welcome."
read -p "Please input the name (NOT THE PATH) of the folder containing your CavEX download: " folderName

if [ -z "$folderName" ]; then
    echo "Invalid folder name. Exiting."
    exit 1
fi

read -p "Please choose your pack: Faithful, [option_2], [option_3]. TYPE YOUR ANSWER EXACTLY THE SAME AS THE CHOICE!" pack

if [ "$pack" != "Faithful" ] && [ "$pack" != "option_2" ] && [ "$pack" != "option_3" ] || [ -z "$pack" ]; then
    echo "Invalid pack selection. Exiting."
    exit 1
fi

packDirectory="$HOME/CavEX-RM/source/packs/$pack"
CavEX="$HOME/$folderName"

if [ -e "$packDirectory/terrain.png" ]; then
    mv -fv "$packDirectory/terrain.png" "$CavEX/assets/"
fi

if [ -e "$packDirectory/clouds.png" ]; then
    mv -fv "$packDirectory/clouds.png" "$CavEX/assets/environment/"
fi

if [ -e "$packDirectory/sun.png" ] && [ -e "$packDirectory/moon.png" ]; then
    mv -fv "$packDirectory/sun.png" "$packDirectory/moon.png" "$CavEX/assets/terrain/"
fi

echo -e "Patched successfully."
