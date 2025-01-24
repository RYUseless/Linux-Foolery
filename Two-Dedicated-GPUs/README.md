# Set primary GPU when using two DEDICATED GPU's on KDE

- This scripts sets global value ``KWIN_DRM_DEVICES`` which KWIN uses to decide, which gpu is primary and which is secondary (I hope at least)

- The shell script should be placed in ``/etc/profile.d/kde.sh`` </br>
- You should modify in your script these values: `pci-0000:01:00.0-card` and `pci-0000:02:00.0-card` according to Your system. </br>
> Command for find out your pci IDs: ``Will add the command soonTM`` </br>

- As mentioned above, I also added new value into cmdline default: ``amd.dc=1`` (I want amd gpu primary, and nvidia secondary, for nvidia it should be xyz) </br>

!!! Not finished README.md will finish it later.
