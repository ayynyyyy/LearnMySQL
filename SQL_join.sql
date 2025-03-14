create database tugas2;
create table users (
user_id int primary key,
email varchar(255),
full_name varchar(50),
pass varchar(50),
address varchar(50),
rules varchar(50),
stat varchar(50),
created_at timestamp,
update_at timestamp
);

create table products (
product_id int,
category_id int,
user_id int,
kode varchar(50),
full_name varchar(50),
slug varchar(50),
deskripsi longtext,
photo varchar(50),
qty double,
unit varchar(50),
price double,
stat varchar(50)
);

create table categories (
category_id int,
user_id int,
kode varchar(50),
full_name varchar(50),
slug varchar(50),
deskripsi text,
stat varchar(50),
photo varchar(50)
);

INSERT INTO users (
  user_id,
  email,
  full_name,
  pass,
  address,
  rules,
  stat,
  created_at,
  update_at
)
VALUES
  (
    1,
    'john.doe@example.com',
    'John Doe',
    'password123',
    'Jalan Raya No. 123',
    'admin',
    'aktif',
    '2022-01-01 12:00:00',
    '2022-01-01 12:00:00'
  ),
  (
    2,
    'jane.doe@example.com',
    'Jane Doe',
    'password456',
    'Jalan Raya No. 456',
    'member',
    'aktif',
    '2022-01-05 12:00:00',
    '2022-01-05 12:00:00'
  ),
  (
    3,
    'bob.smith@example.com',
    'Bob Smith',
    'password789',
    'Jalan Raya No. 789',
    'admin',
    'tidak aktif',
    '2022-01-10 12:00:00',
    '2022-01-10 12:00:00'
  ),
  (
    4,
    'alice.johnson@example.com',
    'Alice Johnson',
    'password012',
    'Jalan Raya No. 012',
    'member',
    'aktif',
    '2022-01-15 12:00:00',
    '2022-01-15 12:00:00'
  ),
  (
    5,
    'mike.williams@example.com',
    'Mike Williams',
    'password345',
    'Jalan Raya No. 345',
    'admin',
    'tidak aktif',
    '2022-01-20 12:00:00',
    '2022-01-20 12:00:00'
  );
  
INSERT INTO products (
  product_id,
  category_id,
  user_id,
  kode,
  full_name,
  slug,
  deskripsi,
  photo,
  qty,
  unit,
  price,
  stat
)
VALUES
  (
    1,
    1,
    1,
    'PROD-001',
    'Sepatu Nike',
    'sepatu-nike',
    'Sepatu olahraga Nike yang nyaman dan stylish',
    'nike.jpg',
    10.0,
    'pasang',
    500000.0,
    'aktif'
  ),
  (
    2,
    2,
    2,
    'PROD-002',
    'Tas Gucci',
    'tas-gucci',
    'Tas fashion Gucci yang elegan dan berkualitas',
    'gucci.jpg',
    5.0,
    'buah',
    2000000.0,
    'aktif'
  ),
  (
    3,
    1,
    1,
    'PROD-003',
    'Sepatu Adidas',
    'sepatu-adidas',
    'Sepatu olahraga Adidas yang ringan dan nyaman',
    'adidas.jpg',
    15.0,
    'pasang',
    400000.0,
    'aktif'
  ),
  (
    4,
    3,
    3,
    'PROD-004',
    'Jam Tangan Rolex',
    'jam-tangan-rolex',
    'Jam tangan mewah Rolex yang presisi dan elegan',
    'rolex.jpg',
    2.0,
    'buah',
    10000000.0,
    'aktif'
  ),
  (
    5,
    2,
    2,
    'PROD-005',
    'Tas Chanel',
    'tas-chanel',
    'Tas fashion Chanel yang klasik dan berkualitas',
    'chanel.jpg',
    8.0,
    'buah',
    3000000.0,
    'aktif'
  );

INSERT INTO categories (
  category_id,
  user_id,
  kode,
  full_name,
  slug,
  deskripsi,
  stat,
  photo
)
VALUES
  (
    1,
    1,
    'CAT-001',
    'Elektronik',
    'elektronik',
    'Kategori produk elektronik seperti smartphone, laptop, dan tablet',
    'aktif',
    'elektronik.jpg'
  ),
  (
    2,
    2,
    'CAT-002',
    'Fashion',
    'fashion',
    'Kategori produk fashion seperti pakaian, sepatu, dan aksesoris',
    'aktif',
    'fashion.jpg'
  ),
  (
    3,
    1,
    'CAT-003',
    'Olahraga',
    'olahraga',
    'Kategori produk olahraga seperti sepatu, bola, dan peralatan lainnya',
    'aktif',
    'olahraga.jpg'
  ),
  (
    4,
    3,
    'CAT-004',
    'Makanan dan Minuman',
    'makanan-dan-minuman',
    'Kategori produk makanan dan minuman seperti snack, kopi, dan lainnya',
    'aktif',
    'makanan-dan-minuman.jpg'
  ),
  (
    5,
    2,
    'CAT-005',
    'Kecantikan dan Kesehatan',
    'kecantikan-dan-kesehatan',
    'Kategori produk kecantikan dan kesehatan seperti skincare, kosmetik, dan lainnya',
    'aktif',
    'kecantikan-dan-kesehatan.jpg'
  );

select * from users;
select * from products;
select * from categories;

ALTER TABLE products 
ADD PRIMARY KEY (product_id);

ALTER TABLE categories 
ADD PRIMARY KEY (category_id);

SELECT 
    users.full_name, 
    products.product_id, 
    categories.deskripsi 
FROM users 
LEFT JOIN products ON users.user_id = products.user_id
LEFT JOIN categories ON products.category_id = categories.category_id;


