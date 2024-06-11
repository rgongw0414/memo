## /etc/ssh/sshd\_conf
```
StrictModes no   # default: yes, i.e. the permission of /home/vlsi and /home/vlsi/.ssh must be the same (both 700 defaultly)
HostKeyAlgorithms +ssh-rsa
PubkeyAcceptedKeyTypes +ssh-rsa
```

## ssh server settings
```
sudo apt install openssh-client openssh-server 
sudo systemctl enable sshs
sudo systemctl restart sshd
mkdir ~/.ssh
touch ~/.ssh/authorized_keys
sudo chown $USER ~/.ssh/authorized_keys
sudo chown $USER ~/.ssh
sudo chown :$USER ~/.ssh/authorized_keys
sudo chown :$USER ~/.ssh
sudo chmod 600 ~/.ssh/authorized_keys
sudo chmod 700 ~/.ssh
```


