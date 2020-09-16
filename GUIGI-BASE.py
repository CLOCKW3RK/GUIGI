import subprocess
Quellpfad = r"C:\Users\Admin\Desktop\UNI-GUI"
Quelldatei = r"\UNI-GUI.bat"
Quelle = Quellpfad + Quelldatei
print(Quelle)
subprocess.call(Quelle)