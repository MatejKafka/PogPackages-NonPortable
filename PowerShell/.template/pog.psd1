@{
	Name = "PowerShell"
	Architecture = "x64"
	Version = "{{TEMPLATE:Version}}"

	Install = @{
		Url = "{{TEMPLATE:Url}}"
		Hash = "{{TEMPLATE:Hash}}"
	}

	Enable = {
		Write-Warning "PowerShell is non-portable."

		Export-Shortcut "PowerShell" "./app/pwsh.exe"
		Export-Command "pwsh" "./app/pwsh.exe"
	}
}
