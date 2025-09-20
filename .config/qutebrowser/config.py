# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103
# pylint settings included to disable linting errors

c.tabs.title.format = "{audio}{current_title}"
c.fonts.web.size.default = 20

c.url.searchengines = {
        # note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!aw': 'https://wiki.archlinux.org/?search={}',
        '!apkg': 'https://archlinux.org/packages/?sort=&q={}&maintainer=&flagged=',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        }

c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem']

config.load_autoconfig(False) # load settings done via the gui

c.auto_save.session = True # save tabs on quit/restart

c.tabs.show = 'never'
c.statusbar.show = 'never'

# keybinding changes
config.bind('=', 'cmd-set-text -s :open')
config.bind('h', 'history')
config.bind('cs', 'cmd-set-text -s :config-source')
config.bind('td', 'config-cycle colors.webpage.darkmode.enabled true false')
config.bind('tH', 'config-cycle tabs.show multiple never')
config.bind('sH', 'config-cycle statusbar.show always never')
config.bind('T', 'hint links tab')
config.bind('pP', 'open -- {primary}')
config.bind('pp', 'open -- {clipboard}')
config.bind('pt', 'open -t -- {clipboard}')
# config.bind('qm', 'macro-record')
config.bind('<ctrl-y>', 'spawn --userscript ytdl.sh')
config.bind('tT', 'config-cycle tabs.position top left')
config.bind('gJ', 'tab-move +')
config.bind('gK', 'tab-move -')
config.bind('gm', 'tab-move')

# dark mode setup
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.colors.webpage.darkmode.policy.images = 'never'
config.set('colors.webpage.darkmode.enabled', False, 'file://*')

# styles, cosmetics
# c.content.user_stylesheets = ["~/.config/qutebrowser/styles/youtube-tweaks.css"]
c.tabs.position = 'left'
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 9, 'right': 9}
c.tabs.indicator.width = 0 # no tab indicators
# c.window.transparent = True # apparently not needed
c.tabs.width = '15%'

# fonts
c.fonts.default_family = []
c.fonts.default_size = '12pt'
c.fonts.web.family.fixed = 'Iosevka'
c.fonts.web.family.sans_serif = 'Iosevka'
c.fonts.web.family.serif = 'Iosevka'
c.fonts.web.family.standard = 'Iosevka'

# privacy - adjust these settings based on your preference
# config.set("completion.cmd_history_max_items", 0)
# config.set("content.private_browsing", True)
# config.set("content.webgl", False, "*")
config.set("content.canvas_reading", False)
config.set("content.geolocation", False)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.cookies.accept", "all")
config.set("content.cookies.store", True)
# config.set("content.javascript.enabled", False) # tsh keybind to toggle

c.content.blocking.enabled = True
c.content.blocking.method = 'adblock' # uncomment this if you install python-adblock


# base16-qutebrowser (https://github.com/theova/base16-qutebrowser)
# Scheme name: Everforest Dark Medium
# Scheme author: Sainnhe Park (https://github.com/sainnhe)
# Template author: theova and Daniel Mulford
# Commentary: Tinted Theming: (https://github.com/tinted-theming)

base00 = "#2d353b"
base01 = "#343f44"
base02 = "#3d484d"
base03 = "#475258"
base04 = "#7a8478"
base05 = "#859289"
base07 = "#d3c6aa"
base08 = "#e67e80"
base09 = "#e69875"
base0A = "#dbbc7f"
base0B = "#a7c080"
base0C = "#83c092"
base0D = "#7fbbb3"
base0E = "#d699b6"

# set qutebrowser colors

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = base07
# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = base00
# Background color of the completion widget for even rows.
c.colors.completion.even.bg = base00
# Foreground color of completion widget category headers.
c.colors.completion.category.fg = base0B
# Background color of the completion widget category headers.
c.colors.completion.category.bg = base00
# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = base00
# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = base00
# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = base0B
# Background color of the selected completion item.
c.colors.completion.item.selected.bg = base02
# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = base02
# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = base02
# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = base0B
# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = base0B
# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = base07
# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = base00
# Background color of disabled items in the context menu.
c.colors.contextmenu.disabled.bg = base01
# Foreground color of disabled items in the context menu.
c.colors.contextmenu.disabled.fg = base04
# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = base00
# Foreground color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.fg =  base07
# Background color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.bg = base0B
#Foreground color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.fg = base00
# Background color for the download bar.
c.colors.downloads.bar.bg = base00
# Color gradient start for download text.
c.colors.downloads.start.fg = base00
# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = base0D
# Color gradient end for download text.
c.colors.downloads.stop.fg = base00
# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = base0C
# Foreground color for downloads with errors.
c.colors.downloads.error.fg = base08
# Font color for hints.
c.colors.hints.fg = base07
# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
c.colors.hints.bg = base00
c.hints.border = base00
# Font color for the matched part of hints.
c.colors.hints.match.fg = base0B
# Text color for the keyhint widget.
c.colors.keyhint.fg = base07
# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base0B
# Background color of the keyhint widget.
c.colors.keyhint.bg = base00
# Foreground color of an error message.
c.colors.messages.error.fg = base00
# Background color of an error message.
c.colors.messages.error.bg = base08
# Border color of an error message.
c.colors.messages.error.border = base08
# Foreground color of a warning message.
c.colors.messages.warning.fg = base00
# Background color of a warning message.
c.colors.messages.warning.bg = base09
# Border color of a warning message.
c.colors.messages.warning.border = base09
# Foreground color of an info message.
c.colors.messages.info.fg = base07
# Background color of an info message.
c.colors.messages.info.bg = base00
# Border color of an info message.
c.colors.messages.info.border = base00
# Foreground color for prompts.
c.colors.prompts.fg = base07
# Border used around UI elements in prompts.
c.colors.prompts.border = base00
# Background color for prompts.
c.colors.prompts.bg = base00
# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = base02
# Foreground color for the selected item in filename prompts.
c.colors.prompts.selected.fg = base0B
# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = base0B
# Background color of the statusbar.
c.colors.statusbar.normal.bg = base00
# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = base0C
# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = base00
# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = base0A
# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = base00
# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = base0E
# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = base00
# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = base04
# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = base01
# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = base0E
# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = base01
# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = base0D
# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = base00
# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = base0D
# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = base00
# Background color of the progress bar.
c.colors.statusbar.progress.bg = base0D
# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = base0D
# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = base08
# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = base0A
# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = base0B
# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = base0B
# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = base09
# Background color of the tab bar.
c.colors.tabs.bar.bg = base00
# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = base0D
# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = base0C
# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = base08
# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = base07
# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = base00
# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = base07
# Background color of unselected even tabs.
c.colors.tabs.even.bg = base00
# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = base0B
# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = base00
# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = base0B
# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = base00
# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = base02
# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = base0B
# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = base02
# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = base0B
# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = base0B
# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = base02
# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = base0B
# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = base02
# Background color for webpages if unset (or empty to use the theme's
# color).
c.colors.webpage.bg = base00
