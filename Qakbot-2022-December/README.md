# Threat Emulation: Qakbot - Updated TTPs - December 2022
Qakbot is making the rounds once again, expanding its service as malware used by Initial Access Brokers (IAB). After a takedown attempt on Emotet and a recent pause of its operation, Qakbot and Bokbot/IceID have dominated the field as IABs. Qakbot, also known as QBot was a banking trojan at its inception but due to its modular design can be quite versatile. An important call out here is that recent cyber threat intelligence reveals Qakbot threat actors have modified their tactics, techniques, and procedures. This is precisely why we have created this new emulation.

Our new Qakbot emulation, similar to the one published earlier this summer, also uses an ISO file for Mark of the Web (MOTW) bypass. This is effective because MOTW uses alternate data streams (ADS), which are not available in CD filesystems, hence any files in the mounted ISO cannot possibly support this security feature. The only file visible to the user in the ISO is AS.js.
Presuming that the curious user clicks on AS.js, a PowerShell script is launched from a hidden directory in the ISO named ‘peseta’. The PowerShell script decodes a text file containing the contents of the Qakbot DLL, copies it into C:\users\public\test1.txt (don’t be confused by the .txt extension, this is a DLL), and then executed by calling rundll32.exe. It should be noted that the DLL is x86, so C:\windows\syswow64\rundll32.exe will be called to load it.

Again, even if you’ve run previous Qakbot emulations published by SCYTHE, we encourage users to run this one as well to validate their detection engineering. If this is your first Qakbot emulation (possibly because you’re a new SCYTHE customer), you should also run the July 2022 Qakbot emulation since that infection chain is still active in the wild.
## Automated Emulation
1. Download and import the Qakbot-2022-December.zip file containing the VFS and .json files.
2. Create a new campaign, selecting HTTPS, and configure your HTTPS communication options.
3. Under Sequence Templates click Existing Threats, select Qakbot-2022-December and then add steps to threat.
4. Click "Start Campaign"
5. Download the EXE and execute as admin from your test device.

## References
* https://github.com/pan-unit42/tweets/blob/master/2022-11-28-IOCs-for-BB08-Qakbot-with-Cobalt-Strike.txt
* https://www.scythe.io/library/threat-emulation-qakbot
