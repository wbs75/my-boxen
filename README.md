# My Boxen
============

### Distributing

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/wbs75/my-boxen /opt/boxen/repo
cd /opt/boxen/repo
ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future ./script/boxen
```

Keep in mind, my-boxen does not require you to encrypt your hard drive by default.


## Halp!

See [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md).

Use Issues or #boxen on irc.freenode.net.
