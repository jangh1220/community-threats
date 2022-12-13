# Threat Emulation: BlackBasta-Updated TTPs

Black Basta is making the news once again as our friends at SentinelLabs released new research tying the operator’s latest activity to the Russian-linked FIN7. Despite being a relatively new player in the ransomware arena, Black Basta quickly gained credibility given their novel tools and techniques. Black Basta ransomware is cross platform, console-based executable affecting both Windows and Linux operating systems. Qakbot malware is often employed by the threat actor both for initial entry or as a payload for lateral movement. SCYTHE previously covered Black Basta for our October #ThreatThursday however these new TTPs in the latest report warrant a revisit.

The first installment of these new TTP emulations features an indicators of compromise (IOC) focused plan that covers known domain names and IP addresses being used at the time publication as well as an emulation of the threat actors use of a meterpreter .ps1 stager. As noted in an earlier blog highlighting STEEP#MAVERICK IOCs, we recognize that IP addresses, hash values, and domain names are all easily altered by a threat actor. We still feel that IOC feeds and detections have their place in control validation and are a small piece of the larger control validation and coverage picture. Knowing exactly where you stand and what your controls will and won’t detect is a must in any modern cybersecurity program.

The second installment features a different technique leveraged by the threat actor. Black Basta operators have a number of remote access trojan (RAT) tools at their disposal; this installment highlights one of these. Researchers observed the threat actor dropping a self-extracting archive containing the files needed to execute the Netsupport Manager application. Netsupport Manager is a multi-platform remote access/remote support tool that can provide one-to-many support. Black Basta stages these files in C:\temp with the name Svvhost.exe. When the file is executed, the installation files are extracted into C:\Users\[USER]\AppData\Roaming\MSN\. The RAT is then executed via a run.bat script.

### Automated Emulation
1. Download and import the BlackBasta_NewTTPs.zip file containing the VFS and .json files
2. Create a new campaign, selecting HTTPS, and configure your HTTPS communication options.
3. Under Sequence Templates click Existing Threats, select the desired BlackBasta threat and then add steps to threat.
4. Click "Start Campaign"
5. Download the EXE and execute as admin from your test device.

## References
* https://www.sentinelone.com/labs/black-basta-ransomware-attacks-deploy-custom-edr-evasion-tools-tied-to-fin7-threat-actor/
* https://www.scythe.io/library/threat-emulation-black-basta
