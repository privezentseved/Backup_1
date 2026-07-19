from flask import Flask
import os
import time

app = Flask(__name__)
start_time = time.time()


# Главная страница
@app.route('/')
def hello():
    return '<h1>Привет, мир DevOps!</h1><p>Твой первый веб-сервер работает!</p>'

# Страница статуса
@app.route('/status')
def status():
    return 'OK'

# Страница с логами
@app.route('/logs')
def show_logs():
    log_path = '/home/prvzn/dev/my_first_service/logs/access.log'
    try:
        with open(log_path, 'r') as f:
            content = f.read()
        return f'<pre>Логи:\n{content}</pre>'
    except FileNotFoundError:
        return 'Файл логов пока не найден. Добавь туда что-нибудь!'

# Это конфликтный блок, добавленный в main
@app.route('/version')
def version():
    return 'v1.0.0'

@app.route('/uptime')
def uptime():
    seconds = int(time.time() - start_time)
    return f'<h1>Uptime: {seconds} секунд</h1>'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
