#!/bin/bash

cd ~
echo -e "Welcome."
read -p "Please input the name of the folder containing your CavEX download." $folderName
read -p "Please choose between [option_1] [option_2] [option_3]. In order for it to work, you MUST type the option EXACTLY." pack
cd $HOME/CavEX-RM/source/packs/$pack
mv -fv terrain.png $HOME/$folderName/assets/
mv -fv clouds.png $HOME/$folderName/assets/environment/
mv -fv sun.png moon.png $HOME/$folderName/assets/environment/
echo -e "Patched succesfully."


