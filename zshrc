export ZSH="$HOME/.oh-my-zsh"

plugins=(
	aqua_profile
	zsh-interactive-cd
	zsh-autosuggestions
	zsh-syntax-highlighting
	copypath
	web-search # ddg
	cp # cpv
)

source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/home/aqua/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load Angular CLI autocompletion.
source <(ng completion script)
