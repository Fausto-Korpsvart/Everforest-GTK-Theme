## Everforest themes for GTK

![Everforest](https://raw.githubusercontent.com/Fausto-Korpsvart/Everforest-GTK-Theme/master/screenshots/Everforest1.png)
**Everforest**

## Small Description

<ins>**Everforest**</ins> is a GTK theme based on the colour palette of the [Everforest for Neovim](https://github.com/sainnhe/everforest) by [@Sainnhe](https://github.com/sainnhe), the [Graphite GTK theme](https://github.com/vinceliuice/Graphite-gtk-theme) by [@VinceLiuice](https://github.com/vinceliuice) and the [Suru Plus](https://github.com/gusbemacbe/suru-plus) icons by [@gusbemacbe.](https://github.com/gusbemacbe)

The idea was born from the need for **GTK** themes that match the most prominent colour palettes of **Neovim** code editor and **Tiling Window Manager**, such as **Xmonad**, **Awesome**, **DWM**, etc, which use these colour schemes to give a uniform and unique look to working environments. See on **Reddit:** [r/unixporn](https://www.reddit.com/r/unixporn/).

The colour palettes in this series of themes are the ones I have used the most in my setup for **Neovim**, **Xmonad** and **Gnome DE**, so creating themes started as something personal that I then decided to share thanks to several people asking me to share them because they seemed good, I hope you find them useful and make your desktops look good too.

## Installing Themes

Themes work in <ins>**Gnome versions 40, 41 and 42**,</ins> the current version, but since Gnome 42 introduced <ins>**libadwaita**</ins> the themes files for **GTK4** applications must be placed in a different folder than the one we have been used to, this was the <ins>**`'/.themes'`**</ins> folder in the <ins>**`'$HOME'`**</ins> directory, which for **GTK3** applications will always be the default themes folder, but for themes to be applied in <ins>**GTK4/libadwaita**</ins> applications, the themes must be placed in the new path: <ins>**`'~/.config/gtk-4.0'`**</ins> with the name <ins>**`'gtk.css'`**</ins>; this will apply the themes automatically without use **Gnome Tweaks** but, for **GTK3** applications, we must always use **Tweaks** as we have done so far.

To install the [themes](https://www.pling.com/u/fkorpsvart) you will need to download <ins>**two files**</ins>, themes for **GTK3** and **GTK4**.
The **GTK4** themes have the specification: <ins>**'Gnome42'**</ins>, these themes go in the path: **<ins>`'~/.config/gtk-4.0/'`</ins>**, and for **GTK3** themes go to the usual path, this is: <ins>**`'~/.themes/'`**</ins>.

As I mentioned before, the **GTK4** themes don't need to be applied with **Tweaks**, they are applied automatically but, if you have applications open you will have to close and open them for the theme to be applied and, But for GTK3 applications you do need to apply them with **Tweaks**, as usual.

To apply the themes in Flatpak applications you can run the following command: `sudo flatpak override --filesystem=xdg-config/gtk-4.0` which gives Flatpak applications permissions to use the styles in the directory `/gtk-4.0`

And for GTK-3: `sudo flatpak override --filesystem=xdg-config/gtk-3.0`

If that doesn't work, thanks to [@telometto](https://github.com/telometto) who found this repository, you can use [Stylepak](https://github.com/refi64/stylepak) to apply styles to Flatpal applications.

This is a small table of the themes that are available so far, I hope to be able to add a few more of the themes I use in my Neovim setup.

| [Catppuccin](https://www.pling.com/p/1715554) | [Material](https://www.pling.com/p/1706139) | [Rosé Pine](https://www.pling.com/p/1810530) | [Tokyonight](https://www.pling.com/p/1681315) |
| --------------------------------------------- | ------------------------------------------- | -------------------------------------------- | --------------------------------------------- |
| Catppuccin Mocha Border                       | Material Deep Ocean Border                  | Rosé Pine Border                             | Tokyonight Dark Border                        |
| Catppuccin Mocha Borderless                   | Material Deep Ocean Borderless              | Rosé Pine Borderless                         | Tokyonight Dark Borderless                    |
| Catppuccin Macchiato Border                   | Material Palenight Border                   | Rosé Pine Moon Border                        | Tokyonight Storm Border                       |
| Catppuccin Macchiato Borderless               | Material Palenight Borderless               | Rosé Pine Moon Borderless                    | Tokyonight Storm Borderless                   |

| [Gruvbox](https://www.pling.com/p/1681313) | [Everforest](https://www.pling.com/p/1695467) | [Kanagawa](https://www.pling.com/p/1810560) |
| ------------------------------------------ | --------------------------------------------- | ------------------------------------------- |
| Gruvbox Material Border                    | Everforest Border                             | Kanagawa Border                             |
| Gruvbox Material Borderless                | Everforest Borderless                         | Kanagawa Borderless                         |

You all know that you can leave comments to report bugs or give your opinion about the theme, so please leave comments to report bugs and get them fixed as soon as possible.

#### **<ENJOY IT!! :nerd_face:/>**
