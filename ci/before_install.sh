# install Dependencie
SITE_PKG_DIR=$VIRTUAL_ENV/lib/python$TRAVIS_PYTHON_VERSION/site-packages
echo "Using SITE_PKG_DIR: $SITE_PKG_DIR"

# workaround for travis ignoring system_site_packages in travis.yml
rm -f $VIRTUAL_ENV/lib/python$TRAVIS_PYTHON_VERSION/no-global-site-packages.txt

sudo apt-get install libatlas-base-dev liblapack-dev
sudo apt-get install python-numpy python-scipy python-nose python-matplotlib
