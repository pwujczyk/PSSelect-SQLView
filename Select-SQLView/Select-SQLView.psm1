$SelectSqlViewDatabaseNameKey="SelectSqlVeiwDatabaseName"
$SelectSqlViewServerNameKey="SelectSqlViewServerNameKey"

function GetDataBaseName()
{
	[CmdletBinding(SupportsShouldProcess=$true)]
	param ([string]$DatabaseName)

	if($DatabaseName -eq $null -or $DatabaseName -eq "")
	{
		Write-Verbose "Get DatabaseName from Configuration using $SelectSqlViewDatabaseNameKey"
		$DatabaseName=Get-Configuration -Key $SelectSqlViewDatabaseNameKey
		Write-Verbose "DatabaseName from Configuration: $DatabaseName"
	}
	else
	{
		Set-Configuration -Key $SelectSqlViewDatabaseNameKey -Value $DatabaseName
		Write-Verbose "Set DatabaseName in Configuration using $SelectSqlViewDatabaseNameKey, DatabaseName:$DatabaseName"
	}

	if($DatabaseName -eq $null -or $DatabaseName -eq "")
	{
		throw "Missing DatabaseName"
	}

	return $DatabaseName
}

function GetServerName
{
	[CmdletBinding(SupportsShouldProcess=$true)]
	param ($ServerName)

	
	if($ServerName -eq $null -or $ServerName -eq "")
	{
		Write-Verbose "Get ServerName from Configuration using $SelectSqlViewServerNameKey"
		$ServerName=Get-Configuration -Key $SelectSqlViewServerNameKey
		Write-Verbose "ServerName from Configuration: $ServerName"
	}
	else
	{
		Set-Configuration -Key $SelectSqlViewServerNameKey -Value $ServerName
		Write-Verbose "Set ServerName in Configuration using $SelectSqlViewServerNameKey, ServerName: $ServerName"
	}

	if($ServerName -eq $null -or $ServerName -eq "")
	{
		throw "Missing ServerName"
	}

	return $ServerName
}

function Select-SQLView {

	[CmdletBinding(SupportsShouldProcess=$true)]
	param ([string]$Name, [string]$Suffix, [string]$DatabaseName, [string]$ServerName)

	$DatabaseName=GetDatabaseName $DatabaseName
	$ServerName=GetserverName $ServerName

	$Query="SELECT * FROM $Name $Suffix"
	Write-Verbose "Invoke query on server: $ServerName in Database: $DatabaseName"
	Write-Verbose "Query: $Query"
	Invoke-SQLQuery -SqlInstance $ServerName -DatabaseName $DatabaseName -Query $Query
}

Export-ModuleMember Select-SQLView
Set-Alias sq Select-SQLView 
