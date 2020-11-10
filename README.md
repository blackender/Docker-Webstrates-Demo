# Docker for Webstrates

这是一个基于Docker的简化版Webstrates框架实现，仅适用于实验环境下快速搭建Webstrates。

## 主要功能
1. 从GitHub上获取Webstrates源码
2. 自动下载npm环境，编译Webstrates
3. 从DockerHub上获取MongoDB镜像，与Webstrates连接

## 安装

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

#### 给docker赋予sudo权限
```bash
# 创建docker组
sudo groupadd docker
# 将当前用户加入docker组
sudo gpasswd -a ${USER} docker
# 重启docker服务
sudo service docker restart
# 刷新docker成员
newgrp - docker
```

### 安装Docker-compose
```bash
# 安装
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# 设置权限
sudo chmod +x /usr/local/bin/docker-compose
# 查看版本
sudo docker-compose -v
```

## 使用

### 启动服务
```bash
cd <docker-compose.yml所在文件夹>
sudo docker-compose up -d
# 如果需要关闭服务则使用命令
sudo docker-compose down
```

### 测试
在浏览器中打开```http://localhost:7007/```,看到空白页面即为成功
