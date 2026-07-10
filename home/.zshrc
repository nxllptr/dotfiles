# Aliases
alias ls="lsd -a"
alias cls="clear"

# Keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey "\e[3~" delete-char
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

# For tmux
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char

autoload -U promptinit; promptinit

PURE_PROMPT_SYMBOL="❯"
zstyle :prompt:pure:prompt:success color cyan
# PURE_PROMPT_SYMBOL="❯λ"

prompt pure

# Exec when loading zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
