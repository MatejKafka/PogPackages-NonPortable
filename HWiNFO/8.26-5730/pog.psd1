@{
    Name = "HWiNFO"
    Architecture = "x86", "x64", "arm64"
    Version = "8.26-5730"

    Install = @{
        Url = "https://sourceforge.net/projects/hwinfo/files/Windows_Portable/hwi_826.zip/download"
        Hash = "60C9580FBBEB0E76158498730394258CAADE62B269F0536EB1947950B5E83491"
        UserAgent = "Wget"
    }

    Enable = {
        # writes to HKCU\Software\HWiNFO*
        Write-Warning "HWiNFO is non-portable."

        $BinName = switch ([System.Runtime.InteropServices.RuntimeInformation]::ProcessArchitecture) {
            "X86" {"HWiNFO32.exe"}
            "X64" {"HWiNFO64.exe"}
            "Arm64" {"HWiNFO_ARM64.exe"}
            default {throw "Unsupported architecture: $_"}
        }

        # TODO: updater
        New-File "config/HWiNFO.ini" {"[Settings]`nAutoUpdate=0"}

        New-Symlink "./app/HWiNFO_ARM64.INI" "./config/HWiNFO.INI" File
        New-Symlink "./app/HWiNFO32.INI" "./config/HWiNFO.INI" File
        New-Symlink "./app/HWiNFO64.INI" "./config/HWiNFO.INI" File

        Export-Shortcut "HWiNFO" "./app/$BinName"
    }
}