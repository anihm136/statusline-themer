# moonfly-statusline-themes
A set of themes for [vim-moonfly-statusline](https://github.com/bluz71/vim-moonfly-statusline), based on some popular colorschemes  

## Why use this?
`vim-moonfly-statusline` uses linked highlight groups to adapt well to most colorschemes. This plugin is for the few that it doesn't adapt to well. It's a light plugin that shouldn't affect your startup times or latency much, and more themes will be added in the future. It also falls back to the default adaptive colors if a colorscheme is not defined for the current theme, so the statusline should look in-theme all the time.  

## How does it work?
Quite simply, the plugin has a set of functions to redefine the highlight groups to various colors, and chooses the appropriate one based on the theme. If one is not found, it links the highlight groups as advised in the plugin's readme. An autocommand is defined to automatically change the colors when the colorscheme is changed  

## Contributing
I'm a newcomer to vim plugin development, so if you find something that is horribly wrong (or even slightly wrong), feel free to open an issue/send in a PR. For new contributors, see the colorschemes defined in [autoload/moonfly_statusline_themes/themes](./autoload/moonfly_statusline_themes/themes/) to get started. You should not have to change anything else to add a new theme  

