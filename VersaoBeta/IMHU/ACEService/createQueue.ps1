#Set-ExecutionPolicy Unrestricted

[Reflection.Assembly]::LoadWithPartialName('System.Messaging')
$msmq = [System.Messaging.MessageQueue]

try
{
	$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
	#Write-Host $scriptPath
	$appConfigPath = $scriptPath + "\App.config"
	[xml]$xmlContentConfig = Get-Content $appConfigPath -encoding utf8

	$queueName = $xmlContentConfig.configuration.appSettings.key
	Write-Host "aQUI $queueName"
	#Verifica se existe a Queue
	if (-NOT $msmq::Exists(".\private$\ACEQueue"))
	{
		Write-Host "... create a new queue"
		$msmq::Create(".\private$\ACEQueue",$true)
	}
	else 
	{
		Write-Host "Queue already created"
	}
}
catch [Exception] {
   Write-Host $_.Exception.ToString()
}
#$msmq::Create('.private$teste', $true)

#Set-ExecutionPolicy Restricted