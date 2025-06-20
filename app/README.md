# PHP DevOps Test Project

## Переменные окружения для запуска

- REDIS_HOST - по умолчанию `redis`
- REDIS_PORT - по умолчанию `6379`

- DB_HOST - по умолчанию `db`
- DB_DATABASE - по умолчанию `testdb`
- DB_USERNAME - по умолчанию `testuser`
- DB_PASSWORD - по умолчанию `testpass`

# Проверка работоспособности
```
set REDIS_HOST=redis&&set REDIS_PORT=6379&&set DB_HOST=db&&set DB_DATABASE=testdb&&set DB_USERNAME=testuser&&set DB_PASSWORD=testpass&&index.php
```
