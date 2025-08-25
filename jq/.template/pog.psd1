@{
    Name = 'jq'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
        NoArchive = $true
        Target = "jq.exe"
    }

    Enable = {
        # jq looks for library files in ~/.jq and 2 other similar locations, it's not possible
        #  to override them (docs claim the `-L` should work, but doesn't, there's an open issue)
        Write-Warning "jq is non-portable."

        Export-Command "jq" "./app/jq.exe" -Symlink
    }
}