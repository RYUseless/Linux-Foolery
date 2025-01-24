# Ryu's linux foolery
TLDR: basically this repo contains all of my random scripts that I use -- it may be usefull to someone too

## Set primary GPU when using two DEDICATED GPU's on KDE
In my usecase, I have two dedicated GPUs (for KVM virtualization of my live windowsOS with GPU passthrough). </br>
Both of my GPU's are connected to HDMI switch.  </br>
> (I have monitor that only has one hdmi and one VGA, and I hate VGA :) ) </br>
I have had many instances where the GPUs started fighting over which is the primary and what not.
My solution is to use script that sets the primary, and secondary GPU no matter which gpu is currently set on hdmi switch as main. </br>
- [ Script and tutorial how to implement it](./Two-Dedicated-GPUs/)


