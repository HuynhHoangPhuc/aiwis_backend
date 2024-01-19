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
    description VARCHAR(10000),
    unit        VARCHAR(20),
    price       DECIMAL(10, 2),
    image_url   VARCHAR(1000)
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
VALUES ('Phạm Đức Huấn', '0123456789', 20, '123456789', TRUE,
        'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', '123456789'),
       ('Đoàn Trung Hiệp', '0123456789', 20, '123456789', TRUE,
        'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_05_16_49_483142.jpeg', '123456789'),
       ('Trần Hoàng Ngọc Anh', '0123456789', 20, '123456789', TRUE,
        'https://vinmec-prod.s3.amazonaws.com/images/12_05_2023_10_36_13_242173.jpeg', '123456789'),
       ('Võ Thành Nhân', '0123456789', 20, '123456789', TRUE,
        'https://vinmec-prod.s3.amazonaws.com/images/17_05_2023_03_12_31_514344.jpeg', '123456789'),
       ('Nguyễn Tấn Cường', '0123456789', 20, '123456789', TRUE,
        'https://vinmec-prod.s3.amazonaws.com/images/17_06_2021_04_27_51_856816.png', '123456789'),
       ('Yi Hyeon Gyu', '0123456789', 20, '123456789', TRUE,
        'https://vinmec-prod.s3.amazonaws.com/images/20_06_2023_06_04_11_195050.jpeg', '123456789');

INSERT INTO medicines (name, description, unit, price, image_url)
VALUES ('Viên uống Bifido Plus Jpanwell bổ sung lợi khuẩn tăng cường sức khỏe đại tràng (30 viên',
        'Bifido Plus bổ sung lợi khuẩn tăng cường sức khỏe đại tràng; giúp giảm thiểu các chứng bệnh hay mắc ở đại tràng. Giảm nguy cơ rối loạn tiêu hóa, cải thiện các triệu chứng ăn uống kém, đầy hơi, khó tiêu, chướng bụng và táo bón',
        'Viên', 999000,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/636x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00033284_vien_uong_ho_tro_dai_trang_bifido_plus_jpanwell_30v_5543_61e9_large_9d369d6c67.jpg'),
       ('Viên uống Jpanwell Jp Lady hỗ trợ phụ nữ tiền mãn kinh (60 viên)',
        'JP Lady cung cấp các vitamin và dưỡng chất cần thiết cho phụ nữ độ tuổi tiền mãn kinh. Giúp tăng cường sức khỏe cho phụ nữ tiền mãn kinh.',
        'Vien', 1300000,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/DSC_07330_24931f6918.jpg'),
       ('Thuốc Cao Ích Mẫu OPC điều trị kinh nguyệt không đều (180ml)',
        'Cao ích mẫu là sản phẩm của Công ty cổ phần dược phẩm OPC (Việt Nam), thành phần chính là Ích mẫu, Hương phụ và Ngải cứu. Thuốc dùng để điều trị kinh nguyệt không đều, rối loạn kinh nguyệt. Ngoài ra, Cao ích mẫu còn được sử dụng trong điều trị các triệu chứng trong giai đoạn tiền mãn kinh.',
        'Chai', 48000,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/IMG_3527_9124bd89ff.jpg'),
       ('Ống hít Sao Vàng Danapha điều trị nghẹt mũi, sổ mũi, ho (1.5g)',
        'Ống hít sao vàng của Công ty cổ phần dược Danapha, thành phần chính là menthol, camphor, tinh dầu đinh hương, tinh dầu quế, tinh dầu tràm. Thuốc dùng điều trị: Nghẹt mũi, sổ mũi, ho, cảm lạnh, làm thông mũi và sát trùng đường hô hấp. Uruso 200mg được bào chế dưới dạng ống nhựa trụ tròn màu trắng, nắp xoáy kín bên ngoài, bên trong có lõi xốp hình trụ màu trắng ngà tẩm hoạt chất. Hộp 1 ống.',
        'Hộp', 9000,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00017015_ong_hit_sao_vang_danapha_15g_6956_6189_large_ffdf26fb57.jpg'),
       ('Dung dịch Danospan Danapha điều trị viêm đường hô hấp cấp tính có kèm ho (100ml)',
        'Danospan Danapha 100 ml là sản phẩm của công ty cổ phần dược Danapha, thành phần chính là cao khô lá thường xuân. Thuốc được dùng điều trị viêm đường hô hấp cấp tính có kèm ho, điều trị triệu chứng trong bệnh lý viêm phế quản mạn tính. Danospan Danapha 100 ml được bào chế dưới siro. Một chai 100 ml chứa 0,7 g cao khô lá thường xuân (tương ứng với 4,55 g lá thường xuân).',
        'Chai', 60000,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/IMG_3287_7b1bb805cb.jpg'),
       ('Thuốc Hoạt Huyết Nhất Nhất giúp hoạt huyết, trị thiếu năng tuần hoàn (3 vỉ x 10 viên)',
        'Hoạt Huyết Nhất Nhất - Tăng Cường Tuần Hoàn Não của Công ty TNHH Dược Phẩm Nhất Nhất, thành phần chính đương quy, ích mẫu, ngưu tất, thục địa, xích thược, xuyên khung, Hoạt Huyết Nhất Nhất là thuốc bổ huyết, hoạt huyết được sử dụng để điều trị các chứng huyết hư, ứ trệ; phòng ngừa và điều trị thiểu năng tuần hoàn não (mệt mỏi, đau đầu, chóng mặt, mất thăng bằng, hoa mắt, mất ngủ, suy giảm trí nhớ, suy nhược thần kinh), thiểu năng tuần hoàn ngoại vi (đau mỏi vai gáy, tê cứng cổ, đau cách hồi, đau cơ, tê bì chân tay) thể huyết ứ; hỗ trợ phòng ngừa và điều trị xơ vữa động mạch, bệnh mạch vành, nghẽn mạch, tai biến mạch máu não.',
        'Vỉ', 115000,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/IMG_2171_e9dd12712d.jpg');



INSERT INTO blogs (title, content, image_url, author)
VALUES ('Bài viết 1', 'Nội dung bài viết 1',
        'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn A'),
       ('Bài viết 2', 'Nội dung bài viết 2',
        'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn B'),
       ('Bài viết 3', 'Nội dung bài viết 3',
        'https://vinmec-prod.s3.amazonaws.com/images/06_10_2021_04_53_32_525273.png', 'Nguyễn Văn C');

