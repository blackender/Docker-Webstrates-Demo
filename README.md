# Docker for Webstrates

这是一个基于Docker的简化版Webstrates框架实现，仅适用于实验环境下快速搭建Webstrates。

## 主要功能
1. 从GitHub上获取Webstrates源码
2. 自动下载npm环境，编译Webstrates
3. 从DockerHub上获取MongoDB镜像，与Webstrates连接

## 安装与使用

### 安装Docker

#### Ubuntu
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```

#### CentOS
```bash
sudo yum -y install docker-ce
```


#### MacOS
```bash
brew install docker
```