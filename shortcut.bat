@echo off
cd "%cd%"
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\GUIGI.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%cd%\UNI-GUI.vbs" >> CreateShortcut.vbs
echo oLink.Description = "GUIGI by CLOCKW3RK" >> CreateShortcut.vbs
echo oLink.IconLocation = "%cd%\GUIGI.ico" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
exit