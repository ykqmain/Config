## 利器

今天(2016-01-04)看到一个有意思的项目[利器社群计划](https://liqi.io/community/) ，借此机会我也分享一下自己使用的一些小工具。

<mark><em>**Updated: 2023-03**</em></mark>

<br>


## 介绍

常用ID **「秋风木叶」**，取自《楚辞·九歌·湘夫人》：

> 袅袅兮秋风，洞庭波兮木叶下。

也用`Yang`这个昵称。🤓

#### 兴趣爱好：

* 📚 历史
* 💻 计算机

#### 梦想理想

* ~~科学家~~
* ~~做动画~~
* ~~程序员~~

<br>


## 在用哪些硬件？

* ** iPhone 13 [Nana]**
    *  AirPods 2

* ** MacBook Pro (13-inch, M1, 2020) (16+256) [Anna]**
    *  Studio Display
    *  Magic Keyboard
    *  Magic Trackpad
    * 🎮 DualSense Wireless Controller

<br>


## 软件呢？

**我喜欢精简，在满足自己所需要功能的前提下，将自己的互联网账号数量降到最低，涉及的平台和APP减到最少。**

**系统自带的软件足够好则优先使用；免费或开源的软件其次；最后才是买断制软件；订阅制软件几乎不考虑。**

<br>

**macOS 13 (Ventura)**

![](https://github.com/ykqmain/Config/blob/master/Pix/macOS13.png)

1. **浏览器**

    * [**Safari**](https://www.apple.com/safari/)
        * [AdBlocker](https://adblockersafari.com) [App Store]
        * [Tampermonkey](https://www.tampermonkey.net) [App Store] ([_Greasy Fork_](https://greasyfork.org/zh-CN))
            * [Google Hit Hider by Domain](https://greasyfork.org/zh-CN/scripts/1682-google-hit-hider-by-domain-search-filter-block-sites)
            * [bilibili plus](https://greasyfork.org/zh-CN/scripts/373172-bilibili-plus)
            * [文本选中复制](https://greasyfork.org/zh-CN/scripts/405130-文本选中复制)
            * [知乎增强](https://greasyfork.org/zh-CN/scripts/419081-知乎增强)

    * [**Firefox**](https://www.mozilla.org/en-US/firefox/all/#product-desktop-release)
        * _about:config_
            * `browser.aboutConfig.showWarning`
            * `browser.compactmode.show`
            * `browser.tabs.closeTabByDblclick`
            * `browser.newtabpage.pinned`
        * _情怀主题_
            * [A Web Browser Renaissance](https://addons.mozilla.org/zh-CN/firefox/addon/a-web-browser-renaissance/)
        * _Extensions_
            * [Firefox Multi-Account Containers](https://addons.mozilla.org/zh-CN/firefox/addon/multi-account-containers/)
            * [Firefox Translations](https://addons.mozilla.org/zh-CN/firefox/addon/firefox-translations)
            * [uBlock Origin](https://github.com/gorhill/uBlock)
            * [Tampermonkey](https://www.tampermonkey.net)
            * [Global Speed](https://github.com/polywock/globalSpeed)
            * [几枝](https://github.com/unicar9/jizhi)

<br>

2. Terminal.app ([Vim](https://www.vim.org))

    ![](https://github.com/ykqmain/Config/blob/master/Terminal/Terminal.png)
    * _为什么不是[iTerm2](https://www.iterm2.com)？_ iTerm2目前唯一的问题就是不能识别macOS的替身文件夹，需要用`ln`命令代替，除此之外比自带的终端好用。至于为什么不选择它，因为确实不需要那么多的功能。（即便很怀念iTerm2的选中复制、右键粘贴的功能）
    <br>

    * [**Xcode**](https://developer.apple.com/cn/xcode/) [App Store]
    * **Command Line Tools** `xcode-select --install` (~~终端代理~~)
    <br>

    * [**oh-my-zsh**](https://ohmyz.sh)
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
            * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
        * [zsh-completions](https://github.com/zsh-users/zsh-completions)
            * `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`
        * [~~zsh-history-substring-search~~](https://github.com/zsh-users/zsh-history-substring-search) (已内置)
            * `git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search`
    <br>

    * [**Homebrew**](https://brew.sh) (`/opt/homebrew`)
        * [wget](https://www.gnu.org/software/wget)
        * [tree](http://mama.indstate.edu/users/ice/tree)
        * [neofetch](https://github.com/dylanaraps/neofetch)
        * [httpie](https://httpie.io)
        * [you-get](https://you-get.org)
        * [duck](https://cyberduck.io)
        * [mysql](https://dev.mysql.com/downloads/)
        * [openjdk@17](https://openjdk.org)
        * [node@18](https://nodejs.org/zh-cn/)
            * [tldr](https://github.com/tldr-pages/tldr) `npm install -g tldr`
            * [hexo](https://hexo.io/zh-cn/) `npm install hexo-cli -g`
        * [_ffmpeg_](https://www.ffmpeg.org)
    <br>

    * [**Python**](https://www.python.org)
        * flake8
        * black
        * httpx
        * requests
        * beautifulsoup4
        * django
        * fastapi
        * uvicorn
        * openpyxl
        * pandas
        * pillow
        * matplotlib
        * jieba
        * wordcloud
        * python-docx
        * mysql-connector-python

<br>

3. Developer Tools

    * [CotEditor](https://coteditor.com) [App Store]
    * [**Sublime Text**](https://www.sublimetext.com) (~~Turbo C++~~、[~~Visual Studio~~](https://visualstudio.microsoft.com/zh-hans/)、[~~NetBeans~~](https://netbeans.apache.org)、[~~Eclipse~~](https://www.eclipse.org)、[~~JetBrains~~](https://www.jetbrains.com)、[~~Atom~~](https://github.com/atom/atom)、[~~VS Code~~](https://code.visualstudio.com))
        ![](https://github.com/ykqmain/Config/blob/master/Sublime/Sublime.png)
        * [_Package Control_](https://packagecontrol.io)：[**我的插件**](https://github.com/ykqmain/Config/blob/master/Sublime/Package%20Control.sublime-settings)
        * 字体：[Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
        * 主题：Adaptive/Mariana
        * 兜兜转转还是回到了最初的Sublime，并购买License支持了一下。我认为编辑器和IDE一个快而准、一个大而全，IDE集成了编辑器、编译器、解释器、调试器、构建工具、版本管理、终端等等开发环境。在我以后的生活和工作中可能不再需要IDE了，转行以后应该不常写代码，估计也就用用Python。Sublime对我而言是足够且有纪念意义的，希望Sublime能一直陪伴我，保持愉悦，不折腾、用就完了。
    <br>

    * [Sourcetree](https://sourcetreeapp.com) ([Git](https://git-scm.com) GUI)
    * [DBeaver](https://dbeaver.io) (database tool)
    * [Wireshark](https://www.wireshark.org) (network protocol analyzer)
    * [QGIS](https://www.qgis.org/zh-Hans/site/) (Geographic Information System)

<br>

4. 效率与娱乐

    * [**WPS Office**](https://www.wps.cn) [App Store]
    * [PDF Expert](https://pdfexpert.com/zh) (PDF工具)
    * [iThoughtsX](https://www.toketaware.com) (思维导图)
    * [Pixelmator Pro](https://www.pixelmator.com/pro/) [App Store] (换掉[~~Adobe Photoshop~~](https://www.adobe.com/cn/products/photoshop.html)之后，达成「软件全部正版化」成就😌)
    * [**QQ音乐**](https://y.qq.com) (MAS版本也可以使用媒体键) [App Store]
    * [Movist Pro](https://movistprime.com) (播放器)
    * [VLC](https://www.videolan.org) (播放器)
    <br>

    * [OBS](https://obsproject.com/zh-cn) (直播串流和录屏)
    * [HandBrake](https://handbrake.fr) (视频转码器)
    * [Blender](https://www.blender.org) (3D creation suite) ([~~GIMP~~](https://www.gimp.org)、[~~Inkscape~~](https://inkscape.org/zh-hans/)、[~~Krita~~](https://krita.org/zh/))
    * [GarageBand](https://www.apple.com.cn/mac/garageband/) [App Store] ([_Audacity_](https://github.com/audacity/audacity))
    * [iMovie](https://www.apple.com.cn/imovie/) [App Store] ([_DaVinci Resolve_](http://www.blackmagicdesign.com/cn/products/davinciresolve)、[_必剪_](https://bcut.bilibili.cn))
    * [iWork](https://www.apple.com.cn/iwork/) [App Store]
    * [~~iTunes~~](https://www.apple.com.cn/itunes/) (本地音乐播放器的纪念)
    <br>

    * [OpenEmu](https://openemu.org) [Experimental] ([_DeSmuME_](http://desmume.org)、[_Ryujinx_](https://ryujinx.org))
    * [Steam](https://store.steampowered.com) (playing, discussing, and creating games)

<br>

5. 工具

    * [微信](https://weixin.qq.com) [App Store]
    * [_QQ_](https://im.qq.com) [App Store]
    * [_飞书_](https://www.feishu.cn) [Web]
    * [_Discord_](https://discord.com) [Web]
    * [**NetNewsWire**](https://ranchero.com/netnewswire) (RSS阅读器)
    <br>

    * Amphetamine (Keep Mac awake) [App Store]
    * [**Keka**](https://www.keka.io/zh-cn) (压缩软件) (MAS版本支持一下) [App Store]
    * [RunCat](https://kyome.io/runcat/index.html?lang=en) (check system information) [App Store]
    * [Rectangle](https://github.com/rxhanson/Rectangle) (window management)
    * [Maccy](https://github.com/p0deje/Maccy) (clipboard manager)
    * [pap.er](https://paper.photos) ([_Unsplash_](https://unsplash.com/apps)) [App Store]
    <br>

    * [AppCleaner](https://freemacsoft.net/appcleaner) (卸载工具)
    * [_MonitorControl_](https://github.com/MonitorControl/MonitorControl) (显示器工具)
    * [_Mac Mouse Fix_](https://github.com/noah-nuebling/mac-mouse-fix) (鼠标工具)
    * [**_其他软件_**](https://github.com/ykqmain?tab=stars)

<br>

![](https://github.com/ykqmain/Config/blob/master/Pix/macOS.png)

**如无必要，勿增实体。要钱没有，一切从简。**

<br>


## 推荐一件生活中的利器

生活不可无书。

![](https://github.com/ykqmain/Config/blob/master/Pix/Mac.jpeg)

