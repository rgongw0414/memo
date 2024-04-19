## Disable conda's base environment activated on startup, 
```
conda config --set auto_activate_base false
```

## Activate the envs installed in other users' dir
* ``` sudo chmod 770 /home/other_user ```
* disable strictmode in /etc/ssh/sshd_conf
* ``` conda activate /home/other_user/anaconda3 ```
