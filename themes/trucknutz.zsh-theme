function get_pwd() {
  echo "${PWD/$HOME/~}"
}

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

PROMPT='%{$fg[$NCOLOR]%}%B%n@%m%b%{$reset_color%}: %{$fg[blue]%}%B$(get_pwd)%b%{$reset_color%} $(git_prompt_info)
%(!.#.$) '
RPROMPT='[%*]'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

# LS colors, made with https://geoff.greer.fm/lscolors/

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
