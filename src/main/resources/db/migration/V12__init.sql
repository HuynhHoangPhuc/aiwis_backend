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
    content   VARCHAR(1000000),
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
VALUES ('NGUYÊN NHÂN GÂY RA HO NHIỀU VÀ CÁCH NGĂN NGỪA HIỆU QUẢ', '1. Có mấy dạng ho thường gặp?
Không phải lúc nào ho cũng là biểu hiện của những căn bệnh nguy hiểm. Tuy nhiên, bạn cần phải hiểu biết hơn về các đặc tính, các nguyên nhân dẫn đến ho để có thể ngăn ngừa và điều trị một cách hiệu quả nhất.
Nguyên nhân gây ho chủ yếu là do nhiễm trùng. Các vi khuẩn, virus xâm nhập vào cơ thể dẫn đến viêm long đường hô hấp. Nếu tình trạng này kéo dài mà không có biện pháp phòng ngừa sẽ dẫn đến những tiến triển nặng nề hơn. Có thể liệt kê một loạt các nguyên nhân gây ra ho như sau:
Ho do virus: Như đã đề cập, ho do virus có thể là vì người bệnh bị nhiễm cảm lạnh, cảm cúm khi thời tiết giao mùa, hoặc môi trường thay đổi nhiệt độ đột ngột. Khi cơ thể hình thành phản ứng ho sẽ giúp loại bớt virus xâm nhập ra khỏi hệ hô hấp;
Môi trường ô nhiễm: khói bụi, ô nhiễm với vi khuẩn luôn bao quanh, người bệnh rất dễ bị nhiễm khuẩn hô hấp và sinh ra các phản ứng ho để đào thải các hạt bụi ra ngoài môi trường;
Sử dụng chất kích thích: thuốc lá, rượu bia hay đồ uống có cồn, nước hoa cũng là một nguyên nhân dị ứng, kích thích gây nên phản xạ ho;
Hen suyễn, dị ứng: Người bị hen suyễn rất khó để chữa dứt điểm, đây là bệnh mạn tính và bệnh nhân thường có biểu hiện ho, thở rít;
Một số tác nhân khác: tác dụng phụ của thuốc, các bệnh lý về hô hấp như viêm họng, viêm phổi, viêm phế quản, ung thư,...
Những dạng ho thường gặp:
Ho khan:
Khi bạn ho mà không kéo theo chất nhầy hoặc đờm chính là biểu hiện của ho khan. Nguyên nhân dẫn đến ho khan chủ yếu là do tình trạng kích ứng đường thở do các tác nhân như virus, dị ứng, khói bụi, khói thuốc, trào ngược dạ dày thực quản,... Ho khan xuất hiện nhiều ở mọi lứa tuổi và thời gian kéo dài tùy thuộc vào tác nhân gây ho.
Ho có đờm:
Biểu hiện của Ho có đờm là khi ho bật ra dịch của đường hô hấp, có thể dịch trong hoặc dịch đặc, màu trắng, hoặc vàng, xanh, nâu,… Ho khạc đờm có rất nhiều nguyên nhân, chủ yếu gặp ở bệnh lý đường hô hấp dưới: Viêm phế quản, viêm phổi, hen phế quản, bệnh phổi tắc nghẽn mạn tính, giãn phế quản, lao phổi,...',
        'https://medlatec.vn/ImagePath/images/20201220/20201220_ho1.png', 'Tâm Anh'),
       ('MẸ BẦU CẦN LÀM GÌ KHI MANG THAI 38 TUẦN ĐAU BỤNG DƯỚI?', '1. Tại sao mang thai 38 tuần đau bụng dưới?
Càng về cuối thai kỳ thì hiện tượng đau bụng dưới sẽ càng gặp nhiều. Nói chung, mang thai 38 tuần đau bụng dưới là do các nguyên nhân sau.
Nguyên nhân sinh lý
Nguyên nhân sinh lý ở đây là do thai nhi phát triển mạnh mẽ, kích thước thai nhi lớn nên chèn ép vào vùng bụng. Cộng với trọng lượng cơ thể mẹ nặng nề, di chuyển khó khăn, tâm lý mệt mỏi, căng thẳng,… nên cảm giác đau sẽ nhiều hơn và thường xuyên hơn. Mẹ bầu chỉ cần chú ý đi đứng và nghỉ ngơi hợp lý là tình trạng đau bụng dưới sẽ hết.Xuất hiện cơn gò
Từ tuần thai thứ 33 trở đi thì các cơn gò sẽ xuất hiện với tần suất trung bình 1 - 2 lần/ ngày, ngẫu nhiên trong ngày. Đi kèm với cơn gò là cảm giác đau tức vùng bụng dưới. Do vậy, mẹ bầu cần nghỉ ngơi, hạn chế vận động, lao động. Tuy nhiên, nếu cơn gò xuất hiện với tần suất nhiều hơn, thời gian cơn gò kéo dài, mẹ bầu nên đi khám ngay.

Dấu hiệu chuyển dạ
Nếu mẹ bầu mang thai 38 tuần đau bụng dưới thì không loại trừ đây là dấu hiệu chuyển dạ. Đặc biệt là khi cơn đau, cơn gò diễn ra có chu kỳ và ngày càng dồn dập, kèm theo hiện tượng rỉ ối, vỡ ối - bung nút nhầy. Lúc này, mẹ cùng người thân cần nhanh chóng đến bệnh viện hoặc cơ sở y tế gần nhất.

Bong nhau non
Một trường hợp nguy hiểm hơn khi mang thai 38 tuần đau bụng dưới là bong nhau non. Bình thường, nhau thai chỉ bong ra khỏi thành tử cung khi mẹ bầu chuyển dạ và sinh con. Lúc này, mẹ bầu vừa bị đau bụng dưới, đau lưng và ra máu âm đạo nhiều.

Rau bong non là một cấp cứu sản khoa thường xảy ra đột ngột, nhanh chóng, có thể đe doạ tính mạng của mẹ và thai nhi do tình trạng sốc mất máu, biến chứng rối loạn đông máu. Lúc này, cần phải chẩn đoán sớm và xử trí kịp thời mới có thể cứu sống mẹ và thai nhi. Viêm nhiễm đường tiết niệu
Khi bị viêm nhiễm đường tiết niệu, mẹ bầu sẽ có cảm giác đau bụng dưới như khi đau bụng kinh, kèm theo các triệu chứng như sốt, lạnh, tiểu rát, tiểu buốt, tiểu ra máu hoặc ra khí hư âm đạo bất thường. Nếu có những triệu chứng này, mẹ bầu cần đến bệnh viện để được kiêm tra và điều trị, phòng tránh biến chứng, nhất là nguy cơ nhiễm trùng ối.

2. Làm gì khi mang thai 38 tuần đau bụng dưới?
Dù là nguyên nhân nào chăng nữa thì việc mang thai 38 tuần đau bụng dưới cũng không được chủ quan. Bởi đây có thể là dấu hiệu chuyển dạ, nhưng cũng có thể là triệu chứng cảnh báo những bất thường. Việc quan trọng nhất mẹ bầu cần làm là theo dõi sát sao cơn đau và nhập viện khi cần thiết để đảm bảo an toàn nhất. Nói chung, mẹ bầu cần lưu ý:

Nắm rõ cơn gò sinh lý, hiện tượng thai máy và chuyển dạ thực sự để xử lý kịp thời và đúng cách.
Phân biệt vỡ ối với chảy dịch âm đạo để phòng tránh nguy cơ sinh non, suy thai, thai lưu,… cực kỳ nguy hiểm.
Thông báo ngay cho người thân khi có những bất thường để được chăm sóc và hỗ trợ kịp thời.
Đau bụng dữ dội kèm chảy máu âm đạo nhiều thì cần nhanh chóng đến ngay bệnh viện gần nhất. ',
        'https://medlatec.vn/media/35874/file/thai-38-tuan-dau-bung-duoi-1.png', 'MEDLATED'),
       ('CHỈ SỐ ĐƯỜNG HUYẾT: NHỮNG VẤN ĐỀ CƠ BẢN CẦN LƯU TÂM', '1. Tại sao cần quan tâm đến chỉ số đường huyết?
1.1. Chỉ số đường huyết là gì?
Chỉ số đường huyết là thước đo lượng đường glucose có trong máu. Đường glucose là nguồn năng lượng chính cho cơ thể, giúp duy trì hoạt động của các tế bào và các chức năng sinh học khác.Chỉ số đường huyết là căn cứ để chẩn đoán bệnh tiểu đường

Chỉ số đường huyết được đo bằng đơn vị mg/dL hoặc mmol/L. Đối với người bình thường, mức đường huyết bình thường khi đói dao động trong khoảng 70 - 100 mg/dL (3.9 - 5.6 mmol/L) và không vượt quá 140 mg/dL (7.8 mmol/L) vào 2 giờ sau ăn.

1.2. Vì sao cần quan tâm đến chỉ số đường huyết?
Chỉ số đường huyết đóng vai trò quan trọng trong bảo vệ và duy trì sức khỏe tổng thể. Một trong những lợi ích chính của việc duy trì chỉ số đường huyết ổn định là ngăn chặn nguy cơ phát triển bệnh tiểu đường.

Khi đường huyết tăng cao, cơ thể không thể sản xuất insulin đủ để kiểm soát lượng đường trong máu, dẫn đến bệnh tiểu đường. Tiểu đường có thể gây ra nhiều vấn đề sức khỏe như: tổn thương thần kinh, bệnh tim mạch, suy giảm chất lượng cuộc sống,...

Ngoài ra, đường huyết không ổn định còn có thể tác động đến trạng thái tinh thần và tâm lý. Sự thay đổi nhanh chóng về chỉ số đường huyết có thể gây cảm giác mệt mỏi, căng thẳng và thậm chí còn tăng cảm giác căng thẳng và lo lắng.

Kiểm soát và theo dõi chỉ số đường huyết, về lâu dài chính là biện pháp giảm nguy cơ mắc các vấn đề về sức khỏe.

2. Kiểm soát chỉ số đường huyết qua chế độ ăn uống và vận động
2.1. Chế độ ăn uống và chỉ số đường huyết
Chế độ ăn uống đóng vai trò quan trọng trong việc duy trì và kiểm soát chỉ số đường huyết. Rau xanh và ngũ cốc nguyên hạt là những nguồn dinh dưỡng quan trọng có thể kiểm soát đường huyết nên được đưa vào chế độ ăn uống hàng ngày.  ',
        'https://medlatec.vn/media/35879/file/chi-so-duong-huyet-1.jpg', 'Hiệp Hội Y tế');

