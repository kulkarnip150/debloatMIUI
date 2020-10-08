$array = Get-Content -Path @("apps.txt")
$count=$array.Length
write-host "Near about "$count " apps are going to remove " -ForegroundColor red -BackgroundColor Yellow
write-host ""
write-host "Allow USB debugging on devices" -ForegroundColor Yellow -BackgroundColor red
write-host ""
write-host "waiting for 5 sec" -ForegroundColor Yellow -BackgroundColor red
write-host ""
Start-Sleep -s 3
adb devices
write-host ""
foreach($item in $array)
{
    Start-Sleep -s 1
    write-host "   " $item "   " -ForegroundColor red -BackgroundColor Yellow
    write-host ""
    $command="adb shell " + $item
    Invoke-Expression $command
    write-host ""
}
adb install VLC.apk
Start-Sleep -s 2
write-host "Device will restart..." -ForegroundColor red -BackgroundColor Yellow
adb reboot
write-host ""
write-host "Done" -ForegroundColor Yellow -BackgroundColor red