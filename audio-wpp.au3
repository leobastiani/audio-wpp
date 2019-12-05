#include <Misc.au3>

_Singleton("audio")
AutoItSetOption("TrayAutoPause", 0)

HotKeySet("{ESC}", "Terminate")


Run("nircmd setappvolume chrome.exe 0.2")
Run("nircmd setappvolume LeagueClientUx.exe 0.2")
Run('nircmd setappvolume "League of Legends.exe" 0.2')
Run("nircmd setappvolume Skype.exe 0.2")
Run("nircmd setappvolume Discord.exe 0.2")

Run("nircmd muteappvolume Franz.exe 0")
Run("nircmd setappvolume Franz.exe 1")
Run("nircmd changesysvolume 20000")

Sleep(5*60*1000)

Terminate()

Func Terminate()
    Run("nircmd setappvolume chrome.exe 1")
    Run("nircmd setappvolume LeagueClientUx.exe 1")
    Run('nircmd setappvolume "League of Legends.exe" 1')
    Run("nircmd setappvolume Skype.exe 1")
    Run("nircmd setappvolume Discord.exe 1")
    Run("nircmd changesysvolume -20000")
    Run("nircmd setappvolume Franz.exe 0.50")
    Exit
EndFunc   ;==>Terminate