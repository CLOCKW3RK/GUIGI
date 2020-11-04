@echo off
echo from tkinter import *>> GUIGI.py
echo import subprocess>> GUIGI.py
echo root = Tk()>> GUIGI.py
echo topFrame = Frame(root)>> GUIGI.py
echo topFrame.pack(side=TOP)>> GUIGI.py
echo bottomFrame = Frame(root)>> GUIGI.py
echo bottomFrame.pack(side=BOTTOM)>> GUIGI.py
echo leftFrame = Frame(root)>> GUIGI.py
echo leftFrame.pack(side=TOP)>> GUIGI.py
echo rightFrame = Frame(root)>> GUIGI.py
echo rightFrame.pack(side=RIGHT)>> GUIGI.py
echo cemudir = r"%cd%\EmuBases\cemu">> GUIGI.py
echo cemubat = r"\cemu.bat">> GUIGI.py
echo cemugen = cemudir + cemubat>> GUIGI.py
echo citradir = r"%cd%\EmuBases\citra">> GUIGI.py
echo citrabat = r"\citra.bat">> GUIGI.py
echo citragen = citradir + citrabat>> GUIGI.py
echo pcsx2dir = r"%cd%\EmuBases\pcsx2">> GUIGI.py
echo pcsx2bat = r"\pcsx2.bat">> GUIGI.py
echo pcsx2gen = pcsx2dir + pcsx2bat>> GUIGI.py
echo pj64dir = r"%cd%\EmuBases\pj64">> GUIGI.py
echo pj64bat = r"\pj64.bat">> GUIGI.py
echo pj64gen = pj64dir + pj64bat>> GUIGI.py
echo retrodir = r"%cd%\EmuBases\retro">> GUIGI.py
echo retrobat = r"\retro.bat">> GUIGI.py
echo retrogen = retrodir + retrobat>> GUIGI.py
echo rpcs3dir = r"%cd%\EmuBases\rpcs3">> GUIGI.py
echo rpcs3bat = r"\rpcs3.bat">> GUIGI.py
echo rpcs3gen = rpcs3dir + rpcs3bat>> GUIGI.py
echo teknodir = r"%cd%\EmuBases\tekno">> GUIGI.py
echo teknobat = r"\tekno.bat">> GUIGI.py
echo teknogen = teknodir + teknobat>> GUIGI.py
echo yuzudir = r"%cd%\EmuBases\yuzu">> GUIGI.py
echo yuzubat = r"\yuzu.bat">> GUIGI.py
echo yuzugen = yuzudir + yuzubat>> GUIGI.py
echo legacydir = r"%cd%">> GUIGI.py
echo legacybat = r"\UNI-ICO.bat">> GUIGI.py
echo legacygen = legacydir + legacybat>> GUIGI.py
echo TheLabel = Label(topFrame, text="Make an icon for which emu?", fg="green")>> GUIGI.py
echo TheLabel.pack()>> GUIGI.py
echo TheBetterLabel = Label(bottomFrame, text="GUIGI IS REBORN.", fg="green")>> GUIGI.py
echo TheBetterLabel.pack()>> GUIGI.py
echo def cemugenerator():>> GUIGI.py
echo     print(cemugen)>> GUIGI.py
echo     subprocess.call(cemugen)>> GUIGI.py
echo def citragenerator():>> GUIGI.py
echo     print(citragen)>> GUIGI.py
echo     subprocess.call(citragen)>> GUIGI.py
echo def pcsx2generator():>> GUIGI.py
echo     print(pcsx2gen)>> GUIGI.py
echo     subprocess.call(pcsx2gen)>> GUIGI.py
echo def pj64generator():>> GUIGI.py
echo     print(pj64gen)>> GUIGI.py
echo     subprocess.call(pj64gen)>> GUIGI.py
echo def retrogenerator():>> GUIGI.py
echo     print(retrogen)>> GUIGI.py
echo     subprocess.call(retrogen)>> GUIGI.py
echo def rpcs3generator():>> GUIGI.py
echo     print(rpcs3gen)>> GUIGI.py
echo     subprocess.call(rpcs3gen)>> GUIGI.py
echo def teknogenerator():>> GUIGI.py
echo     print(teknogen)>> GUIGI.py
echo     subprocess.call(teknogen)>> GUIGI.py
echo def yuzugenerator():>> GUIGI.py
echo     print(yuzugen)>> GUIGI.py
echo     subprocess.call(yuzugen)>> GUIGI.py
echo def bootlegacy():>> GUIGI.py
echo     print(legacygen)>> GUIGI.py
echo     subprocess.call(legacygen)>> GUIGI.py
echo cemu = Button(leftFrame, text="CEMU", fg="deep sky blue", command=cemugenerator)>> GUIGI.py
echo citra = Button(rightFrame, text="CITRA", fg="orange", command=citragenerator)>> GUIGI.py
echo pcsx2 = Button(leftFrame, text="PCSX2", fg="DodgerBlue2", command=pcsx2generator)>> GUIGI.py
echo pj64 = Button(rightFrame, text="PROJECT 64", fg="Chartreuse4", command=pj64generator)>> GUIGI.py
echo retro = Button(leftFrame, text="RETROARCH", fg="SteelBlue1", command=retrogenerator)>> GUIGI.py
echo rpcs3 = Button(rightFrame, text="RPCS3", fg="turquoise4", command=rpcs3generator)>> GUIGI.py
echo tekno = Button(leftFrame, text="TEKNOPARROT", fg="red", command=teknogenerator)>> GUIGI.py
echo yuzu = Button(rightFrame, text="YUZU", fg="dark goldenrod", command=yuzugenerator)>> GUIGI.py
echo legacy = Button(rightFrame, text="Launch Old UNI-ICO", fg="black", command=bootlegacy)>> GUIGI.py
echo cemu.pack(side=LEFT, fill=X)>> GUIGI.py
echo citra.pack(side=RIGHT)>> GUIGI.py
echo pcsx2.pack(side=LEFT)>> GUIGI.py
echo pj64.pack(side=RIGHT)>> GUIGI.py
echo retro.pack(side=LEFT)>> GUIGI.py
echo rpcs3.pack(side=RIGHT)>> GUIGI.py
echo tekno.pack(side=LEFT)>> GUIGI.py
echo yuzu.pack(side=RIGHT)>> GUIGI.py
echo legacy.pack(side=BOTTOM)>> GUIGI.py
echo root.mainloop()>> GUIGI.py
goto ask

:ask
echo Boot prep finished. Create Shortcut on Desktop?
CHOICE /C 12 /T 3 /D 1 /M "Auto-making in 3 sec... (1=DO IT NOW, ABORT=2)"
IF %ERRORLEVEL%==1 GOTO short
IF %ERRORLEVEL%==2 GOTO exit

:shortcut
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\GUIGI.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%cd%\GUIGI.py" >> CreateShortcut.vbs
echo oLink.Description = "GUIGI by CLOCKW3RK" >> CreateShortcut.vbs
echo oLink.IconLocation = "%cd%\GUIGI.ico" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
goto exit

:exit
exit