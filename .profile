export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=/usr/bin/firefox
export FZF_DEFAULT_OPTS="--cycle --layout=reverse --border --height=90% --preview='echo {} ' --preview-window='bottom:3:wrap' --marker='*'"
export FZF_CTRL_T_OPTS="--preview=\"if file {} | grep -q 'text'; then bat --style=numbers '{}'; else echo '{}' | grc; fi\""
. "$HOME/.cargo/env"
export _JAVA_OPTIONS='-Dswing.aatext=TRUE -Dawt.useSystemAAFontSettings=on' # font anti-aliassing
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
export __GL_SHADER_DISK_CACHE_SIZE=100000000000 #100 gb max disk size of cache
