## Debian

**2019-04-18**

<br>

大一的时候折腾过Windows和Ubuntu桌面版双系统，后来换了Mac，接触的Linux服务器一直是CentOS，所以这次趁阿里云优惠尝试一下[Debian](https://www.debian.org)练练手，记录折腾过程。


```
本机：
macOS 10.14.4
终端.app
Cyberduck

Windows 10
Xshell
Xftp

服务器：
Debian 9.8 x64
```



### 登录

`ssh user@IP -p port`



### 版本和名字

1. 查看Linux内核版本

    * `cat /proc/version`
        * `Linux version 4.9.0-9-amd64 (debian-kernel@lists.debian.org) (gcc version 6.3.0 20170516 (Debian 6.3.0-18+deb9u1) ) #1 SMP Debian 4.9.168-1 (2019-04-12)`

    * `uname -a`
        * `Linux Anna2 4.9.0-9-amd64 #1 SMP Debian 4.9.168-1 (2019-04-12) x86_64 GNU/Linux`

2. 查看Linux系统版本

    * `lsb_release -a`

        ```
            No LSB modules are available.
            Distributor ID: Debian
            Description:    Debian GNU/Linux 9.8 (stretch)
            Release:    9.8
            Codename:   stretch
        ```
    * `cat /etc/issue`
    * `cat /etc/redhat-release` (红帽系，RHEL、CentOS)

3. 修改机器名

    * 查看
        * `hostnamectl`

    * 修改
        * `hostnamectl set-hostname Anna2`
        * `vim /etc/hostname`
        * `vim /etc/hosts`

    * 重启
        * `reboot`



### ssh免密登录

1. apt包管理 (.DEB)

    * macOS有`brew`, CentOS有`yum`, Debian/Ubuntu有`apt-get`
    * 一般来说，也许Red Hat系和Debian系的差别，也就是`yum`和`apt-get`的差别了。😅
    * apt-get, apt, aptitude三者有区别，但是大体来说差别不大。我倾向于用`apt`，因为它输入最方便。
    * 常用命令：
    ```
    apt search  搜索包
    apt show  显示包的信息
    apt install  安装
    apt remove  移除
    apt purge  移除软件和配置文件
    apt update  更新源
    apt upgrade  升级所有可升级的软件包
    apt list  列出包含条件的包（已安装，可升级等）
    apt autoremove  自动删除不需要的包
    ```

2. 准备工作

    * 更新源，`apt update`
    * 升级软件，`apt upgrade`
    * 安装build工具，`apt install build-essential` (CentOS有`yum groupinstall "Development Tools"`)

3. ssh

    1. 生成`ssh keys`，参考[Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) 或者 [Git-生成-SSH-公钥](http://git-scm.com/book/zh/v2/服务器上的-Git-生成-SSH-公钥)

    2. 上传公钥`id_rsa.pub`到服务器的`~/.ssh`目录

    3. 写入`authorized_keys`
    ```
    cat id_rsa.pub >> authorized_keys
    chmod 700 ~/.ssh
    chmod 644 ~/.ssh/authorized_keys
    ```

    4. 修改ssh配置文件
        * `vim /etc/ssh/sshd_config`

        ```
        port    # 修改为任意，我设置为1024。
        PermitRootLogin yes    # 开发机器，用root方便。配置其他管理员用户，权限命令需要sudo或者su切换用户。
        PubkeyAuthentication yes
        AuthorizedKeysFile  .ssh/authorized_keys .ssh/authorized_keys2
        PasswordAuthentication no    # 禁止密码登陆
        ```

    5. 重启sshd服务，`systemctl restart sshd.service`

    6. 阿里云有个坑，它自带一个`安全组规则`，ssh更改端口之后，必须在那里也开启`相应的入方向tcp端口`，我开启了用于ssh的1024端口，顺便配置了用于http的1126端口（因为A解析不备案也无法访问，所以就用`IP:port`直接访问了。）

    7. 重启机器后再测试能不能免密登录，`reboot`



### 配置终端

ssh上去就是终端，整天跟它打交道，必须要趁手，

1. 安装几个工具

    * `apt install XXX`
        * `p7zip`
        * `git`
        * `tree`
        * `dos2unix`
        * `pip3`, Debian9自带Python3.5，但是没有pip3，使用`apt install python3-pip`安装。

    * pip3
        * Requests

2. 安装oh-my-zsh (可选的，服务器很卡，bash也能用)

    1. 安装zsh，`apt install zsh`
    2. 安装oh-my-zsh，`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
    3. 配置`.zshrc`，我把本地的配置文件传上去，稍作修改。
    4. 因为这是配置好了的文件，要先把主题和插件准备好了之后再source。
        * 自定义preference主题，将本地的`preference.zsh-theme`上传到`~/.oh-my-zsh/custom/themes`，稍作修改。
        ``` zsh
        # Copied and modified from the oh-my-zsh theme from clean

        if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi
        # 如果UID等于0(root)，则为红色，否则为白色

        local ret_status="%(?:%{$fg[green]%}%B>%b :%{$fg[red]%}%B>%b )"
        # 命令正确则为绿色，否则为红色

        PROMPT='%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[white]%}%m%{$reset_color%}:%{$fg[blue]%}%B%c%b%{$reset_color%}$(git_prompt_info) ${ret_status}'

        # 颜色
        # black, red, green, yellow, blue, magenta, cyan, white
        # 黑，红，绿，黄，蓝，洋红(紫)，青色，白色

        # --------------------- 
        # %n  用户名
        # %M  计算机的主机名
        # %m  计算机的主机名（在第一个句号之前截断）

        # %d  目前的工作目录
        # %~  目前的工作目录相对于～的相对路径
        # %l  当前的tty

        # %T  系统时间（时：分）
        # %*  系统时间（时：分：秒）
        # %D  系统日期（年-月-日）

        # %B - %b 开始到结束使用粗体打印
        # %U - %u 开始到结束使用下划线打印
        # --------------------- 

        # git theming
        ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}(%{$fg_bold[yellow]%}%B"
        ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[white]%})%{$reset_color%}"
        ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"
        ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗"

        ```

        * 下载相关插件
            * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            * [zsh-completions](https://github.com/zsh-users/zsh-completions)
            * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

    5. `source .zshrc`，oh-my-zsh就配置好了。

3. 配置Vim

    oh-my-zsh是平台，Vim就是双手。

    * 开启终端鼠标复制
        * `vim /etc/vim/vimrc` (`vim /usr/share/vim/vim80/defaults.vim` 70行)
        * `set mouse=c`

    * 上传本地`.vimrc`到服务器，稍作修改
    ``` vim
    " Configuration file for vim
    set modelines=0     " CVE-2007-2438

    " Normally we use vim-extensions. If you want true vi-compatibility
    " remove change the following statements
    set nocompatible    " Use Vim defaults instead of 100% vi compatibility
    set backspace=2     " more powerful backspacing

    " Don't write backup file if vim is being called by "crontab -e"
    au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
    " Don't write backup file if vim is being called by "chpass"
    au BufWrite /private/etc/pw.* set nowritebackup nobackup

    set fileencodings=utf-8,gb18030
    set termencoding=utf-8
    set encoding=utf-8

    set number
    syntax on

    set tabstop=4
    set expandtab
    set softtabstop=4
    set shiftwidth=4
    set smartindent
    ```

    * Vim常用操作
    ```
    esc    从编辑模式切换到命令模式

    a      切换到编辑模式，在光标后插入
    o      切换到编辑模式，在光标下一行插入

    v      可视模式
    r      取代模式

    命令模式下：
    Ctrl+b 向上翻页
    Ctrl+d 向下翻页
    /      光标之后搜索
    ?      光标之前搜索

    n<space> 光标向右移动n个字符
    n<Enter> 光标向下移动n行
    0      光标移到行首
    $      光标移到行尾

    G      跳至文件末尾
    ggdG   清空内容，光标移动到首字符，删除到尾部

    u      撤销操作
    Ctrl+r 重做上一个动作

    d      剪切
    dd     删除光标那一行字符
    dw     删除当前光标所在位置到单词尾字符
    d0     删除光标到行首的字符
    d$     删除光标到行尾的字符
    y      复制
    y2     复制单词
    p      粘贴（将已复制的数据在光标下一行粘贴）
    x      删除当前光标所在处的字符（向后删除一个字符）

    :wq    保存退出
    :q     退出
    :q!    强制退出
    :w [filename] 将编辑的数据另存为
    ```



### 配置防火墙

CentOS7已经默认使用Firewalld了，Firewalld的防火墙本质上是建立在原生的iptable防火墙之上的抽象层，再加上Firewalld默认关闭所有端口，需要哪个开哪个，以及命令也比较灵活，所以在Debian上我也想用Firewalld。

1. 安装

    * `apt install firewalld`
    * `firewall-cmd --version` 查看版本

2. 启动

    * `systemctl start firewalld` 启动
    * `systemctl enable firewalld` 开机启动
    * `firewall-cmd --state` 运行状态
    * `systemctl status firewalld` 查看FirewallD守护进程的状态

3. 使用

    Firewalld的配置可通过三种方式：
    ```
    firewall-cmd    # 命令行的用户接口，常用
    /etc/firewalld/    # 目录下的xml文件，编辑xml文件实现firewall的配置
    firewall-config    # 图形界面接口，终端上无法使用
    ```

4. 服务和端口

    默认支持的服务的配置文件位于`/usr/lib/firewalld/services`，用户创建的服务文件在`/etc/firewalld/services`中。

    * `firewall-cmd --list-all` 列出配置的所有防火墙规则
    * `firewall-cmd --get-services` 查看启用的所有服务的列表
    * `firewall-cmd --add-service=http --permanent` 启用http服务
    * `firewall-cmd --add-port=1024/tcp --permanent` 启用tcp端口1024
    * `firewall-cmd --add-port=5000-5200/udp --permanent` 启用udp端口一个地址段
    * `firewall-cmd --reload` 重新加载 FirewallD 配置
    * 禁用服务或端口，将add改为`remove`

5. 区域管理

    “区域”是针对给定位置或场景（例如家庭、公共、受信任等）可能具有的各种信任级别的预构建规则集。不同的区域允许不同的网络服务和入站流量类型，而拒绝其他任何流量。 首次启用 FirewallD 后，public 将是默认区域。

    * `firewall-cmd --get-default-zone` 默认区域
    * `firewall-cmd --set-default-zone=internal` 修改默认区域
    * `firewall-cmd --zone=public --list-all` 得到特定区域的所有配置
    * `firewall-cmd --list-all-zones` 得到所有区域的配置
    * `firewall-cmd --zone=public --add-port=12345/tcp --permanent` 启用特定区域的端口

与阿里云安全组规则对应，我开启了`22/tcp 1024/tcp 1126/tcp`四个端口，每次配置之后，运行`firewall-cmd --reload` 重新加载FirewallD使其生效。



### Systemd

Systemd很方便用于系统服务管理。

1. systemctl

    `systemctl`是Systemd的主命令，用于管理系统。

    1. 检查

        * `systemctl --version`
        * `whereis systemd ` 安装位置
        * `whereis systemctl`

    2. 使用

        * `systemctl list-unit-files` 列出所有可用单元
        * `systemctl list-units` 列出所有运行中单元
        * `systemctl --failed` 列出所有失败单元

        * `systemctl list-unit-files --type=service` 列出所有服务（包括启用的和禁用的）  
        * `systemctl is-active nginx.service` 查看服务是否运行
        * `systemctl is-enabled nginx` 查看服务是否设置为开机启动（不带后缀默认就是`.service`单元，其他的单元比如`.mount .sockets .device .target`都必须指定类型）
        * `systemctl status firewalld.service` 检查某个单元或服务状态

    3. 管理

        * `systemctl status httpd.service` 检查状态
        * `systemctl start httpd.service` 启动
        * `systemctl reload httpd.service` 重载
        * `systemctl restart httpd.service` 重启
        * `systemctl stop httpd.service` 停止
        * `systemctl show httpd` 检查某个服务的所有配置细节
        * `systemctl kill httpd` 杀死服务

    3. 开机自启

        * `systemctl is-active httpd.service` 激活服务
        * `systemctl enable httpd.service` 开机自启
        * `systemctl disable httpd.service` 禁用

    5. 管理套接口

        与服务类似。

        * `systemctl list-unit-files --type=socket` 列出所有可用系统套接口
        * `systemctl status cups.socket`
        * `systemctl start cups.socket`
        * `systemctl reload cups.socket`
        * `systemctl restart cups.socket`
        * `systemctl stop cups.socket`

2. `hostnamectl` 查看当前主机的信息，最开始用过。

3. `localectl` 查看本地化设置

4. `timedatectl` 查看当前时区设置

5. `loginctl` 查看当前登录的用户



### LNMP环境

LNMP代表的就是`Linux+Nginx+MySQL/MariaDB+PHP/Python/Perl`。

1. Nginx安装

    1. 安装
        * `apt install nginx`

    2. 启动
        * `whereis nginx` 查看位置
        * `/etc/nginx/nginx.conf` 配置文件
        * `/etc/nginx/sites-enabled/`，修改`default`文件中的端口为`1126`。
        * `systemctl start nginx` 启动nginx
        * `systemctl enable nginx` 开机自启
        * `systemctl status nginx` 查看状态
        * `systemctl restart nginx` 重启Nginx

    3. 检查
        在浏览器输入`IP:port`访问网址，有`Welcome to nginx!`则成功。
        网站根目录，`/var/www/html`

2. MySQL安装

    1. 安装
        * `apt install mysql-server`
        * `apt install mysql-client`

    2. 检查
        * `mysql --version` 发现安装的实际是MariaDB，早已听闻开源界和Oracle的爱恨情仇。由于两者的兼容性，我也不想更换了，正好可以尝试一下MariaDB。(如果想非MySQL不可，可以[离线安装](https://dev.mysql.com/downloads/repo/apt/))

    3. 登录
        * `mysql -u root -p `

    4. `/etc/mysql/my.cnf`
        ```
        [client]
        default-character-set=utf8mb4

        [mysql]
        default-character-set=utf8mb4

        [mysqld]
        character-set-server=utf8mb4

        bind-address = 0.0.0.0
        ```

    5. 远程登录（开启端口）
        * `grant all privileges on *.* to 'root'@'%' identified by '密码';`
        * `flush privileges;`

3. 其他

    后端不太想用PHP，Debian自带Python3和perl。

    至此，一个基础的Linux环境就弄好了。由此来看，也许Red Hat系和Debian系也许真的就是`yum`和`apt-get`的差别了。🤔

    **可以暂告一段落了，也可能到此为止了。**

    **注：** perl运行准备
    * `echo "export LC_ALL=C" >> /root/.bashrc`
    * `source /root/.bashrc `


> 生命在于折腾。

