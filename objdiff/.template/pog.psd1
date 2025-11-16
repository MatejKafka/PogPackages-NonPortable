@{
    # CLI is portable, it's a separate package called `objdiff-cli` in the main repo
    Name = 'objdiff'
    Architecture = 'x64'
    Version = '{{TEMPLATE:Version}}'

    Install = @{
        Url = '{{TEMPLATE:Url}}'
        Hash = '{{TEMPLATE:Hash}}'
        NoArchive = $true
        Target = "objdiff.exe"
    }

    NonPortablePaths = @(
        # TODO: not sure, the GUI uses `dirs`, so most likely AppData?
    )

    Enable = {
        Export-Command "objdiff" "./app/objdiff.exe" -Symlink
    }
}