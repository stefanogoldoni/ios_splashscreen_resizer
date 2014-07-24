rem batch Splash Resizer
rem by Stefano Goldoni 2014

set IRFANVIEWPATH=C:\Stefano\ExDiscoV\Portable\IrfanViewPortable\App\IrfanView
set FILEINPUT=c:\GetMyPos_Splash.png

rem Let's do the job!

rem iPhone non retina (iOS 6.1 and prior)
CALL :MAKEIT 320 480
rem iPhone retina
CALL :MAKEIT 640 960
rem iPhone retina 4-inch
CALL :MAKEIT 640 1136

rem iPad Portrait Non-Retina (iOS 6.1 and prior)
CALL :MAKEIT 768 1004
rem iPad Portrait Retina (iOS 6.1 and prior)
CALL :MAKEIT 1536 2008
rem iPad Landscape Non-Retina (iOS 6.1 and prior)
CALL :MAKEIT 1024 748
rem iPad Landscape Retina (iOS 6.1 and prior)
CALL :MAKEIT 2048 1496
rem iPad Portrait Non-Retina
CALL :MAKEIT 768 1024
rem iPad Portrait Retina
CALL :MAKEIT 1536 2048
rem iPad Landscape Non-Retina
CALL :MAKEIT 1024 768
rem iPad Landscape Retina
CALL :MAKEIT 2048 1536

GOTO :EOF

:MAKEIT
%IRFANVIEWPATH%\i_view32.exe %FILEORI% /resize=(%1,%2) /resample /convert=c:\$N_%1x%2.png
