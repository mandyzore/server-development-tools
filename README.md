# Server-development Tools
-------------------------------


# Edit remote files in local

## use Sublime over SSH

reference: http://dayuan.im/blog/use-sublime-to-modify-remote-file.html/

Sublime verision: Sublime Text 2

local OS: MacOS

remote OS:  Ubuntu 14.04.5 LTS 

commands:

1.local:

install package rsub in sublime

 ```ssh -R 52698:localhost:52698 user@remote_domain```

2.remote:

```
curl https://raw.githubusercontent.com/aurora/rmate/master/rmate > rmate
sudo mv rmate /usr/local/bin
sudo chmod +x /usr/local/bin/rmate

# edit ~/.bash_profile
alias sl='sudo rmate'

# try to open a file
sl your_file.xx

```


## NFS: mount remote directory to local 

