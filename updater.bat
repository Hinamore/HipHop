@echo off
title hide updater
color 0a
cls
ren version.txt v.txt
cls
:::::::VERSION.TXT DOWNLOADER:::::::https://www.dropbox.com/sh/605bbdfgp1e0ssy/AABFFhRY1_vA7eE59a_eTweCa?dl=0
echo downloading version.txt
curl -k -L  https://www.dropbox.com/s/x1rzhibp0q5i692/version.txt?dl=0 > nul
ping 1.1.1.1 -n 2 -w 3000 > nul
pause
:::::::VERSION CHECKER::::::::
cls
echo checking new version .....
ping 1.1.1.1 -n 2 -w 3000 > nul
SetLocal EnableDelayedExpansion
set content=
for /F "delims=" %%i in (version.txt) do set content=!content! %%i
echo New version is %content%
ping 1.1.1.1 -n 2 -w 3000 > nul
EndLocal
cls
echo checking last version .....
ping 1.1.1.1 -n 2 -w 3000 > nul
SetLocal EnableDelayedExpansion
set con=
for /F "delims=" %%i in (v.txt) do set con=!content! %%i
echo Last version is %con%
ping 1.1.1.1 -n 2 -w 3000 > nul
EndLocal
cls
::::::COMPARING VERSIONS:::::::
echo Comparing version....
if %con% EQU %content% goto utd 
if %con% NEQ %content% goto dl
:utd
::::PROGRAM IS UP TO DATE:::::
cls
echo PROGRAM IS UP TO DATE
ping 1.1.1.1 -n 2 -w 3000 > nul
del version.txt
ren v.txt version.txt
exit
:dl
cls
echo downloading version %content%...
curl -k https://www.dropbox.com/sh/605bbdfgp1e0ssy/AABFFhRY1_vA7eE59a_eTweCa?dl=0 > nul
:::::::https://www.dropbox.com/sh/605bbdfgp1e0ssy/AABpanosVYxqjKzWCixMz434a/version.txt?dl=0::::::::::
:::::::https://www.dropbox.com/sh/605bbdfgp1e0ssy/AABFFhRY1_vA7eE59a_eTweCa?dl=0::::::::::::::::::::::