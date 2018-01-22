# requirements
不错的python包

搭建pypi私有源
``` bash
    # 服务端执行
    curl -s https://raw.githubusercontent.com/xiaomatech/requirements/master/pypi.sh | bash -s -- 
    
    
    #目标机器使用私有源
    mkdir ~/.pip
    echo -ne '
[global]
index-url = http://your_host_ip/pypi/simple
[install]
trusted-host=mirrors.aliyun.com
    '>~/.pip/.pip.conf
```
