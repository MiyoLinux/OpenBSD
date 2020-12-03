All of the "menu" scripts are used by my Openbox menus in order to quickly change menus and to easily backup any of the menus if I have edited them.

The "wallpaper-changer" script uses feh to change my wallpaper once every 10 minutes. The script is calling the wallpapers from ~/.wallpapers in my home folder. If you want to use it, but your wallpapers are in a different folder, you will need to edit the script to use the path to your wallpapers. You can also change the amount of time; in which, the script changes wallpapers if you want.

The "webcam" script is using ffplay in order to operate my computer's webcam. I have a line in my /etc/doas.conf file to allow me to use my webcam using doas instead of having to be root. I also made a desktop file, and placed it in ~/.local/share/applications/ so that it appears in my menus for easy access.
