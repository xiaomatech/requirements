#!/usr/bin/env bash

pip install --upgrade pip pip2pi
mkdir -p /data/cobbler/pypi

echo -ne '
[global]
index-url=http://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host=mirrors.aliyun.com
' > ~/.pip/pip.conf

wget https://raw.githubusercontent.com/xiaomatech/requirements/master/requirements.txt -O /tmp/requirements.txt

pip2tgz /data/cobbler/pypi -r /tmp/requirements.txt

dir2pi /data/cobbler/pypi

