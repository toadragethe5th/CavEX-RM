Write-Host "Welcome."
$folderName = Read-Host "Please input the name of the folder containing your CavEX download."
$pack = Read-Host "Please choose between [option_1] [option_2] [option_3]. In order for it to work, you MUST type the option EXACTLY."
Set-Location -Path "$env:userprofile\CavEX-RM\source\packs\$pack"
Move-Item -Path "terrain.png" -Destination "$env:userprofile\$folderName\assets\" -Force
Move-Item -Path "clouds.png" -Destination "$env:userprofile\$folderName\assets\environment\" -Force
Move-Item -Path "sun.png", "moon.png" -Destination "$env:userprofile\$folderName\assets\environment\" -Force
Write-Host "Patched successfully."
