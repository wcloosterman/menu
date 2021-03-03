# Office 365 - Force Azure AD Connect Resynchronization (Delta Changes Only)

	Clear-Host

	# Connect to server hosting the Azure AD Connect synch service to carry out the command
	# Note:  We need to use the New-PSSessionOption command to adjust the connection default to NOT use a proxy server.

	$SyncServer = "localhost"
	$SyncServerSession = New-PSSession -ComputerName $SyncServer -SessionOption (New-PSSessionOption -ProxyAccessType NoProxyServer)
	Invoke-Command -Session $SyncServerSession -ScriptBlock {Start-ADSyncSyncCycle -PolicyType Delta}
	# Get our Office 365 PSSession and close it
	Get-PSSession | Where-Object {$PSItem.ComputerName -eq $SyncServer} | Remove-PSSession