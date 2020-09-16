@echo off
cd %cd%
color 02
goto stage1

:stage1
echo Press any key to prepare GUIGI.
pause
cls
echo Starting GUIGI phase 1 prep...
echo import subprocess>> GUIGI.py
echo Quellpfad = r"%cd%">> GUIGI.py
echo Quelldatei = r"\UNI-GUI.bat">> GUIGI.py
echo Quelle = Quellpfad + Quelldatei>> GUIGI.py
echo print(Quelle)>> GUIGI.py
echo subprocess.call(Quelle)>> GUIGI.py
echo GUIGI.py has finished with stage 1 prep.
goto stage2

:stage2
pause
cls
echo Starting stage 2 in 2 seconds...
timeout /t 2 >nobreak
del nobreak.*
start GUIGI-TEST.py
exit