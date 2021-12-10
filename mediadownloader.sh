#!/bin/bash

#download video dari youtube
#1. Unduh format video terbaik dan format audio terbaik tanpa menggabungkannya
#youtube-dl -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s'
#2. unduh video kualitas terbaik 1080p
#youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'
#3. unduh video terbaik 480p
#youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'
#4. unduh video kualitas sedang 360p
#youtube-dl -f 'best[filesize<50M]'

me="\033[31;1m"
hi="\033[32;1m"
ku="\033[33;1m"
bi="\033[34;1m"
un="\033[35;1m"
cy="\033[36;1m"
pu="\033[37;1m"

path=$(pwd)


bul=$(date +"%B")
tan=$(date +"%d")
tim=$(date +"%T")
yer=$(date +"%Y")
waktu=$(printf "\033[31;1m$bul \033[31;1m$tan \033[37;1m$tim \033[31;1m$yer")

function logo(){
printf  """
\033[31;1m    |~~~~~~~~~~~~|\033[31;1m  Author\033[37;1m :\033[37;1m K1M4K-ID
\033[31;1m    |~~~~~~~~~~~~|\033[31;1m  About\033[37;1m  :\033[37;1m Media Downloader
\033[31;1m    |            |\033[31;1m  Date\033[37;1m   :\033[37;1m $waktu
\033[31;1m/~~\|        /~~\|
\033[31;1m\__/         \__/
"""
}

function menu(){
clear
logo
echo
echo
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m android version\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m kali linux version\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m exit\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m input : ")" data
echo
if [ $data = "1" ];
then
	menu1
	
elif [ $data = "2" ];
then
	menu2
	
elif [ $data = "0" ];
then
	exit
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m thank you for use this tools\n"
	sleep 1
	
else
	printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input, dengan benar!!\n\n"
        sleep 3
        menu

fi
}

function menu1(){
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m download audio (mp3)\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m download video (mp4)\n"
printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m install dependencies\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m input : ")" pil

if [ $pil = "1" ];
then
	opsi1
	menu1


elif [ $pil = "2" ];
then
	sosmed
	menu1


elif [ $pil = "3" ];
then
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing all dependencies\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing python\n"
	apt install python && apt install python2 -y > /dev/null 2>&1
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing python, $hi[successfully]\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing ffmpeg\n"
        apt install ffmpeg -y > /dev/null 2>&1
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing ffmpeg, $hi[successfully]\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing config\n"
        pip2 install youtube-dl -y > /dev/null 2>&1
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing config, $hi[successfully]\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m kembali")" back
	menu1


elif [ $pil = "0" ];
then
	echo
	menu

else
	printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input, dengan benar!!\n\n"
        sleep 3
	menu1

fi
}

#fungsi download lagu untuk android
function opsi1(){
clear
logo
echo
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
youtube-dl -x --audio-format mp3 -o '/sdcard/Download/%(title)s.%(ext)s' $link
printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
sleep 1
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m kembali")" back
echo
menu1
}

#fungsi data sosial media
function sosmed(){
clear
logo
echo
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m source in instagram\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m source in youtube\n"
printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m source in facebook\n"
printf "\033[31;1m[\033[32;1m4\033[31;1m]\033[37;1m source in twiter\n"
printf "\033[31;1m[\033[32;1m5\033[31;1m]\033[37;1m lainya\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m pilih : ")" p
echo
if [ $p = "1" ];
then
	clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "/sdcard/Download/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo


elif [ $p = "2" ];
then
	quality

elif [ $p = "3" ];
then
        clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl -o "$path" $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "/sdcard/Download/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo


elif [ $p = "4" ];
then
clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl -o "$path" $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "/sdcard/Download/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo


elif [ $p = "5" ];
then
	clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl -o "$path" $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "/sdcard/Download/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo

elif [ $p = "0" ];
then
	menu1

else
	printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input, dengan benar!!\n\n"
	sleep 3
	sosmed

fi
}

#fungsi quality video
function quality(){
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m video (1080p) work yt, ig, fb\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m video (480p) yt only\n"
printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m video,audio extrack (1080p) yt only\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m pilih : ")" qc

if [ $qc = "1" ];
then
	clear
	logo
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
	youtube-dl $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "/sdcard/Download/$nama.mp4"
	printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
	sleep 1
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
	echo

elif [ $qc = "2" ];
then
	clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
	youtube-dl $link -f 'bestvideo[height<=480]+bestaudio/best[height<=480]' -o "/sdcard/Download/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
	echo
	sosmed


elif [ $qc = "3" ];
then
        clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
	youtube-dl $link -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s' -o "/sdcard/Download/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder Download\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
	echo
	sosmed

elif [ $qc = "0" ];
then
	echo
	sosmed


else
	echo
        printf $pu"[$me!$pu]$pu masukan, input dengan benar!!\n"
	echo
	sleep 3
	quality

fi
}





































#for desktop user
function menu2(){
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m download audio (mp3)\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m download video (mp4)\n"
printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m install dependencies\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m input : ")" pil

if [ $pil = "1" ];
then
	opsi2
	menu2


elif [ $pil = "2" ];
then
	sosmed2
	menu2


elif [ $pil = "3" ];
then
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing all dependencies\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing python\n"
	apt install python && apt install python2 -y > /dev/null 2>&1
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing python, $hi[successfully]\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing ffmpeg\n"
        apt install ffmpeg -y > /dev/null 2>&1
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing ffmpeg, $hi[successfully]\n"
	printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing config\n"
        pip2 install youtube-dl -y > /dev/null 2>&1
        printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m installing config, $hi[successfully]\n"
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m kembali")" back
	menu2


elif [ $pil = "0" ];
then
	echo
	menu

else
	printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input, dengan benar!!\n\n"
        sleep 3
	menu2

fi
}


function opsi2(){
clear
logo
echo
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
youtube-dl -x --audio-format mp3 -o "$path/music/%(title)s.%(ext)s" $link
printf $me"[$hi*$me]$pu Download selesai, cek folder music\n"
sleep 1
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m kembali")" back
echo
menu2
}


function sosmed2(){
clear
logo
echo
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m source in instagram\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m source in youtube\n"
printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m source in facebook\n"
printf "\033[31;1m[\033[32;1m4\033[31;1m]\033[37;1m source in twiter\n"
printf "\033[31;1m[\033[32;1m5\033[31;1m]\033[37;1m lainya\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m pilih : ")" p
echo
if [ $p = "1" ];
then
	clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$path/video/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo
        sosmed2


elif [ $p = "2" ];
then
	quality2

elif [ $p = "3" ];
then
        clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl -o "$path" $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$path/video/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo
        sosmed2


elif [ $p = "4" ];
then
clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl -o "$path" $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$path/video/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo
        sosmed2


elif [ $p = "5" ];
then
	clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
        youtube-dl -o "$path" $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$path/video/$nama.mp4"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
        echo
        sosmed2

elif [ $p = "0" ];
then
	echo
	menu2

else
	printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m masukan input, dengan benar!!\n\n"
	sleep 3
	sosmed2

fi
}



function quality2(){
printf "\033[31;1m[\033[32;1m1\033[31;1m]\033[37;1m video (1080p) work yt, ig, fb\n"
printf "\033[31;1m[\033[32;1m2\033[31;1m]\033[37;1m video (480p) yt only\n"
printf "\033[31;1m[\033[32;1m3\033[31;1m]\033[37;1m video,audio extrack (1080p) yt only\n"
printf "\033[31;1m[\033[32;1m0\033[31;1m]\033[37;1m kembali\n\n"
read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m pilih : ")" qc

if [ $qc = "1" ];
then
	clear
	logo
	echo
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
	youtube-dl $link -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$path/video/$nama"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
	sleep 1
	read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
	echo
	sosmed2

elif [ $qc = "2" ];
then
	clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
	youtube-dl $link -f 'bestvideo[height<=480]+bestaudio/best[height<=480]' -o "$path/video/$nama"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
	echo
	sosmed2


elif [ $qc = "3" ];
then
        clear
        logo
        echo
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m link : ")" link
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m nama baru : ")" nama
	youtube-dl $link -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s' -o "$path/video/$nama"
        printf $me"[$hi*$me]$pu Download selesai, cek folder video\n"
        sleep 1
        read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m tekan enter untuk kembali")" back
	echo
	sosmed2

elif [ $qc = "0" ];
then
	sosmed2


else
	echo
        printf $pu"[$me!$pu]$pu masukan, input dengan benar!!\n"
	echo
	sleep 3
	quality2

fi
}

menu
