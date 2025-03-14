create database tugas;
create table users (
user_id int primary key,
first_name varchar(255),
last_name varchar(255),
email varchar(255),
phone int,
gender varchar(255),
address varchar(255)
);

select * from users;

ALTER TABLE users
MODIFY COLUMN phone VARCHAR(20);

INSERT INTO users (user_id, first_name, last_name, email, phone, gender, address)
VALUES
(1, "john", "Doe", "John.doe@example.com", "08123456789", "laki-laki", "Jalan ABC"),
(2, "Jane", "Doe", "jane.doe@example.com", "081234567890", "perempuan", "jalan DEF"),
(3, "Bob", "Smith", "Bob.smith@example.com", "081234567891", "laki-laki", "jalan GHI"),
(4, "Alice", "Johnson", "alice.johnson@example.com", "081234567892", "perempuan", "jalan JKL"),
(5, "Mike", "Williams", "mike.williams@example.com", "08123456793", "Laki-laki", "Jalan MNO");

INSERT INTO users (user_id, first_name, last_name, email, phone, gender, address)
VALUES
(6, "Emily", "Davis", "emily.davis@example.com", "08123456794", "Perempuan", "Jalan PQR"),
(7, "Tom", "Miller", "tom.miller@example.com", "08123456795", "Laki-laki", "Jalan STU"),
(8, "Linda", "Wilson", "linda.wilson@example.com", "08123456796", "Perempuan", "Jalan VWX"),
(9, "David", "Anderson", "david.anderson@example.com", "08123456797", "Laki-laki", "Jalan YZ"),
(10, "Sarah", "Taylor", "sarah.taylor@example.com", "08123456798", "Perempuan", "Jalan ABC"),
(11, "James", "Thomas", "james.thomas@example.com", "08123456799", "Laki-laki", "Jalan DEF"),
(12, "Lisa", "Jackson", "lisa.jackson@example.com", "08123456800", "Perempuan", "Jalan GHI"),
(13, "William", "White", "william.white@example.com", "08123456801", "Laki-laki", "Jalan JKL"),
(14, "Jennifer", "Lee", "jennifer.lee@example.com", "08123456802", "Perempuan", "Jalan MNO"),
(15, "Richard", "Hall", "richard.hall@example.com", "08123456803", "Laki-laki", "Jalan PQR"),
(16, "Elizabeth", "Walker", "elizabeth.walker@example.com", "08123456804", "Perempuan", "Jalan STU"),
(17, "Charles", "Martin", "charles.martin@example.com","08123456805", "Laki-laki", "Jalan VWX"),
(18, "Rebecca", "Harris", "rebecca.harris@example.com", "08123456806", "Perempuan", "Jalan YZ"),
(19, "Stephen", "Lewis", "stephen.lewis@example.com", "08123456807", "Laki-laki", "Jalan ABC"),
(20, "Margaret", "Scott", "margaret.scott@example.com", "08123456808", "Perempuan", "Jalan DEF"),
(21, "George", "Young", "george.young@example.com", "08123456809", "Laki-laki", "Jalan GHI"),
(22, "Susan", "Allen", "susan.allen@example.com", "08123456810", "Perempuan", "Jalan JKL"),
(23, "Ronald", "Brown", "ronald.brown@example.com", "08123456811", "Laki-laki", "Jalan MNO"),
(24, "Deborah", "Davis", "deborah.davis@example.com", "08123456812", "Perempuan", "Jalan PQR"),
(25, "Kevin", "Miller", "kevin.miller@example.com", "08123456813", "Laki-laki", "Jalan STU"),
(26, "Kathleen", "Wilson", "kathleen.wilson@example.com", "08123456814", "Perempuan", "Jalan VWX"),
(27, "Brian", "Anderson", "brian.anderson@example.com", "08123456815", "Laki-laki", "Jalan YZ"),
(28, "Sharon", "Thomas", "sharon.thomas@example.com", "08123456816", "Perempuan", "Jalan ABC"),
(29, "Matthew", "Jackson", "matthew.jackson@example.com", "08123456817", "Laki-laki", "Jalan DEF"),
(30, "Laura", "White", "laura.white@example.com", "08123456818", "Perempuan", "Jalan GHI");

select first_name, last_name, phone, address as alamat from users;
 