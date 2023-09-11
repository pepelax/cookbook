sudo apt install -y gnome-tweaks

# disable animations
gsettings set org.gnome.desktop.interface enable-animations false
# gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps false

# font size scale
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25

# switch keyboard by Alt+Shift
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"