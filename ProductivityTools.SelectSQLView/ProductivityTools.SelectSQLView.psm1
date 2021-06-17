$SelectSqlViewDatabaseNameKey="SelectSqlViewDatabaseName"
$SelectSqlViewServerNameKey="SelectSqlViewServerNameKey"
$SelectSqlViewApplicationName="Select-SQLView"

function GetDataBaseName()
{
	[CmdletBinding(SupportsShouldProcess=$true)]
	param ([string]$DatabaseName)

	if($DatabaseName -eq $null -or $DatabaseName -eq "")
	{
		Write-Verbose "Get DatabaseName from Configuration using $SelectSqlViewDatabaseNameKey"
		$DatabaseName=Get-MasterConfiguration -Key $SelectSqlViewDatabaseNameKey
		Write-Verbose "DatabaseName from Configuration: $DatabaseName"
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
		$ServerName=Get-MasterConfiguration -Key $SelectSqlViewServerNameKey
		Write-Verbose "ServerName from Configuration: $ServerName"
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

Set-Alias -Name sq -Value Select-SQLView 
Export-ModuleMember -Function Select-SQLView -Alias sq

