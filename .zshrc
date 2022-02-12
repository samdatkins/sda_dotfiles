export PATH=/opt/homebrew/bin:$PATH

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi
alias config='/usr/bin/git --git-dir=/Users/samuelatkins/.cfg/ --work-tree=/Users/samuelatkins'
