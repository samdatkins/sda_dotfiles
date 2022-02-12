export PATH=/opt/homebrew/bin:$PATH

##
# Load any extra Zshell profile scripts (simon)
##
if [[ -d ~/.profile.d ]]; then
	for f in ~/.profile.d/*.zsh; do
		. "$f"
	done
fi

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi
alias config='/usr/bin/git --git-dir=/Users/samuelatkins/.cfg/ --work-tree=/Users/samuelatkins'
