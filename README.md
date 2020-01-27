# dotfiles

My system's dotfile :smile:

## The Desktop

![The main system](https://i.imgur.com/rn5jBCG.png)

## Floating Windows

![Foating windows](https://i.imgur.com/AZj7eHP.png)

## Code

![Code](https://i.imgur.com/Ri3F1je.png)

## Browser

![Firefox](https://i.imgur.com/Dqeq7fF.png)

## Spotify + Dashboard

![Dashboard](https://i.imgur.com/8BY7ujo.png)

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

The wallpaper is a modified version of a [witcher wallpaper I found online](https://wallpaperplay.com/walls/full/9/6/8/120747.jpg). The modified verion is present in this repo and also at [reddit's r/wallpapers](https://www.reddit.com/r/wallpapers/comments/eqeqx4/space_witcher_3840x2160/).

## Scripts

### i3-workspace-switch

This is a custom switcher that I use to ease my own workflow. Usually I have a few workspaces open, and the last one holds the dash and spotify. With default workspace switch using `Meta+Shift+Tab` I can switch in regular circular manner. The modified switcher trumps the usual one by _skipping_ the last workspace. It switches as if the last workspace isn't there. Thus, If I have two or three main workspaces opened with the dash, I can switch between the main ones without switching to the supplementary workspace.

People wondering how I would change songs on spotify? Either switch to the last workspace using `Meta+Num` or simply look at the status bar.

### ytv

This is a alias for [youtube-viewer](https://github.com/trizen/youtube-viewer) for use in rofi. If you run `ytv "youtube video url"`, It opens a portable player with the youtube video playing in it. It is not at all related to firefox or it's PIP mode. Suffice to say, advanced controls are available with this that simply do not exist in PIP.

---

### Copy vs Link

You can either copy the configuration files to their specific locations or make symlinks in those locations. The advantage of symlinks is that all the config files remain in one folder and monitoring the changes becomes easy.
