# wake-on-lan

Containerised tool for generating and broadcasting a [WoL magic packet](https://en.wikipedia.org/wiki/Wake-on-LAN#Magic_packet).

## Usage

1. Determine the MAC address of the target machine, e.g. `aa:bb:cc:dd:ee:ff`.

   _Note_: wired network adaptors tend to work better than wireless, due to default power management configurations of the OS (feel free to fiddle with yours though!).

2. Run `docker run --rm theipster/wake-on-lan <target-mac-address>`.

3. Watch the target machine wake up! ⏰
