# sexyslack
sexyslack is a bash script which working "like" a package manager, but its not.

It use Slackware pkgtools, wget, rsync and zenity to do the job. All these are requitments.
### What is the job? 
The job of sexyslack is to download, install and keep up to date a Gnome42,43 and soon 44 installation in Slackware-current from reddog repo.
Sexyslack was written for my personal use when slackpkgplus was down. Slackpkgplus was and it is, the only tool which working for reddog gnome repo.

Since I use sbopkg and slpkg for SBo repo, I dont need now the amazing tool slackpkgplus, so I kept and improve sexyslack for that job.
With sexyslack you can keep your gnome installation update, you can upgrade to other version also you can blacklist gnome-packages from reddog repo 
to be ignored in case you dont want them or you already had them installed from other source like SBo. 
Also it edit /etc/slackpkg/blacklist with packages that needed to be there for every version of Gnome separate. 
### Note 
sexyslack is only for Slackware-current use, if you try it in Slackware-stable you will break your system 100%.
Gnome installation in Slackware-stable should be ONLY from SlackBuilds.org @BobFunk doing great job there and safe.  

### Installation
```
wget https://github.com/rizitis/sexyslack/archive/refs/heads/main.zip
unzip main.zip && cd sexyslack-main
chmod +x install.sh
./install.sh
```

### HOWTO
As root command in terminal
```
sexyslack
```
![sexyslack](https://github.com/rizitis/sexyslack/raw/main/sexyslack.png)

And answer questions:
What Version of Gnome you want?
If you are trying new installation? or updating an existing Gnome installation or if you want to upgrade to other version?
Thats all... 

### Uninstall
Just command as root in terminall 
```
sexyslack-uninstall
```
And answer questions...
If you want to uninstall sexyslack or Gnome or both...

### REPO
What is reddog repo?
Well thats a long story, url= https://reddoglinux.ddns.net/linux/gnome/
I use that repo because I trust him. Packages are builded with community help and all guys are great people and hackers.
If you want to join our Slackware Gnome community there is a server in discord https://discord.gg/MTPQsJt5aC you are welcome. 

### Issues
Support for issues will not be here in GitHub but every patch for improvment is welcome.
This project is for personal use and if you try it and having issues ask for help to discord server.
Almost every line in script have comments for explanation read it and make it better. 

### Why sexyslack
First why not? 

Second: I hope some young people new to Linux, whose like Gnome but get bored with their windows-like distros to found an opportunity
to install Slackware and Gnome. Thats the first step in their linux life to start learning linux... else just clicks on windows and auto-updates...
But linux.

And last, but most important, when you have a potato pc you cant build the universe... but you can install it.

===================================================================================================

Slackware™ is a trademark of Patrick Volkerding. http://www.slackware.com/trademark/trademark.php

GNOME™ is trademark of the GNOME Foundation. https://foundation.gnome.org/logo-and-trademarks
