### ZSH THEME
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.zsh/theme/.p10k.zsh ]] || source ~/.zsh/theme/.p10k.zsh
source ~/.zsh/theme/powerlevel10k/powerlevel10k.zsh-theme

### HISTORY
HISTSIZE=10000000
SAVEHIST=10000000

setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.

export HISTFILE="$HOME/.zsh/.history"

### FZF
if [[ ! "$PATH" == */home/local_albertogildedios/.zsh/plugin/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/local_albertogildedios/.zsh/plugin/fzf/bin"
fi
source <(fzf --zsh)

### ALIASES
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
source ~/.zsh/plugin/common-aliases.plugin.zsh
source ~/.zsh/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugin/git.plugin.zsh
