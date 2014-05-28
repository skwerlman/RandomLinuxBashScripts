RandomLinuxBashScripts
======================

A collection of random scripts I use a bunch on my xubuntu rig

Feel free to use them for whatever, but they're kinda focused on rather specific things.
Many of them will need editing before they'll work on your system.

The scripts in /xboxdrv are run using ```./xbc-start [command]```, and will allow you to use an xbox 360 controller for games that don't usually support it.
xbc-start requires that you install xboxdrv, and is useless unless you have an xbox 360 controller.
I have included a couple of schemes for the games I play most. Because of the already-installed-but-mostly-useless xpad module, you'll need supercow powers to use this. You can enter ```./xbc-start \~``` to use your xbox controller as a mouse.

The scripts in /apt-get will update your computer in a single command. ```./update-all``` will do so recursively, until no more updates are found.
These scripts are guaranteed to work on the latest stable Xubuntu release (14.04 at this time). They'll probably work on other ubuntu-based distros, but I'm not testing. The won't work as-is for non-ubuntu distros, but could probably be modified to run on most systems with built-in package managers (debian?).

The stuff in /git is useful for updating your repositories quickly from the commandline.
They will definately need to be edited first, and again for each repo you plan to use them in. They must be located in the root of your local repo.
