@{
	Name = "Altap Salamander"
	Architecture = "x64"
	Version = "4.0"

	Install = @{
		Url = "https://www.altap.cz/ftp/salamand/as40x64.exe"
		Hash = "B5CEB790912681524B47F2F5603D8162EF696EF23B02DB0E2BD2D25B9567078A"
	}

	Enable = {
		Write-Warning "Altap Salamander is non-portable."

		Export-Shortcut "Altap Salamander" "./app/salamand.exe"
		Export-Command "salamand" "./app/salamand.exe"
	}
}
