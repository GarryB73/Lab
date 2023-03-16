# Configure WinRM to allow unsecure connection

Set-Item -Path WSMan:\localhost\Service\AllowUnencrypted -Value true
Set-Item -Path WSMan:\localhost\Service\Auth\Basic -Value true

# Install Chocolatey software
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))



# Configure Firewall to allow ICMP traffic
#- name: Firewall | Allow RDP through Firewall
#  win_dsc:
#    resource_name: xFirewall
#    Name: "Administrator access for RDP (TCP-In)"
#    Ensure: present
#    Enabled: True
#    Profile: "Domain"
#    Direction: "Inbound"
#    Localport: "3389"
#    Protocol: "TCP"
#    Description: "Opens the listener port for RDP"