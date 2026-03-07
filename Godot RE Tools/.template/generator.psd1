@{
    ListVersions = {
        Get-GitHubRelease GDRETools/gdsdecomp `
            | ? Version -gt "0.0.10" `
            | Get-GitHubAsset GDRE_tools-v*-windows*.zip
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = Get-GithubAssetHash $_.Asset
        }
    }
}