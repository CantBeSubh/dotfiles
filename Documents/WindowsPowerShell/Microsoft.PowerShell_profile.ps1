Import-Module z
Import-Module -Name Terminal-Icons

function dot {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        $args
    )
    & git --git-dir="$HOME\.dotfiles" --work-tree="$HOME" @args
}

Invoke-Expression (&starship init powershell)