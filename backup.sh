#!/bin/bash

#куда бэкапим
BACKUP_DIR="$HOME/backups"
SOURCE_DIR="$HOME/dev/my_first_service"

#создаем папку бля бэкапов, если е нет
mkdir -p "$BACKUP_DIR"

#Формируем имя файла с датой
DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_FILE="$BACKUP_DIR/my_service_backip_$DATE.tar.gz"

#делаем архив
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

#Пишем в лог (чтобы видеть что работает)
echo "$(date): Бэкап создан: $BACKUP_FILE" >> "$HOME/backup.log"
