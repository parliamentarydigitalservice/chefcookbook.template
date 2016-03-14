$download_url = 'http://chef.io/chef/install.msi'

(New-Object System.Net.WebClient).DownloadFile($download_url, 'C:\\Windows\\Temp\\install.msi')
Start-Process 'msiexec' -ArgumentList '/qb /i C:\\Windows\\Temp\\install.msi' -NoNewWindow -Wait