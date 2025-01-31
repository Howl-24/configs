Import-Module PSReadLine
# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History
#Set the color for Prediction (auto-suggestion)
Set-PSReadLineOption -Colors @{
  Command            = 'Magenta'
  Number             = 'DarkBlue'
  Member             = 'DarkBlue'
  Operator           = 'DarkBlue'
  Type               = 'DarkBlue'
  Variable           = 'DarkGreen'
  Parameter          = 'DarkGreen'
  ContinuationPrompt = 'DarkBlue'
  Default            = 'DarkBlue'
  InlinePrediction   = 'DarkGray'
}
$theme = Get-ChildItem $env:UserProfile\\scoop\\apps\\oh-my-posh\\24.19.0\\themes\\ | Get-Random
oh-my-posh init pwsh --config $theme.FullName | Invoke-Expression
$cow = Get-ChildItem -Path $env:UserProfile\\scoop\\apps\\cowsay\\0.2013.07.19\\cows\\ | Get-Random
$font = Get-ChildItem -Path $env:UserProfile\\scoop\\apps\\figlet\\1.0-go\\fonts | Get-Random
$themeName = $theme.BaseName -replace "\.omp$", ""
figlet -f $font.BaseName $themeName | cowsay -f $cow.BaseName | meow

# Linux command mapping
function zsh { wsl zsh $args }
function bash { wsl bash $args }
function apt { wsl sudo apt $args }
function tmux { wsl tmux $args }
function wtfutil { wsl wtfutil $args }
function w3m { wsl w3m $args }
function cmatrix { wsl cmatrix $args }
