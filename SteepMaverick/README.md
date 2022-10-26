# Threat Emulation: STEEP#MAVERICK 

This edition will eventually feature multiple emulations highlighting different components of the STEEP#MAVERICK campaign.

## Executive Summary
Researchers at Securonix Threat Labs recently reported a new cyber espionage campaign that is targeting defense contractors in the United States and abroad. What makes this particular campaign standout is the threat actors' attention to operations security and anti-analysis techniques used in the malware. STEEP#MAVERICK seems to have begun in late summer 2022 with attacks targeting multiple military contracting companies. Attacks focusing on defense contractors and suppliers have only increased in recent years and many of these campaigns have involved nation-state backed threat actors based in China, Russia, North Korea, and other countries.

## Cyber Threat Intelligence

### Profile
STEEP#MAVERICK, like many campaigns, begins its attack chain with a phishing email containing a compressed (.zip) file with shortcut (.lnk) file to a malicious PDF document. When the victim double-clicks the malicious file it kicks off a complex chain of stagers. Each stage is heavily obfuscated and written in PowerShell. Researchers observed eight stages; stage seven being where the interesting anti-analysis and counter-forensics techniques take place. Described as outright hostile by Securonix, when it detects sandboxing the malware will disable the systems network adapters, use netsh to configure the firewall to block all inbound/outbound traffic, and invoke PowerShell’s ‘Remove-Item’ commandlet to delete everything in the user’s profile, G:\, F:\, and E:\ drives before it shuts down the device with ‘Stop-Computer’. Currently there is no attribution however, if the system’s language is set to Chinese or Russian, the malware will only exit and shut down the device.

### Targets
* Defense contractors (U.S. and others)

### Objectives
* Cyber Espionage

### Capabalities
* Anti-Analysis/Defense Evasion
  * AMSI evasion
  * Sandbox detection
  * Disable Logging
  * Windows Defender Bypass
* Persistence
  * Scheduled Task creation
  * WMI Subscription
  * Registry modification to embed malicious script
  * Startup Shortcut and Lolbins
    * Pcalua.exe is used to call wsreset.exe
    * Executes script stored in modified registry key


## Attack

### Automated Emulation
1. Download and import w.ps1 file to your VFS to VFS:/shared/threats/STEEP_MAVERICK_ScheduledTasks.
2. Download and import the STEEP_MAVERICK .json file
3. Create a new campaign, selecting HTTPS, and configure your HTTPS communication options.
4. Under Sequence Templates click Existing Threats, select STEEP_MAVERICK and add steps to threat.
5. Click "Start Campaign"
6. Download the EXE and execute as admin from your test device.

## Detection Opportunities
Stay tuned for our upcoming blog that will highlight potential detection strategies!

## References
* https://www.securonix.com/blog/detecting-steepmaverick-new-covert-attack-campaign-targeting-military-contractors/
* https://www.youtube.com/watch?v=WJlqQYyzGi8
