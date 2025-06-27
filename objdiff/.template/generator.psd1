@{
    ListVersions = {
        Get-GitHubRelease encounter/objdiff `
            | Get-GitHubAsset "objdiff-windows-x86_64.exe"
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = if ($_.Asset.Hash) {$_.Asset.Hash} else {Get-UrlHash $_.Asset.Url}
        }
    }
}