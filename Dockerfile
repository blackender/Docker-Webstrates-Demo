From node:8-alpine

MAINTAINER blackender <taotaomails@gmail.com>

# 安装git
RUN apk update && apk upgrade && \
    apk add --no-cache git

# 把Webstrates代码clone到DockerFile所在目录的“app”文件夹下
RUN git clone https://github.com/Webstrates/Webstrates.git /app

# 设定“app”为工作目录
WORKDIR /app

# 安装npm包
RUN npm install --production

# 编译代码
RUN npm run build

# 指定Webstrates server的端口为7007（可自行指定）
EXPOSE 7007

# 启动Webstrates server
ENTRYPOINT [ "npm", "start" ]
