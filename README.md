# Essentials for Fedora
`install.bash` automatically installs all of my essential softwares that I use for both working and leisure.

> Notice: working only for 64-bit versions.

Current installing the following softwares/packages:
 - dnf-plugins-core
 - wget
 - curl 
 - uzip
 - Snap
 - VSCode
 - Spotify
 - Brave
 - Google Chrome
 - Docker
 - DBeaver
 - AWS CLI
 - Google Cloud
 - Foliate
 - GIMP
 - Wine
 - Inkscape
 - htop
 - LibreOffice
 - VLC Media Player
 - Slack
 - Transmission
 - Node.js
 - Telegram
 - Vim
 - jq

 ### Test
 In order to test whether the install process is successful, run `test.sh`. This script will run a docker container with the latest Fedora version and execute the `install.sh`.

 ### TODO
 - Fix downloaded RPMs
 - Store the status of each installation to log at the end. 
 - Handle 32 bits version.