# statusline-themer
A lua utility to easily get colors to style your statusline

## Why use this?
I spend hours making sure colors look good so that you don't have to

## How does it work?
The main function can be loaded as `local themer = require('slthemer').getSltheme`. This function detects the current colorscheme and, if a set of statusline colors are defined for it, returns them as a table. If not, a generic set of colors is returned

## Contributing
Feel free to add more colorschemes

