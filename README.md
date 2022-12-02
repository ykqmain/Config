## 利器（2016-01-04）

今天看到一个有意思的项目[利器社群计划](https://liqi.io/community/) ，借此机会我也分享一下自己使用的一些小工具。

<mark><em>**Update: 2022-11**</em></mark>

<br>


## 介绍

常用ID **「秋风木叶」**，取自《楚辞·九歌·湘夫人》：

> 袅袅兮秋风，洞庭波兮木叶下。

也用`Yang`或`楊`这个昵称。🤓

#### 兴趣和爱好：

* 📚 历史
* 💻 计算机
* 📺 动画

<br>


## 在用哪些硬件？

* ** iPhone 13 [Nana]**
    *  AirPods 2

* ** MacBook Pro (13-inch, M1, 2020) (16+256) [Anna]**
    * 🖥️ Dell U2720QM
    * ⌨️ NuPhy Air75
    *  Magic Trackpad
    * 🎮 DualSense

<br>


## 软件呢？

**我喜欢精简，系统自带的软件足够好则优先使用；免费或开源的软件其次；最后才是买断制软件；订阅制软件几乎不考虑。**

**在满足自己所需要功能的前提下，将自己的互联网帐号数量降到最低，涉及的平台和APP减到最少。**

<br>

**macOS 13 (Ventura)**

![](https://github.com/ykqmain/Config/blob/master/Resources/macOS13.png)


1. **终端** (Terminal.app)

    ![](https://github.com/ykqmain/Config/blob/master/Terminal/Terminal.png)

    * _为什么不是[iTerm2](https://www.iterm2.com)？_ iTerm2目前唯一的问题就是不能识别macOS的替身文件夹，需要用`ln`命令代替，除此之外比自带的终端好用。至于为什么不选择它，我确实不需要那么多的功能。（即使我很怀念iTerm2的选中复制右键粘贴功能）

    * **Xcode命令行工具** `xcode-select --install`

    * 终端代理
        * `export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;export ALL_PROXY=socks5://127.0.0.1:1080`

    * [**oh-my-zsh**](https://ohmyz.sh)
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
        * [zsh-completions](https://github.com/zsh-users/zsh-completions)
            * ` git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
            * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

    * [**Homebrew**](https://brew.sh) (`/opt/homebrew`)
        * [wget](https://www.gnu.org/software/wget)
        * [httpie](https://httpie.io)
        * [you-get](https://you-get.org)
        * [tree](http://mama.indstate.edu/users/ice/tree)
        * [neofetch](https://github.com/dylanaraps/neofetch)
        * [_FFmpeg_](https://www.ffmpeg.org)

    * [**Python**](https://www.python.org)
        * flake8
        * black
        * requests
        * beautifulsoup4
        * openpyxl
        * pandas
        * pillow
        * matplotlib
        * jieba
        * wordcloud
        * python-docx
        * mysql-connector-python

    * [Node.js](https://nodejs.org)
        * `sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share`
        * [tldr](https://github.com/tldr-pages/tldr) `npm install -g tldr`
        * [hexo](https://hexo.io/zh-cn/) `npm install hexo-cli -g`

    * [Java](https://www.oracle.com/java/technologies/downloads/)
    * [MySQL](https://dev.mysql.com/downloads/)
    * [Vim](https://www.vim.org)

<br>

2. 浏览器

    * 主要 **Safari**
        * [AdBlocker Pro](https://adblockersafari.com) [App Store]
        * [Tampermonkey](https://www.tampermonkey.net) [App Store] ([_Greasy Fork_](https://greasyfork.org/zh-CN))
            * [Google Hit Hider by Domain](https://greasyfork.org/zh-CN/scripts/1682-google-hit-hider-by-domain-search-filter-block-sites)
            * [bilibili plus](https://greasyfork.org/zh-CN/scripts/373172-bilibili-plus)
            * [~~Bilibili AutoWide~~](https://greasyfork.org/zh-CN/scripts/375858-bilibili-autowide)
            * [~~bilibili merged flv+mp4+ass+enhance~~](https://greasyfork.org/zh-CN/scripts/372516-bilibili-merged-flv-mp4-ass-enhance)

    * 情怀 [**Firefox**](https://www.mozilla.org/en-US/firefox/all/#product-desktop-release)
        * [uBlock Origin](https://github.com/gorhill/uBlock)
        * [Tampermonkey](https://www.tampermonkey.net)
            * [文本选中复制](https://greasyfork.org/zh-CN/scripts/405130-文本选中复制)

<br>

3. 编辑器

    * [CotEditor](https://coteditor.com) [App Store]

    * [**Sublime Text**](https://www.sublimetext.com)
        ![](https://github.com/ykqmain/Config/blob/master/Sublime/Sublime.png)

        * [Package Control](https://packagecontrol.io)：[**myPlugin**](https://github.com/ykqmain/Config/blob/master/Sublime/Package%20Control.sublime-settings)
        * 字体：[Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
        * 主题：Adaptive/Mariana

    * 兜兜转转还是回到了最初的Sublime，并购买License支持了一下。我认为编辑器和IDE应该分工明确，一个快而准，一个大而全，各司其职。在我以后的生活和工作中可能不再需要IDE了，Sublime对我而言是足够且有意义的，希望Sublime能一直陪伴我，不折腾、用就完了。转行以后估计不常写代码，也就用用Python，使用Sublime有一种愉悦的感觉，最重要的还是纪念和陪伴。

<br>

4. Developer Tools

    * [Xcode](https://developer.apple.com/xcode/) [App Store]
    * [Sourcetree](https://sourcetreeapp.com) ([Git](https://git-scm.com) GUI)
    <br>

    * [_GitHub.dev_](https://github.com/github/dev) [[VS Code for the Web](https://code.visualstudio.com/docs/editor/vscode-web)] (~~Turbo C++~~、[~~Visual Studio~~](https://visualstudio.microsoft.com/zh-hans/)、[~~Atom~~](https://github.com/atom/atom)、[~~VS Code~~](https://code.visualstudio.com)的纪念)
    * [DBeaver](https://dbeaver.io) (database tool) ([~~NetBeans~~](https://netbeans.apache.org)、[~~Eclipse~~](https://www.eclipse.org)、[~~JetBrains~~](https://www.jetbrains.com.cn)、[~~Navicat~~](https://www.navicat.com.cn)的纪念)
    * [Cyberduck](https://cyberduck.io) (libre server and cloud storage browser)
    * [Paw](https://paw.cloud) (API tool)
    * [Wireshark](https://www.wireshark.org) (network protocol analyzer)
    * [QGIS](https://www.qgis.org/zh-Hans/site/) (Geographic Information System)

<br>

5. 效率

    * [**WPS Office**](https://www.wps.cn) [App Store]
    * [PDF Expert](https://pdfexpert.com/zh) (PDF工具)
    * [iThoughtsX](https://www.toketaware.com) (思维导图)
    * [Pixelmator Pro](https://www.pixelmator.com/pro/) [App Store] (换掉[~~Adobe Photoshop~~](https://www.adobe.com/cn/products/photoshop.html)之后，达成「软件全部正版化」成就😌)
    * [Movist Pro](https://movistprime.com) (播放器)
    * [VLC](https://www.videolan.org) (播放器)
    * [OBS](https://obsproject.com/zh-cn) (直播串流和录屏)
    * [HandBrake](https://handbrake.fr) (视频转码器)
    <br>

    * [GarageBand](https://www.apple.com.cn/mac/garageband/) [App Store]
    * [iMovie](https://www.apple.com.cn/imovie/) [App Store]
    * [Blender](https://www.blender.org) (3D creation suite)
    * [Inkscape](https://inkscape.org/zh-hans/) (vector graphics editor) ([~~Krita~~](https://krita.org/zh/)、[~~GIMP~~](https://www.gimp.org)的纪念)
    * [Audacity](https://www.audacityteam.org) (audio editor and recorder)
    * [DaVinci Resolve](http://www.blackmagicdesign.com/cn/products/davinciresolve) [App Store]
    * [iWork](https://www.apple.com.cn/iwork/) [App Store]
<br>

6. 娱乐

    * [~~iTunes~~](https://www.apple.com.cn/itunes/) (本地音乐播放器的纪念)
    * [**QQ音乐**](https://y.qq.com) (MAS版本也可以使用媒体键) [App Store]
    <br>

    * [OpenEmu](https://openemu.org) [Experimental]
    * [Ryujinx](https://ryujinx.org)
    * [Steam](https://store.steampowered.com) (playing, discussing, and creating games)

<br>

7. 工具

    * [微信](https://weixin.qq.com) [App Store]
    * [_QQ_](https://im.qq.com) [App Store]
    * [_飞书_](https://www.feishu.cn) [Web]
    * [**NetNewsWire**](https://ranchero.com/netnewswire) (RSS阅读器)
    <br>

    * Amphetamine (Keep Mac awake) [App Store]
    * [**Keka**](https://www.keka.io/zh-cn) (压缩软件) (MAS版本支持一下) [App Store]
    * [RunCat](https://kyome.io/runcat/index.html?lang=en) (check system information) [App Store]
    * [MonitorControl](https://github.com/MonitorControl/MonitorControl) (Controls external display brightness and volume)
    * [Rectangle](https://github.com/rxhanson/Rectangle) (window management)
    * [Maccy](https://github.com/p0deje/Maccy) (clipboard manager)
    * [One Thing](https://sindresorhus.com/one-thing) (Put a single task or goal in menu bar) [App Store]
    <br>

    * [AppCleaner](https://freemacsoft.net/appcleaner) (卸载工具)
    * [_Mac Mouse Fix_](https://github.com/noah-nuebling/mac-mouse-fix) (鼠标工具)
    * [**_其他软件_**](https://github.com/ykqmain?tab=stars)

<br>

![](https://github.com/ykqmain/Config/blob/master/Resources/macOS.png)

**如无必要，勿增实体。要钱没有，一切从简。**

<br>


## 推荐一件生活中的利器

生活不可无书。

![](https://github.com/ykqmain/Config/blob/master/Resources/sj.jpeg)

