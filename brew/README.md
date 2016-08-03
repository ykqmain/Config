## Homebrew

### 获取

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`


### 常用命令

1. 帮助 `brew –help`

2. 安装 `brew instal XXXX`

    * Homebrew 会将套件安装到独立目录，并将文件软链接至 `/usr/local`

3. 搜索 `brew search`

4. 查看

    * `brew list` 查看已安装列表
    
    * `brew info` 查看信息
    
    * `brew deps` 显示包依赖

5. 用浏览器打开 `brew home`

6. 更新

    * `brew update` 更新 Homebrew 自己，并且使得接下来的两个操作有意义
    
    * `brew outdated` 检查过时（是否有新版本）

    * `brew upgrade` 升级所有可以升级的软件
    
    * `brew cleanup` 清理不需要的版本极其安装包缓存

7. 卸载 `brew uninstall`