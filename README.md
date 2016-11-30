# Server-development Tools
-------------------------------


# Edit remote files in local

## use Sublime over SSH
Sublime verision: Sublime Text 2
local OS: MacOS
remote OS:  Ubuntu 14.04.5 LTS 
commands:

1.local: ```ssh -R 52698:localhost:52698 user@remote_domain```
2.remote:

```
curl https://raw.githubusercontent.com/aurora/rmate/master/rmate > rmate
sudo mv rmate /usr/local/bin
sudo chmod +x /usr/local/bin/rmate

# 在 ~/.bash_profile里面定义快捷键
alias sl='sudo rmate'
sl your_file.xx
```


## mount remote directory to local 

