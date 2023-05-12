echo $RECIPE_DIR
ls -l $RECIPE_DIR
echo -e "[options]\npackages = find_namespace:\ninclude_package_data = True\n\n[options.packages.find]\ninclude = tethys_*" > $RECIPE_DIR/setup.cfg
PBR_VERSION=$PKG_VERSION $PYTHON -m pip install . -vv