@{
    ListVersions = {
        Get-GitHubRelease marler8997/msvcup | Get-GitHubAsset "msvcup-x86_64-windows.zip" | % {
            # msvcup tags use underscores instead of dots, replace them
            $_ | Add-Member Version ($_.Version -replace "_", ".") -PassThru -Force
        }
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Asset.Url
            Hash = Get-GithubAssetHash $_.Asset
        }
    }
}