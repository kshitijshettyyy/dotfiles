#!/usr/bin/env bash
echo "Script triggered!" >>/tmp/yazi_debug.log

export PATH="/usr/local/bin:$HOME/.local/bin:$PATH"
# Ask pattern using fzf prompt
query=$(fzf --prompt="Search pattern: " --height=10% --border --margin=1)

[ -z "$query" ] && exit 0

# Run ripgrep and send results to fzf
result=$(
    rg --vimgrep --smart-case "$query" |
        fzf --ansi \
            --delimiter : \
            --preview 'bat --style=numbers --color=always --line-range :300 {1} --highlight-line {2}' \
            --preview-window +{2}-5
)

[ -z "$result" ] && exit 0

file=$(echo "$result" | cut -d: -f1)
line=$(echo "$result" | cut -d: -f2)

# Open in Neovim on the selected line
nvim +"$line" "$file"
