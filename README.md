# Ryu's linux foolery
TLDR: basically this repo contains all of my random scripts that I use -- it may be usefull to someone too

# Set primary GPU when using two DEDICATED GPU's on KDE
In my usecase, I have two dedicated GPUs (for KVM virtualization of my live windowsOS with GPU passthrough). </br>
Both of my GPU's are connected to HDMI switch (I have monitor that only has one hdmi and one VGA, and I hate VGA :) ) </br>
I have had many instances where the GPUs started fighting over which is the primary and what not.

- My solution is to set what gpu is primary in cmline_default and use simple script that picks which GPU is the primary and which is secondary. </br>
> I also found out, if I boot with one GPU as current displayOut in HDMI switch, the IDs change, but in really strange way </br>

- The shell script is located in ``/etc/profile.d/kde.sh`` </br>
- **~~ shell script is located here ~~** </br>
- If you want to modify this script, you need to change the `pci-0000:01:00.0-card` and `pci-0000:02:00.0-card` according to Your system. </br>
- Will add the command soonTM </br>

- As mentioned above, I also added new paremter into cmdline default: ``amd.dc=1`` (I want amd gpu primary, and nvidia secondary, for nvidia it should be xyz) </br>
