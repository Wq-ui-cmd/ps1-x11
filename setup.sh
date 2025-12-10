#!/bin/bash
clear
colors=(31 33 32 36 34 35)

show_banner() {
    banner=(
    "               ___  __   _  ________"
    "    ____  ____<  /  \\ \\ | |/ <  <  /"
    "   / __ \\/ ___/ /____\\ \\|   // // / "
    "  / /_/ (__  ) /_____/ /   |/ // /  "
    " / .___/____/_/     /_/_/|_/_//_/   "
    "/_/                                  v1.0 "
    " "
    "  Ps1-X11 | Automated Termux Gui Installer "
    "  Desktop : Xfce4 "
    "    by @ps1-blacklist "
    " "

    )

    i=0
    for line in "${banner[@]}"; do
        color=${colors[$((i % ${#colors[@]}))]}
        echo -e "\e[${color}m$line\e[0m"
        ((i++))
    done
}


show_banner


b(){
echo " "
}



sleep 6

G="\e[32m"
E="\e[0m"
b
echo -e "${G}⚡ Updating System...${E}"
b
pkg update -y
b
echo -e "${G}⚡ Upgrading System...${E}"
b
pkg upgrade -y
b
echo -e "${G}⚡ Installing X11-repo...${E}"
b
pkg install x11-repo -y
b
echo -e "${G}⚡ Installing X11-Nightly...${E}"
b
pkg install termux-x11-nightly
b
echo -e "${G}⚡ Installing Xfce4...${E}"
b
pkg install xfce4 -y
b
echo -e "${G}⚡ Installing Browser...${E}"
b
pkg install chromium -y
b
echo -e "${G}⚡ Installing Dbus...${E}"
b
pkg install dbus -y
clear
show_banner
chmod +x gui.sh
cp gui.sh /data/data/com.termux/files/home
b
echo -e "${G}⚡ Download Termux-x11 Apk : https://github.com/termux/termux-x11/releases/download/nightly/app-universal-debug.apk ${E}"
b
echo -e "${G}⚡Restart Termux and Run [ ./gui.sh ] Then Open Termux-x11 App And Enjoy GUI...${E}"
b
echo -e "${G}⚡ If you face any issue then restart Termux.Check network connection and rerun [  cd ps1-x11 && ./setup.sh ] .${E}"
