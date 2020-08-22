@echo off
cd %cd%
color 02

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

echo Boot prep finished. Press any key to Launch UNI-GUI. Press ALT+F4 to not Launch UNI-GUI.
pause
start UNI-GUI.vbs
exit
