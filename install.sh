theme_dir='/usr/share/themes/MateTheme'

# este usa la base de un tema que ya existe en mate-desktop
# el tema de llama 'TraditionalOk'

sudo mkdir $theme_dir
sudo cp -rf /usr/share/themes/TraditionalOk/. $theme_dir/

gtk="$theme_dir/gtk-3.0"

npm run d

sudo cp './gtk-3.0/main.css' "$gtk/mate_theme.css"
echo '@import url("mate_theme.css");' | sudo tee -a "$gtk/gtk.css"

sudo sed -i "s|TraditionalOk|MateTheme|g" "$theme_dir/index.theme"
sudo sed -i "s|IconTheme=mate|IconTheme=Zafiro-icons|g" "$theme_dir/index.theme"

# MetaCity Theme
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

