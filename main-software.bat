@ECHO ON
cd ..
cd %CD%\Software\Installers\
mkdir updates
:choice
set /P c=Do you want to download the latest versions? (Y/N)
if /I "%c%" EQU "Y" goto :msupyes
if /I "%c%" EQU "N" goto :msupno
goto :choice

:msupyes
echo You said Yes, Downloading latest versions. Standby!
cd updates
wget -m https://data-cdn.mbamupdates.com/web/
wget --follow-ftp http://filehippo.com/download/file/8f40338858c209fe9da857f45c352e4361ebab8930b0814ab1fc16b56b1f7104/
wget http://cdn.superantispyware.com/SUPERAntiSpyware.exe

:msupno
cd ..
echo You said No, Moving to installs!
xcopy %CD%\updates\* %CD%\
start ChromeSetup.exe
pause