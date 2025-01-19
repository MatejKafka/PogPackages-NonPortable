@{
    ListVersions = {
        Get-GitHubRelease PowerShell/PowerShell `
            | ? Version -gt "6.0.0" `
            | Get-GitHubAsset "PowerShell-*-win-x64.zip" -OptionalAsset "hashes.sha256"
    }

    Generate = {
        # parse release body text to find checksum
        $Body = $_.Release.Body
        $Match = [regex]::Match($Body, [regex]::Escape($_.Asset.Name) + "\s+-\s*([a-zA-Z0-9]{64})", [System.Text.RegularExpressions.RegexOptions]::Multiline)
        $Hash = if ($Match.Success) {
            $Match.Groups[1].Value
        } elseif ($_.OptionalAsset) {
            # fallback to hashes.sha256 (file names are prefixed with * for some reason)
            Get-HashFromChecksumFile $_.OptionalAsset.Url ("*" + $_.Asset.Name)
        } else {
            throw "Could not retrieve release archive hash."
        }

        [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = $Hash
        }
    }
}