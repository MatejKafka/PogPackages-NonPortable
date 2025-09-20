@{
    ListVersions = {
        Invoke-WebRequest "https://gittup.org/tup/win32/" | % Links | ? href -match "tup-v(.*)\.zip" | % {
            @{
                Version = $Matches[1]
                Url = "https://gittup.org/tup/win32/" + $Matches[0]
            }
        }
    }

    Generate = {
        return [ordered]@{
            Version = $_.Version
            Url = $_.Url
            Hash = Get-UrlHash $_.Url
        }
    }
}