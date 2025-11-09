# alien-cursors 🛸
An animated alien and UFO themed cursor pack for xcursor.

## How to Install
Git clone this repository into one of the suitable xcursor directories e.g. _'$HOME/.local/share/icons/'_ or simply _'$HOME/.icons/'_.
It is strongly recommended that you also git clone into the system-wide directory _'/usr/share/icons/'_ to ensure proper functionality within all of your applications.

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
/usr/share/icons/
├── alien-cursors
│   ├── cursors
│   │   ├── default
│   │   └── left_ptr -> default
│   └── index.theme
└── default
    └── index.theme

## Generating Custom Sizes
The cursors have already been exported to **'PNG'** and converted to the required format, using the **'xcursorgen'** tool. You do not need to do this yourself.
However, the original SVG files have been provided for those that wish to generate their own custom sizes. See within the _'raw'_ folder.
It is important to note that these are animated cursors and require all of their frames to work!

Here is how one may structure their default.cursor file to generate with a size of 48px, a hotspot of (2px, 0px), and a delay of 50ms per frame.
```
48 2 0 default1.png 50
48 2 0 default2.png 50
48 2 0 default3.png 50
48 2 0 default4.png 50
```

## Credits
The cursors within this theme are made and maintained solely by me, and you are free to use them in accordance with the **'MIT license'**.

