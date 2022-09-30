# Threat Emulation: Yanluowang 
Welcome to the September 2022 SCYTHE #ThreatThursday! This edition features Yanluowang emulation plans based on data from multiple sources about the Yanluowang ransomware group. We would like to especially thank Cisco Talos for their fantastic writeup on the actions taken in the network by the threat actors. We know it is always challenging for victims to share data from their incidents and this is certainly no exception. Cisco has provided a model for victim organizations in transparency around its incident, ensuring that data is shared so other victims can be more prepared.

## Executive Summary
The Yanluowang ransomware group has been around since at least late 2021, but many people had never heard their name prior to their involvement in the Cisco incident in August 2022. SCYTHE posting this threat in no way should be construed as victim blaming. On the contrary, there is sufficient data in the public domain to discuss at least in part because of the great work by Talos.

For this Threat Thursday, SCYTHE is taking a bit of a different approach. Traditionally, our ThreatThursday emulation plans are large and contain an entire attack chain. We’ve received feedback from customers that emulation plans of this size are difficult for some to operationalize. For this month’s ThreatThursday, we’ve broken the steps down into multiple plans, highlighting different components of the operation. If you want to run a complete emulation, you should consider combining the plans into a single campaign. We believe that most teams will be better served by consuming smaller (but by no means inconsequential) plans emulating Yanluowang procedures.

The plans being released with this ThreatThursday are:
* Create a new backdoor user “z” and add this user to the local administrators group (Yanluowang_add_admin_user)
* Execute ntdsutil and exfiltrate the data (Yanluowang_ntdsutil)
* Install LogMeIn (Yanluowang_LogMeIn)
* Use ImageFileExecutionOptions (IFEO) to backdoor both narrator.exe and sethc.exe (Yanluowang_ifeo_login_bypass)
* IFEO backdoor with PSEXEC (Yanluowang_ifeo_psexec)

## Cyber Threat Intelligence

### Profile
Yanluowang ransomware, first discovered by Symantec, has been seen being used in targeted attacks since at least August 2021. Some reports have suggested a link between Yanluowang and Thieflock (a RaaS developed by the Canthroid/Fivehands group) due to overlap in TTPs used. A deeper analysis of the code does not support shared authorship but instead may suggest that Yanluowang attacks could be carried out by former Thieflock affiliate groups.

Historically, use of AdFind and SoftPerfect Network Scanner have been noted as potential precursors to Yanluowang attacks. Researchers have also observed use of WMI to obtain a list of running processes on remote devices of interest. Prior to deployment of the ransomware, PowerShell is often used to download other tools to aid in reconnaissance. Credential theft, specifically targeting those stored in browsers, is accomplished via GrabFF, GrabChrome, BrowserPassView, and KeeThief. Once Yanluowang is deployed the malware halts all processes of interest, encrypts files on the compromised device, appends the .yanluowang extension, and drops a README.txt ransom note.

In the most recent May attack, researchers observed some additional TTPs such as:
* Creation of local admin user “z”
* Remote access tools usage (LogMeIn and Team Viewer)
* Windows logon byass technique leveraging ImageFileExecutionOptions


### Targets
Attacks have been heavily focused on U.S. corporations in the financial sector but companies in manufacturing, IT services, consulting, and engineering have been targeted as well.

### Objectives
* Data exfiltration
* Data encryption
* Credential harvesting

### Capabalities
* Reconnaissance
  * ADFind
  * SoftPerfect Network Scanner
  * Process enumeration via WMI
* Lateral Movement
  * PSExec.exe
* Persistence
  * Creation of local admin account(s)
  * Changing passwords of existing local accounts
  * Use of Windows logon bypass techniques (leveraged accessibility features)
* Remote Access
  * RDP
  * ConnectWise
  * LogMeIn
  * TeamViewer
* Credential Harvesting
  * Ntdsutil.exe
  * Extraction of HKLM\SYSTEM, SAM and SECURITY hives
  * GrabFF (tool to dump passwords from Firefox)
  * GrabChrome (tool to dump passwords from Chrome)
  * BrowserPassView (tool to dump passwords from Internet Explorer + other browsers
  * Kee Thief (PowerShell script to copy the master key from Kee Pass)
* Data Exfiltration
  * Screen capture tools
  * File exfiltration via filegrab.exe
* Other payload delivery
  * BazarLoader
  * Cobalt Strike



## Attack

### Automated Emulation
1. Download and import the common_x64 directory and files to your VFS if not already present.
2. Download and import the Yanluowang.zip file containing the VFS and .json files
3. Create a new campaign, selecting HTTPS, and configure your HTTPS communication options.
4. Under Sequence Templates click Existing Threats and select the Yanluowang threat of your choice and add steps to threat.
5. Click "Start Campaign"
6. Download the EXE and execute as admin from your test device.

## Detection Opportunities
Please see our full September blog post for detailed detection engineering strategies

## References
* https://blog.talosintelligence.com/2022/08/recent-cyber-attack.html
* https://www.trendmicro.com/en_us/research/21/l/yanluowang-ransomware-code-signed-terminates-database-processes.html
* https://symantec-enterprise-blogs.security.com/blogs/threat-intelligence/yanluowang-ransomware-attacks-continue
