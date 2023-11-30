# PowerShell Script to Update Base URL in HTML Files

# Define the root directory of the MandArt-Docs
$rootDir = "."

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
