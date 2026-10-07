@{
    ListVersions = {
        Get-GithubRelease 0xeb/sally | Get-GitHubAsset "Sally-v*-x64.zip"
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = Get-GithubAssetHash $_.Asset
        }
    }
}