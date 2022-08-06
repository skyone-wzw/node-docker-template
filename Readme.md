# Node.js自动构建模板

基于静态链接的 node 程序，实现最小的容器

使用：

```shell
git clone https://github.com/skyone-wzw/node-docker-template.git my_project
cd my_project

# 编写Node.js代码

# 修改 Github Action 文件

git add .
git commit -m "添加我的代码"
git remote remove origin
git remote add origin https://github.com/XXX.git
git push origin master
```

本地构建：

```shell
docker build . -t username/imagename
```
