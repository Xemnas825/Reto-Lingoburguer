INSERT INTO categories (name)
VALUES 
('Hamburguesas' ),
('Postres'),
('Entrantes'),
('Menu');


-- Insertar todos los productos en un solo comando INSERT
INSERT INTO products (name, description, price, availability, image_url, category_id1)
VALUES 
-- Hamburguesas (category_id = 1)
('La Motherboard', 'Jugosa carne de ternera de 180g, lechuga fresca, tomate, cebolla roja, pepinillos y nuestra salsa "Sistema Operativo" en pan brioche.', 9.50, 1, '../images/motherboard-burger.jpg', 1),
('Firewall Crujiente', 'Carne de ternera de 200g, bacon crujiente, cheddar fundido, aros de cebolla rebozados, salsa BBQ "Código Fuente" y mayonesa de chipotle en pan rústico.', 12.95, 1, '../images/firewall-burger.jpg', 1),
('La Python', 'Hamburguesa de pollo marinado en hierbas, queso de cabra, rúcula, tomate seco, cebolla caramelizada y alioli en pan de aceitunas.', 11.75, 1, '../images/python-burger.jpg', 1),
('Binary Veggie 01', 'Burger vegetariana de garbanzos y remolacha, aguacate, brotes tiernos, tomate, queso vegano y hummus de remolacha en pan integral.', 10.95, 1, '../images/binary-veggie-burger.jpg', 1),
('Double Core Processor', 'Doble carne de ternera (360g), triple de queso (cheddar, gouda y provolone), cebolla a la plancha, pepinillos y salsa "Cache" en pan brioche.', 14.50, 1, '../images/double-core-burger.jpg', 1),
('Java HotSpot', 'Carne de ternera especiada, jalapeños, guacamole fresco, queso pepper jack, pico de gallo, lechuga y crema agria en pan de maíz.', 12.50, 1, '../images/java-hotspot-burger.jpg', 1),
('La Algoritmo Gourmet', 'Carne Black Angus de 200g, champiñones salteados, queso brie, rúcula, cebolla caramelizada y mayonesa de trufa en pan rústico.', 14.95, 1, '../images/algoritmo-burger.jpg', 1),
('RGB Blue Cheese', 'Carne de ternera de 180g, queso azul, mermelada de bacon, rúcula, nueces caramelizadas y mayonesa de mostaza y miel en pan de semillas.', 13.50, 1, '../images/rgb-blue-burger.jpg', 1),
('La Kernel Crunch', 'Pechuga de pollo crujiente, coleslaw casero, pepinillos, salsa "Servidor de Miel y Mostaza" y queso cheddar en pan brioche.', 11.95, 1, '../images/kernel-crunch-burger.jpg', 1),
('La Stack Overflow', 'Triple carne de ternera (540g), huevo frito, bacon, queso cheddar, aros de cebolla, pepinillos, lechuga, tomate y salsa "Root Access" en pan XXL.', 18.95, 1, '../images/stack-overflow-burger.jpg', 1),

-- Postres (category_id = 2)
('Cookie Cache', 'Cremoso cheesecake con base de galletas Oreo, cobertura de crema de vainilla y virutas de "Bits de Chocolate".', 6.50, 1, '../images/cookie-cache-dessert.jpg', 2),
('Brownie Overflow', 'Brownie de chocolate casero servido caliente con helado de vainilla, salsa de chocolate "Tinta Digital", nata montada y nueces caramelizadas.', 7.25, 1, '../images/brownie-overflow-dessert.jpg', 2),

-- Entrantes (category_id = 3)
('RAMchos', 'Crujientes nachos de maíz cubiertos con queso fundido, guacamole casero, pico de gallo, jalapeños, crema agria y chili con carne.', 9.75, 1, '../images/ramchos-appetizer.jpg', 3),
('USB Rings', 'Aros de cebolla rebozados en tempura crujiente, servidos con salsa BBQ y salsa ranch "Compatible con todos los sistemas".', 6.50, 1, '../images/usb-rings-appetizer.jpg', 3),
('CPU Sticks', 'Tiras de pechuga de pollo empanadas con una mezcla de "Especias Programadas", acompañadas de salsa de miel y mostaza.', 8.25, 1, '../images/cpu-sticks-appetizer.jpg', 3);

INSERT INTO payment_methods (name_method)
VALUES
('Cash'),
('Credit Card');

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES
('Chef',1,100);
