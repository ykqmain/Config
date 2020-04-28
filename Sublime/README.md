## 说明

```
.
├── Archives
├── Package
└── Snippets
    ├── HTML
    └── Python
```

### Archives
归档的配置文件。


### Package
本文件夹是利用`PackageResourceViewer`插件修改默认资源后的配置文件，`Cmd`+`Shift`+`P`之后输入`prv`，选择`Open Resource`：

* 修改Python3的`For Loop`补全
    * `~/Python/Snippets/for.sublime-snippet`

* 修改`Tools -> Developer -> New Snippet...`模版
    * `~/Default/new_templates.py`


### Snippets

本文件夹是`User`下的子文件夹`~/Sublime Text 3/Packages/User/Snippets`，便于管理自己的Snippet。即使是`User`下级目录，也能被Sublime读取。


### .根目录

本目录下的配置文件，对应Sublime的`~/Sublime Text 3/Packages/User`

1. `Preferences.sublime-settings`

    Sublime主配置文件。


2. `Package Control.sublime-settings`

    `Package Control`配置文件，可以配置代理，以及插件名。重装Sublime可以将此文件复制到`User`自动下载插件。


3. `Default (OSX).sublime-keymap`

    Sublime快捷键配置。


4. `Python3.sublime-build`

    Python3的`Build`配置，Sublime自带的是Python2。


5. `LSP.sublime-settings`

    `LSP`配置，可以设置需要忽略的Lint警告。


