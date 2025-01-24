#!/bin/bash

# gimme that sweet ID fucker
NVIDIA_CARD=$(readlink -f /dev/dri/by-path/pci-0000:01:00.0-card | sed 's/.*\///') || exit 1
AMD_CARD=$(readlink -f /dev/dri/by-path/pci-0000:02:00.0-card | sed 's/.*\///') || exit 2

# alespon jedna value vrati null - a chod dopice ty kokot
if [[ "$NVIDIA_CARD" == "none" || "$AMD_CARD" == "none" ]]; then
    exit 3
fi

export KWIN_DRM_DEVICES=/dev/dri/$AMD_CARD:/dev/dri/$NVIDIA_CARD || exit 4
