@{
    ListVersions = {
        Get-GitHubRelease kimmknight/remoteapptool | Get-GitHubAsset "RemoteApp.Tool.*.zip"
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = Get-GithubAssetHash $_.Asset
        }
    }
}