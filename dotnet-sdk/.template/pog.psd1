@{
	# cannot use `.NET SDK`, name cannot start with `.`, Pog ignores dotfiles in local repositories
	Name = "dotnet-sdk"
	Version = "{{TEMPLATE:Version}}"
	Architecture = "x64"

	Install = @{
		Url = "{{TEMPLATE:Url}}"
		Hash = "{{TEMPLATE:Hash}}"
	}

	NonPortablePaths = @(
		"~/.nuget"
		"~/AppData/Roaming/Nuget"
		"~/AppData/Local/Nuget"
	)

	Enable = {
		Export-Command "dotnet" "./app/dotnet.exe"
	}
}