export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git wd) # zsh-autosuggestions, zsh-syntax-highlighting

## Fix for Slow zsh-autosuggestions copy&paste
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# Automatic update without confirmation prompt
zstyle ':omz:update' mode auto

# npm command
ni() { npm i $1 }
nig() { npm i -g $1 }
nt() { npm test }
ns() { npm start }
nr() { npm run $1 }

# Code Runner Command
cpp() { g++ $1.cpp -o $1 && ./$1 && rm $1.exe }
js() { node $1 }

# Window Command
cls() { clear }

source $ZSH/oh-my-zsh.sh
# source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
