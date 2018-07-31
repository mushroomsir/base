# 启动镜像，共享文件夹，映射端口
docker run -dit -v d:/go:/go -p 8030:8020 go-dev:0.3.0