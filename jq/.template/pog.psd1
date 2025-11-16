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

    NonPortablePaths = @(
        # jq looks for library files in ~/.jq and 2 other similar locations, it's not possible
        #  to override them (docs claim the `-L` should work, but doesn't, there's an open issue)
        "~/.jq"
    )

    Enable = {
        Export-Command "jq" "./app/jq.exe" -Symlink
    }
}