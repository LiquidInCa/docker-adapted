#
# Configure the IIS log format
# Source: https://jonlabelle.com/snippets/view/powershell/configuring-and-managing-iis-logging-with-powershell
#

# Import the IIS `WebAdministration` Module
Import-Module WebAdministration

# To show configured IIS sites:
Get-ChildItem IIS:\Sites

# Configuring IIS Logging
Set-ItemProperty 'IIS:\Sites\Default Web Site' -Name logFile.logExtFileFlags 'Method,UriStem,UriQuery,HttpStatus,BytesSent,BytesRecv,TimeTaken,Host'
