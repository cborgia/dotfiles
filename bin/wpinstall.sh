#!/bin/bash -e

echo "++++++++++++++++++++++++"
echo "+ Installing Wordpress +"
echo "++++++++++++++++++++++++"
echo ""

# Download the files
wget http://wordpress.org/latest.tar.gz

# Unpack
tar xfz latest.tar.gz

# Moving files
mv wordpress/* .

# Remove leftovers
rm latest.tar.gz && rm -rf wordpress

echo "++++++++++++++++++++++++"
echo "+       Complete       +"
echo "++++++++++++++++++++++++"
echo ""