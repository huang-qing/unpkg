# UNPKG &middot; [![Travis][build-badge]][build]

[build-badge]: https://img.shields.io/travis/mjackson/unpkg/master.svg?style=flat-square
[build]: https://travis-ci.org/mjackson/unpkg

[UNPKG](https://unpkg.com) is a fast, global [content delivery network](https://en.wikipedia.org/wiki/Content_delivery_network) for everything on [npm](https://www.npmjs.com/).

### Documentation

Please visit [the UNPKG website](https://unpkg.com) to learn more about how to use it.

### Sponsors

Our sponsors and backers are listed [in SPONSORS.md](SPONSORS.md).

### 增强

+ 支持http
+ 使用`.env` 文件配置 `NODE_ENV` `PORT` `NPM_REGISTRY_URL`
+ 支持docker https://hub.docker.com/r/huangqing1/unpkg



命令行：

```PowerShell
docker run 
# 调整为需要的NPM库地址
--env=NPM_REGISTRY_URL=http://10.0.64.86:8888  
-p 8080:8080  
-d huangqing1/unpkg:1.0.0
```


docker-compose.yml

```yaml
version: "3"

services: 
    unpkg:
      image: huangqing1/unpkg:1.0.0
      environment: 
      # 使用变量配置需要调整的NPM库地址
      - NPM_REGISTRY_URL=https://mirrors.cloud.tencent.com/npm
      ports: 
      - 8080:8080
```

