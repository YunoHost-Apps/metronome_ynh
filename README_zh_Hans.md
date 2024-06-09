<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Metronome

[![集成程度](https://dash.yunohost.org/integration/metronome.svg)](https://dash.yunohost.org/appci/app/metronome) ![工作状态](https://ci-apps.yunohost.org/ci/badges/metronome.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/metronome.maintain.svg)

[![使用 YunoHost 安装 Metronome](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=metronome)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Metronome。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Metronome is a light-weight [XMPP](https://en.wikipedia.org/wiki/XMPP) instant-messaging server written in Lua and based on Prosody. It's aimed to provide advanced features while maintaining a modest resource usage. More details on [the official website](https://archon.im/metronome-im/).

To use Metronome / XMPP, you will also need a client, for example:

- [Movim](https://movim.eu) - Web - available as a YunoHost app
- [ConverseJS](https://conversejs.org) - Web - available as a YunoHost app
- [Gajim](https://gajim.org/) - Linux, Windows
- [Dino](https://dino.im) - Linux
- [Thunderbird](https://www.thunderbird.net/fr/) - Linux, Windows, MacOS
- [Conversations](https://conversations.im/) - Android

You will be able to connect using `your_yunohost_username@domain.tld` + your password (i.e. your credentials are the same as for email, but for instant messaging)


**分发版本：** 4.0.3~ynh1
## 文档与资源

- 官方应用网站： <https://archon.im/metronome-im/>
- 官方管理文档： <https://archon.im/metronome-im/documentation/>
- 上游应用代码库： <https://github.com/maranda/metronome>
- YunoHost 商店： <https://apps.yunohost.org/app/metronome>
- 报告 bug： <https://github.com/YunoHost-Apps/metronome_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/metronome_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
或
sudo yunohost app upgrade metronome -u https://github.com/YunoHost-Apps/metronome_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
