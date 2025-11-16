@{
	Name = "PowerShell"
	Architecture = "x64"
	Version = "{{TEMPLATE:Version}}"

	Install = @{
		Url = "{{TEMPLATE:Url}}"
		Hash = "{{TEMPLATE:Hash}}"
	}

	NonPortablePaths = @(
		"~/Documents/PowerShell"
		"~/AppData/Local/Microsoft/PowerShell"
	)

	Enable = {
		Export-Shortcut "PowerShell" "./app/pwsh.exe"
		Export-Command "pwsh" "./app/pwsh.exe"
	}
}
