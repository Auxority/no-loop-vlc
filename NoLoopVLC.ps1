# Define the file path
$file = Join-Path -Path $env:APPDATA -ChildPath "vlc\vlcrc"

# Read the file content, replace the text, and write the content back to the file
(Get-Content -Path $file) -replace 'loop=1', 'loop=0' | Set-Content -Path $file
