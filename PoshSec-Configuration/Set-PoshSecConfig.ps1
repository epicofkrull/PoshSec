function Set-PoshSecConfig {
	param (
		[string]$BaselinePath
	)
	
	$global:PoshSecBaselinePath = $BaselinePath
}
