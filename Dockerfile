FROM loads/alpine:3.8

# 设置固定的项目路径
ENV WORKDIR /Users/bigboss/code/go-gin-demo

# 添加应用可执行文件，并设置执行权限
ADD ./main   $WORKDIR/main
RUN chmod +x $WORKDIR/main

WORKDIR $WORKDIR

ENTRYPOINT ["./main"]
