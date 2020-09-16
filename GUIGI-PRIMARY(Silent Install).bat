@echo off
cd %cd%
color 02
goto stage1

:stage1
echo import subprocess>> GUIGI.py
echo Quellpfad = r"%cd%">> GUIGI.py
echo Quelldatei = r"\UNI-GUI.bat">> GUIGI.py
echo Quelle = Quellpfad + Quelldatei>> GUIGI.py
echo print(Quelle)>> GUIGI.py
echo subprocess.call(Quelle)>> GUIGI.py
goto stage2

:stage2

timeout /t 2 >nobreak
del nobreak.*
start GUIGI.py
exit