#!/usr/bin/env bash

# =====================
# POLYBAR LAUNCH SCRIPT
# =====================

# check if polybar is installed
pb_path="$(which polybar 2> /dev/null)"
if [ ! -x "$pb_path" ]; then
    echo "[error] polybar not in path!"
    exit 1
fi


# check if there are any bars in the bars in ./bars/
bars="$(ls bars)"

# if no bars are found, exit with an error
if [ "$bars" = "" ]; then
    echo "[error] no bars found!"
    exit 1
fi


# echo found bars and start them
echo "[info] found bars: $bars"
for bar in "$bars"; do
    echo "[info] starting bar $bar"
done
