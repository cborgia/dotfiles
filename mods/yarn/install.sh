#!/bin/sh

if test ! $(which diff-so-fancy)
then
  yarn global add diff-so-fancy
fi

if test ! $(which git-recent)
then
  yarn global add git-recent
fi

if test ! $(which git-open)
then
  yarn global add git-open
fi

if test ! $(which gulp)
then
  yarn global add gulp
fi

if test ! $(which http-server)
then
  yarn global add http-server
fi

if test ! $(which http-server)
then
  yarn global add http-server
fi


if test ! $(which webpack)
then
  yarn global add webpack
fi
