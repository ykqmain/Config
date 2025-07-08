## 利器

今天(2016-01-04)看到一个有意思的项目[利器社群计划](https://liqi.io/community/)，借此机会我也分享一下自己使用的一些小工具。

<mark><em>**Update: 2025-07**</em></mark>

<br>


## 介绍

常用ID **「秋风木叶」**，取自《楚辞·九歌·湘夫人》：

> 袅袅兮秋风，洞庭波兮木叶下。

🤓也用`Yang`这个昵称。

<br>

📚业余中国史、🌏爱好地理，

💻CS专业、📺梦想做动画、🎮人生游戏玩家，

📆时代观察员、📝生活记录者；

<br>


## 在用硬件

* ** Mac mini (M4) [Anna]**
    *  Studio Display
    *  Magic Keyboard
    *  Magic Trackpad
    * DualSense™ Wireless Controller

* ** iPad Pro (M4) [Pena]**
    *  Pencil Pro

* ** iPhone 15 Pro [Nana]**
    *  AirPods 2

<br>


## 推荐软件（macOS）

**我喜欢精简，在满足自己所需功能的前提下，将自己的互联网账号数量降到最低，涉及的平台和APP减到最少。**

**系统自带的软件足够好则优先使用、免费或开源软件其次、最后才是买断制软件；订阅制软件几乎不考虑。**

![](https://github.com/ykqmain/Config/blob/master/Pix/Desktop.png)

1. 浏览器

    * [**Safari**](https://www.apple.com/safari/)
        * [AdBlocker](https://adblockersafari.com) [App Store]
        * [Accelerate](https://github.com/ritamsarmah/accelerate) [App Store]
        * [沉浸式翻译](https://immersivetranslate.com) [App Store]
        * [Tampermonkey](https://tampermonkey.net/) [App Store] [[_Greasy Fork_](https://greasyfork.org/zh-CN)]
            * [Google Hit Hider by Domain](https://greasyfork.org/zh-CN/scripts/1682-google-hit-hider-by-domain-search-filter-block-sites)
            * [Bilibili AutoWide](https://greasyfork.org/zh-CN/scripts/375858-bilibili-autowide)
            * [文本选中复制](https://greasyfork.org/zh-CN/scripts/405130-文本选中复制)
    <br>

    * [**Firefox**](https://www.mozilla.org/en-US/firefox/all/) ([_Thunderbird_](https://www.thunderbird.net))
        * _about:config_
            * `browser.tabs.closeTabByDblclick`
            * `browser.compactmode.show`
        * _情怀主题_
            * [A Web Browser Renaissance](https://addons.mozilla.org/zh-CN/firefox/addon/a-web-browser-renaissance/)
        * _Extensions_
            * [Firefox Multi-Account Containers](https://addons.mozilla.org/zh-CN/firefox/addon/multi-account-containers/)
            * [uBlock Origin](https://github.com/gorhill/uBlock)
            * [Global Speed](https://github.com/polywock/globalSpeed)
            * [沉浸式翻译](https://immersivetranslate.com)
            * [Tampermonkey](https://tampermonkey.net/)
            * [几枝](https://github.com/unicar9/jizhi)
    <br>

    * [**NetNewsWire**](https://netnewswire.com) (RSS reader)

<br>

2. Developer Tools

    * **Terminal.app**
        ![](https://github.com/ykqmain/Config/blob/master/Terminal/Terminal.png)
        * 为什么不是[_iTerm2_](https://www.iterm2.com)？iTerm2目前我发现的问题就是不能识别macOS的替身文件夹，需要用`ln`命令代替，除此之外比自带的终端好用。至于为什么不选择它，因为我确实不需要那么多的功能。（即便很怀念iTerm2的选中复制、右键粘贴和[_Shell Integration_](https://iterm2.com/documentation-shell-integration.html)功能）
    <br>

    * [Xcode](https://developer.apple.com/cn/xcode/) [App Store] ([Swift Playground](https://developer.apple.com/cn/swift-playground/)) {**`xcode-select --install`**}
    * [CotEditor](https://coteditor.com) [App Store] ([Vim](https://www.vim.org))
    <br>

    * [oh-my-zsh](https://ohmyz.sh)
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
            * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
        * [zsh-completions](https://github.com/zsh-users/zsh-completions)
            * `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`
    <br>

    * [Homebrew](https://brew.sh) {`/opt/homebrew`}
        * [wget](https://www.gnu.org/software/wget)
        * [tree](http://mama.indstate.edu/users/ice/tree)
        * [fastfetch](https://github.com/fastfetch-cli/fastfetch) ([~~neofetch~~](https://github.com/dylanaraps/neofetch))
        * [pyenv](https://github.com/pyenv/pyenv) ([pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)) {`pip3 install -r requirements.txt`}
            * [tldr](https://tldr.sh) {`tldr -u`}
            * [you-get](https://you-get.org)
            * [httpie](https://httpie.io)
            * [httpx](https://pypi.org/project/httpx/)
            * [requests](https://pypi.org/project/requests/)
            * [beautifulsoup4](https://pypi.org/project/beautifulsoup4/)
            * [django](https://www.djangoproject.com)
            * [psycopg](https://www.psycopg.org)
            * [openpyxl](https://pypi.org/project/openpyxl/)
            * [pandas](https://pandas.pydata.org)
            * [matplotlib](https://matplotlib.org)
            * [pillow](https://github.com/python-pillow/Pillow)
            * [jieba](https://github.com/fxsjy/jieba)
            * [wordcloud](https://github.com/amueller/word_cloud)
            * [python-docx](https://github.com/python-openxml/python-docx)
            * [pygame](https://www.pygame.org)
    <br>

    * [**Sublime Text**](https://www.sublimetext.com) [[_Package Control_](https://packagecontrol.io)]
        ![](https://github.com/ykqmain/Config/blob/master/Sublime/Sublime.png)
        * [~~Turbo C++~~](https://turbo-c.net)、[~~Visual Studio~~](https://visualstudio.microsoft.com/zh-hans/)、[~~NetBeans~~](https://netbeans.apache.org)、[~~Eclipse~~](https://eclipseide.org)、[~~JetBrains~~](https://www.jetbrains.com.cn)、[~~Atom~~](https://github.com/atom/atom)、[~~VS Code~~](https://code.visualstudio.com)、[~~Zed~~](https://zed.dev)、[~~CodeEdit~~](https://www.codeedit.app)
        * 兜兜转转还是回到了最初的Sublime Text，并购买了License支持一下。我认为IDE和编辑器，一个大而全、一个快而准，在我转行以后的生活和工作中估计也就编辑文本、写写Python罢了，Sublime对我而言是足够且有纪念意义的，希望能一直陪伴着我。
    <br>

    * [**Sourcetree**](https://sourcetreeapp.com) ([_Git_](https://git-scm.com) GUI) ([_PostgreSQL_](https://www.postgresql.org)、[Postgres.app](https://postgresapp.com)、[DBeaver](https://dbeaver.io)、[QGIS](https://www.qgis.org/zh-Hans/site/)、[奥维互动地图](https://www.ovital.com)、[Wireshark](https://www.wireshark.org))

<br>

3. 效率与娱乐

    * [**WPS Office**](https://www.wps.cn) [App Store] ([PDF Expert](https://pdfexpert.com)、[iThoughtsX](https://www.toketaware.com)、[_draw.io_](https://www.drawio.com)、[_Numbr_](https://numbr.dev))
    * [Pixelmator Pro](https://www.pixelmator.com/pro/) (image editor) [App Store] ([~~GIMP~~](https://www.gimp.org)、[~~darktable~~](https://www.darktable.org)、[~~Inkscape~~](https://inkscape.org/zh-hans/)、[~~Krita~~](https://krita.org/zh/))
    * [Photomator](https://www.pixelmator.com/photomator/) (photo editor) [App Store] (换掉[~~Photoshop & Lightroom~~](https://www.adobe.com/creativecloud/photography.html)后达成「软件全部正版化」成就😌)
    <br>

    * [iWork](https://www.apple.com.cn/iwork/) [App Store]
    * [Goodnotes](https://www.goodnotes.com) [App Store] ([_Procreate_](https://procreate.com))
    * [~~iTunes~~](https://www.apple.com.cn/itunes/) ([Apple Books](https://www.apple.com/apple-books/)、[Apple Music](https://www.apple.com.cn/apple-music/)、[Apple Podcasts](https://www.apple.com.cn/apple-podcasts/))
    <br>

    * [Movist Pro](https://movistprime.com) (player)
    * [VLC](https://www.videolan.org) (player)
    * [OBS](https://obsproject.com) (video recording and live streaming)
    * [Blender](https://www.blender.org) (3D creation suite)
    <br>

    * [GarageBand](https://www.apple.com.cn/mac/garageband/) [App Store] ([~~Audacity~~](https://www.audacityteam.org)、[~~MuseScore~~](https://musescore.org))
    * [iMovie](https://www.apple.com.cn/mac/imovie) [App Store] ([DaVinci Resolve](https://www.blackmagicdesign.com/cn/products/davinciresolve))
    * [calibre](https://calibre-ebook.com/zh_CN) (e-book manager) ([XLD](https://tmkk.undo.jp/xld/index_e.html)、[HandBrake](https://handbrake.fr))
    * [LocalSend](https://localsend.org/zh-CN) (share files) [App Store]
    * [Mactracker](https://mactracker.ca) (get info) [App Store]

<br>

4. 工具

    * [微信](https://weixin.qq.com) [App Store]
    * [QQ](https://im.qq.com) [App Store]
    * [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12) (keep-awake) [App Store] ([_Keep Screen On_](https://www.keepscreenon.com))
    <br>

    * [Keka](https://www.keka.io/zh-cn) (file archiver) (MAS购买支持) [App Store]
    * [RunCat](https://kyome.io/runcat/index.html?lang=en) (check system information) [App Store]
    * [Unsplash Wallpapers](https://unsplash.com/apps) (desktop wallpaper, every day) [App Store]
    * [AppCleaner](https://freemacsoft.net/appcleaner) (thoroughly uninstall unwanted apps) ([_MonitorControl_](https://github.com/MonitorControl/MonitorControl)、[_Mac Mouse Fix_](https://github.com/noah-nuebling/mac-mouse-fix))
    <br>

    * [OpenEmu](https://openemu.org) (video game emulation)
    * [Steam](https://store.steampowered.com) (游戏)
    * [Epic](https://store.epicgames.com) (游戏)
    * [**_更多软件_**](https://github.com/ykqmain?tab=stars)

<br>

![](https://github.com/ykqmain/Config/blob/master/Pix/macOS.png)

**如无必要，勿增实体。保持愉悦，用就完了。**

<br>


## 生活利器

生活不可无书。

![](https://github.com/ykqmain/Config/blob/master/Pix/sj.jpeg)
