$files = Get-ChildItem -Recurse -File *.adoc 

$pattern = '\[source,sh\]\r?\n----\r?\n(.*?)\r?\n----'

foreach ($file in $files) {
    $fileContent = Get-Content -Path $file.FullName -Raw

    $matches = [regex]::Matches($fileContent, $pattern)

    foreach ($match in $matches) {
        $codeBlock = $match.Groups[1].Value
        #Write-Host "Code block from file $($file.Name):"
        Write-Host $codeBlock
        #Write-Host "------"
    }
}