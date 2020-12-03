I have four menus that I sometimes switch between. Three of them are using pmenu as a pipe menu to supply a dynamic applications menu.

https://gitlab.com/o9000/pmenu

The fourth menu is completely manual. 

Two of the menus have icons. One uses the Paper icon theme, and the other menu uses the Papirus icon theme. The Paper icon theme is available in the OpenBSD repositories. The Papirus icons have to be downloaded and installed.  

https://github.com/PapirusDevelopmentTeam/papirus-icon-theme

Each menu is named accordingly and are found in the "menus" folder.

Each menu has a "Menu Chooser" and "Menu Backup". They are controlled through some basic scripts that I included in the /usr/local/bin/ folder. 

The "Menu Chooser" lets me change to a different menu on the fly...

![alt text](https://13707080-557519846114226283.preview.editmysite.com/uploads/1/3/7/0/13707080/2020-12-03-070419-1366x768-scrot_orig.png)

If I edit a menu, the "Menu Backup" will back up the current in-use menu into its appropriate folder so that the changes will be saved. That way, if I switch to a different menu but later, and I switch back to the one that I edited, the menu will have the saved edit(s). Whew! I hope that made sense! I built in a triple confirmation with a little humor mixed in. Hahaha!

![alt text](https://13707080-557519846114226283.preview.editmysite.com/uploads/1/3/7/0/13707080/2020-12-03-070535-1366x768-scrot_orig.png)

