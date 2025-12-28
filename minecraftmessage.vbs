WScript.Sleep 1000 ' 1 saniye bekle (odak için zaman)

Set WshShell = CreateObject("WScript.Shell")

WshShell.SendKeys "t"
WScript.Sleep 300
WshShell.SendKeys "Hesabını kimse çalmadı, sadece sunucundaki boklu log4j exploiti sağolsun ki bu mesajları yazabiliyorum"
WScript.Sleep 200
WshShell.SendKeys "{ENTER}"
