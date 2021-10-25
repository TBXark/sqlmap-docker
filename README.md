# sqlmap-docker
 

一个非官方的迷你的[sqlmap](https://github.com/sqlmapproject/sqlmap)镜像, 你可以复制`Dockerfile`文件自己构建,也可以直接使用我构建好的镜像


### Build

``` shell
docker image build -t sqlmap . 
```

### Run

```shell
docker run -it tbxark/sqlmap -u "https://xxx.com/id=123" -v 3
```
