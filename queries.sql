-- Сумма заказов по клиентам
SELECT
    c.name AS client_name,
    SUM(p.price * oi.quantity) AS total_sum
FROM clients c
JOIN orders o ON c.id = o.client_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
GROUP BY c.name
ORDER BY total_sum DESC;

-- Количество дочерних категорий первого уровня
SELECT
    parent.name AS category_name,
    COUNT(child.id) AS children_count
FROM categories parent
LEFT JOIN categories child ON parent.id = child.parent_id
GROUP BY parent.name
ORDER BY parent.name;