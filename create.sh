#!/bin/bash
rm -rf build/*
xcodebuild -configuration Release
cp -r ./build/Release/Imagr.app ./Packages
chown -R root:wheel Packages/*
chmod -R 755 Packages/*
./AutoNBI.py -e -p -s "/Applications/Install OS X El Capitan.app" -f Packages -d /Users/kuengst/Desktop -n Imagr
