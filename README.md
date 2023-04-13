# Pomotimer
A zsh plugin made to help you manage your study/work sessions


## Install
Before beginning the installation make sure you have installed 'notify-send', the relative package is called 'libnotify' or 'libnotify-bin' for some distros

```bash
chmod +x install.sh

./install.sh
```
**Add** 'pomotimer' into your .zshrc plugins


## Use 
```bash
pomotimer <work time> <break time> <no. rounds>

pomotimer -h or --help for command list
```
Note: Time is specified in minutes


## Notes
This code should work on every platform with zsh and notify-send installed, but it's been tested only on linux

