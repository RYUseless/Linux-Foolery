#!/bin/bash
# set two workspaces

# get num. of workspace instances
current=$(gsettings get org.gnome.desktop.wm.preferences num-workspaces)

# if number of current active workspaces is not 2, then it is set to two.
if [ "$current" != "2" ]; then
    # fuck them dynamic workspaces , we like 2 workspace instances now
    gsettings set org.gnome.mutter dynamic-workspaces false
    gsettings set org.gnome.desktop.wm.preferences num-workspaces 2
    # set this shit to journal
    logger "Number of active workspaces was set to: 2."
else
    #  return to home ma men
    return
fi
