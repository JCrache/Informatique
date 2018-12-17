#!/bin/bash

DATE=`date +%m`
URL=""
case "${DATE}" in
  "12") URL="https://ressources.blogdumoderateur.com/2014/12/fond-ecran-noel-geek.jpg";;
  "10") URL="https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/SW6yOpLviqo78cc9/spooky-halloween-background_bh9fcoe___F0000.png";;
  "4") URL="http://www.astuciosites.com/wp-content/uploads/2016/03/panier-2.jpg";;
esac

if [ "${URL}" != "" ]
then
 rm ~/Images/backg/* 2> /dev/null
 wget "${URL}" -P ~/Images/backg 2> /dev/null > /dev/null
 IMG=$(ls ~/Images/backg)

 HOME=~
 gsettings set org.gnome.desktop.background picture-options 'wallpaper'
 gsettings set org.gnome.desktop.background picture-uri "file://${HOME}/Images/backg/${IMG}"
fi
