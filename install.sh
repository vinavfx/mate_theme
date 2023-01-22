themes_dir="$HOME/.themes"

# Iconos
git submodule update --init --recursive
sh './WhiteSur/install.sh'

rm -rf $themes_dir/MateTheme
cp -rf ./MateTheme $themes_dir
