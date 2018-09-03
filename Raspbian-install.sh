#!/usr/bin/env bash

screen_size=$(stty size 2>/dev/null || echo 24 80)
rows=$(echo "${screen_size}" | awk '{print $1}')
columns=$(echo "${screen_size}" | awk '{print $2}')
r=$(( rows / 2 ))
c=$(( columns / 2 ))
r=$(( r < 20 ? 20 : r ))
c=$(( c < 70 ? 70 : c ))

Download () {
    if [[ /etc/raspbian-installer/$RASBIANTYPE -d ]]; then
        cd /etc/raspbian-installer/$RASBIANTYPE
      else
        mkdir /etc/rasbian-installer/$RASPBIANTYPE
        cd /etc/rasbian-installer/$RASPBIANTYPE
    fi
    
    if [[ $RASBIANTYPE -e ]]; then
        
}

GetLatest () {

}

WriteToSDCard () {

}

Begin () {
    SDDIRECTORY=$(whiptail --backtitle "Begin" --title "SD Card" --inputbox "Where is the SD card mounted? Run lsblk to find it." $r $c)
    RASBIANTYPE=$(whiptail --backtitle "Version" --title "Raspbian Version" --menu "What version do you want to install?" $r $c 2 \
        "Lite" "Raspbian Lite" on \
        "Desktop" "Rabian With Desktop" off)
}
