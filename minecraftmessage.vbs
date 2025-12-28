WScript.Sleep 1000 ' 1 saniye bekle (odak için zaman)

Set WshShell = CreateObject("WScript.Shell")

WshShell.SendKeys "t"
WScript.Sleep 300
WshShell.SendKeys "Merhabalar, Ben Emirhan!"
WScript.Sleep 200
WshShell.SendKeys "{ENTER}"
