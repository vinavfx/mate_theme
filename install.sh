theme_dir="$HOME/.themes/MateTheme"

dark_color='#1D2126'
dark_color_hi='#2E363D'
base_color='#4B7AB3'
base_color_hi='#578ED1'

# se nececita 'sassc' para installar 'WhiteSur', y esta en el repo 'raven'
sudo dnf install 'https://pkgs.dyn.su/el8/base/x86_64/raven-release-1.0-1.el8.noarch.rpm'
git submodule update --init --recursive

# Installa 'WhiteSur'
palette='./WhiteSur/src/sass/_colors-palette.scss'
sed -i "s|.*theme_color_default.*|\$theme_color_default: $base_color_hi;|g" $palette
sed -i "s|.*theme_color_blue.*|\$theme_color_blue: $base_color_hi;|g" $palette
sh './WhiteSur-icon/install.sh'
sh './WhiteSur/install.sh'
# .......

rm -rf $theme_dir
mv "$HOME/.themes/WhiteSur-light" $theme_dir
rm -rf $HOME/.themes/WhiteSur*

# Estilo que va por encima de 'WhiteSur' original
sed -i "s|.*\$base:.*|\$base: $base_color_hi|g" './gtk-3.0/palette.sass'
npm run d
#

# Modifica algunos datos del tema 'WhiteSur' para adaptarlo a 'MateTheme'
cp './gtk-3.0/main.css' "$theme_dir/gtk-3.0/mate_theme.css"
echo '@import url("mate_theme.css");' >> "$theme_dir/gtk-3.0/gtk.css"

sed -i "s|WhiteSur-light|MateTheme|g" "$theme_dir/index.theme"

# MetaCity Theme
rm -rf "$theme_dir/metacity-1"
cp -rf './metacity-1' $theme_dir

metacity="$theme_dir/metacity-1/metacity-theme-3.xml"

sed -i "s|{dark_color}|$dark_color|g" $metacity
sed -i "s|{dark_color_hi}|$dark_color_hi|g" $metacity

sed -i "s|{base_color}|$base_color|g" $metacity
sed -i "s|{base_color_hi}|$base_color_hi|g" $metacity

