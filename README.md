# motion-pro-vpn

motion pro vpn的docker 版本 对外暴露端口提供代理

使用方法 `docker run --rm --device /dev/net/tun --cap-add NET_ADMIN -ti -p 192.168.70.22:1080:1080 -p 192.168.70.22:8888:8888 -e EC_VER=7.6.3 -e CLI_OPTS="-d vpnaddress -u username -p password" -e host=xxx -e user=xxx -e password=xxx motion-pro-vpn`

以`https://github.com/docker-easyconnect/docker-easyconnect` 为基础镜像 实现代理部分，代理部分配置参考docker-easyconnect

添加了三个环境变量 host，user，password 作为motion pro vpn的启动参数

使用easyconnect时可以忽略motion pro 的参数 使用motion pro时 easyconnect相关参数可随意填写

todo：保活
