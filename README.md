## 利器

今天(2016-01-04)看到一个有意思的项目[利器社群计划](https://liqi.io/community/)，借此机会我也分享一下自己使用的一些小工具。

<mark><em>**Update: 2024-12**</em></mark>

<br>


## 介绍

常用ID **「秋风木叶」**，取自《楚辞·九歌·湘夫人》：

> 袅袅兮秋风，洞庭波兮木叶下。

🤓也用`Yang`这个昵称。

📚业余中国古代史、🌏爱好地理，💻CS专业、📺梦想动画、🎮人生游戏玩家，📆时代观察员、📝生活记录者；

<br>


## 在用硬件

* ** Mac mini (M4) [Anna]**
    *  Studio Display
    *  Magic Keyboard
    *  Magic Trackpad
    * DualSense™ Wireless Controller

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
        * [Tampermonkey](https://tampermonkey.net/) [App Store] ([_Greasy Fork_](https://greasyfork.org/zh-CN))
            * [Google Hit Hider by Domain](https://greasyfork.org/zh-CN/scripts/1682-google-hit-hider-by-domain-search-filter-block-sites)
            * [Bilibili AutoWide](https://greasyfork.org/zh-CN/scripts/375858-bilibili-autowide)
            * [文本选中复制](https://greasyfork.org/zh-CN/scripts/405130-文本选中复制)
    <br>

    * [**Firefox**](https://www.mozilla.org/en-US/firefox/all/)
        * _about:config_
            * `extensions.pocket.enabled`
            * `browser.tabs.closeTabByDblclick`
            * `browser.compactmode.show`
        * _情怀主题_
            * [A Web Browser Renaissance](https://addons.mozilla.org/zh-CN/firefox/addon/a-web-browser-renaissance/)
        * _Extensions_
            * [Firefox Multi-Account Containers](https://addons.mozilla.org/zh-CN/firefox/addon/multi-account-containers/)
            * [uBlock Origin](https://github.com/gorhill/uBlock)
            * [Global Speed](https://github.com/polywock/globalSpeed)
            * [Tampermonkey](https://tampermonkey.net/)
            * [沉浸式翻译](https://immersivetranslate.com)
            * [几枝](https://github.com/unicar9/jizhi)
    <br>

    * [**NetNewsWire**](https://netnewswire.com) (RSS reader)

<br>

2. Developer Tools

    * **Terminal.app**
        ![](https://github.com/ykqmain/Config/blob/master/Terminal/Terminal.png)
        * 为什么不是[_iTerm2_](https://www.iterm2.com)？iTerm2目前我发现的问题就是不能识别macOS的替身文件夹，需要用`ln`命令代替，除此之外比自带的终端好用。至于为什么不选择它，因为我确实不需要那么多的功能。（即便很怀念iTerm2的选中复制、右键粘贴和[_Shell Integration_](https://iterm2.com/documentation-shell-integration.html)功能）
    <br>

    * [**Xcode**](https://developer.apple.com/cn/xcode/) [App Store] ([_CodeEdit_](https://www.codeedit.app)) {**`xcode-select --install`**}
    * [CotEditor](https://coteditor.com) [App Store] ([_Vim_](https://www.vim.org))
    <br>

    * [oh-my-zsh](https://ohmyz.sh)
        * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
        * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
            * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
        * [zsh-completions](https://github.com/zsh-users/zsh-completions)
            * `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`
        * [~~zsh-history-substring-search~~](https://github.com/zsh-users/zsh-history-substring-search) (已内置)
            * `git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search`
    <br>

    * [Homebrew](https://brew.sh) {`/opt/homebrew`}
        * [wget](https://www.gnu.org/software/wget)
        * [tree](http://mama.indstate.edu/users/ice/tree)
        * [tldr](https://github.com/tldr-pages/tldr)
            * `tldr -u`
        * [fastfetch](https://github.com/fastfetch-cli/fastfetch) ([~~neofetch~~](https://github.com/dylanaraps/neofetch))
        * [mysql](https://dev.mysql.com) ([Navicat](https://www.navicat.com.cn/products/navicat-premium-lite)、[~~DBeaver~~](https://dbeaver.io)、[~~Sequel Ace~~](https://sequel-ace.com)、[~~Sequel Pro~~](https://sequelpro.com))
        * [_postgresql_](https://www.postgresql.org) ([Postgres.app](https://postgresapp.com)、[_pgAdmin_](https://www.pgadmin.org)、[_PostGIS_](https://postgis.net)、[QGIS](https://www.qgis.org/zh-Hans/site/))
        * [_tcpdump_](https://www.tcpdump.org) ([Wireshark](https://www.wireshark.org))
        * [_ffmpeg_](https://ffmpeg.org) ([HandBrake](https://handbrake.fr)、[_Gifski_](https://gif.ski)、[_XLD_](https://tmkk.undo.jp/xld/index_e.html))
    <br>

    * [Python](https://www.python.org) {`pip3 install -r requirements.txt`}
        * you-get
        * httpx
        * requests
        * beautifulsoup4
        * openpyxl
        * pandas
        * pillow
        * matplotlib
        * jieba
        * wordcloud
        * python-docx
        * pygame
    <br>

    * [**Sublime Text**](https://www.sublimetext.com) (~~Turbo C++~~、[~~Visual Studio~~](https://visualstudio.microsoft.com/zh-hans/)、[~~NetBeans~~](https://netbeans.apache.org)、[~~Eclipse~~](https://eclipseide.org)、[~~JetBrains~~](https://www.jetbrains.com.cn)、[~~Atom~~](https://github.com/atom/atom)、[~~VS Code~~](https://code.visualstudio.com)、[~~Zed~~](https://zed.dev))
        ![](https://github.com/ykqmain/Config/blob/master/Sublime/Sublime.png)
        * [_Package Control_](https://packagecontrol.io)：[我的插件](https://github.com/ykqmain/Config/blob/master/Sublime/Package%20Control.sublime-settings)
        * 字体：[Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
        * 主题：Adaptive/Mariana
        * 兜兜转转还是回到了最初的Sublime Text，并购买了License支持一下。我认为IDE和编辑器，一个大而全、一个快而准，在我转行以后的生活和工作中估计也就编辑文本、用用Python，应该不再需要集成开发环境（Integrated Development Environment）。Sublime对我而言是足够且有纪念意义的，希望能一直陪伴着我。
    <br>

    * [**Sourcetree**](https://sourcetreeapp.com) ([Git](https://git-scm.com) GUI)

<br>

3. 效率与娱乐

    * [**WPS Office**](https://www.wps.cn) [App Store] ([PDF Expert](https://pdfexpert.com)、[iThoughtsX](https://www.toketaware.com)、[_draw.io_](https://www.drawio.com)、[_Numbr_](https://numbr.dev))
    * [Pixelmator Pro](https://www.pixelmator.com/pro/) (image editor) [App Store] ([~~GIMP~~](https://www.gimp.org)、[~~darktable~~](https://www.darktable.org))
    * [Photomator](https://www.pixelmator.com/photomator/) (photo editor) [App Store] (换掉[~~Photoshop & Lightroom~~](https://www.adobe.com/creativecloud/photography.html)后达成「软件全部正版化」成就😌)
    * [Movist Pro](https://movistprime.com) (player)
    * [VLC](https://www.videolan.org) (player)
    * [OBS](https://obsproject.com) (video recording and live streaming)
    <br>

    * [iWork](https://www.apple.com.cn/iwork/) [App Store]
    * [Goodnotes](https://www.goodnotes.com) [App Store]
    * [Vectornator](https://www.linearity.io) (designs and animations) [App Store] ([~~Inkscape~~](https://inkscape.org/zh-hans/)、[~~Krita~~](https://krita.org/zh/)、[~~_Procreate_~~](https://procreate.com))
    * [Blender](https://www.blender.org) (3D creation suite)
    * [GarageBand](https://www.apple.com.cn/mac/garageband/) [App Store] ([~~MuseScore~~](https://github.com/musescore/MuseScore))
    * [iMovie](https://www.apple.com.cn/mac/imovie) [App Store] ([DaVinci Resolve](https://www.blackmagicdesign.com/cn/products/davinciresolve)、[_必剪_](https://bcut.bilibili.cn))
    <br>

    * [~~iTunes~~](https://www.apple.com.cn/itunes/) (本地音乐播放器的纪念)
    * [OpenEmu](https://openemu.org) (游戏) ([Steam](https://store.steampowered.com)、[_PlayStation®Accessories_](https://play.st/3AC0qb0))

<br>

4. 工具

    * [微信](https://weixin.qq.com) [App Store]
    * [QQ](https://im.qq.com) [App Store]
    * [微信读书](https://weread.qq.com/) [Web]
    * [QQ音乐](https://y.qq.com) (MAS版本也可以使用媒体键) [App Store]
    * [_飞书_](https://www.feishu.cn) [Web]
    * [_Discord_](https://discord.com) [Web]
    * [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12) (keep-awake) [App Store] ([_Keep Screen On_](https://www.keepscreenon.com))
    <br>

    * [Keka](https://www.keka.io/zh-cn) (压缩软件) (MAS版本支持一下) [App Store] ([KekaExternalHelper](https://www.keka.io/zh-cn/#defaultapp))
    * [RunCat](https://kyome.io/runcat/index.html?lang=en) (check system information) [App Store]
    * [pap.er](https://paper.photos) (壁纸) [App Store]
    * [Mactracker](https://mactracker.ca) (get info) [App Store]
    <br>

    * [AppCleaner](https://freemacsoft.net/appcleaner) (卸载工具) ([_Rectangle_](https://github.com/rxhanson/Rectangle)、[_MonitorControl_](https://github.com/MonitorControl/MonitorControl)、[_Mac Mouse Fix_](https://github.com/noah-nuebling/mac-mouse-fix))
    * [**_更多软件_**](https://github.com/ykqmain?tab=stars)

<br>

![](https://github.com/ykqmain/Config/blob/master/Pix/macOS.png)

**如无必要，勿增实体。保持愉悦，用就完了。**

<br>


## 生活利器

生活不可无书。

![](https://github.com/ykqmain/Config/blob/master/Pix/sj.jpeg)

