@{
	Name = 'LiteDB.Studio'
	Architecture = 'x64'
	Version = '{{TEMPLATE:Version}}'

	Install = @{
		Url = {"https://github.com/litedb-org/LiteDB.Studio/releases/download/v$($this.Version)/LiteDB.Studio.exe"}
		Hash = '{{TEMPLATE:Hash}}'
		NoArchive = $true
		Target = "LiteDB.Studio.exe"
	}

	Enable = {
		Write-Warning "LiteDB.Studio is non-portable."

		Disable-DisplayScaling "./app/LiteDB.Studio.exe"
		Export-Shortcut "LiteDB Studio" "./app/LiteDB.Studio.exe"
	}
}