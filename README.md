\# Enterprise Endpoint Maintenance Automation



\## 📌 Overview

A PowerShell automation script designed to perform routine Tier 1 helpdesk maintenance tasks silently in the background. This project automates standard CompTIA A+ troubleshooting methodologies to proactively improve endpoint performance, resolve stale network routes, and monitor hardware health without interrupting the end user.



\## 🚀 Features

\- \*\*DNS Cache Flushing:\*\* Clears the DNS resolver cache to fix sudden network drops or stale IP routing.

\- \*\*Storage Optimization:\*\* Recursively force-clears the local user's AppData Temp directory, gracefully bypassing locked files in use.

\- \*\*SMART Health Monitoring:\*\* Queries the local WMI/CIM instances to report the physical operational status of the primary storage drive.

\- \*\*Zero-Touch Automation:\*\* Configured via Windows Task Scheduler to execute silently as `NT AUTHORITY\\SYSTEM` with hidden window styles.



\## 🛠️ Skills Demonstrated

\- \*\*Scripting:\*\* PowerShell (Cmdlets, Error Handling, Variables)

\- \*\*OS Management:\*\* Windows 10/11 Endpoint Administration

\- \*\*IT Operations:\*\* Task Scheduler Automation, Privilege Management

\- \*\*Domain Knowledge:\*\* CompTIA A+ Troubleshooting Theory \& Preventative Maintenance



\## ⚙️ Deployment \& Usage

To run the maintenance protocol manually on a local machine, execute the script from an elevated PowerShell prompt:

`.\\Invoke-Maintenance.ps1`



\*\*To deploy as a weekly automated background task:\*\*

2.Paste the Documentation:Copy the markdown text below, paste it into Notepad, save the file (Ctrl + S), and close the window.Markdown# Enterprise Endpoint Maintenance Automation



\## 📌 Overview

A PowerShell automation script designed to perform routine Tier 1 helpdesk maintenance tasks silently in the background. This project automates standard CompTIA A+ troubleshooting methodologies to proactively improve endpoint performance, resolve stale network routes, and monitor hardware health without interrupting the end user.



\## 🚀 Features

\- \*\*DNS Cache Flushing:\*\* Clears the DNS resolver cache to fix sudden network drops or stale IP routing.

\- \*\*Storage Optimization:\*\* Recursively force-clears the local user's AppData Temp directory, gracefully bypassing locked files in use.

\- \*\*SMART Health Monitoring:\*\* Queries the local WMI/CIM instances to report the physical operational status of the primary storage drive.

\- \*\*Zero-Touch Automation:\*\* Configured via Windows Task Scheduler to execute silently as `NT AUTHORITY\\SYSTEM` with hidden window styles.



\## 🛠️ Skills Demonstrated

\- \*\*Scripting:\*\* PowerShell (Cmdlets, Error Handling, Variables)

\- \*\*OS Management:\*\* Windows 10/11 Endpoint Administration

\- \*\*IT Operations:\*\* Task Scheduler Automation, Privilege Management

\- \*\*Domain Knowledge:\*\* CompTIA A+ Troubleshooting Theory \& Preventative Maintenance



\## ⚙️ Deployment \& Usage

To run the maintenance protocol manually on a local machine, execute the script from an elevated PowerShell prompt:

`.\\Invoke-Maintenance.ps1`



\*\*To deploy as a weekly automated background task:\*\*



###### powershell

$action = New-ScheduledTaskAction-Execute "powershell.exe" -Argument "-ExecutionPolicy Bypass -WindowStyle Hidden -File C:\\Scripts\\Invoke-Maintenance.ps1"$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Friday -At 3am$principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\\SYSTEM" -LogonType ServiceAccount -RunLevel HighestRegister-ScheduledTask -TaskName "Enterprise Endpoint Maintenance" -Action $action -Trigger $trigger -Principal$principal

