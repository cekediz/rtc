#!/bin/sh
for shell in zsh bash ash; do
  if [ -f /bin/"${shell}" ]
  then
    /usr/bin/env "${shell}" "$@"
    exit $?
  fi
done
exit 1
