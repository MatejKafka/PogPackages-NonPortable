@{
	# cannot use `.NET SDK`, name cannot start with `.`, Pog ignores dotfiles in local repositories
	Name = "dotnet-sdk"
	Version = "{{TEMPLATE:Version}}"
	Architecture = "x64"

	Install = @{
		Url = "{{TEMPLATE:Url}}"
		Hash = "{{TEMPLATE:Hash}}"
	}

	Enable = {
		# nuget stores packages in home dir
		Write-Warning ".NET SDK is non-portable."

		Export-Command "dotnet" "./app/dotnet.exe"
	}
}