# alien-cursors 🛸
An animated alien and UFO themed cursor pack for xcursor.

![default](https://github.com/user-attachments/assets/bd4e79ff-6d43-408e-adcf-b2d86a095f5b)
![default-dark](https://github.com/user-attachments/assets/4cbb20b9-bcb9-4744-a152-e46b97e15cb3)


## How to Install
Simply run the ```install.sh``` script. This will copy the necessary files of the light and dark variants over to both local and system directories.
```
local location:
$HOME/.local/share/icons/alien-cursors
$HOME/.local/share/icons/alien-cursors-dark
```
```
system-wide location:
/usr/share/icons/alien-cursors
/usr/share/icons/alien-cursors-dark
```

By default the theme inherits from **'Adwaita'**. If you would like to inherit from a different theme, you must specify within the ```index.theme``` file, before running the install script.

## How to Use
You may now begin setting your cursor theme in various different contexts e.g.
- Environment: ```env XCURSOR_THEME=alien-cursors```
- GTK: ```gsettings set org.gnome.desktop.interface cursor-theme 'alien-cursors-dark'```

If you wish, you may create a _'default'_ theme which simply inherits from _'alien-cursors'_, as most applications will fall back on a default theme anyway.
<pre>
/usr/share/icons/<b>default</b>/index.theme
------------
[Icon Theme]
Inherits=alien-cursors
</pre>

### File Structure
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
However, the original SVG files have been provided for those that wish to generate their own custom sizes. See within the ```raw``` folder.
It is important to note that these are animated cursors and require all of their frames to work!

Here is how one may structure their ```default.cursor``` file to generate with a size of 32px, a hotspot of (3px, 0px), and a delay of 50ms per frame.
```
32 3 0 default1.png 50
32 3 0 default2.png 50
32 3 0 default3.png 50
```

## Credits
The cursors within this theme are made and maintained solely by me, and you are free to use them in accordance with the **'MIT license'**.

