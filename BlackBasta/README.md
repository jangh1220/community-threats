# Threat Emulation: BlackBasta
Welcome to the October 2022 SCYTHE #ThreatThursday! This edition features an emulation based on BlackBasta ransomware. 

## Executive Summary
BlackBasta is back on the radar again this fall after a rise in Qakbot malware distribution was observed. Qakbot is a common initial entry and lateral movement tool used by the BlackBasta ransomware group. BlackBasta is cross platform, affecting both Windows and Linux operating systems and attacks do not seem to be targeting a specific industry or vertical. The group leverages a double-extortion technique and hosts a Tor site where they post the names of all their victims that have not yet paid the ransom. Based on similarities in tactics, techniques, and procedures there is speculation that BlackBasta is not a new operation, but a faction or split off that includes former Conti operators.

## Cyber Threat Intelligence


### Profile
Black Basta is a relatively new ransomware group first discovered in April 2022 that leverages double-extortion as a part of its attacks. Despite being relatively new to the scene, reports indicate that at least 20 victims were posted to the group’s leak site within the first two weeks of operation. This suggests experienced operators with a reliable source of initial entry. It follows that there is speculation of Black Basta being a rebrand of Conti or a rogue faction of Conti.

This group has been observed to use Qakbot as both an initial point of entry and as a means of lateral movement. The Black Basta ransomware itself is a console-based executable that can only be executed with administrator privileges. It supports use of a -forcepath command line argument to only encrypt files in a specific directory if desired. It spawns a mutex to ensure a single instance of the malware is running at a time and iterates through to encrypt files and add the .basta extension.

An interesting method of persistence employed by BlackBasta ransomware is to hijack a legitimate service by deleting it, and then re-creating a new malicious service with the same name (the Fax service has been observed in the wild). The ransomware also makes additional modifications to the registry. These changes ensure the malicious system is running after a reboot into safe mode to kick off data encryption.


### Targets
Black Basta has been observed to primarily target U.S. based organizations in the construction and manufacturing industries. Black Basta ransomware is written in C++ and affects both Windows and Linux operating systems. In June 2002, researchers reported a VMware ESXi variant that targeted virtual machines running on Linux servers.

### Objectives
* Data encryption
* Data exfiltration
* Financial profit


### Capabalities
* Initial Entry 
  * Qakbot
* Discovery
  * Account discovery (net user /domain, net group /domain)
  * Collection of internal IP addresses 
* Lateral Movement
  * Qakbot
  * RDP
  * PsExec
* Execution
  * PsExec
  * PowerShell
    * Invoke-TotalExec
* Persistence
  * Account creation/manipulation
  * Creation or modification of services
  * DLL search order hijacking
* Privilege Escalation
  * Group policy modification
  * Create or modify system processes
* Credential Theft
  * Mimikatz
* Command and Control
  * Cobalt Strike
  * Use of remote access software
    * Team Viewer
    * AnyConnect)
* Defense Evasion
  * Deletion of malicious files
  * Registry modification
  * Use of regsvr32.exe to execute malicious DLL
  * Disable Windows Defender
 

## Attack

### Automated Emulation
1. Download and import the common_x64 directory and files to your VFS if not already present.
2. Download and import the BlackBasta.zip file containing the VFS and .json files
3. Create a new campaign, selecting HTTPS, and configure your HTTPS communication options.
4. Under Sequence Templates click Existing Threats, select BlackBasta and add steps to threat.
5. Click "Start Campaign"
6. Download the EXE and execute as admin from your test device.


## Detection Opportunities
Please see our full Threat Thursday blog for detailed detection engineering strategies

## References
* https://unit42.paloaltonetworks.com/threat-assessment-black-basta-ransomware/
* https://www.avertium.com/resources/threat-reports/in-depth-look-at-black-basta-ransomware
* https://www.trendmicro.com/en_us/research/22/j/black-basta-infiltrates-networks-via-qakbot-brute-ratel-and-coba.html
* https://www.trendmicro.com/en_us/research/22/f/black-basta-ransomware-operators-expand-their-attack-arsenal-wit.html
* https://minerva-labs.com/blog/new-black-basta-ransomware-hijacks-windows-fax-service
