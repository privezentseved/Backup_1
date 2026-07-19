#!/bin/bash

echo "Останавливаем Flask-сервер..."
pkill -f "python3 app.py"

echo "Останавливаем Nginx..."
sudo systemctl stop nginx

echo "Всё остановлено."
