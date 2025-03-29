@{
	Name = "CrystalDiskMark"
	Version = "8.0.6"
	Architecture = "x86", "x64", "arm64"

	Install = @{
		Url = "https://sourceforge.net/projects/crystaldiskmark/files/8.0.6/CrystalDiskMark8_0_6.zip/download"
		Hash = "42D4CA081AA9C90CA96F8CF76A493BDE2AFE6D197DF671760713D3C4191D0C6D"
	}

	Enable = {
		# writes to AppData\CrystalDiskMark
		Write-Warning "CrystalDiskMark is non-portable."

		$BinName = switch ([System.Runtime.InteropServices.RuntimeInformation]::ProcessArchitecture) {
			"X64" {"DiskMark64.exe"}
			"X86" {"DiskMark32.exe"}
			"Arm64" {"DiskMarkA64.exe"}
			default {throw "Unsupported architecture: $_"}
		}

		Export-Shortcut "CrystalDiskMark" "./app/$BinName"
	}
}