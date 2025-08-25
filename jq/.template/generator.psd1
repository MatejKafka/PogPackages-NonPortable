@{
    ListVersions = {
        Get-GitHubRelease jqlang/jq -TagPrefix jq- `
            | ? Version -notin "1.7rc1", "1.7rc2" `
            | Get-GitHubAsset jq-win64.exe
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = Get-UrlHash $_.Asset.Url
        }
    }
}