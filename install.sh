themes_dir="$HOME/.themes"

# Iconos
git clone 'https://github.com/fcocc77/WhiteSur-icon-theme.git'
sh './WhiteSur-icon-theme/install.sh'

rm -rf $themes_dir/MateTheme
cp -rf ./MateTheme $themes_dir

