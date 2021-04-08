$ErrorActionPreference = "Stop"

Write-Output "Build job checkout directory"

$mypath = $MyInvocation.MyCommand.Path
Write-Output "Path of the script : $mypath"
$myfiles = Get-ChildItem
Write-Output "Files in directory : $myfiles"

$myenv = Get-Variable
Write-Output "Build job environment: `n  $myenv"


Write-Output "Example tests"

Write-Output "Congratulations! You've successfully run your first build on Buildkite! If you have any questions or need help email support@buildkite.com, we'd be happy to help!"


Write-Output "Inline image uploaded as a build artifact"

function do_a_thing($1, $2) {
  Write-Output "$1 $2"
}

do_a_thing 'Hello' 'World'
