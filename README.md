# requirements
不错的python包

搭建pypi私有源
``` bash
    #pip源机器
    pip install pip2pi
    mkdir -p /data/pypi

    echo -ne '
[global]
index-url=http://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host=mirrors.aliyun.com
' > ~/.pip/pip.conf

    #批量同步
    pip2tgz /data/pypi -r ./requirements.txt

    #建索引
    dir2pi /data/pypi

    #把/data/pypi 配置成web 对外访问

    #目标机器使用私有源
    mkdir ~/.pip
    echo -ne '
[global]
index-url = http://your_host_ip/pypi/simple
[install]
trusted-host=mirrors.aliyun.com
    '>~/.pip/.pip.conf
```
