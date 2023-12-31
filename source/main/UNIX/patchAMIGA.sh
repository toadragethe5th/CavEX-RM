; Amiga CLI Script
; Save this file with a .sh extension, e.g., patch.sh
; it is amazing how similiar and at the same time how different this is from regular shell script. It feels archaic, almost like assembly.
CD RAM:
Echo "Welcome."
Input "Please input the name (NOT THE PATH) of the folder containing your CavEX download: " folderName

If $folderName EQ ""
    Echo "Invalid folder name. Exiting."
    Quit 1
EndIf

Input "Please choose your pack: Faithful, BetaFine. TYPE YOUR ANSWER EXACTLY THE SAME AS THE CHOICE!" pack

If $pack NE "Faithful" AND $pack NE "BetaFine" OR $pack EQ ""
    Echo "Invalid pack selection. Exiting."
    Quit 1
EndIf

Assign packDirectory RAM:CavEX-RM/source/packs/$pack
Assign CavEX RAM:/$folderName

If EXISTS $packDirectory/terrain.png
    Rename $packDirectory/terrain.png TO $CavEX/assets/terrain.png
EndIf

If EXISTS $packDirectory/clouds.png
    Rename $packDirectory/clouds.png TO $CavEX/assets/environment/clouds.png
EndIf

If EXISTS $packDirectory/sun.png AND EXISTS $packDirectory/moon.png
    Rename $packDirectory/sun.png TO $CavEX/assets/terrain/sun.png
    Rename $packDirectory/moon.png TO $CavEX/assets/terrain/moon.png
EndIf

Echo "Patched your installation successfully. Exiting."
Delay 50
Quit 0
