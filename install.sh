theme_dir='/usr/share/themes/MateTheme'

sudo mkdir $theme_dir

sudo cp -rf './metacity-1' $theme_dir

color='#1D2126'
highlight_color='#2E363D'
focus_color='#4B7AB3'
highlight_focus_color='#578ED1'

metacity="$theme_dir/metacity-1/metacity-theme-3.xml"

sudo sed -i "s|{color}|$color|g" $metacity
sudo sed -i "s|{highlight_color}|$highlight_color|g" $metacity

sudo sed -i "s|{focus_color}|$focus_color|g" $metacity
sudo sed -i "s|{highlight_focus_color}|$highlight_focus_color|g" $metacity

