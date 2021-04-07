$ErrorActionPreference = "Stop"

Write-Output "Build job checkout directory"

$mypath = $MyInvocation.MyCommand.Path
Write-Output "Path of the script : $mypath"
$myfiles = Get-ChildItem
Write-Output "Files in directory : $myfiles"

$myenv = Get-Variable
Write-Output "Build job environment: `n  $myenv"


Write-Output "Example tests"

Write-Output "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! 👍

\033[33m$(Get-Content -Path artifacts/thumbsup.txt)\033[0m

If you have any questions or need help email support@buildkite.com, we'd be happy to help!

\033[31m<3\033[0m Buildkite
"


Write-Output "+++ :frame_with_picture: Inline image uploaded as a build artifact"

function inline_image($1, $2) {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'artifact://artifacts/image.gif' 'Rainbows'
