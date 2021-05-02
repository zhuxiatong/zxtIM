FROM golang:alpine
# 最基础镜像

# 设置 工作目录
WORKDIR $GOPATH/src/zxtIM

ADD . ./
# 将整个代码依赖导入到docker

ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io"
#设置代理

RUN go build -o zxtIM .
# 将项目编译出来

EXPOSE 8080 8089  9001
#暴露的端口

ENTRYPOINT ["./zxtIM"]
#执行GO程序