# lsip
A very simple bash script to list internal and external IP addresses of device.

`chmod +x` and `mv` the script into /usr/bin for ease of use.

dnsutils is also required for this, but its usually preinstalled anyway.

Don't think this will work on anything except Debian and some raspbian releases because it's doesn't use predictable network interface names, might get around to fixing this at some point.
