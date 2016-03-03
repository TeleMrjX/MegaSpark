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

# Installion
''bash
cd #HOME
git clone http://github.com/SWATCHTEAM/MegaSpark.git
cd MegaSpark
git submodule update--recursive
cd tg && make && cd ..
sudo service redis-server start
./launch.sh install
./launch.sh # Will Ask You a Phone Number And Send Code
