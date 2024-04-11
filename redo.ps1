# PowerShell Script to Update Base URL in HTML Files

# XCode / MandArt / Product / Build Documentation.

# Define the root directory of the MandArt-Docs
$rootDir = "."

# Rename MandArt.doccarchive to docs 
rename-item MandArt.doccarchive docs

Write-Host "New documentation renamed to docs. Updating base URL and resource paths in HTML files."

# Define the new base URL
$newBaseUrl = "/MandArt-Docs/"

# Find all HTML files in the root directory recursively
$htmlFiles = Get-ChildItem -Path $rootDir -Recurse -Filter *.html

foreach ($file in $htmlFiles) {
    # Read the content of the file
    $content = Get-Content $file.FullName

    # Replace the base URL and resource paths
    $content = $content -replace 'var baseUrl = "/"', "var baseUrl = `"$newBaseUrl`""
    $content = $content -replace 'href="/', "href=`"$newBaseUrl"
    $content = $content -replace 'src="/', "src=`"$newBaseUrl"

    # Write the updated content back to the file
    Set-Content -Path $file.FullName -Value $content
}

Write-Host "Base URL and resource paths updated in all HTML files."
