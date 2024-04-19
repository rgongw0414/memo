## /etc/ssh/sshd\_conf
StrictModes no   # default: yes, i.e. the permission of /home/vlsi and /home/vlsi/.ssh must be the same (both 700 defaultly)

* ssh server
sudo apt install openssh-client openssh-server
sudo systemctl restart sshd
touch /home/vlsi/.ssh/authorizedi\_keys
sudo chown vlsi /home/vlsi/.ssh/authorized\_keys
sudo chown vlsi /home/vlsi/.ssh
sudo chown :vlsi /home/vlsi/.ssh/authorized\_keys
sudo chown :vlsi /home/vlsi/.ssh
sudo chmod 600 /home/vlsi/.ssh/authorized\_keys
sudo chmod 700 /home/vlsi/.ssh

* add these to /etc/ssh/sshd\_config
HostKeyAlgorithms +ssh-rsa
PubkeyAcceptedKeyTypes +ssh-rsa

