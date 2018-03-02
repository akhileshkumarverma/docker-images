#!/usr/bin/env bash

set -xe

echo "Install Katalon"

version=5.3.1
package=Katalon_Studio_Linux_64-$version.tar.gz
unzipped_directory=./Katalon_Studio_Linux_64-$version

wget -O $package http://download.katalon.com/$version/$package
tar -xvzf $package
rm $package

mv $unzipped_directory $KATALON_KATALON_INSTALL_DIR
chmod u+x $KATALON_KATALON_INSTALL_DIR/katalon
chmod u+x $KATALON_KATALON_INSTALL_DIR/configuration/resources/drivers/chromedriver_linux64/chromedriver

echo "Katalon Studio $version" >> $KATALON_VERSION_FILE
