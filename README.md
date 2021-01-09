![Manjaro Endgame](https://i.imgur.com/x6n6qk7.png)

# dotfiles

My system's dotfile :smile:

## The Desktop

![The main system](https://i.imgur.com/PYuKtjB.png)

## Empty Desktop

![The empty desktop](https://i.imgur.com/VOVdNBc.png)

## Rofi Launcher

![Rofi launcher](https://i.imgur.com/LIqBPDO.png)

## Code

![Code](https://i.imgur.com/I4pmkld.png)

## Browser (_firefox_)

![Firefox](https://i.imgur.com/AEIyR4L.png)

## Spotify + Typora

![Spotify + Typora](https://i.imgur.com/3Qrqo9r.png)

To use the modfiles link/copy them to their intended destinations.

For example (for firefox) , you can copy/link the chrome folder in the [profile folder](https://support.mozilla.org/en-US/kb/profiles-where-firefox-stores-user-data).

The config files for the following are present in this repo:

- Firefox Chrome Styling
- i3, polybar
- Custom GTK theme - oomox-xypu-gtx
- Wallpaper (edited version of [Photo by Hiep Dai on Unsplash](https://unsplash.com/photos/Z0aBm6359Oo))
- Alacritty
- Icon Theme - Zenlism Wildfire
- Zsh (Using [prezto](https://github.com/sorin-ionescu/prezto) with [autosuggestions](https://github.com/sorin-ionescu/prezto/tree/master/modules/autosuggestions))

The theme I use for VSCode is [Material Ocean](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-material-theme).

Icon Theme: [La Capitaine](https://github.com/keeferrourke/la-capitaine-icon-theme)
Cursor Theme: Breeze (preinstalled with Manjaro i3)

I use prezto for zsh for the terminal with prezto default settings. In my opinion, it is already pretty good with features and functionality such that I only need to modify a few aliasses while I use it. Hence I have not added the config for it.

Older versions of the theme can be found in commit history and some files not used in new setup have been moved to `old`.

## Neofetch

```python
xypnox@xypnox-xps
-----------------
OS: Manjaro Linux x86_64
Host: XPS 15 9560
Kernel: 5.9.16-1-MANJARO
Uptime: 40 mins
Shell: zsh 5.8
Resolution: 1920x1080
WM: i3
Theme: oomox-xypu-gtx [GTK2/3]
Icons: la-capitaine-icon-theme [GTK2/3]
Terminal: alacritty
CPU: Intel i7-7700HQ (8) @ 3.800GHz
GPU: NVIDIA GeForce GTX 1050 Mobile
GPU: Intel HD Graphics 630
```


## Folder Icons

![](https://i.imgur.com/unlPAjh.png)

**Attributions for the original Icons:**

- Icons made by <a href="https://www.flaticon.com/authors/darius-dan" title="Darius Dan">Darius Dan</a> from <a href="https://www.flaticon.com/"     title="Flaticon">www.flaticon.com</a>  
- Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/"     title="Flaticon">www.flaticon.com</a>

- I do not use these icons anymore as the default file manager in Manjaro i3: pcmanfm doesn't support custom folder icons. And given the simplicity of the default setup, I do not think adding another gui file manager would make sense just to get custom icons.

---

### Copy vs Link

You can either copy the configuration files to their specific locations or make symlinks in those locations. The advantage of symlinks is that all the config files remain in one folder and monitoring the changes becomes easy.
