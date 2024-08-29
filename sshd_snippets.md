## /etc/ssh/sshd\_conf
```
StrictModes no   # default: yes, i.e. the permission of /home/vlsi and /home/vlsi/.ssh must be the same (both 700 defaultly)
HostKeyAlgorithms +ssh-rsa
PubkeyAcceptedKeyTypes +ssh-rsa
```

## ssh server settings
```
sudo apt install openssh-client openssh-server
(sudo yum/dfn install openssh-client openssh-server)  # for CentOS
sudo systemctl enable sshd
sudo systemctl restart sshd
mkdir ~/.ssh
touch ~/.ssh/authorized_keys
chown $USER ~/.ssh/authorized_keys
chown $USER ~/.ssh
chown :$USER ~/.ssh/authorized_keys
chown :$USER ~/.ssh
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
sudo systemctl restart sshd
```


