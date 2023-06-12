#!/bin/zsh

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git 

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst


zstyle ':vcs_info:git*' formats '🦑 %b '

PROMPT="🦄 %F{44}%n@%m%f %F{220}%~%f "
PROMPT+="%F{201}\$vcs_info_msg_0_%f "
PROMPT+=$'\n'🔮" "
