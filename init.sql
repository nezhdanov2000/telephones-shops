CREATE TABLE IF NOT EXISTS public.products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.shops (
    shop_id smallserial PRIMARY KEY,
    shop_name VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.plan (
    plan_id serial PRIMARY KEY,
    product_id INTEGER NOT NULL,
    shop_id SMALLINT NOT NULL,
    plan_cnt SMALLINT NOT NULL,
    plan_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL,
    FOREIGN KEY (shop_id) REFERENCES shops (shop_id) ON DELETE SET NULL    
);

CREATE TABLE IF NOT EXISTS public.shop_dns(
    sale_id bigserial PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    sales_cnt SMALLINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS public.shop_mvideo(
    sale_id bigserial PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    sales_cnt SMALLINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS public.shop_sitilink(
    sale_id bigserial PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    sales_cnt SMALLINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL
);

INSERT INTO public.products
    (product_name, price) VALUES
    ('Испорченный телефон', 10000.00),
    ('Сарафанное радио', 9500.00),
    ('Патефон', 12000.00);
   
INSERT INTO public.shops
    (shop_name) VALUES
    ('DNS'),
    ('М.видео'),
    ('СИТИЛИНК');
   
INSERT INTO public.plan
    (product_id, shop_id, plan_cnt, plan_date) VALUES
    (1, 1, 65, '2023-05-30'),
    (1, 2, 65, '2023-05-30'),
    (1, 3, 90, '2023-05-30'),
    (2, 1, 120, '2023-05-30'),
    (2, 2, 120, '2023-05-30'),
    (2, 3, 80, '2023-05-30'),
    (3, 1, 90, '2023-05-30'),
    (3, 2, 100, '2023-05-30'),
    (3, 3, 120, '2023-05-30'),
    (1, 1, 65, '2023-06-30'),
    (1, 2, 65, '2023-06-30'),
    (1, 3, 90, '2023-06-30'),
    (2, 1, 120, '2023-06-30'),
    (2, 2, 120, '2023-06-30'),
    (2, 3, 80, '2023-06-30'),
    (3, 1, 90, '2023-06-30'),
    (3, 2, 90, '2023-06-30'),
    (3, 3, 120, '2023-06-30'),
    (1, 1, 65, '2023-07-30'),
    (1, 2, 65, '2023-07-30'),
    (1, 3, 90, '2023-07-30'),
    (2, 1, 120, '2023-07-30'),
    (2, 2, 120, '2023-07-30'),
    (2, 3, 80, '2023-07-30'),
    (3, 1, 90, '2023-07-30'),
    (3, 2, 90, '2023-07-30'),
    (3, 3, 120, '2023-07-30');

 INSERT INTO public.shop_dns 
    (date, product_id, sales_cnt) VALUES
    ('2023-05-25', 2, 26),
    ('2023-06-01', 1, 10),
    ('2023-06-01', 2, 24),
    ('2023-06-02', 2, 44),
    ('2023-06-02', 3, 27),
    ('2023-06-03', 1, 12),
    ('2023-06-03', 2, 11),
    ('2023-06-05', 3, 23),
    ('2023-06-05', 1, 10),
    ('2023-06-10', 1, 7),
    ('2023-06-10', 2, 28),
    ('2023-06-15', 3, 43),
    ('2023-06-20', 1, 16),
    ('2023-06-20', 2, 11),
    ('2023-06-20', 3, 20),
    ('2023-06-25', 1, 9),
    ('2023-06-26', 2, 8),
    ('2023-06-27', 3, 15),
    ('2023-07-01', 1, 14),
    ('2023-07-02', 2, 18),
    ('2023-07-02', 3, 21); 

INSERT INTO public.shop_sitilink 
    (date, product_id, sales_cnt) VALUES
    ('2023-05-29', 1, 20),
    ('2023-06-01', 1, 14),
    ('2023-06-01', 2, 32),
    ('2023-06-01', 2, 15),
    ('2023-06-02', 3, 16),
    ('2023-06-03', 1, 13),
    ('2023-06-04', 2, 18),
    ('2023-06-05', 3, 12),
    ('2023-06-05', 1, 11),
    ('2023-06-10', 1, 15),
    ('2023-06-10', 2, 18),
    ('2023-06-15', 3, 40),
    ('2023-06-20', 1, 15),
    ('2023-06-20', 2, 15),
    ('2023-06-20', 3, 22),
    ('2023-06-25', 1, 16),
    ('2023-06-26', 2, 10),
    ('2023-06-27', 3, 39),
    ('2023-07-01', 1, 12),
    ('2023-07-02', 2, 21),
    ('2023-07-02', 3, 25);
    
INSERT INTO public.shop_mvideo 
    (date, product_id, sales_cnt) VALUES
    ('2023-05-30', 3, 32),
    ('2023-06-01', 1, 17),
    ('2023-06-01', 2, 22),
    ('2023-06-01', 2, 30),
    ('2023-06-02', 3, 5),
    ('2023-06-03', 1, 12),
    ('2023-06-04', 2, 13),
    ('2023-06-05', 3, 16),
    ('2023-06-05', 1, 7),
    ('2023-06-10', 1, 7),
    ('2023-06-10', 2, 25),
    ('2023-06-15', 3, 21),
    ('2023-06-20', 1, 18),
    ('2023-06-20', 2, 14),
    ('2023-06-20', 3, 21),
    ('2023-06-25', 1, 14),
    ('2023-06-26', 2, 12),
    ('2023-06-27', 3, 18),
    ('2023-07-01', 1, 6),
    ('2023-07-02', 2, 12),
    ('2023-07-02', 3, 9);