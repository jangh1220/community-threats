# GootLoader Threat Emulation Plan

This threat is based on the GootLoader write-up from our friends at The DFIR Report.

https://thedfirreport.com/2022/05/09/seo-poisoning-a-gootloader-story/

## Summary from Cyber Threat Intelligence
Our GootLoader sample uses a JScript based malware package that has been seen in the wild since 2020. It is a multi-stage downloader often seen being used as an initial access vector in other malware campaigns. The threat actor leverages Search Engine Optimization (SEO) poisoning to move malicious or compromised websites higher in search results, increasing the likelihood of a user to visit the site and download the initial payload. Leveraging a multi-stage technique and loading some components only in memory allows the threat actor to split the functionality of its payload. This can make detection efforts more complex as components are not saved to disk on the victim machine.

JScript files have been a common initial stage since December 2020. More recent reporting from Blackberry, indicates that GootLoader scripts have shifted to masquerading as a legitimate jQuery library. What is of note here is that while the functions have not been redesigned, they have been rearranged to render use of a popular deobfuscation tool obsolete. 

Threat actor behavior seen in a February 2022 incident is described in detail by The DFIR Report. After establishing initial access and C2, the threat actor performed discovery via Sharphound to discover attack paths in Active Directory. Credential harvesting via Mimikatz and LaZange was observed on multiple devices, paving the way for lateral movement. Network enumeration is attempted via use of Advanced IP scanner. Persistence was achieved by creation of scheduled tasks. Attempts to evade detection were noted, as most commands were encoded and Windows Defender is disabled. RDP and remote WMI were seen to be the primary methods used to interact with targets of interest after the initial compromise


## Emulate with SCYTHE
**WARNING: RUNNING THIS EMULATION WILL DELETE SCHEDULED TASKS FOR WINDOWS DEFENDER! 

For testing purposes, you may want to test in non-production, make an offline backup, and/or or take a snapshot.

1. Download and import the threat in JSON format to your SCYTHE instance.
2. Download and unzip VFS.7z (password: infected)
3. Upload the Gootloader folder and it's contents to VFS:/shared/threats.
4. Create a new campaign, selecting HTTPS, and configure your HTTPS communication options.
5. Under Sequence Templates click Existing Threats and select Gootloader_Dangerous from the dropdown options.
6. Click Start Campaign.
7. Download the EXE and execute from your test device.

## Cleaning up
The emulation plan creates numerous files and directories. The clean up steps remove tools and reset configuration settings to sane defaults. Some cleanup steps involve enabling some Defender features which may have been disabled in the default state. If running this on a production machine, you should examine these settings to ensure that any cleanup returns the machine to an identical state.

