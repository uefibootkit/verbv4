# Duvar kagidi dosya yolu
$path = "cd C:\Users\L\AppData\Roaming\.minecraft\Mia_Khalifa_pornstar-1402223.jpg"

# Registry ayari
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallPaper -Value $path

# Duvar kagidini zorla yenile
Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
  [DllImport("user32.dll", SetLastError = true)]
  public static extern bool SystemParametersInfo(
    int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $path, 3)
