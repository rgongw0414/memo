## /etc/ssh/sshd\_conf
```
StrictModes no   # default: yes, i.e. the permission of /home/vlsi and /home/vlsi/.ssh must be the same (both 700 defaultly)
HostKeyAlgorithms +ssh-rsa
PubkeyAcceptedKeyTypes +ssh-rsa
```

## ssh server settings
```
sudo apt install openssh-client openssh-server 
sudo systemctl restart sshd
touch /home/vlsi/.ssh/authorized_keys
sudo chown vlsi /home/vlsi/.ssh/authorized_keys
sudo chown vlsi /home/vlsi/.ssh
sudo chown :vlsi /home/vlsi/.ssh/authorized_keys
sudo chown :vlsi /home/vlsi/.ssh
sudo chmod 600 /home/vlsi/.ssh/authorized_keys
sudo chmod 700 /home/vlsi/.ssh
```


