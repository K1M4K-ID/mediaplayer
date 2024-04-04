#!/bin/bash

# Memeriksa apakah argumen telah diberikan
if [ $# -ne 1 ]; then
    echo "Usage: $0 <YouTube URL>"
    exit 1
fi

# Memeriksa apakah direktori /sdcard/Music ada
if [ ! -d "/sdcard/Music" ]; then
    echo "Directory /sdcard/Music not found!"
    exit 1
fi

# Memeriksa apakah direktori /sdcard/Video ada
if [ ! -d "/sdcard/Video" ]; then
    echo "Directory /sdcard/Video not found!"
    exit 1
fi

# URL YouTube
URL=$1

# Menampilkan menu untuk memilih jenis unduhan
echo "What do you want to download?"
echo "1. Audio"
echo "2. Video"
echo "3. Cancel"
read -p "Enter your choice: " choice

# Memproses pilihan pengguna
case $choice in
    1)
        echo "Downloading audio..."
        yt-dlp --extract-audio --audio-format best --audio-quality 0 --progress -o "/sdcard/Music/%(title)s.%(ext)s" $URL
        echo "Download completed."
        ;;
    2)
        echo "Downloading video..."
        yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' --progress -o "/sdcard/Video/%(title)s.%(ext)s" $URL
        echo "Download completed."
        ;;
    3)
        echo "Aborted."
        exit 1
        ;;
    *)
        echo "Invalid choice. Please enter a valid number."
        exit 1
        ;;
esac
