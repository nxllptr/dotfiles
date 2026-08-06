autoload -U promptinit; promptinit

zstyle :prompt:pure:prompt:success color cyan
zstyle :prompt:pure:prompt:error color blue
# PURE_PROMPT_SYMBOL="❯"
# PURE_PROMPT_SYMBOL="%F{black}%K{cyan}󰊠 ❯%k%f%F{cyan}%f"
PURE_PROMPT_SYMBOL="󰊠 ❯"

prompt pure

# Exec when loading zsh

CONFIG_PATH="${HOME}/.zsh_config"

# Load Configs from CONFIG_PATH
for file in "${CONFIG_PATH}"/*; do
	source $file
done

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Command Not Found Handler
command_not_found_handler() {
	print -P "zsh: Command %B$1%b not found :("
	return 127
}
