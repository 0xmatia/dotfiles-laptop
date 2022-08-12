export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=/usr/bin/firefox
export FZF_DEFAULT_OPTS="--cycle --layout=reverse --border --height=90% --preview='echo {} | fish_indent --ansi' --preview-window='bottom:3:wrap' --marker='*'"
export FZF_CTRL_T_OPTS="--preview=\"if file {} | grep -q 'text'; then bat --style=numbers '{}'; else echo '{}' | fish_indent --ansi; fi\""
