# This script will look for submission.md files in each folder
#   If the submission.md file is not present, it will be created using the title from the .adoc file
#   If the submisison.md file is found, it will be copied to submission_notebooks
# The leading number in the lesson folder will be used as a directory.
#   For example, these folders and files:
#     1000_linux_1/submisison.md
#     1010_Linux_2/submisison.md
#     2000_Windows_1/submisison.md
#     2010_Windows_2/submisison.md
#    Will be copied here:
#      submission_notebooks/1/1000_linux_1.md
#      submission_notebooks/1/1010_linux_2.md
# Note, this will delete *everything* in the submisison notebooks folder each time it's run.
# The diretories starting with 0 (introduction) and (appendix) will be ignored.


# Delete contents
remove-item .\submission_notebooks\* -Recurse
# Create the new folder structure
mkdir .\submission_notebooks\1
mkdir .\submission_notebooks\2
mkdir .\submission_notebooks\3
mkdir .\submission_notebooks\4
mkdir .\submission_notebooks\5
mkdir .\submission_notebooks\6
mkdir .\submission_notebooks\7
mkdir .\submission_notebooks\8

$directories = Get-ChildItem -Recurse -Directory
$directories = $directories | Where-Object {$_.Name -match "^[1-8][0-9][0-9][0-9][_].*$"} # Avoids Intro and Appendix

# Create any misisng submission.md files
foreach ($directory in $directories) {
    # Check fo a submission.md file
    $md = $directory.name + "\submission.md"
    if (-Not (Test-Path $md)) {
        #parse the title from the .adoc file in the folder
        #create the submission.md file
        $adoc = Get-ChildItem $directory.Name *.adoc
        $firstLine = Get-Content -Path $adoc.FullName -First 1
        $firstLine = $firstLine -replace "=", "#" # Correct markdown syntax
        Set-Content -Path $md -Value $firstLine
    }
}


# Move submissions to the appropriate folder (1-8) in submission_notebooks
$submissionmds = gci submission.md -Recurse
foreach ($submissionmd in $submissionmds) {
    $dirname = $submissionmd.Directory.Name
    $folder = $dirname[0]
    Copy-Item -Path $submissionmd.FullName -Destination "submission_notebooks\$folder\$dirname.md"
}

$submission_support = Get-ChildItem -Recurse -File | Where-Object { $_.Name -like 'submission*' -and $_.Extension -ne '.md' }
foreach ($support in $submission_support) {
    $folder = $support.Directory.Name[0]
    Copy-Item -Path $support.FullName -Destination "submission_notebooks\$folder\"
}
