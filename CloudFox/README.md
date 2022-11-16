# CloudFox

Welcome to the November 2022 SCYTHE #ThreatThursday! This month’s emulation takes a break from our traditional adversary emulation campaigns and instead features use of BishopFox’s cloud enumeration tool CloudFox. A common question we hear from SCYTHE customers is “how do we use SCYTHE to audit the security of our cloud resources?” Some clarification is needed since SCYTHE is an adversary emulation platform focusing on post-exploitation and this question implies a different use-case: a customer wanting to perform an audit. Diving deeper into the question and peeling back the layers reveals the idea that customers are looking for tooling to help ensure they have configured the appropriate settings in the public cloud environments.

We have put together a plan that demonstrates use of CloudFox for basic reconnaissance and enumeration. CloudFox is a command line tool that contains a collection of enumeration commands that offensive security professionals can use to explore unfamiliar cloud environments and discover attack paths in AWS infrastructure. We won’t be providing ATT&CK tagging as this campaign is not indicative of real threat actor behavior, and as such detection engineering isn’t warranted. 


## Emulate with SCYTHE

**Before running this campaign, please ensure you are on a system with an AWS IAM role configured or under an account with AWS credentials configured or you will receive error messages/failed steps.

1. Download and import the threat in JSON format to your SCYTHE instance
2. Create a new Linux campaign, selecting HTTPS, and configure your HTTPS communication options.
3. Import from Existing Threat: Cloudfox
4. Launch Campaign
5. Download the file and transfer to your test device/VM
6. Make the file executable with chmod +x and execute it

Please see our full blog for more information on this month's plan!

References:
https://bishopfox.com/blog/introducing-cloudfox
