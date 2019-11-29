$settings = Get-Content -Path settings.json | ConvertFrom-Json;
$sleep = $settings.sleep;
$ssid = $settings.ssid;

Write-Output "Starting reconnect on ssid: ${ssid} - sleep time: ${sleep}sec";

while (1) {
    $time = Get-Date -Format "yyyy/MM/dd HH:mm:ss";
    if (!(Test-Connection -ComputerName www.google.com -Quiet)) {
        Write-Output "${time} - Reconnect attempt";
        netsh wlan connect name=$ssid
        continue
    }
    else {
        Write-Output "${time} - Connected already";
    }

    Start-Sleep -s $sleep;
}