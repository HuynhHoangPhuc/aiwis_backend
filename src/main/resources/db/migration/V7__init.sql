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
    id        SERIAL NOT NULL PRIMARY KEY,
    title     VARCHAR(150),
    content   VARCHAR(100000),
    image_url VARCHAR(500),
    author    VARCHAR(150)
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
VALUES ('Phạm Đức Huấn', '0123456789', 20, '123456789', TRUE, 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', '123456789'),
       ('Đoàn Trung Hiệp', '0123456789', 20, '123456789', TRUE, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_05_16_49_483142.jpeg', '123456789'),
       ('Trần Hoàng Ngọc Anh', '0123456789', 20, '123456789', TRUE, 'https://vinmec-prod.s3.amazonaws.com/images/12_05_2023_10_36_13_242173.jpeg', '123456789'),
       ('Võ Thành Nhân', '0123456789', 20, '123456789', TRUE, 'https://vinmec-prod.s3.amazonaws.com/images/17_05_2023_03_12_31_514344.jpeg', '123456789'),
       ('Nguyễn Tấn Cường', '0123456789', 20, '123456789', TRUE, 'https://vinmec-prod.s3.amazonaws.com/images/17_06_2021_04_27_51_856816.png', '123456789'),
       ('Yi Hyeon Gyu', '0123456789', 20, '123456789', TRUE, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg', '123456789');

INSERT INTO medicines (name, description, unit, price, image_url)
VALUES ('Thuốc A', 'Thuốc A', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc B', 'Thuốc B', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc C', 'Thuốc C', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc D', 'Thuốc D', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc E', 'Thuốc E', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc F', 'Thuốc F', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc G', 'Thuốc G', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg'),
       ('Thuốc H', 'Thuốc H', 'Viên', 10000, 'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg');

INSERT INTO blogs (title, content, image_url, author)
VALUES ('Bài viết 1', 'Nội dung bài viết 1', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn A'),
       ('Bài viết 2', 'Nội dung bài viết 2', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn B'),
       ('Bài viết 3', 'Nội dung bài viết 3', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn C'),
       ('Bài viết 4', 'Nội dung bài viết 4', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn D'),
       ('Bài viết 5', 'Nội dung bài viết 5', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn E'),
       ('Bài viết 6', 'Nội dung bài viết 6', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn F'),
       ('Bài viết 7', 'Nội dung bài viết 7', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn G'),
       ('Bài viết 8', 'Nội dung bài viết 8', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn H'),
       ('Bài viết 9', 'Nội dung bài viết 9', 'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn I');

