INSERT INTO customers (name, email, phone) VALUES
('Nikolay Netsov', '20521@uktc-bg.com', '0889136119'),
('Maria Daneva', '20534@uktc-bg.com', '0883412844'),
('Nikola Stoilov', '20532@uktc-bg.com', '0873421967');

INSERT INTO products (name, description, price) VALUES
('Processor', 'Very good with various amenities', 350.00),
('Video cart', 'Awesome,makes ur games looks better', 599.00),
('Ventilators', 'Cooling on another level', 199.00);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-05-06', 350.00),
(2, '2024-05-06', 599.00),
(3, '2024-05-07', 199.00);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 1, 2),
(2, 2, 1),
(3, 3, 1);

INSERT INTO categories (name) VALUES
('Processor'),
('Video cards'),
('Configurations');


INSERT INTO product_categories (product_id, category_id) VALUES
(1, 1),
(2, 2),
(3, 3);


INSERT INTO warranty (product_id, warranty_start_date, warranty_end_date) VALUES
(1, '2024-05-06', '2025-05-06'),
(2, '2024-05-06', '2025-05-06'),
(3, '2024-05-07', '2025-05-07');

INSERT INTO orders_stats SELECT
  SUM(total_amount) AS order_sum,
  COUNT(total_amount) AS order_count,
  AVG(total_amount) AS avg_order
FROM
  orders;



