# Overview
The following folders exist in `~/.config`. By default, this repo will ignore
all files except whatever is re-included in `.gitignore`. 

### To use
```
# Clone repo and copy into `.config` folder
$ cd ~
$ git clone git@github.com:MylesWritesCode/dotfiles.git 
$ mv dotfiles/* ~/.config

# From there, consult specific READMEs in their folders for 
# config and installation.
```

### Linux
- nvim
- fish
  - oh-my-fish

### Windows
Copy these settings to their respective programs in Windows
- vs-code
- windows-terminal

### Regolith
**Setting the notification settings**
The below resource has some info on how to replace the notification system with
something like dunst, but it doesn't seem to be working. Idk what's wrong.
https://regolith-linux.org/docs/howtos/replace-notification-system/

### Notes
# From /usr/share/dbus-1/services/org.gnome.Shell.Notifications.service
Exec=/usr/local/bin/dunst    
Exec=/usr/bin/gjs /usr/share/gnome-shell/org.gnome.Shell.Notifications
