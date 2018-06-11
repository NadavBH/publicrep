# Choco Install for new computers
Write-Warning -Message "Whassup Homies, let's get funky"

# Set Exceution Policy to Unrestricted and Set up Choco
Set-ExecutionPolicy Unrestricted -Force -Verbose
Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Choco Install mandatory stuff without asking for permission

# Let the madness begin

choco install firefox -y --allow-empty-checksums 
choco install chrome -y --allow-empty-checksums
choco install googledrive -y --allow-empty-checksums
choco install adobereader -y --allow-empty-checksums
choco install winrar -y --allow-empty-checksums
choco install popcorn-time -y --allow-empty-checksums
choco install ccleaner -y --allow-empty-checksums
choco install teamviewer -y --allow-empty-checksums
choco install silverlight -y --allow-empty-checksums

