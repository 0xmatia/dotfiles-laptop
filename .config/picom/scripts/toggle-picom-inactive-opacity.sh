# Data.
NO_DIM="  opacity: 1.0"
DIM="  opacity: 0.8"
FILENAME="$HOME/.config/alacritty/alacritty.yml"
STATE_FILE="$HOME/.config/picom/read-mode-state"

# Clear the file contents.
> $STATE_FILE

# Check dim state.
if grep -Fxq "$DIM" $FILENAME


# Currently dim.
then
	printf "wusuppppp\n"
    sed -i "s/$DIM/$NO_DIM/g" $FILENAME
    echo ' On' >> $STATE_FILE

# Currently no dim.
else
    sed -i "s/$NO_DIM/$DIM/g" $FILENAME
    echo 'Off' >> $STATE_FILE

fi
