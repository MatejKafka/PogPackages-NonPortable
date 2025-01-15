@{
	Name = "PowerShell"
	Architecture = "x64"
	Version = "7.5.0-rc.1"

	Install = @{
		Url = {$V = $this.Version; "https://github.com/PowerShell/PowerShell/releases/download/v${V}/PowerShell-${V}-win-x64.zip"}
		Hash = "194AA5C5F1ACCF87589F693A6A7F0027331E440AA4827639C58408CFF336BD3C"
	}

	Enable = {
		Write-Warning "PowerShell is non-portable."

		Export-Shortcut "PowerShell" "./app/pwsh.exe"
		Export-Command "pwsh" "./app/pwsh.exe"
	}
}
