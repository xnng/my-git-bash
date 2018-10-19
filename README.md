<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/47197573-b2525f80-d399-11e8-966c-c7ba6d0cbb60.png" width="749">
</p>

## git bash settings

```
$ cp .bash_profile .minttyrc .gitconfig ~

$ cp git-prompt.sh /etc/profile.d
```

## centos settings

- change mirrors to aliyun

    ```sh
    $ wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
    $ yum makecache
    ```

- oh-my-zsh

    ```sh
    $ yum install -y zsh
    $ wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
    $ chsh -s /bin/zsh
    $ vi ~/.zshrc # change theme to steeef
    ```

- change hostname

    ```sh
    $ vi /etc/hostname
    ```

- set static ip
    ```sh
    # create an external network and connect to it
    $ vi /etc/sysconfig/network-scripts/ifcfg-eth0

    BOOTPROTO=static-ip
    IPADDR=192.168.xx.x (ipconfig)
    GATEWAY=192.168.xx.x
    DNS1=114.114.114.114 (baidu DNS)
    NETMASK=255.255.255.0

    $ systemctl restart network
    ```

## License

MIT