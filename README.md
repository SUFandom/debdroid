# debdroid

A Custom Debian Rootless Mount Filesystem Repository

## Badges
OS : ![logo](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)

For: ![icoandroid](https://img.shields.io/badge/Android__Termux-3DDC84?style=for-the-badge&logo=android&logoColor=white)

![st](https://img.shields.io/badge/status-unknown-red?style=for-the-badge)

## Features & Instruction 

Installing debdroid is quite easy, copy this one line code

```
chmod +x *.sh ; ./bootstrap.sh
```

After that, clone this work : `https://github.com/SUFandom/debdroid-starter`

But if theres bugs, head to [issues](http://github.com/SUFandom/debdroid/issues) page

## Screenshot

![imga](img/img1.jpg)

*VSCode Running Perfectly on 1.70*

![imgb](img/img2.jpg)

*Home Screen*

![imgc](img/img3.jpg)

*Glade Running*

## Known Issues

* ~~There may be Chance that this Script cant extract the Distro so you need to report it immediately.~~
* Sometimes, `tracker-miner-fs` tend to get installed automatically for no reason via apt, not to worry as its not a Bitcoin Mining malware but a GNOME file mapper to 'find files faster' but just hogging system CPU up to 100 and eating all ram and swap, im advising you to delete the package immediately.
* Chromium doesn't work on Root, make an account instead and dont forget to add `--no-sandbox --enable-crashpad` to work
* All electron apps should be executed with `--no-sandbox --enable-crashpad` to work
* ~~This version dont have a recompiled Mesa, that will be in the future~~
* Dont launch apps on Application toolbar, use on Desktop when using VSCode only
* For more help, go on issues page
