## The config of Software

![](https://github.com/ykqmain/my-config/blob/master/screenshots/vim.png)
<br><br>


<mark><strong><em>Update: 2019-05</em></strong></mark>

<br>

## 介绍

昵称 **秋风木叶**，或 _Yang_。🤓

<br>


## 你都在使用哪些硬件？

* MacBook Pro 2015 (Anna)
* iPhone 6s plus (Nana)

<br>

## 软件呢？

**我喜欢精简，系统自带的软件足够好则优先使用。**

**_在满足自己所需要功能的前提下，将自己的互联网帐号降到最低，涉及到的平台和APP减到最少。_**

**macOS Mojave 10.14**

![](https://github.com/ykqmain/my-config/blob/master/screenshots/macOS10.14.png)

![](https://github.com/ykqmain/my-config/blob/master/screenshots/desktop1.png)

![](https://github.com/ykqmain/my-config/blob/master/screenshots/desktop2.png)

1. 神器: [**iTerm2**](https://www.iterm2.com)  [~~Terminal.app~~ (需要用到`lrzsz`，自带终端不支持)]
    * Xcode命令行工具 `xcode-select --install`

    * 其他
        * [JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
        * [jdk1.6](https://support.apple.com/kb/DL1572)
        * [MySQL](https://dev.mysql.com/downloads/mysql/)
        * [Node.js](https://nodejs.org/zh-cn/)
        * [Tomcat](http://tomcat.apache.org)

    * [**oh-my-zsh**](http://ohmyz.sh)
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
            * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
        * [zsh-completions](https://github.com/zsh-users/zsh-completions)
            * `git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions`
        * [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
            * `git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search`
        * 终端代理
            * `export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;`
            * `export ALL_PROXY=socks5://127.0.0.1:1086`
            * `unset ALL_PROXY`

    * [**Homebrew**](https://brew.sh) (`/usr/local/Cellar/`)
        * [**Python3**](https://www.python.org)
            * **pip3 install X**
                * requests
                * BeautifulSoup4
                * lxml
        * ffmpeg
            * 简单剪切: ffmpeg -ss 0:0:0(起点时间) -t 00:10:00(持续时间) -i in.mp4 -c copy /Users/yang/Desktop/out.mp4
        * tree
        * lrzsz
        * [tldr](https://tldr.sh)
        * thefuck
        * [找回macOS10.13的FTP](https://discussions.apple.com/thread/8088270) （也可以从High Sierra之前的Mac把ftp和telnet拷到你电脑里，`/usr/local/bin`）
            * `brew install telnet`
            * `brew install inetutils`
            * `brew link --overwrite inetutils`
<br>

2. 浏览器

    * 主要 **Safari** ([Safari Extensions](https://safari-extensions.apple.com))
        * [uBlock-Safari](https://github.com/el1t/uBlock-Safari)
        * Evernote Web Clipper
        * Mate Translate
        * [Tampermonkey](https://tampermonkey.net)

    * 备用 [Chrome](https://www.google.com/chrome/)
        * [uBlock Origin](https://github.com/gorhill/uBlock)
        * Evernote Web Clipper
        * FDM
<br>

3. 编辑器:

    * [**Sublime Text**](https://www.sublimetext.com/)
        * _Package Control_ (../Installed Packages/)
            `import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)`
    
        * _Plugin_ (./Packages/)
            * Sync Settings
            * ChineseLocalizations
            * ConvertToUTF8
            * FileIcons
            * BracketHighlighter
            * SideBarEnhancements
            * SublimeCodeIntel
                * `pip3 install CodeIntel`
            * SublimeLinter
                * SublimeLinter-flake8
                    * `pip3 install flake8`
                * SublimeLinter-shellcheck
                * SublimeLinter-clang
                * SublimeLinter-xmllint
                * SublimeLinter-eslint
                    * `sudo npm install -g eslint`
                * SublimeLinter-contrib-htmlhint
                    * `sudo npm install -g htmlhint`
                * SublimeLinter-csslint
                    * `sudo npm install -g csslint`
            * Emmet
            * Sass
            * LESS
            * Terminal

    * [**Atom**](https://atom.io)

        * _Plugin_ (`~/.atom/packages`)
            * sync-settings
            * file-icons
            * highlight-selected
            * highlight-line
            * script
            * [minimap](https://atom.io/users/atom-minimap/packages) (共7个)

        * _Disable_
            * spell-check
            * whitespace

        * 主题 **One Dark**
        * 字体 [SourceCodePro 14](https://github.com/adobe-fonts/source-code-pro)
<br>

4. IDE:

    * **Xcode**
    * [Eclipse](https://www.eclipse.org/downloads/packages/)
    * [IntelliJ IDEA](https://www.jetbrains.com/idea/)
<br>

5. Developer Tools:

    * [Dash](https://kapeli.com/dash)
    * [Navicat Premium](https://www.navicat.com.cn/products/navicat-premium)
    * [Fork](https://git-fork.com)
    * [Postman](https://www.getpostman.com)
    * [Wireshark](https://www.wireshark.org/)
    * [Cyberduck](https://cyberduck.io)
    * [Microsoft Remote Desktop Beta](https://rink.hockeyapp.net/apps/5e0c144289a51fca2d3bfa39ce7f2b06/)
    * [TeamViewer](https://www.teamviewer.com/cn/)

<br>

6. 笔记:
    * **备忘录**
    * [**印象笔记**](https://www.yinxiang.com) [App Store]
    * Atom (.md)
    * 文本编辑.app (.txt)
<br>

7. 文档

    * **预览**
    * iWork [App Store]
    * Office
    * [PDF Expert](https://pdfexpert.com)
    * [iThoughtsX](https://www.toketaware.com)
    * [OmniGraffle](https://www.omnigroup.com/omnigraffle)
    * Photoshop
<br>

8. 图像影音

    * 照片.app
    * GarageBand [App Store]
    * iMovie [App Store]
    * [**QQ音乐**](https://y.qq.com/download/mac.html)
    * 腾讯视频 [App Store]
    * 爱奇艺 [App Store]
    * 优酷 [App Store]
    * [VLC](http://www.videolan.org)  (播放器)
    * [**IINA**](https://github.com/lhc70000/iina) (播放器)
    * QuickTime (~~音乐播放，录音，录屏~~)
    * iTunes
<br>

9. 工具

    * [微信](https://weixin.qq.com) [App Store]
    * [QQ](https://im.qq.com) [App Store]
    * [Keka](https://www.keka.io/zh-cn/) (压缩软件)
    * Amphetamine (Keeping your Mac awake) [App Store]
    * [AppCleaner](https://freemacsoft.net/appcleaner/) (卸载工具)
    * [迅雷](http://mac.xunlei.com)
    * [Free Download Manager](https://www.freedownloadmanager.org)
    * [_其他软件_](https://github.com/ykqmain?tab=stars)
<br>
<br>


## 你平时访问的网站和使用的APP有哪些？

* [Twitter](https://twitter.com)
* [B站](https://www.bilibili.com)
* [抖音](https://www.douyin.com/)
* **公众号**


<br>


## 推荐一件生活中的利器给大家

关于**中性笔**，一直在寻找一款合适的，

体验了网上推荐的`百乐 p500，G1，hi-tec`，`三菱 151`以后，

还是觉得以前用过的`晨光 金钻007`比较好。


<br><br>
