export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

ZSH_THEME="agnoster"
plugins=(git wd gitignore)

# Fix for Slow zsh-autosuggestions copy&paste
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# Automatic update without confirmation prompt
zstyle ':omz:update' mode auto

# custom command
mygh() { open_command "https://github.com/yuran1811" }

# npm command
ni() { npm i $1 }
nig() { npm i -g $1 }
ns() { npm start }
nt() { npm test }
nd() { npm run dev }
nr() { npm run $1 }

# yarn command
ya() { yarn add $1 }
yag() { yarn add -g $1 }
ys() { yarn start }
yt() { yarn test }
yd() { yarn dev }
yr() { yarn run $1 }
yrm() { yarn remove $1}

# cli command
vite() { npx create-vite@latest }
cra() { npx create-react-app $1 }
tw() {
	npm install -D tailwindcss postcss autoprefixer
	npx tailwindcss init -p
}

# code runner command
cc() { g++ $1.cc -o $1 && ./$1 && rm $1.exe }
cpp() { g++ $1.cpp -o $1 && ./$1 && rm $1.exe }
js() { node $1 }

# window command
cls() { clear }

function web_search() {
  emulate -L zsh
  
  typeset -A urls
  urls=(
    $ZSH_WEB_SEARCH_ENGINES
    gg         "https://www.google.com/search?q="
    brave      "https://search.brave.com/search?q="
    duck       "https://www.duckduckgo.com/?q="
    startpage  "https://www.startpage.com/do/search?q="
    yandex     "https://yandex.ru/yandsearch?text="
    gh         "https://github.com/search?q="
    baidu      "https://www.baidu.com/s?wd="
    ecosia     "https://www.ecosia.org/search?q="
    goodreads  "https://www.goodreads.com/search?q="
    givero     "https://www.givero.com/search?q="
    sof        "https://stackoverflow.com/search?q="
    wfa        "https://www.wolframalpha.com/input/?i="
    ask        "https://www.ask.com/web?q="
  )

  # search or go to main page depending on number of arguments passed
  if [[ $# -gt 1 ]]; then
    # build search url:
    # join arguments passed with '+', then append to search engine URL
    url="${urls[$1]}$(omz_urlencode ${@[2,-1]})"
  else
    # build main page url:
    # split by '/', then rejoin protocol (1) and domain (2) parts with '//'
    url="${(j://:)${(s:/:)urls[$1]}[1,2]}"
  fi

  open_command "$url"
}
function _frontend_fallback() {
  case "$FRONTEND_SEARCH_FALLBACK" in
    duckduckgo) echo "https://duckduckgo.com/?sites=$1&q=" ;;
    *) echo "https://google.com/search?as_sitesearch=$1&as_q=" ;;
  esac
}
function frontend() {
  emulate -L zsh

  # define search context URLS
  local -A urls
  urls=(
    bootsnipp      'https://bootsnipp.com/search?q='
    bundlephobia   'https://bundlephobia.com/result?p='
    caniuse        'https://caniuse.com/#search='
    codepen        'https://codepen.io/search/pens?q='
    compassdoc     'http://compass-style.org/search?q='
    cssflow        'http://www.cssflow.com/search?q='
    dartlang       'https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart:'
    fontello       'http://fontello.com/#search='
    github         'https://github.com/search?q='
    html5please    'https://html5please.com/#'
    lodash         'https://devdocs.io/lodash/index#'
    mdn            'https://developer.mozilla.org/search?q='
    nodejs         $(_frontend_fallback 'nodejs.org/en/docs/')
    npmjs          'https://www.npmjs.com/search?q='
    packagephobia  'https://packagephobia.now.sh/result?p='
    qunit          'https://api.qunitjs.com/?s='
    reactjs        $(_frontend_fallback 'reactjs.org/')
    smacss         $(_frontend_fallback 'smacss.com')
    stackoverflow  'https://stackoverflow.com/search?q='
    typescript     $(_frontend_fallback 'www.typescriptlang.org/docs')
    unheap         'http://www.unheap.com/?s='
    vuejs          $(_frontend_fallback 'vuejs.org')
  )
  # build search url:
  # join arguments passed with '%20', then append to search context URL
  url="${urls[$1]}$(omz_urlencode -P ${@[2,-1]})"

  echo "Opening $url ..."
  open_command "$url"
}

alias ggs='web_search gg'
alias bootsnipp='frontend bootsnipp'
alias bundlephobia='frontend bundlephobia'
alias caniuse='frontend caniuse'
alias codepen='frontend codepen'
alias compassdoc='frontend compassdoc'
alias cssflow='frontend cssflow'
alias dartlang='frontend dartlang'
alias emberjs='frontend emberjs'
alias flowtype='frontend flowtype'
alias fontello='frontend fontello'
alias ghs='frontend github'
alias html5please='frontend html5please'
alias lodash='frontend lodash'
alias mdn='frontend mdn'
alias nodedoc='frontend nodejs'
alias npmdoc='frontend npmjs'
alias packagephobia='frontend packagephobia'
alias qunit='frontend qunit'
alias reactjs='frontend reactjs'
alias smacss='frontend smacss'
alias stackoverflow='frontend stackoverflow'
alias typescript='frontend typescript'
alias unheap='frontend unheap'
alias vuejs='frontend vuejs'

source $ZSH/oh-my-zsh.sh
