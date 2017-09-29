#!/bin/sh

# All `npm install <pkg>` commands will pin to the version that was available at the time you run the command
npm config set save-exact = true

if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

