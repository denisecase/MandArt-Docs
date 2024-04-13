# PowerShell Script to Update Base URL in HTML Files

# XCode / MandArt / Product / Build Documentation.

# Define the root directory of the MandArt-Docs
$rootDir = "."

# Rename MandArt.doccarchive to docs If it exists
# if not show message and continue
if (Test-Path "MandArt.doccarchive") {
    Write-Host "Renaming MandArt.doccarchive to docs."
    Rename-Item MandArt.doccarchive docs
} else {
    Write-Host "MandArt.doccarchive does not exist. Skipping renaming."
}


# Define the new base URL
$newBaseUrl = "/MandArt-Docs/"

# Find all HTML files in the root directory recursively
$htmlFiles = Get-ChildItem -Path $rootDir -Recurse -Filter *.html

foreach ($file in $htmlFiles) {
    # Read the content of the file
    $content = Get-Content $file.FullName

    # if found, notify and replace the base URL and resource paths
    if ($content -match 'var baseUrl = "/"') {
        Write-Host "Updating base URL and resource paths in $($file.FullName)"
    }

    $content = $content -replace 'href="/', "href=`"$newBaseUrl"
    $content = $content -replace 'src="/', "src=`"$newBaseUrl"

    # Write the updated content back to the file
    Set-Content -Path $file.FullName -Value $content
}

Write-Host "Base URL and resource paths updated in all HTML files."
