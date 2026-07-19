#!/bin/bash

# Цветной вывод для красоты
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Запускаем Flask-сервер...${NC}"
cd ~/dev/my_first_service
nohup python3 app.py > flask.log 2>&1 &

sleep 2  # Даём Flask время на старт

echo -e "${GREEN}Проверяем Nginx...${NC}"
sudo systemctl restart nginx

echo -e "${GREEN}Всё готово!${NC}"
echo -e "${GREEN}Открой в браузере: http://localhost${NC}"
echo -e "${GREEN}Для остановки всех процессов выполни: ./stop_all.sh${NC}"
