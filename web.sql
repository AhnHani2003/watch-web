use master
create database WatchWeb

GO
USE WatchWeb
GO
/****** Object:  Table Product*/
CREATE TABLE product (
    id int IDENTITY (10000,1) PRIMARY KEY,
    productid varchar (30) NOT NULL,
    productname nvarchar (150) NOT NULL,
	trangthai bit,
    tieude nvarchar(200) NOT NULL,
    productprice int NULL,
    newprice int NULL,
    alias nvarchar(150) NULL,
    newprod bit NULL,
    topprod bit NULL,
    discountprod bit NULL,
    brandid int NOT NULL,
    categoryid int NOT NULL,
    lday nvarchar (100),
    matkinh nvarchar (100),
    chongnuoc nvarchar (100),
    thongtinphu nvarchar (300),
    thongtinphu1 nvarchar (300),
    thongtinphu2 nvarchar (300),
    thongtinphu3 nvarchar (300),
    mota nvarchar(MAX),
	hinhanhnen varchar (MAX) NOT NULL,
    hinhanh1 varchar (MAX) NULL,
    hinhanh2 varchar (MAX) NULL,
    hinhanh3 varchar (MAX) NULL,
    hinhanh4 varchar (MAX) NULL,
    hinhanh5 varchar (MAX) NULL
);
	CREATE TABLE Brands (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(50)
);
	CREATE TABLE category (
    categoryID INT PRIMARY KEY,
    categories NVARCHAR(50)
);
ALTER TABLE product
ADD CONSTRAINT fk_product_brandid
FOREIGN KEY(brandid) REFERENCES Brands(BrandId)

ALTER TABLE product
ADD CONSTRAINT fk_product_categoryid
FOREIGN KEY(categoryid) REFERENCES category(categoryID)

	CREATE TABLE TOPDANHMUC(
	id int IDENTITY (1,1) PRIMARY KEY,
	tendanhmuc varchar (50) NOT NULL,
	alias varchar(150),
	hinhanh varchar(MAX) NOT NULL,
	topp bit NOT NULL
	)

INSERT INTO TOPDANHMUC (tendanhmuc, alias, hinhanh, topp) VALUES
('TOP NEW','New-Product?dmid=true','https://github.com/AhnHani2003/watch-web/assets/145345242/12737372-fe91-4852-bc46-c13d97bc2077','true'),
('TOP SELLER','Best-Seller?dmid=true','https://github.com/AhnHani2003/watch-web/assets/145345242/a84e056c-5b0b-4438-b37a-bfb5f12f1811','true'),
('TOP DISCOUNT','Discount?dmid=true','https://github.com/AhnHani2003/watch-web/assets/145345242/7ac50074-26c4-48d3-a602-69fe8a79c922','true');



INSERT INTO Brands (BrandID, BrandName) VALUES
(1, 'Omega'),
(2, 'Hublot'),
(3, 'Rolex'),
(4, 'Patek Philippe Boutique');


INSERT INTO category(categoryID, categories) VALUES
(1, 'Đồng hồ chạy cơ'),
(2, 'Đồng hồ chạy pin');

INSERT INTO product(productid,productname,trangthai,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('OM0001','OMEGA Constellation',1,N'Đồng hồ Omega Constellation cổ nam máy cơ',145000000, 130000000, N'Đồng-hồ-đeo-tay-OMEGA-ConstellationOmega?id=','false','false','true',1,1, N'Dây da cao cấp dày bền đẹp', N'Hình bát quái Sapphire','5ATM','Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật','Đồng hồ Omega Constellation Pie Pan 168.005/6 Cal 564 Quickset Solid 18k Rose Gold


Đồng hồ ở tình trạng tổng thể tốt, có vết mòn.


Kích thước: 34,6mm (36mm cả núm vặn)


Đặc trưng:

-Cal chuyển động. 564 với ngày cài đặt nhanh. Nó đã được làm sạch và bôi dầu. Nó đang hoạt động tốt và giữ giờ tốt.

-Vỏ bằng vàng hồng 18k, có vết mòn nhỏ.

- Mặt đồng hồ hình tròn tốt, có lớp gỉ nhỏ. Kim và cọc số bằng vàng nguyên khối.

- Không có chữ ký acrylic.

-Vặn chặt mặt sau bằng vàng hồng 18k nguyên khối và có độ mòn nhỏ.

- Vương miện Omega trong tình trạng tốt.

- Dây đeo màu nâu chất lượng cao, khóa có logo Omega.

-Không có hộp, giấy tờ.


Chiếc đồng hồ đã được mô tả và hiển thị trong hình ảnh như thực tế. Đây là một món đồ trang sức cũ/cổ điển: vui lòng yên tâm đặt giá thầu/mua hàng.','https://github.com/AhnHani2003/watch-web/assets/145345242/7ac50074-26c4-48d3-a602-69fe8a79c922','https://github.com/AhnHani2003/watch-web/assets/145345242/7ac50074-26c4-48d3-a602-69fe8a79c922','https://github.com/AhnHani2003/watch-web/assets/145345242/d40f91bc-2fd4-4fac-82a2-48f0e0d8fa17','https://github.com/AhnHani2003/watch-web/assets/145345242/c77dd2bd-e87f-4e72-9e87-5ec67726e3db');

INSERT INTO product(productid,productname,trangthai,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0002','Omega Constellation Pie Pan Watch',1,N'Đồng hồ Omega Constellation Pie Pan Watch cổ nam máy cơ',295000000,250000000,N'Đồng-hồ-đeo-tay-Omega-Constellation-Pie-Pan-WatchOmega?id=','false','false','true',1,1,N'Dây da cao cấp dày',N'Hình bát quái Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật',N'Omega có một trong những danh mục đồng hồ đa dạng nhất của bất kỳ thương hiệu đồng hồ Thụy Sĩ nào, và một trong những bộ sưu tập kinh điển mà công ty đã liên tục sản xuất trong nhiều thập kỷ là Constellation. Omega phát hành bản Constellation đầu tiên vào năm 1952 và nó vẫn là nền tảng vững chắc của thương hiệu cho tới ngày nay. Chiếc Constellation này được sản xuất từ khoảng năm 1961 và có một số đặc điểm đặc biệt mà sau này trở thành định dạng của cả thương hiệu Omega. Tất nhiên, mặt số có chữ Constellation, cũng như một biểu tượng ngôi sao ở góc 6 giờ. Mặt sau có hình ảnh của Đài thiên văn Geneva với tám ngôi sao đại diện cho tám cuộc thi Chronometer của đài thiên văn mà Omega đã giành được trong thế kỷ 20.

Constellation là câu trả lời của Omega cho việc một chiếc đồng hồ đeo tay đẹp về mặt thẩm mỹ lẫn kỹ thuật sẽ trông như thế nào. Mặt số “pie-pan” hay còn được gọi là “mặt bát quái”, vốn đã thu hút được sự chú ý của các nhà sưu tập những chiếc Omega cổ điển huyền thoại trong nhiều năm qua. Có rất nhiều biến thể của mặt số “pie-pan” được sản xuất. Đây là mặt số không sử dụng tritium với kim và cọc thép được đánh bóng.

Vỏ máy thoạt nhìn đơn giản, nhưng có các cạnh hình học độc đáo trên 4 càng được thiết kế dài hơn khiến thiết kế trở nên thú vị từ mọi góc nhìn. Hình dạng này đã được các nhà sưu tập đặt cho biệt danh “chân chó” trong nhiều năm do hình dạng gấp khúc đặc biệt của 4 chiếc càng. Omega đã sử dụng một số nhà sản xuất vỏ máy khác nhau trong những năm này. Bạn có thể đã nghe nói về “HF” và “CB”, vì họ được tin tưởng để chế tạo các phiên bản Speedmaster vào những năm 1960. Chiếc vỏ Constellation này đươc nhà sản xuất “CB” thực hiện, hang này được giao thực hiện những chiếc vỏ Omega “chân chó” đầu tiên và nối tiếp sau đó là nhà sản xuất “SGR’’ sau này.

Hãy hỏi bất kỳ nhà sưu tập Omega dày dạn kinh nghiệm nào, và họ sẽ xác nhận về mức độ nguyên bản của biến thể “chân chó” và “bát quái” này – team Spacetime thực sự hạnh phúc khi được giới thiệu chiếc đồng hồ tuyệt vời này đến các nhà sưu tầm.','https://github.com/AhnHani2003/watch-web/assets/145345242/81e1ca0c-44f4-490a-9265-e364ffc9c1ae','https://github.com/AhnHani2003/watch-web/assets/145345242/81e1ca0c-44f4-490a-9265-e364ffc9c1ae','https://github.com/AhnHani2003/watch-web/assets/145345242/78c8583d-bd78-40f7-8113-8c4612aa7d6a','https://github.com/AhnHani2003/watch-web/assets/145345242/4946e46e-ec69-41bb-b2c9-48b469616b0b','https://github.com/AhnHani2003/watch-web/assets/145345242/26e1914d-873b-433e-8752-cc4d7bb9ef50');


INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('OM0003',N'Omega Constellation vàng đúc mạ',1,N'Đồng hồ Omega cổ Omega Constellation bát quái vàng đúc mạ nam máy cơ',232000000,N'Đồng-hồ-Omega-cổ-vàng-đúc-18kOmega?id=','false','true','false',1,1,N'Dây da cao cấp dày bền đẹp',N'Hình bát quái chất liệu Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Caliber 505 Thụy Sỹ',N'Đồng hồ Omega cổOmega Contellation – một mẫu thiết kế siêu đẳng cấp và độc đáo đến từ thương hiệu đồng hồ Omega đã có mặt tại DWatch. Với thiết kế mạnh mẽ đẳng cấp cùng mức giá tốt nhất trên thị trường.

Đồng hồ Omega cổ Omega Constellation mặt kính nguyên zin hình bát quát răng cá mật tuyệt đẹp. Núm đồng hồ Omega zin cùng với bộ máy Caliber 505 Thụy Sỹ bền bỉ chuẩn xác hoàn hảo.','https://github.com/AhnHani2003/watch-web/assets/145345242/a84e056c-5b0b-4438-b37a-bfb5f12f1811','https://github.com/AhnHani2003/watch-web/assets/145345242/a84e056c-5b0b-4438-b37a-bfb5f12f1811','https://github.com/AhnHani2003/watch-web/assets/145345242/f7c55df9-07e7-4183-99ff-88a5f8015506','https://github.com/AhnHani2003/watch-web/assets/145345242/9a4cab80-2009-4e5c-af89-fbf83e1e07ab');



INSERT INTO product(productid,productname,trangthai,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,thongtinphu3,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4,hinhanh5) VALUES
('OM0004',
N'Đồng Hồ Omega Bản Đồ Thế Giới',
1,
N'Đồng Hồ Omega Bản Đồ Giờ Thế Giới máy cơ',
240000000,
200000000,
N'Đồng-hồ-Omega-Bản-Đồ-Giờ-Thế-GiớiOmega?id='
,'false'
,'false',
'true',
1,
1,
N'Dây da cao cấp dày bền đẹp',
N'Sapphire Nguyên Khối',
'5ATM',
N'Đường kính: 40mm',
N'Bề dày mặt: 12.5mm',
N'Bộ máy: Cơ Nhật – Miyota 8215',
N'Chất liệu: Thép Không Gỉ',
N'Cái tên Omega có lẽ đã không còn xa lạ gì khi nhắc đến đồng hồ thời trang. Thương hiệu đồng hồ Omega cũng là một trong những hãng đồng hồ xa xỉ nổi tiếng nhất thế giới, biểu tượng cho sự chính xác hoàn hảo của các cỗ máy thời gian. Thương hiệu đình đám này xuất hiện cùng với nhiều nhân vật nổi tiếng và sự kiện có tầm ảnh hưởng. Bên cạnh những mẫu đồng hồ chính hãng đắt đỏ thì đồng hồ Omega Replica cao cấp cũng nhận được quan tâm của rất nhiều người bởi mức giá cả vô cùng hợp lý đi kèm chất lượng tuyệt vời.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/cc64465b-7d01-4b7a-a8d9-afb47b0efa2e',
'https://github.com/AhnHani2003/watch-web/assets/145345242/cc64465b-7d01-4b7a-a8d9-afb47b0efa2e',
'https://github.com/AhnHani2003/watch-web/assets/145345242/fa9ba769-142d-4102-8321-df3674cfc07b',
'https://github.com/AhnHani2003/watch-web/assets/145345242/b1efc02f-af0b-4471-a9e0-fbc5de2b129b',
'https://github.com/AhnHani2003/watch-web/assets/145345242/da173a3d-c60b-470b-8b76-a27d782f1445',
'https://github.com/AhnHani2003/watch-web/assets/145345242/b9edc51d-e804-4845-957f-de71994c83bb');

INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('H0001','Hublot Big Bang Steel Pave',1,'Hublot Big Bang Steel Pave 38 mm',380000000,N'Hublot-Big-Bang-Steel-Pave-38-mmHublot?id=','true','false','false',2,2,N'Dây đai cao su có cấu trúc màu đen',N'Bộ thép không gỉ được đánh bóng với 36 viên kim cương với giá 0,76ct','100m or 10 ATM',N'Đường kính: 33mm',N'Vỏ đồng hồ: Bộ thép không gỉ được đánh bóng với 130 viên kim cương với giá 0,4ct',N'Chuyển động: HUB1120 Self-winding Movement',N'Đồng Hồ Hublot Big Bang Steel Pavé 38mm 361.SX.1270.RX.1704 là một sản phẩm đồng hồ với lớp vỏ được chế tác từ chất liệu Thép không gỉ, có đường kính 38mm. Vành Bezel của đồng hồ được hoàn thiện bằng phương pháp chải xước và đánh bóng quen thuộc, cả tổng thể đều mang đến cho chủ nhân một vẻ đẹp đầy xa xỉ và nữ quyền bởi vẻ ngoài hào nhoáng mà 198 viên kim cương đem lại. Trong đó, 114 viên kim cương cỡ lớn hơn được xếp đều đặn và ngăn nắp trên vành bezel tròn trịa của đồng hồ . Ở mỗi một đỉnh của lục giác là một chiếc đinh vít Titanium hình chữ H, giúp cố định chặt bộ vỏ thép và đảm bảo khả năng chống nước 100m. Bên trong lớp vỏ là mặt số đen tuyền, phủ một lớp Rhodium, bộ kim chỉ giờ và phút được thiết kế theo dáng skeleton, phủ một lớp nhẹ phát quang có khả năng phát sáng trong bóng tối, hệ thống số Ả Rập xen kẽ vạch chỉ giờ. Dưới cọc số 12h là tên thương hiệu Hublot màu trắng, nổi bật trong nền đen của mặt số. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời thể hiện được rõ ràng cỗ máy cơ khí đẹp mắt hoạt động bên dưới.

Bên cạnh đó, Hublot Big Bang Steel Pavé 38mm 361.SX.1270.RX.1704 còn được trang bị bộ máy Quartz chạy bằng pin của Hublot có tên gọi Cal HUB2900 có thể vận hành tốt và bền bỉ trong khoảng thời gian 4-5 năm để thay hệ thống pin mới, đây là một sự lựa chọn hoàn hảo và tiện lợi dành cho các quý cô khi không phải lên dây cót thường xuyên cho đồng hồ.','https://github.com/AhnHani2003/watch-web/assets/145345242/12737372-fe91-4852-bc46-c13d97bc2077','https://github.com/AhnHani2003/watch-web/assets/145345242/12737372-fe91-4852-bc46-c13d97bc2077','https://github.com/AhnHani2003/watch-web/assets/145345242/20af6784-0c38-4b60-884e-c6d37aa6b37f','https://github.com/AhnHani2003/watch-web/assets/145345242/0ca06259-0842-4911-8edc-9cb22a2df566');


INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0005',
N'Đồng hồ Omega Geneve',
1,
N'Đồng hồ cổ : OMEGA GENEVE',
145000000,
N'Đồng-hồ-Omega-GeneveOmega?id=',
'false',
'true',
'false',
1,1,
N'Da Cá Sấu',
N'Zin theo đồng hồ (mica)',
'2ATM',
N'Xuất xứ: Thụy Sĩ',
N'Sản xuất : 1966',
N'Chiếc đồng hồ này chứa một rôto đầy đủ Omega chất lượng và cỡ nòng tự động 1480 hi beat với 17 chân kính và có kim giây quét. Có một ngày được thiết lập nhanh bằng nút bấm. Bộ chuyển động được bọc trong vỏ thép không gỉ sang trọng, chắc chắn với pha lê thông thường màu bạc hà và núm vặn có chữ ký gốc.

Mặt số của chiếc đồng hồ này là nguyên bản khi xuất xưởng, trong tình trạng gần như nguyên bản - tông màu bạc ánh nắng với các điểm đánh dấu chắc chắn và bộ kim nguyên bản.

Chiếc đồng hồ Omega vượt thời gian này có kích thước cạnh nhau là 35 mm (không bao gồm núm vặn) và 42,5 mm từ vấu trên đến vấu dưới.

Đi kèm với chiếc đồng hồ này là một dây đeo bằng da thật chất lượng hoàn toàn mới có đệm màu nâu sẫm, rộng 18mm, có khóa chống dị ứng cùng tông màu.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/ce852dbf-4a08-429b-aff5-0201b2ea4259',
'https://github.com/AhnHani2003/watch-web/assets/145345242/ce852dbf-4a08-429b-aff5-0201b2ea4259',
'https://github.com/AhnHani2003/watch-web/assets/145345242/1ed8b85b-2c45-4d97-8dfa-f545822d38c4',
'https://github.com/AhnHani2003/watch-web/assets/145345242/c2ed42f8-00e9-4fef-a5d5-0e62673abb02',
'https://github.com/AhnHani2003/watch-web/assets/145345242/077a3977-3a92-4d8e-8898-23827c89a1f6');





INSERT INTO product(productid,productname,trangthai,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0007',
N'Omega DevilleBrownDial',
1,
N'Omega Deville Brown Dial',
152000000,
140000000,
N'Đồng-Hồ-Omega-Deville-Brown-DialOmega?id=',
'false',
'false',
'true',
1,1,
N'Dây da cá sấu cao cấp mới 100%',
N'Sapphire nguyên khối chống xước, chống lóa tốt, phủ AR 2 mặt trong vắt.',
N'100m',
N'Xuất xứ: Thụy Sĩ',
N'Khóa: Khoá bướm',
N'loại máy: Máy Omega Caliber 8900 inhouse, Master Chronometer siêu chính xác, 35 chân kính, 55h tích cót & 25200vph',
N'Chiếc đồng hồ này chứa một rôto đầy đủ Omega chất lượng và cỡ nòng tự động 1480 hi beat với 17 chân kính và có kim giây quét. Có một ngày được thiết lập nhanh bằng nút bấm. Bộ chuyển động được bọc trong vỏ thép không gỉ sang trọng, chắc chắn với pha lê thông thường màu bạc hà và núm vặn có chữ ký gốc.

Mặt số của chiếc đồng hồ này là nguyên bản khi xuất xưởng, trong tình trạng gần như nguyên bản - tông màu bạc ánh nắng với các điểm đánh dấu chắc chắn và bộ kim nguyên bản.

Chiếc đồng hồ Omega vượt thời gian này có kích thước cạnh nhau là 35 mm (không bao gồm núm vặn) và 42,5 mm từ vấu trên đến vấu dưới.

Đi kèm với chiếc đồng hồ này là một dây đeo bằng da thật chất lượng hoàn toàn mới có đệm màu nâu sẫm, rộng 18mm, có khóa chống dị ứng cùng tông màu.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/dd4e8429-9ddc-4816-8230-9fed4c96908a',
'https://github.com/AhnHani2003/watch-web/assets/145345242/dd4e8429-9ddc-4816-8230-9fed4c96908a',
'https://github.com/AhnHani2003/watch-web/assets/145345242/fe82c726-1e09-4f08-97b7-404403f68c0b',
'https://github.com/AhnHani2003/watch-web/assets/145345242/bd083466-4e94-4357-85cc-97b01e8b7907',
'https://github.com/AhnHani2003/watch-web/assets/145345242/3440f3c0-1192-4f67-97c7-8ab0f8785990');



INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1,hinhanh2) VALUES
('OM0008',
N'Omega De Ville Co-Axial',
1,
N'Omega De Ville Co-Axial',
346000000,
N'Đồng-Hồ-Omega-De-Ville-Co-AxialOmega?id=',
'true',
'false',
'false',
1,1,
N'Dây da cá sấu',
N'Sapphire cong chống phản chiếu',
'10 ATM',
N'Niềng: Vàng hồng đúc 18k',
N'Kích thước mặt: 41 mm, độ dày 11,8 mm (Từ đáy lên mặt kính)',
N'Thương hiệu danh tiếng thế giới
Thương hiệu Omega Deville Co-Axial Chronometer được thành lập bởi Louis Brandt vào năm 1848. Đến thời điểm hiện nay, Omega được biết đến là một trong những cái tên hàng đầu trên thị trường trong lĩnh vực sản xuất đồng hồ với lịch sử hình thành kéo dài hơn 170 năm.

Tiêu chuẩn Chronometer khắt khe
Tiêu chuẩn Chronome được biết đến là một cuộc thử nghiệm khắc nghiệt diễn ra liên tục trong 15 ngày kết hợp cùng 3 mức nhiệt độ và 5 dạng vị trí khác nhau nhằm đảm bảo 100% chất lượng của đồng hồ Omega.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/1c3db2ab-1c36-40de-b3f6-5eeb7942d6f0',
'https://github.com/AhnHani2003/watch-web/assets/145345242/1c3db2ab-1c36-40de-b3f6-5eeb7942d6f0',
'https://github.com/AhnHani2003/watch-web/assets/145345242/e833ff76-6b38-43de-b741-6c456dd515bd');




INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('H0002',
N'Hublot Aerofusion Black Bracelet',
1,
N'Hublot Aerofusion Black Magic Bracelet',
346000000,
N'Hublot-Aerofusion-Black-Magic-BraceletHublot?id=',
'false',
'true',
'false',
2,2,
N'dây Cao su',
N'kính Sapphire',
'50m',
N'Niềng: Vàng hồng đúc 18k',
N'Xuất xứ Thụy Sĩ',
N'Độ dày 13.9mm',
N'Đồng hồ Hublot Classic Fusion Aerofusion Black Magic Bracelet 45mm 528.CM.0170.CM là chiếc đồng hồ phiên có vỏ được hoàn thiện bằng chất liệu Gốm Đen Ceramic cao cấp có độ bền cực cao được hoàn thiện bằng satanh và đánh bóng quen thuộc. Mặt số đồng hồ có kích thước 45mm sở hữu tone màu đen huyền bí và thời trang làm tổng thể trở nên bừng sáng, lấy cảm hứng từ những chiếc đồng hồ lộ cơ skeleton với các chi tiết siêu nhỏ thể hiện được độ phức tạp và tay nghề đẳng cấp của nhà chế tác. Chiếc đồng hồ này là một thiết kế mang tính cách tân của thương hiệu Hublot khi sở hữu đầy đủ những chức năng phức tạp nhất của một chiếc đồng hồ như báo thứ, báo ngày, báo tháng, lịch tuần trăng trên cùng một mặt số và được thiết kế dạng skeleton đầy tính thẩm mỹ và logic. Vành bezel All-Black tiếp tục được đính nổi 6 đinh ốc biểu tượng của thương hiệu đi cùng hệ thống kim Titanium hoạt động mượt mà . Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời, bảo vệ bộ máy của chiếc đồng hồ trong những hoạt động hằng ngày. Đặc biệt dây đeo thiết kế ba mối nối màu đen mạnh mẽ được tích hợp đồng bộ làm chiếc đồng hồ trở nên vô cùng thanh lịch và thời thượng.

Bên cạnh đó, Hublot Classic Fusion Aerofusion Black Magic Bracelet 45mm 528.CM.0170.CM còn được trang bị bộ máy lên dây có tự động Caliber HUB1131 có thời lượng dự trữ cót khoảng 42 giờ sau khi lên cót đầy đủ và khả năng chống nước lên đến 50m.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/efe18940-c921-4e1e-b10c-59375215a4f2',
'https://github.com/AhnHani2003/watch-web/assets/145345242/efe18940-c921-4e1e-b10c-59375215a4f2',
'https://github.com/AhnHani2003/watch-web/assets/145345242/d7f72813-4b84-4a93-aa72-a6a0e65b9312',
'https://github.com/AhnHani2003/watch-web/assets/145345242/bf85ebbf-52b8-4671-b63d-f46972abe335',
'https://github.com/AhnHani2003/watch-web/assets/145345242/f31e97a9-d612-45dc-b427-a7c39060b99d');




INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('H0003',
'Fusion Aerofusion King Gold',
1,
'Fusion Aerofusion Chronograph Orlinski King Gold',
1141000000,
'Fusion-Aerofusion-Chronograph-Orlinski-King-GoldHublot?id=',
'true',
'false',
'false',
2,1,
N'Dây cao su/dây da cá sấu',
N'Sapphire',
'5ATM',
N'Xuất xứ: Thụy Sỹ',
N'Bộ máy: Automatic - HUB 1155',
N'Chất liệu vỏ: Vàng 18k ( King Gold), 244 viên kim cương ~1,30cts',
N'Đồng hồ Hublot Classic Fusion Chronograph Aero Titanium 525.NX.0170.LR 45mm
Đồng hồ Hublot Classic Fusion Chronograph Aero Titanium 525.NX.0170.LR có vỏ titan 45mm hoàn thiện bằng satanh, mặt sau bằng tinh thể sapphire, gờ bằng titan hoàn thiện bằng satanh, vấu gờ bằng nhựa composite màu đen, mặt số sapphire có đính kim sa và vòng đếm rhodium, bộ máy HUB 1155 tự lên dây có chức năng Aero chronograph, dự trữ năng lượng khoảng 42 giờ, màu đen cao su và dây đeo cá sấu. Chống nước đến 50 mét.

Ưu điểm thiết kế Đồng hồ Hublot Classic Fusion Aero 525.NX.0170.LR
- Kiến tạo những cỗ máy thời gian mang đậm vẻ đẹp của nghệ thuật đương đại, thương hiệu Hublot đã xây dựng thành công bộ sưu tập đồng hồ Classic Fusion mang đậm phong cách thanh lịch, hiện đại và thời thượng. Là một thành viên của bộ sưu tập vang danh đó, chiếc Hublot Classic Fusion Aero 525.NX.0170.LR đã mê hoặc nhiều tín đồ đồng hồ ngay từ khi mới ra mắt.
- Có bộ vỏ khung làm từ titanium siêu bền với kích thước 45mm, chiếc đồng hồ Hublot Classic Fusion Aero Titanium 525.NX.0170.LR có khả năng chống thấm nước hiệu quả ở độ sâu 50m. Bề mặt đồng hồ chủ yếu được hoàn thiện chải xước tinh tế nhưng những càng nối dây và cạnh vát, các đường bo tròn laị được đánh bóng cẩn thận khiến cho vỏ đồng hồ có khả năng phản xạ ánh sáng theo nhiều góc độ khác nhau rất thú vị.
- Thiết kế vành bezel dáng tròn đặc trưng được cố định nhờ 8 đinh ốc làm từ titanium khắc chữ “H” quen thuộc đã đi vào lịch sử chế tác đồng hồ cao cấp càng tăng thêm giá trị cho model lần này.
- Mặt số đồng hồ Hublot 525.NX.0170.LR lấy cảm ứng thiết kế skeleton với những chi tiết nhỏ, phức tạp thể hiện kỹ nghệ chế tác đồng hồ bậc thầy của nhà sản xuất. Trên mặt số ngoài bộ đếm thời gian thông thường được theo dõi qua hệ thống cọc chỉ giờ và bộ kim dáng kiếm bằng thép đơn giản còn có các tính năng chronograph cùng ô cửa báo lịch ngày phân bố ở các góc 3, 6 và 9 giờ được điều khiển thông qua hệ thống nút bấm và núm điều chỉnh nhanh nhạy bên ngoài lớp vỏ.
- Qua tầng tầng lớp lớp các chi tiết hiển thị bộ đếm thời gian, người xem vẫn có thể nhìn thấy những bánh răng nhỏ của bộ máy đang vận hành mạnh mẽ. Đó là các trang bị của bộ máy tự động Caliber HUB 1155 là bộ máy có khả năng hoạt động ổn định trong vòng 42 giờ đồng hồ với độ chính xác đáng tin cậy.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/c5cb4a3f-3e2e-416f-b96c-f93fd283978a',
'https://github.com/AhnHani2003/watch-web/assets/145345242/c5cb4a3f-3e2e-416f-b96c-f93fd283978a',
'https://github.com/AhnHani2003/watch-web/assets/145345242/f943dfb9-efec-4b3f-a337-6eae1c147dcd',
'https://github.com/AhnHani2003/watch-web/assets/145345242/0af14f02-e110-44e7-8a9b-840c3b77d77a');



INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('H0004',
'Fusion Aerofusion Moonphase',
1,
'Hublot Classic Fusion Aerofusion Moonphase King Gold Diamonds',
943000000,
'Hublot-Classic-Fusion-Aerofusion-Moonphase-King-Gold-DiamondsHublot?id=',
'true','false','false',
2,1,
N'dây Cao su và da',
N'kính Sapphire, phủ AR chống lóa',
N'5ATM',
N'Xuất xứ Thụy Sĩ',
N'Chất liệu vỏ Vàng hồng 18K King gold',
N'Màu vỏ Vàng hồng',
N'Đồng hồ Hublot Classic Fusion Aerofusion Moonphase King Gold 45mm 517.OX.0180.LR.1104 là chiếc đồng hồ phiên có vỏ được hoàn thiện bằng chất liệu Vàng Hồng 18k xa xỉ có độ bền cực cao được hoàn thiện bằng satanh và đánh bóng quen thuộc. Mặt số đồng hồ có kích thước 45mm sở hữu tone màu đen huyền bí và thời trang làm tổng thể trở nên bừng sáng, lấy cảm hứng từ những chiếc đồng hồ lộ cơ skeleton với các chi tiết siêu nhỏ thể hiện được độ phức tạp và tay nghề đẳng cấp của nhà chế tác. Chiếc đồng hồ này là một thiết kế mang tính cách tân của thương hiệu Hublot khi sở hữu đầy đủ những chức năng phức tạp nhất của một chiếc đồng hồ như báo thứ, báo ngày, báo tháng, lịch tuần trăng trên cùng một mặt số và được thiết kế dạng skeleton đầy tính thẩm mỹ và logic. Vành bezel và mối nối dây đeo được mạ Vàng Hồng 18k đầy bắt mắt, đi cùng hệ thống kim Titanium hoạt động mượt mà . Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời, bảo vệ bộ máy của chiếc đồng hồ trong những hoạt động hằng ngày. Đặc biệt dây đeo da cá sấu màu đen được tích hợp làm tổng thể chiếc đồng hồ trở nên vô cùng thanh lịch và thời thượng.

Bên cạnh đó, Hublot Classic Fusion Aerofusion Moonphase King Gold 45mm 517.OX.0180.LR.1104 còn được trang bị bộ máy lên dây có tự động Caliber HUB1131 có thời lượng dự trữ cót khoảng 42 giờ sau khi lên cót đầy đủ và khả năng chống nước lên đến 50m.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/d3404165-992b-4f24-9dcc-f9d08d83e970',
'https://github.com/AhnHani2003/watch-web/assets/145345242/d3404165-992b-4f24-9dcc-f9d08d83e970',
'https://github.com/AhnHani2003/watch-web/assets/145345242/29ffa5ce-7b4c-4414-80b2-6fd29d14256c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/d01342e4-41a0-4bac-9b36-4d3702a2ea0d');


INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,thongtinphu3,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('R0001',
'Rolex Cosmograph Daytona',
1,
'Đồng Hồ Rolex Cosmograph Daytona',
1900000000,
N'Đồng-Hồ-Rolex-Cosmograph-DaytonaRolex?id=',
'true', 'false', 'false',
3,1,
N'Oystersteel',
N'kính Sapphire',
'10ATM',
N'Xuất xứ Thụy Sĩ',
N'Loại máy Bộ máy tự động Rolex Cal.4130 tần số dao động 28800 vph, 44 chân kính, trữ cót 72 giờ. Dây tóc xanh Parachrom thuận từ. Tự lên dây cót 2 chiều qua Perpetual rotor',
N'Kích cỡ mặt số 40mm',
N'Chất liệu vỏ Oystersteel',
N'Đồng Hồ Rolex Cosmograph Daytona 40 116506-0001 Mặt Số Ice-Blue Dây Oyster Thép là một mẫu đồng hồ lịch lãm đặc biệt dành cho các tín đồ đam mê phong cách thể thao của Rolex, sở hữu bộ vỏ bền bỉ hàng đầu khi gia công từ chất liệu Thép bền bỉ với dáng mặt số tròn kích thước 40mm lấy vẻ đẹp tone màu xanh băng sang trọng làm chủ đạo, đặc biệt ở vành bezel được thiết kế đai kính xoay 2 chiều mang lại nét đẹp độc đáo cho tổng thể đồng hồ. Ba mặt số phụ ở góc 3 giờ, 6 giờ và 9 giờ được tô điểm bằng một đường viền màu nâu đầy bắt mắt có nhiệm vụ thực hiện các chức năng Chronograph. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời. Dây đeo Oyster 3 mối nối đi cùng với khóa gập Oysterlock tạo cảm giác thoải mái và tiện dụng.

Bên cạnh đó, đồng hồ Rolex Cosmograph Daytona 40 116506-0001 còn được trang bị bộ máy Automatic Calibre 4130 được sản xuất in-house trong nhà máy Rolex có trang bị dây tóc Syloxi hoạt động ổn định với độ chính xác gấp 10 lần dây tóc truyền thống cùng mức dự trữ năng lượng lên đến 72 giờ. Cỗ máy này đã xuất sắc vượt qua bài kiểm tra của tổ chức COSC khi chỉ sai lệch -2/+2 giây một ngày.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/5f310817-ae95-4a6d-8168-f2f31825115f',
'https://github.com/AhnHani2003/watch-web/assets/145345242/5f310817-ae95-4a6d-8168-f2f31825115f',
'https://github.com/AhnHani2003/watch-web/assets/145345242/2fe16391-35b8-472b-9e05-c5b5ad846941',
'https://github.com/AhnHani2003/watch-web/assets/145345242/8fb3bd36-04e8-4000-90b1-477b42e974c9');

INSERT INTO product(productid,productname,trangthai,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,thongtinphu3,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('R0002',
'Rolex Lady Datejust',
1,
N'Đồng Hồ Rolex Lady Datejust',
1095826000,
990000000,
N'Đồng-Hồ-Rolex-Lady-DatejustRolex?id=',
'false','false','true',
3,1,
N'Jubilee, mối nối 5 mảnh',
N'Sapphire chống trầy xước, ống kính Cyclops có hiển thị ngày tháng',
N'Khả năng chống thấm nước lên đến 100 mét / 330 feet',
N'Bộ dao động: Dây tóc Syloxi chất liệu silicon với bằng sáng chế về thiết kế hình học. Công nghệ Paraflex chống sốc cao',
N'Vành đồng hồ: Nạm kim cương',
N'Mẫu vỏ: Oyster, 31 mm, thép Oystersteel, vàng vàng 18k và kim cương',
N'Bộ máy: Perpetual, máy cơ, tự lên dây; Calibre 2236, Nhà sản xuất Rolex',
N'Đồng hồ Rolex Lady Datejust 28 279138rbr-0015 Mặt Số Vỏ Ngọc Trai Nạm Kim Cương Dây Đeo President Vàng là chiếc đồng hồ nữ sở hữu bộ vỏ được gia công bằng chất liệu Vàng Hồng 18k nguyên khối sang trọng hàng đầu của Rolex, với dáng mặt số tròn kích thước 28mm lấy mặt số vỏ khảm trai tone trắng phản xạ ánh sáng xanh làm chủ đạo, đặc biệt ở vành bezel được thiết kế đính kim cương Brilliant Cut tạo sự nổi bật và lấp lánh cho chiếc đồng hồ. Ô cửa sổ hiển thị ngày ở góc 3 giờ được trang bị ống kính Cyclops phóng đại đi cùng cọc số kim cương bắt mắt. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời. Dây đeo President 3 mối nối được mạ vàng ở mối nối trung tâm tạo sự thanh lịch và sang trọng.

Bên cạnh đó, Rolex Lady Datejust 28 279138rbr-0015 Mặt Số Vỏ Ngọc Trai Nạm Kim Cương Dây Đeo President Vàng còn được trang bị bộ máy Automatic Calibre 2236 đảm nhiệm cung cấp năng lượng cho hoạt động bền bỉ và chính xác trong khoảng 55 giờ đồng hồ.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/edc2eeb7-a4aa-446d-b0b2-a86406c2954b',
'https://github.com/AhnHani2003/watch-web/assets/145345242/edc2eeb7-a4aa-446d-b0b2-a86406c2954b',
'https://github.com/AhnHani2003/watch-web/assets/145345242/17a725e7-2416-4eee-816d-daf3905ed540',
'https://github.com/AhnHani2003/watch-web/assets/145345242/0a39a7e0-413b-4f12-845e-a3eb300b7b09');




INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2) VALUES
('R0003',
'Rolex Yacht-Master',
1,
N'Đồng Hồ Rolex Yacht-Master',
887000000,
N'Đồng-Hồ-Rolex-Yacht-MasterRolex?id=',
'false','true','false',
3,1,
'Oysterflex',
N'Màn hình Chromalight rõ nét, dễ đọc với ánh sáng phát quang màu xanh dương bền lâu',
'100ATM',
N'Bộ máy: Calibre 3235, tự lên dây cót, 4Hz, dự trữ năng lượng 70h; chức năng: giờ, phút, giây, ngày.',
N'Chất liệu: bằng vàng trắng, được hoàn thiện đánh bóng',
N'Xuất xứ: Thuỵ Sĩ',
N'Đồng hồ Rolex Yacht-Master 42 226659-0002 Mặt Số Đen Dây Đeo Oysterflex là một mẫu đồng hồ lịch lãm đặc biệt dành cho thuỷ thủ của Rolex, sở hữu bộ vỏ bền bỉ hàng đầu khi gia công từ Vàng Hồng 18k với dáng mặt số tròn kích thước 42mm lấy vẻ đẹp tone màu xanh dương sang trọng làm chủ đạo, đặc biệt ở vành bezel được thiết kế đai kính xoay 2 chiều mang lại nét đẹp độc đáo cho tổng thể đồng hồ. Ô cửa sổ hiển thị ngày ở góc 3 giờ được trang bị ống kính Cyclops phóng đại đi cùng cọc số maxi được làm nổi bật ở vị trí 6h, 9h và 12h bằng biểu tượng khác biệt đầy bắt mắt. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời. Dây đeo cao su Oysterflex chống thấm nước tạo sự thanh lịch và sang trọng.

Bên cạnh đó, Rolex Yacht-Master 42 226659-0002 Mặt Số Đen Dây Đeo Oysterflex còn được trang bị bộ máy Automatic Calibre 2236 được sản xuất in-house trong nhà máy Rolex có trang bị dây tóc Syloxi hoạt động ổn định với độ chính xác gấp 10 lần dây tóc truyền thống cùng mức dự trữ năng lượng lên đến 70 giờ. Cỗ máy này đã xuất sắc vượt qua bài kiểm tra của tổ chức COSC khi chỉ sai lệch -2/+2 giây một ngày.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/82e971dd-7cd4-41fb-a4c0-38ab5be62f61',
'https://github.com/AhnHani2003/watch-web/assets/145345242/82e971dd-7cd4-41fb-a4c0-38ab5be62f61',
'https://github.com/AhnHani2003/watch-web/assets/145345242/8bdab301-0062-4e72-82b9-dd395fbbc5f9');



INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('P0001', 
'Patek Philippe Aquanaut',
1,
N'Đồng Hồ Patek Philippe Aquanaut',
1252125000,
N'Đồng-Hồ-Patek-Philippe-AquanautPatek?id=',
'false','true','false',
4,1,
N'dây Cao su',
N'kính Sapphire',
'12ATM',
'Xuất xứ Thụy Sĩ',
'Kích cỡ mặt số 38.8 mm',
'Chất liệu vỏ Thép',
N'Đồng hồ Patek Philippe Aquanaut 5067A-024 Mặt Số Trắng 35.6mm là chiếc đồng hồ thuộc bộ sưu tập Catralava, sở hữu bộ vỏ được chế tác bằng Thép cao cấp không gỉ, với dáng mặt số Cushion kích thước 35,6mm quen thuộc, đặc biệt ở vành bezel siêu phẩm này được tăng thêm phần thêm lấp lánh nhờ vào những viên kim cương thiên nhiên đã được kiểm định GIA. Ô cửa sổ hiển thị ngày ở góc 3 giờ được trang bị quen thuộc của dòng đồng hồ Aquanaut năng động. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời. Dây đeo cao su cao cấp được hỗ trợ ở thiết kế này để tạo cảm giác thoải mái cho người đeo.

Bên cạnh đó, Đồng hồ Patek Philippe Aquanaut 5067A-024 Mặt Số Trắng 35.6mm còn được trang bị bộ máy Calibre E23-250 S C với các chức năng bao gồm khẩu độ ngày và kim giây quét. Máy có khả năng dự trữ năng lượng lên đến 45 giờ và khả năng chống nước tối đa lên đến 120m.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/61e67b59-8609-4420-b4a2-df099592ff70',
'https://github.com/AhnHani2003/watch-web/assets/145345242/61e67b59-8609-4420-b4a2-df099592ff70',
'https://github.com/AhnHani2003/watch-web/assets/145345242/300aeb29-230e-4bf3-a547-5c9426a768f0',
'https://github.com/AhnHani2003/watch-web/assets/145345242/9b789f46-a67d-4aed-8f83-2e5f819b321a');

INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('P0002', 
'PP Annual Calendar Complication',
1,
N'Đồng Hồ Patek Philippe Annual Calendar Complications',
1061325000,
N'Đồng-Hồ-Patek-Philippe-Annual-Calendar-ComplicationsPatek?id=',
'false','true','false',
4,1,
N'dây Da cá sấu',
N'kính Sapphire',
'3ATM',
'Xuất xứ Thụy Sĩ',
'Kích cỡ mặt số 38 mm',
'Chất liệu vỏ Vàng trắng và Kim Cương',
N'Đồng hồ Patek Philippe Annual Calendar Complications 4947G-001 Mặt Số Xanh 38mm là một siêu phẩm đồng hồ được chế tác từ Vàng Trắng 18K nguyên khối, có mặt số màu xanh dương sang trọng, với điểm nhấn viền khung đồng hồ được mài dũa và chạm khắc 141 kim cương tăng độ xa hoa, lấp lánh. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời. Thuộc dòng đồng hồ cổ điển Complicaitons của Patek Philippe, chiếc đồng hồ với được hỗ trợ dây đeo da cao cấp màu cùng màu với mặt số và cọc số Ả Rập cùng bộ kim trung tâm bằng vàng trắng 18k vô cùng tinh tế.

Bên cạnh đó, đồng hồ Patek Philippe Annual Calendar Complications 4947G-001 Mặt Số Xanh 38mm còn được trang bị bộ máy Calibre CH 324 S QA LU với các chức năng phức tạp nhất bao gồm khẩu độ ngày và kim giây quét, lịch thường niêni. Bộ máy này có khả năng dự trữ 55 giờ và có chỉ số chống nước mức 30m tiêu chuẩn.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/b1124660-d10e-4e4b-adaf-07e0693d3246',
'https://github.com/AhnHani2003/watch-web/assets/145345242/b1124660-d10e-4e4b-adaf-07e0693d3246',
'https://github.com/AhnHani2003/watch-web/assets/145345242/fa36b5af-8e5a-4e78-847e-7e0ecdeb3213',
'https://github.com/AhnHani2003/watch-web/assets/145345242/f4102589-5fb8-4754-adec-0a828a4964bd');


INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1) VALUES
('R0004', 
'Rolex Day-Date',
1,
N'Đồng Hồ Rolex Day-Date',
1746000000,
N'Đồng-Hồ-Rolex-Day-DateRolex?id=',
'false','true','false',
3,1,
N'President bạch kim với liên kết 3 mảnh, khóa Crownclasp gấp ẩn',
N'Sapphire chống xước',
'10ATM',
'Xuất xứ Thụy Sĩ',
'Kích cỡ mặt số 36 mm',
'Đồng Hồ Rolex Day-Date 36 128236-0009 Mặt Số Ice-Blue Dây Đeo President Platinum sở hữu bộ vỏ được gia công bằng chất liệu Platinum sang trọng hàng đầu của Rolex, với dáng mặt số tròn kích thước 36mm phối màu xanh Ice-Blue đi cùng cọc số Baguette, đặc biệt ở vành bezel được thiết kế rãnh vừa có chức năng tăng mức độ chống nước, vừa mang lại nét đẹp thẩm mỹ cho cả chiếc đồng hồ. Ô cửa sổ hiển thị ngày ở góc 3 giờ được trang bị ống kính Cyclops phóng đại. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời. Dây đeo President Platinum tạo nên phong cách vương giả, thanh lịch và sang trọng cho chiếc đồng hồ.

Bên cạnh đó, đồng hồ Rolex Day-Date 36 128236-0009 Mặt Số Ice-Blue Dây Đeo President Platinum còn được trang bị bộ máy Automatic Calibre 3255 có trang bị dây tóc Syloxi hoạt động ổn định với độ chính xác gấp 10 lần dây tóc truyền thống cùng mức dự trữ năng lượng lên đến 70 giờ. Cỗ máy này đã xuất sắc vượt qua bài kiểm tra của tổ chức COSC khi chỉ sai lệch -2/+2 giây một ngày.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/01e162fa-13c3-4b0d-8700-08b1ee2c568c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/01e162fa-13c3-4b0d-8700-08b1ee2c568c'
);


INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('P0004', 
'PP Grand Complications',
1,
N'Đồng hồ Patek Philippe Grand Complications',
172000000,
N'Đồng-hồ-Patek-Philippe-Grand-ComplicationsPatek?id=',
'false','true','false',
4,1,
N'dây Da cá sấu',
N'kính Sapphire',
'5ATM',
'Xuất xứ Thụy Sĩ',
'Kích cỡ mặt số 39.5 mm',
'Chất liệu vỏ: Vàng trắng',
N'Patek Philippe 6300G-010 Patek Philippe Grand Complication – Đẳng Cấp Vượt Thời Gian
Khi nói đến đồng hồ siêu sang và cao cấp, Patek Philippe luôn là một tên tuổi hàng đầu. Chiếc đồng hồ Patek Philippe Grand Complications 6300G-010 không chỉ là một sản phẩm, mà còn là một biểu tượng của sự kỹ thuật tinh tế và nghệ thuật đỉnh cao.

Thiết Kế Hoàn Hảo Của Chiếc Đồng Hồ Triệu Đô
Đầu tiên, khi bạn nhìn vào Patek Philippe Grand Complications 6300G-010, điều đầu tiên thu hút bạn chính là thiết kế hoàn hảo và tinh tế của nó. Chiếc đồng hồ này có vỏ làm từ vàng trắng 18K sang trọng, với đường kính 42 mm, phù hợp với cả nam và nữ. Bề mặt mặt đồng hồ được làm từ kính sapphire chống xước, cho phép bạn nhìn thấy cơ chế bên trong đồng hồ.

Mặt số của Patek Philippe Grand Complications 6300G-010 rất phức tạp và đa dạng với nhiều chức năng hiển thị khác nhau, bao gồm giờ, phút, giây, lịch ngày, tháng, và cả moonphase. Tất cả các chỉ số và kim loại quý trên mặt số được làm bằng vàng trắng 18K, thanh lịch và sang trọng.

Công Nghệ Vượt Trội Của Patek Philippe 6300G
Đằng sau vẻ ngoại hình tinh tế của Patek Philippe 6300G là một bộ máy phức tạp với các tính năng đỉnh cao. Cơ chế tourbillon giúp cải thiện độ chính xác của đồng hồ bằng cách giảm tác động của trọng lực. Điều này làm cho chiếc đồng hồ hoạt động chính xác hơn và trở thành một tác phẩm nghệ thuật của sự hoàn mỹ công nghệ.

Patek Philippe 6300G-010 sử dụng động cơ tự động Caliber R TO 27 PS QI, là một trong những cơ chế phức tạp và tinh tế nhất từ Patek Philippe. Động cơ này có khả năng duy trì hoạt động trong suốt 48 giờ sau khi đã được cuốn cót đầy đủ. Điều này đảm bảo thời gian luôn chính xác và bạn không cần phải điều chỉnh đồng hồ thường xuyên.

Mặt số của Patek Philippe 6300G-010 được thiết kế phức tạp và đa dạng với nhiều chức năng hiển thị. Nó không chỉ cho bạn biết giờ, phút và giây mà còn tích hợp lịch ngày và tháng, cùng với chức năng moonphase độc đáo. Tất cả các chỉ số và kim loại quý trên mặt số được làm bằng vàng trắng 18K, tạo nên vẻ đẹp và sự quý phái của đồng hồ này.

Giá Trị Đầu Tư
Patek Philippe không chỉ là một thương hiệu đồng hồ mà còn là một biểu tượng của đẳng cấp và thời gian. Đồng hồ Patek Philippe 6300G-010 không chỉ đơn giản là một món đồ trang sức thời trang mà còn là một món đầu tư có giá trị. Giá trị của các sản phẩm Patek Philippe tăng theo thời gian, làm cho chúng trở thành một khoản đầu tư thông minh.

Trong thế giới đồng hồ cao cấp, Patek Philippe luôn là sự lựa chọn hàng đầu. Đồng hồ Patek Philippe 6300G-010 không chỉ đơn giản là một chiếc đồng hồ, mà còn là một tác phẩm nghệ thuật thời gian đích thực. Sự kết hợp hoàn hảo giữa thiết kế tinh tế, chức năng đa dạng, và động cơ tự động tạo nên một sản phẩm vượt trội. Nếu bạn đang tìm kiếm một chiếc đồng hồ đẳng cấp và độc đáo, Patek Philippe 6300G-010 là một lựa chọn không thể bỏ lỡ.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/1b67cab2-10a6-4a3c-9735-8cc1e6079598',
'https://github.com/AhnHani2003/watch-web/assets/145345242/1b67cab2-10a6-4a3c-9735-8cc1e6079598',
'https://github.com/AhnHani2003/watch-web/assets/145345242/49b74501-8d9a-4468-9f3f-729bd4dbe4b9',
'https://github.com/AhnHani2003/watch-web/assets/145345242/2ace7c77-d003-4996-a07a-c7f83e14fbb0');




INSERT INTO product(productid,productname,trangthai,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4,hinhanh5) VALUES
('H0005', 
'Hublot Big Bang Gold White',
1,
N'Đồng Hồ Hublot Big Bang Gold White Diamonds',
575000000,
N'Đồng-Hồ-Hublot-Big-Bang-Gold-White-DiamondsHublot?id=',
'true','false','false',
2,1,
N'Dây Cao Su
n',
N'Sapphire chống xước',
'5ATM',
'Xuất xứ Thụy Sĩ',
'Kích cỡ mặt số 41 mm',
'Đồng Hồ Hublot Big Bang Gold White Diamonds 41mm 341.PE.230.RW.114 là một sản phẩm đồng hồ với lớp vỏ được chế tác từ chất liệu Vàng Vàng 18k hàng đầu, có đường kính 41mm. Vành Bezel của đồng hồ được hoàn thiện bằng phương pháp chải xước quen thuộc, cả tổng thể đều mang đến cho chủ nhân một vẻ đẹp đầy sang trọng bởi vẻ ngoài màu trắng tinh khôi hết sức thu hút, chiếc đồng hồ còn có sự điểm tô của sắc vàng nổi bật và hàng loạt viên kim cương Brilliant Cut được sắp xếp ngay ngắn đang toả sáng . Ở mỗi một đỉnh của lục giác là một chiếc đinh vít Titanium hình chữ H, giúp cố định chặt bộ vỏ thép và đảm bảo khả năng chống nước 100m. Trong khi tên thương hiệu HUBLOT đặt ngay dưới góc 12 cùng logo chữ H thì các mặt số phụ đã xếp ngay ngắn và cân xứng xung quanh. Vị trí 3 giờ là mặt số phụ báo giây độc lập, còn góc 6 và 9 giờ là mặt số phụ cho chức năng chronograph.g đó góc 3 giờ là kim giây nhỏ – mini seconds, góc 9 giờ là đồng hồ đếm đến 30 phút và góc 6 giờ là 12 tiếng. Giữa 4 và 5 giờ là ô lịch nền trắng in chữ đen.. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời thể hiện được rõ ràng cỗ máy cơ khí màu xanh hoạt động đẹp mắt hoạt động bên dưới.

Bên cạnh đó, Hublot Big Bang Gold White Diamonds 41mm 341.PE.230.RW.114 còn được trang bị bộ máy tự động HUB4300, tần số dao động 28800 vph, 37 chân kính, và có năng lượng dự trữ cót khoảng 42 giờ sau khi được lên cót đầy đủ.',
'https://github.com/AhnHani2003/watch-web/assets/145345242/edf06c8b-dcb2-4e4c-b7cd-dcfc1193168c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/edf06c8b-dcb2-4e4c-b7cd-dcfc1193168c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/18633b24-da1b-40d1-bf59-6290b9283827',
'https://github.com/AhnHani2003/watch-web/assets/145345242/77fc0d12-b8e3-4e30-a6dd-bdac1922a2d4',
'https://github.com/AhnHani2003/watch-web/assets/145345242/bda8c782-3fb4-425b-baed-fb94c9318a1c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/71cd614b-ccbc-413b-a249-1dbf47f6bab0'
);


