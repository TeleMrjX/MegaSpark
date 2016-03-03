SparkBOT
============

A Telegram Bot based on plugins using [tg](https://github.com/vysheng/tg).

MegaSpark Plugins
------------
<table>
    <thead>
        <tr>
            <td><strong>Plugin Name</strong></td>
            <td><strong>Description</strong></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>stats.lua</td>
            <td>Plugin to manage Supergroups.Get Settings</td>
        </tr>
        <tr>

[Installation](https://github.com/yagop/telegram-bot/wiki/Installation)
------------

```bash
# Tested on Ubuntu 14.04, for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
```


```bash
# After those dependencies, lets install the bot
cd $HOME #Do not write this if you are using c9 or not root accounts
git clone https://github.com/SWATCHTEAM/MegaSpark.git
cd MegaSpark
git submodule update--recursive
./launch.sh install
cd tg && make && cd ..
sudo service redis-server start
./launch.sh # Will ask you for a phone number & confirmation code.
```
