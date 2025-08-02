# ALIASES
alias ll='ls -ltrh'
alias vim='nvim'
alias vi='nvim'
alias ..='cd ..'


# COLORS IN LS
export CLICOLOR=1
export LSCOLORS="ExEhChChbxfxfxbxbxExEx"


# COLORS IN MAN PAGE
export LESS_TERMCAP_mb=$(print -P "%F{cyan}") \
    LESS_TERMCAP_md=$(print -P "%B%F{red}") \
    LESS_TERMCAP_me=$(print -P "%f%b") \
    LESS_TERMCAP_so=$(print -P "%K{magenta}") \
    LESS_TERMCAP_se=$(print -P "%K{black}") \
    LESS_TERMCAP_us=$(print -P "%U%F{green}") \
    LESS_TERMCAP_ue=$(print -P "%f%u")


# CASE INSENSITIVE AUTOCOMPLETION AND COLORED
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors 'di=1;34:ln=1;34:so=1;36:pi=36:ex=1;31:bd=1;35:cd=1;35:su=1;31:sg=1;31:tw=1;34:ow=1;34'
autoload -Uz compinit
compinit


# EASIER WORD NAVIGATION
export WORDCHARS='*_-.[]~;!$%^(){}<>'
# autoload -Uz select-word-style  # These last two commands don't seem necessary?
# select-word-style normal


# ACTIVATE STARSHIP, PROMPT CUSTOMIZER
eval "$(starship init zsh)"

