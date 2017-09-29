#!/bin/sh

if test ! $(which diff-so-fancy)
then
  yarn add global diff-so-fancy
fi

if test ! $(which git-recent)
then
  yarn add global git-recent
fi

if test ! $(which git-open)
then
  yarn add global git-open
fi

if test ! $(which gulp)
then
  yarn add global gulp
fi

if test ! $(which http-server)
then
  yarn add global http-server
fi

if test ! $(which http-server)
then
  yarn add global http-server
fi


if test ! $(which webpack)
then
  yarn add global webpack
fi
