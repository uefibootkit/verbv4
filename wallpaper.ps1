$path = "C:\Users\Emirhan-aylın\Pictures\wallpaper.jpg"

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallPaper -Value $path

Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
  [DllImport("user32.dll", SetLastError = true)]
  public static extern bool SystemParametersInfo(
    int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $path, 3)

