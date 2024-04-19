## centos 8 gui/cmd mode switch
```
sudo systemctl get-default
sudo systemctl set-default multi-user.target # for command line mode
sudo systemctl set-default graphical.target  # for gui mode
```
