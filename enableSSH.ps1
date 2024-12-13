# Based on this tutorial
# https://www.techrepublic.com/article/how-to-install-the-openssh-server-on-windows-with-powershell/

# Install SSH Server
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# Start the service
Start-Service sshd

# Enable automatic start
Set-Service -Name sshd -StartupType "Automatic"
