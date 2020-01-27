# dotfiles

My system's dotfile :smile:

To use the modfiles link/copy them to their intended destinations.

For example (for firefox) , you can copy/link the chrome folder in the [profile folder](https://support.mozilla.org/en-US/kb/profiles-where-firefox-stores-user-data).

The config files for the following are present in this repo:

- Firefox Chrome Styling
- i3, i3-bar, i3blocks, i3-switch
- Custom GTK theme
- Wallpaper and Lock background
- Alacritty
- Zsh

The theme I use for VSCode is [Material Theme Ocean](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-material-theme).

I use prezto for zsh for the terminal. In my opinion, it is already pretty good with features and functionality such that I only need to modify a few aliasses while I use it. Hence I have not added the config for it. The aliases are present in `.zshrc`.

---

### Copy vs Link

You can either copy the configuration files to their specific locations or make symlinks in those locations. The advantage of symlinks is that all the config files remain in one folder and monitoring the changes becomes easy.
