# OMS initialization and theme loading
oh-my-posh init pwsh --config 'C:\Users\olive\Documents\WindowsPowerShell\theme\hotstick.minimal.omp.json' | Invoke-Expression
# Terminal icon module for colored icons with ls
Import-Module -Name Terminal-Icons
# Import module for better navigation
Import-Module -Name z

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Disable venv promt, using omp for that
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1
