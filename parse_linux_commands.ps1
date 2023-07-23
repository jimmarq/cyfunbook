$files = Get-ChildItem -Recurse -File *.adoc 

$pattern = '\[source,shell\]\r?\n----\r?\n(.*?)\r?\n----'

$commands = @()

foreach ($file in $files) {
    $fileContent = Get-Content -Path $file.FullName -Raw

    $matches = [regex]::Matches($fileContent, $pattern)

    foreach ($match in $matches) {
        $codeBlock = $match.Groups[1].Value
        #Write-Host "Code block from file $($file.Name):"
        #Write-Host $codeBlock
        $commands += $codeBlock
        #Write-Host "------"
    }
}

write-host "Unique commands in the whole book:"
$commands | Select-Object -Unique | Write-Host

Write-host "Unique commands without parameters:"
$commands | foreach {$_.Split(" ")[0]} | Select-Object -Unique

Write-host "Unique sudo commands:"
$commands | Where-Object { $_ -like 'sudo *' } | foreach {$_ -Split "sudo "} | Select-Object -Unique
