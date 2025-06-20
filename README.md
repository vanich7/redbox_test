```markdown
# Redbox Test Project

Проект для тестирования работы Docker-окружения с Nginx, PHP, PostgreSQL, Redis, Prometheus и Grafana.

## Установка и запуск

1. **Клонирование репозитория**  
   Выполните в терминале:
   ```bash
   git clone https://github.com/vanich7/redbox_test.git
   cd redbox_test
   ```
   Или:
   - Скачайте архив с репозиторием
   - Распакуйте его
   - Перейдите в директорию `redbox_test`

2. **Проверка зависимостей**  
   Убедитесь, что у вас установлены:
   - Docker (версия 20.10.0+)
   - Docker Compose (версия 1.29.0+)

   Проверить можно командами:
   ```bash
   docker --version
   docker-compose --version
   ```

3. **Запуск проекта**  
   Выполните команду:
   ```bash
   docker-compose up -d
   ```

## Проверка работы сервисов

4. **Основное приложение**  
   Доступно по адресу:  
   [http://localhost/public/index.php](http://localhost/public/index.php)  
   Проверяет работу:
   - Nginx
   - PHP
   - PostgreSQL
   - Redis

5. **Grafana**  
   Доступна по адресу:  
   [http://localhost:3000](http://localhost:3000)  
   Учетные данные по умолчанию:
   - Логин: `admin`
   - Пароль: `admin`  
   *Смените пароль при первом входе!*

## Дополнительные утилиты

6. **Проверка портов**  
   Скрипт `port_check.sh` проверяет доступность порта:
   ```bash
   ./port_check.sh <host> <port>
   ```
   Пример:
   ```bash
   ./port_check.sh localhost 3000
   ```
   В случае недоступности порта записывает лог в `port_check.log`

## Важная информация

- Все пароли оставлены по умолчанию (замените в production!)
- Для остановки проекта выполните:
  ```bash
  docker-compose down
  ```
- Логи можно просмотреть командой:
  ```bash
  docker-compose logs -f
  ```
```
