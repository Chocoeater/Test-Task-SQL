-- Категории
INSERT INTO categories (name, parent_id) VALUES
('Электроника', NULL),
('Компьютеры', 1),
('Ноутбуки', 2),
('Телефоны', 1),
('Аксессуары', 1);

-- Продукты
INSERT INTO products (name, quantity, price, category_id) VALUES
('MacBook', 10, 150000, 3),
('iPhone 15', 20, 130000, 4),
('Клавиатурная мышь', 50, 2000, 5),
('Системный блок (корпус)', 15, 10000, 2),
('Наушники', 30, 5000, 5);

-- Клиенты
INSERT INTO clients (name, address) VALUES
('Алиса Котова', 'г. Москва, ул. Ленина, 19, кв. 4'),
('Герман Князев', 'г. Санкт-Петербург, пр-т Невский, д. 8, кв. 2'),
('ООО "ТекНоЛоджия"', 'г, Новосибирск, ул. Советская, д. 4с1');

-- Заказы
INSERT INTO orders (client_id) VALUES
(1),
(2),
(3);

-- Детали заказа
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(2, 5, 2),
(3, 1, 5);