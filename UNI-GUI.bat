@echo off
cd %cd%
cd "%~dp0"
color 02
goto start

:start
echo Starting...
echo Option Explicit>> UNI-GUI.vbs
echo Dim ws,Question,PathProgram>> UNI-GUI.vbs
echo Set ws = CreateObject("wscript.shell")>> UNI-GUI.vbs
echo PathProgram = "%cd%\UNI-ICO.bat">> UNI-GUI.vbs
echo Question = Msgbox("Start UNI-ICO?",VbYesNO + VbQuestion, "UNI-GUI")>> UNI-GUI.vbs
echo If Question = VbYes Then>> UNI-GUI.vbs
echo      ws.run DblQuote(PathProgram)>> UNI-GUI.vbs
echo   MsgBox "Started UNI-ICO.">> UNI-GUI.vbs
echo Else>> UNI-GUI.vbs
echo   MsgBox "UNI-ICO was not started.">> UNI-GUI.vbs
echo '****************************>> UNI-GUI.vbs
echo End If>> UNI-GUI.vbs
echo Function DblQuote(Str)>> UNI-GUI.vbs
echo      DblQuote = Chr(34) ^& Str ^& Chr(34)>> UNI-GUI.vbs
echo End Function>> UNI-GUI.vbs
echo '****************************>> UNI-GUI.vbs
move UNI-GUI.vbs "%cd%"

echo Boot prep finished. Create Shortcut on Desktop?
CHOICE /C 12 /T 3 /D 1 /M "Will make shortcut automatically in 3 sec... (YES=1/NO=2)"
IF %ERRORLEVEL%==1 GOTO short
IF %ERRORLEVEL%==2 GOTO noshort

:short
start shortcut.bat


:noshort
CHOICE /C 12 /T 3 /D 1 /M "Launch UNI-GUI? Auto-yes in 3 sec... (YES=1/NO=2)"
IF %ERRORLEVEL%==1 GOTO launch
IF %ERRORLEVEL%==2 GOTO exit

:launch
start UNI-GUI.vbs
goto exit

:exit
exit