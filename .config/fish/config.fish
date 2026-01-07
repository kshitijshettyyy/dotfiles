set -e MAIL
set fish_greeting

# Add Homebrew to PATH (Apple Silicon)
set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH
fish_add_path ~/Downloads/nvim-macos-arm64/bin
fish_add_path ~/go/bin
#-------------------------------------------------------------------------------------------------
#aliases
#-------------------------------------------------------------------------------------------------

#alias nf="nvim ~/.config/fish/config.fish"
alias w="cd ~/workspace/work/"
alias l="cd ~/workspace/learning/"
alias p="cd ~/workspace/projects/"
alias s="cd ~/workspace/sandbox/"
alias sf="source ~/.config/fish/config.fish"
alias ll="lsd -l --group-dirs=first --git"
alias ls="lsd --group-dirs=first --git"
alias la="lsd -la --group-dirs=first --git"
alias login='doormat login && eval $(doormat aws -a aws_kshitij.shetty_test export)'
alias v="nvim"
alias config="cd ~/.config"
#-------------------------------------------------------------------------------------------------
# my custom functions
#-------------------------------------------------------------------------------------------------

function nf
    nvim ~/.config/fish/config.fish
    source ~/.config/fish/config.fish
end
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function cf
	if test (count $argv) -eq 0
		echo "Usage: cf <file>"
		return 1
	end

	set file $argv[1]
	if not test -e $file
		echo "cf: file not found: $file"
		return 1
	end

	realpath $file | pbcopy
	echo "Copied :"(realpath $file)
end
#
# Set to 0 to show the full path
set -U fish_prompt_pwd_dir_length 0

export EDITOR=nvim

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/kshetty/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
#
#
#VCM based configs
set -gx VAULT_LICENSE_PATH /Users/kshetty/workspace/work/license/vault.hclic
set -gx GOPATH /Users/kshetty/go
set -gx PATH $GOPATH/bin $PATH
