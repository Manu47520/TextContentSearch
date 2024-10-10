# Define the directory to search
$dir = "X:\XXX\XXXX\"

# Define the text to find
$text = "xxxx.xxx"

$files = Get-ChildItem -Path $dir

foreach ($file in $files) {
    # Skip directories
    if ($file.Attributes -eq "Directory") {
        continue
    }

    $content = Get-Content -Path $file.FullName -Raw

    if ($content -match $text) {
        # Output the file name and path
        Write-Output $file.FullName
    }
}
