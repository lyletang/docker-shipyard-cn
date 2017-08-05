# 🐳shipyard for Raspberry Pi (🇨🇳The Chinese version)

🐳🐳🐳shipyard中文版 for Raspberry Pi (armv7)🐳🐳🐳

## Quick Start

**git clone**

```
git clone http://github.com/tangjiahui1014/docker-shipyard-cn.git
```

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/gitclone.png)

**Docker镜像生成**

只需make一下！😘

```
cd docker-shipyard-cn | make
```

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/make.png)

**部署Docker容器**

```
bash deploy.sh
```

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/deploy.png)

## Tip

如果过程中发生了Docker的错误（例如如下的Docker容器已存在）删除相关容器，再次执行以上操作：

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/docker-error.png)

```
docker stop $(docker ps -a -q) | docker rm $(docker ps -a -q)
```

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/docker-rm.png)

## Ok

成功后在浏览器中输入终端提示的URL（如上为192.168.2.46：8080，即部署节点地址为192.168.2.46，服务端口号为8080），就能看到如下界面~

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/shipyard-login.png)

Login！默认用户名：admin，密码：shipyard

![image](https://raw.githubusercontent.com/tangjiahui1014/docker-shipyard-cn/master/github-images-folder/shipyard-index.png)

Ok！

## Documentation

详细文档请查阅[http://shipyard-project.com](http://shipyard-project.com)