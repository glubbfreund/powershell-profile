# OMS initialization and theme loading
oh-my-posh init pwsh --config 'C:\Users\olive\Documents\WindowsPowerShell\theme\kapsoules.omp.json' | Invoke-Expression
# Terminal icon module for colored icons with ls
Import-Module -Name Terminal-Icons
# Import module for better navigation
Import-Module -Name z

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Change inline prediction color
Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[38;5;238m" }

# Disable venv promt, using omp for that
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

# Run a fast fastfetch
fastfetch
