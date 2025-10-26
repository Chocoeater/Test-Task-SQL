# Тестовое задание для вакансии "Junior Backend разработчик"

---

## Описание

Проект содержит схему реляционной базы данных и SQL-запросы по условиям ТЗ

---

**ТЗ:**

1. Спроектировать схему БД для:
    - Номенклатуры (товары)
    - Категорий товаров (неограниченная вложенность)
    - Клиентов
    - Заказов
    - Деталей заказов
2. Написать SQL-запросы:
    - Получение суммы заказов по каждому клиенту
    - Подсчет количества дочерних категорий первого уровня

---

## Структура БД

- `categories` - древо категорий в неограниченной вложенностью
- `products` - товары
- `clients` - клиенты
- `orders` - заказы
- `order_items` - детали заказа


---

## Проверка

1. Запускам БД (например, PostgreSQL) через Docker:
```bash
docker run --name testdb -e POSTGRES_PASSWORD=1234 -p 5432:5432 -d postgres
```
2. Создаем БД:
```bash
psql -h localhost -U postgres -c "CREATE DATABASE testtask;"
```
3. Выполняем скрипт по созданию таблиц:
```bash
psql -h localhost -U postgres -d testtask -fschema.sql
```
4. Наполняем таблицы тестовыми данными:
```bash
psql -h localhost -U postgres -d testtask -f testdata.sql
```
5. Выполняем запросы:
```bash
psql -h localhost -U postgres -d testtask -f queries.sql
```