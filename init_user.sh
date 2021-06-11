#!/bin/bash

TMP_FILE=`mktemp`

wget https://cinnamon-spices.linuxmint.com/files/applets/force-quit@cinnamon.org.zip -O $TMP_FILE
unzip -d ~/.local/share/cinnamon/applets $TMP_FILE

rm $TMP_FILE

dconf write /org/gnome/libgnomekbd/keyboard/options "['grp\tgrp:alt_shift_toggle', 'grp\tgrp:win_space_toggle']"

dconf write /org/cinnamon/enabled-applets "['panel1:left:0:menu@cinnamon.org:14', 'panel2:left:0:show-desktop@cinnamon.org:15', 'panel1:left:2:panel-launchers@cinnamon.org:16', 'panel2:left:1:window-list@cinnamon.org:17', 'panel1:right:1:systray@cinnamon.org:18', 'panel1:right:2:xapp-status@cinnamon.org:19', 'panel1:right:3:keyboard@cinnamon.org:20', 'panel1:right:4:notifications@cinnamon.org:21', 'panel1:right:5:printers@cinnamon.org:22', 'panel1:right:6:removable-drives@cinnamon.org:23', 'panel1:right:12:user@cinnamon.org:24', 'panel1:right:8:network@cinnamon.org:25', 'panel1:right:9:sound@cinnamon.org:26', 'panel1:right:10:power@cinnamon.org:27', 'panel1:right:11:calendar@cinnamon.org:28', 'panel2:right:0:workspace-switcher@cinnamon.org:29', 'panel1:center:0:force-quit@cinnamon.org:30']"
dconf write /org/cinnamon/next-applet-id 31
dconf write /org/cinnamon/panels-enabled "['1:0:top', '2:0:bottom']"
dconf write /org/cinnamon/panels-height "['1:27', '2:27']"

dconf write /org/cinnamon/desktop/background/picture-uri "'file:///usr/share/backgrounds/adapta/tealized.jpg'"

dconf write /org/cinnamon/desktop/background/slideshow/image-source "'xml:///usr/share/cinnamon-background-properties/adapta-backgrounds.xml'"


dconf write /org/cinnamon/desktop/interface/clock-show-date true
dconf write /org/cinnamon/desktop/interface/clock-show-seconds true
dconf write /org/cinnamon/desktop/interface/first-day-of-week 1
dconf write /org/cinnamon/desktop/interface/gtk-theme "'Adapta-Nokto'"
dconf write /org/cinnamon/desktop/interface/icon-theme "'Papirus-Dark'"

dconf write /org/cinnamon/desktop/keybindings/media-keys/screensaver "['<Primary><Alt><Super>l', 'XF86ScreenSaver']"

dconf write /org/cinnamon/desktop/keybindings/wm/begin-move "['<Alt><Super>F7']"
dconf write /org/cinnamon/desktop/keybindings/wm/begin-resize "['<Alt><Super>F8']"
dconf write /org/cinnamon/desktop/keybindings/wm/move-to-workspace-1 "['<Primary><Alt>1', '<Primary><Alt>KP_1', '<Primary><Alt>KP_End']"
dconf write /org/cinnamon/desktop/keybindings/wm/move-to-workspace-2 "['<Primary><Alt>2', '<Primary><Alt>KP_2', '<Primary><Alt>KP_Down']"
dconf write /org/cinnamon/desktop/keybindings/wm/move-to-workspace-3 "['<Primary><Alt>3', '<Primary><Alt>KP_3', '<Primary><Alt>KP_Next']"
dconf write /org/cinnamon/desktop/keybindings/wm/move-to-workspace-4 "['<Primary><Alt>4', '<Primary><Alt>KP_4', '<Primary><Alt>KP_Left']"
dconf write /org/cinnamon/desktop/keybindings/wm/move-to-workspace-5 "['<Primary><Alt>5', '<Primary><Alt>KP_5', '<Primary><Alt>KP_Begin']"

dconf write /org/cinnamon/desktop/wm/preferences/theme "'Adapta-Nokto'"

dconf write /org/cinnamon/theme/name "'Adapta-Nokto'"

dconf write /org/nemo/preferences/default-folder-viewer "'list-view'"
