@ECHO OFF
:choice
set /P c=Do you want to install the main software packages? (Y/N)
if /I "%c%" EQU "Y" goto :msyes
if /I "%c%" EQU "N" goto :msno
goto :choice

:msyes
echo You said Yes, Installing main software packages! Standby!
pause
start main-software.bat 

:msno
echo You said No, Skipping Install of main software packages! Moving on..

:choice
set /P c=Do you want to install the opt software packages? (Y/N)
if /I "%c%" EQU "Y" goto :osyes
if /I "%c%" EQU "N" goto :osno
goto :choice

:osyes
echo You said Yes, Installing optional software packages! Standby!
pause 
exit

:osno
echo You said No, Skipping Install of optional software packages! Exiting..

exit