DROP TABLE IF EXISTS patients;
CREATE TABLE IF NOT EXISTS patients
(
    id                  SERIAL NOT NULL PRIMARY KEY,
    name                VARCHAR(150),
    phone               VARCHAR(20),
    age                 INTEGER,
    personal_id         VARCHAR(30),
    health_insurance_id VARCHAR(30),
    password            VARCHAR(150)
);

DROP TABLE IF EXISTS doctors;
CREATE TABLE IF NOT EXISTS doctors
(
    id          SERIAL NOT NULL PRIMARY KEY,
    name        VARCHAR(150),
    phone       VARCHAR(20),
    experience  INTEGER,
    personal_id VARCHAR(30),
    certificate BOOLEAN,
    image_url   VARCHAR(500),
    password    VARCHAR(150)
);

DROP TABLE IF EXISTS medicines;
CREATE TABLE medicines
(
    id          SERIAL NOT NULL PRIMARY KEY,
    name        VARCHAR(150),
    description VARCHAR(500),
    unit        VARCHAR(20),
    price       DECIMAL(10, 2),
    image_url   VARCHAR(500)
);

DROP TABLE IF EXISTS blogs;
CREATE TABLE IF NOT EXISTS blogs
(
    id         SERIAL NOT NULL PRIMARY KEY,
    title      VARCHAR(150),
    content    VARCHAR(100000),
    image_url  VARCHAR(500),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author     VARCHAR(150)
);

INSERT INTO patients (name, phone, age, personal_id, health_insurance_id, password)
VALUES ('Nguyen Van A', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van B', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van C', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van D', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van E', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van F', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van G', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van H', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van I', '0123456789', 20, '123456789', '123456789', '123456789'),
       ('Nguyen Van J', '0123456789', 20, '123456789', '123456789', '123456789');

INSERT INTO doctors (name, phone, experience, personal_id, certificate, image_url, password)
VALUES ('Phạm Đức Huấn', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van B', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van C', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van D', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van E', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van F', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van G', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van H', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van I', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789'),
       ('Nguyen Van J', '0123456789', 20, '123456789', TRUE, 'https://i.imgur.com/3Z4tELV.jpg', '123456789');

INSERT INTO medicines (name, description, unit, price, image_url)
VALUES ('Thuốc A', 'Thuốc A', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc B', 'Thuốc B', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc C', 'Thuốc C', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc D', 'Thuốc D', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc E', 'Thuốc E', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc F', 'Thuốc F', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc G', 'Thuốc G', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc H', 'Thuốc H', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc I', 'Thuốc I', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg'),
       ('Thuốc J', 'Thuốc J', 'Viên', 10000, 'https://i.imgur.com/3Z4tELV.jpg');

INSERT INTO blogs (title, content, image_url, author)
VALUES ('Bài viết 1', 'Nội dung bài viết 1', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 2', 'Nội dung bài viết 2', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 3', 'Nội dung bài viết 3', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 4', 'Nội dung bài viết 4', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 5', 'Nội dung bài viết 5', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 6', 'Nội dung bài viết 6', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 7', 'Nội dung bài viết 7', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 8', 'Nội dung bài viết 8', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 9', 'Nội dung bài viết 9', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn'),
       ('Bài viết 10', 'Nội dung bài viết 10', 'https://i.imgur.com/3Z4tELV.jpg', 'Phạm Đức Huấn');