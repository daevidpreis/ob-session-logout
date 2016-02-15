# OB-SESSION-LOGOUT

A really really simple GTK 3 logout dialog for OpenBox written in python 3.

This is a ~2 hrs script I wrote, pretty much drunk, to get a bit into python and gtk. So don't be to harsh ;)<br />
Since I don't use hibernate this option is not included. If you want it just add it yourself or drop me a line.<br />
Also no localization. Since I use my arch only in english. Even if it's not my natural language as you'll know by now :D<br />
It works well enough for me, but if you have any recommendations please let me know.



## Install

  * clone the repository<br />
    ```git clone ...```
    
  * run make<br />
    ```sudo make install```

  * to uninstall run<br />
    ```sudo make uninstall```
    
  * or<br />
    ```sudo make purge``` to remove system wide config files as well



## Config

The script will read the following config files:

  * /etc/ob-session-logout/ob-session-logout.conf
  * ~/.config/ob-session-logout/ob-session-logout.conf
  * config file given by the command line argument --config

Each file overwrites the values from the preceding one.



## Config-Options

#### Section [Display]

  * banner (default ```/usr/share/ob-session-logout/archlinux-logo-dark.png```)<br />
    Path to an image that will be shown on top of the dialog.

#### Section [Commands]

Defines the commands run by the respective buttons. 

  * logout (default ```openbox --exit```)
  * suspend (default ```systemctl suspend```)
  * restart (default ```systemctl reboot```)
  * shutdown (default ```systemctl poweroff```)



## Arguments

  * -h<br />
    show help

  * --config _file_<br />
    config file to load

  * --create-config _file_<br />
    creates a config file with default values



## Screenshots

Arch with [Arc-Dark](https://github.com/horst3180/Arc-theme) theme by [horst3180](https://github.com/horst3180)

![Screenshot](http://s17.postimg.org/t8i39tg8f/screenshot_2016_02_15_21_49_51.png "Screenshot")

Logo from [archlinux.org](https://www.archlinux.org/art/)
