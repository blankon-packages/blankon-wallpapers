#!/bin/bash

shopt -s nullglob

echo """<?xml version=\"1.0\"?>
<!DOCTYPE wallpapers SYSTEM \"gnome-wp-list.dtd\">
<wallpapers>
 <wallpaper deleted=\"false\">
   <name>BlankOn Verbeek  Wallpapers</name>
   <filename>/usr/share/backgrounds/contex/verbeek.xml</filename>
   <options>zoom</options>
 </wallpaper>"""

for i in *.{jpg,png}; do
    FN=${i//_/ }
    TITLE=${FN% by*}
    echo """ <wallpaper>
     <_name>${TITLE}</_name>
     <filename>/usr/share/backgrounds/${i}</filename>
     <options>zoom</options>
     <pcolor>#000000</pcolor>
     <scolor>#000000</scolor>
     <shade_type>solid</shade_type>
 </wallpaper>"""
done
echo "</wallpapers>"
