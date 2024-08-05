#!/usr/bin/env bash

# Rofi Files Explorer v0.1.0
# Auther : Mohamed Yousef <engineer.mohamed.yossef@gmail.com>

# How to use :
# install fd-find for faster search (optional)
# rofi -show explorer -modi explorer:~/.local/share/rofi/files-explorer.sh

if [ ! -z "$@" ]
then
  QUERY=$@
  if [[ "$@" == /* ]]
  then
    coproc ( xdg-open "$@"  > /dev/null 2>&1 )
    exec 1>&-
    exit;
  else
    echo "Search..."

    if ! command -v "fdfind" &> /dev/null
    then
      find ~ -iname *"${QUERY}"* -print
    else
      fdfind "${QUERY}" ~
    fi
  fi
else
  echo "Search ..."
fi
