Invoke-Expression (&starship init powershell)

function dot {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        $args
    )
    & git --git-dir="$HOME\.dotfiles" --work-tree="$HOME" @args
}
