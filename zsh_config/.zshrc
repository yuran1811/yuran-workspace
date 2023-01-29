export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git wd npm) # zsh-autosuggestions, zsh-syntax-highlighting

## Fix for Slow zsh-autosuggestions copy&paste
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# Automatic update without confirmation prompt
zstyle ':omz:update' mode auto

# Custom Command
yga() {
	start https://github.com/yuran1811
}
ygp() {
	git add .
	git commit -m "$1"
	git push
}

# npm command
ni() { npm i $1 }
nt() { npm test }
ns() { npm start }
nr() { npm run $1 }

# cli command
vpj() { npx create-vite@latest }
crapj() { npx create-react-app $1 }
tw() {
	npm install -D tailwindcss postcss autoprefixer
	npx tailwindcss init -p
}

# Code Runner Command
cc() { g++ $1.cc -o $1 && ./$1 && rm $1.exe }
cpp() { g++ $1.cpp -o $1 && ./$1 && rm $1.exe }
js() { node $1 }

# Window Command
cls() { clear }

source $ZSH/oh-my-zsh.sh
# source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
