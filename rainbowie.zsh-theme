# Druskus rainbow-like zsh theme
# Features: 
# 	- Last command status indicator
#	- Git indicator
#
# Requirements:
# 	- nerd-fonts: \ue702 for the git symbol


# This allows expansions
setopt prompt_subst
# This needs to be in simple quotes
# https://unix.stackexchange.com/questions/32124/set-variables-in-zsh-precmd-and-reference-them-in-the-prompt
PROMPT='%(?:%B%F{green}✓:%B%F{red}✕) ' # ✓ or ✕ depending on last command 
PROMPT+='%B%F{red}[%F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%2.%f%b' # [user@host path
PROMPT+='$(git rev-parse --is-inside-work-tree &>/dev/null && echo " \ue702")' # git symbol, if inside a repo
PROMPT+='%B%F{red}]%f%b ➜ ' # ] ➜ 
