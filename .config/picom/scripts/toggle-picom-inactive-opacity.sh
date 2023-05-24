# Data.
NO_DIM="inactive-opacity = 1.00;"
DIM="inactive-opacity = 0.80;"
FILENAME="/home/syberman/.config/picom/picom.conf"
STATE_FILE="/home/syberman/.config/picom/read-mode-state"

# Clear the file contents.
> $STATE_FILE

# Check dim state.
if grep -Fxq "$DIM" $FILENAME


# Currently dim.
then
	printf "wusuppppp\n"
    sed -i "s/$DIM/$NO_DIM/g" $FILENAME
    killall -9 picom; picom -b --config ~/.config/picom/picom.conf
    echo ' On' >> $STATE_FILE

# Currently no dim.
else
    sed -i "s/$NO_DIM/$DIM/g" $FILENAME
    killall -9 picom; picom -b --config ~/.config/picom/picom.conf
    echo 'Off' >> $STATE_FILE

fi
