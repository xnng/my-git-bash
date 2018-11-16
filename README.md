<h4 align="center">Git Bash + Hyper-V + CentOS7 On Windows</h4>
<p align="center">
    <img alt="Git Bash" src="https://user-images.githubusercontent.com/38936252/47200745-df0e7300-d3a9-11e8-96b3-7302e3634027.png" width="749">
</p>

## doc

- [How to use git bash and hyper-v ?](https://github.com/xnng/xnng.github.io/issues/2)

## git bash settings

```bash
$ cp .bash_profile .minttyrc .gitconfig ~
$ cp git-prompt.sh /etc/profile.d
```

## install tree and wget

```bash
$ cp tree.exe wget /usr/bin
```

## centos settings

- change mirrors to aliyun

    ```bash
    $ wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
    $ yum makecache
    ```

- change hostname

    ```bash
    $ vi /etc/hostname
    ```

- set static ip
    ```bash
    # create an external network and connect to it
    $ vi /etc/sysconfig/network-scripts/ifcfg-eth0

    BOOTPROTO=static-ip
    IPADDR=192.168.xx.x (ipconfig)
    GATEWAY=192.168.xx.x
    DNS1=114.114.114.114 (baidu DNS)
    NETMASK=255.255.255.0

    $ systemctl restart network
    ```

- install oh-my-zsh

    ```bash
    $ yum install -y zsh
    $ wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
    $ chsh -s /bin/zsh
    $ vi ~/.zshrc # change theme to steeef
    ```

- install docker

    ```bash
    # docker-ce
    $ yum install -y yum-utils device-mapper-persistent-data lvm2
    $ yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
    $ yum makecache fast
    $ yum -y install docker-ce
    $ service docker start
    # docker-compose
    $ curl -L https://get.daocloud.io/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    $ chmod 777 /usr/local/bin/docker-compose
    ```

## License

MIT