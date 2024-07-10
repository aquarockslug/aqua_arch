export ZSH="$HOME/.oh-my-zsh"

plugins=(
	aqua_profile
	zsh-interactive-cd
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

source <(ng completion script)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
