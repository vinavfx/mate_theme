themes_dir="$HOME/.themes"
icons_dir="$HOME/.local/share/icons"

# Iconos
git clone 'https://github.com/fcocc77/WhiteSur-icon-theme.git'
sh './WhiteSur-icon-theme/install.sh'

# Intercambio de icono de start
for pixel in 16 22 24; do
    white="$icons_dir/WhiteSur-dark/places/$pixel/start-here.svg"
    dark="$icons_dir/WhiteSur/places/$pixel/start-here.svg"
    cp $white $dark
done

rm -rf $themes_dir/MateTheme
cp -rf ./MateTheme $themes_dir

