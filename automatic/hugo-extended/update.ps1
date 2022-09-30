#import-module au

. $PSScriptRoot\..\..\scripts\all.ps1

Import-Module PowerShellForGitHub
$repoOwner = 'gohugoio'
$repoName = 'hugo'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            '(^\$zipFile\s*=\s*)(''.*'')'           = "`$1'$($Latest.Filename)'"
        }
    }
}

function global:au_BeforeUpdate {
    Get-GitHubReleaseAsset -OwnerName $repoOwner -RepositoryName $repoName -Asset $Latest.ReleaseAssetID -Path "tools\$($Latest.Filename)" -Force
}

function global:au_AfterUpdate {
    Set-DescriptionFromReadme -SkipFirst 2
}

function global:au_GetLatest {
    $release = Get-GitHubRelease -OwnerName $repoOwner -RepositoryName $repoName -Latest
    $version = $release.tag_name
    if ($version.StartsWith('v')) {
        $version = $version.Substring(1)    # skip over 'v' in tag
    }

    $asset = Get-GitHubReleaseAsset -OwnerName $repoOwner -RepositoryName $repoName -Release $release.id | Where-Object name -match "hugo_extended_$($version)_windows-amd64.zip"
    $url = $asset.browser_download_url

    return @{
        ReleaseAssetID = $asset.id
        Filename       = $asset.name
        URL64          = $url
        Version        = $version
    }
}

Update-Package -ChecksumFor none