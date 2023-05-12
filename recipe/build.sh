echo "**********************  BUILDING!!! *********************"
ls -l $SRC_DIR
echo -e "[options]\npackages = find_namespace:\ninclude_package_data = True\n\n[options.packages.find]\ninclude = tethys_*" > $SRC_DIR/setup.cfg
echo "recursive-include tethys_* *" > $SRC_DIR/MANIFEST.in
SETUPTOOLS_SCM_PRETEND_VERSION=$PKG_VERSION $PYTHON -m pip install . -vv