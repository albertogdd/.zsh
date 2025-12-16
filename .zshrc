### ZSH THEME
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

### HISTORY AND FZF
HISTSIZE=10000000
SAVEHIST=10000000

setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.

export HISTFILE="$HOME/.zsh/.history"

if [[ ! "$PATH" == */home/local_albertogildedios/.zsh/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/local_albertogildedios/.zsh/fzf/bin"
fi

source <(fzf --zsh)

### aliases
alias ..="cd .."
alias k="kubectl"
alias python=python3
alias vpnon="globalprotect connect -p vpn.dynatrace.com -u alberto.gildedios@dynatrace.com"
alias vpnoff="globalprotect disconnect"
alias bat="batcat"

### PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/local_albertogildedios/go/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin

### PLUGINS
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/common-aliases.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/git.plugin.zsh
