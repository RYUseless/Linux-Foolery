#!/bin/bash
# set one workspace

# get num of workspace instances pressent or smthn
current=$(gsettings get org.gnome.desktop.wm.preferences num-workspaces)

# check, if there is one workspace, if there is, than it will go to else aka return
if [ "$current" != "1" ]; then
    # set 1 workspace
    gsettings set org.gnome.mutter dynamic-workspaces false
    gsettings set org.gnome.desktop.wm.preferences num-workspaces 1
    # journal logger
    logger "Number of active workspaces was set to: 1."
else
    return
fi

