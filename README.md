# alien-cursors 🛸
An animated alien and UFO themed cursor pack for xcursor.

![default](https://github.com/user-attachments/assets/2a326cd8-46e5-45af-8b1c-3f06523b6537)

## How to Install
Simply run the ```install.sh``` script. This will copy the necessary files over to both local and system directories.
- local location:
```$HOME/.local/share/icons/alien-cursors```
- system-wide location:
```/usr/share/icons/```

By default the theme inherits from **'Adwaita'**. If you would like to inherit from a different theme, you must specify within the _'index.theme'_ file.

## How to Use
You may now begin setting your cursor theme in various different contexts e.g.
- Environment: ```env XCURSOR_THEME=alien-cursor```
- GTK: gsettings set org.gnome.desktop.interface cursor-theme 'alien-cursor'

If you wish, you may create a 'default' theme which simply inherits from 'alien-cursor', as most applications will fallback on a default theme anyway.
<pre>
/usr/share/icons/<b>default</b>/index.theme
------------
[Icon Theme]
Inherits=alien-cursors
</pre>

## File Structure
```
/usr/share/icons/
├── alien-cursors
│   ├── cursors
│   │   ├── default
│   │   └── left_ptr -> default
│   └── index.theme
└── default
    └── index.theme
```

## Generating Custom Sizes
The cursors have already been exported to **'PNG'** and converted to the required format, using the **'xcursorgen'** tool. You do not need to do this yourself.
However, the original SVG files have been provided for those that wish to generate their own custom sizes. See within the _'raw'_ folder.
It is important to note that these are animated cursors and require all of their frames to work!

Here is how one may structure their ```default.cursor``` file to generate with a size of 32px, a hotspot of (3px, 0px), and a delay of 50ms per frame.
```
32 3 0 default1.png 50
32 3 0 default2.png 50
32 3 0 default3.png 50
```

## Credits
The cursors within this theme are made and maintained solely by me, and you are free to use them in accordance with the **'MIT license'**.

