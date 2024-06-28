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
    chongnuoc nvarchar (20),
    thongtinphu nvarchar (150),
    thongtinphu1 nvarchar (150),
    thongtinphu2 nvarchar (150),
    thongtinphu3 nvarchar (150),
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

INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('OM0001','OMEGA Constellation',N'Đồng hồ Omega Constellation cổ nam máy cơ',145000000, 130000000, N'Đồng-hồ-đeo-tay-OMEGA-ConstellationOmega?id=','false','false','true',1,1, N'Dây da cao cấp dày bền đẹp', N'Hình bát quái Sapphire','5ATM','Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật','Đồng hồ Omega Constellation Pie Pan 168.005/6 Cal 564 Quickset Solid 18k Rose Gold


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

INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0002','Omega Constellation Pie Pan Watch',N'Đồng hồ Omega Constellation Pie Pan Watch cổ nam máy cơ',295000000,250000000,N'Đồng-hồ-đeo-tay-Omega-Constellation-Pie-Pan-WatchOmega?id=','false','false','true',1,1,N'Dây da cao cấp dày',N'Hình bát quái Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật',N'Omega có một trong những danh mục đồng hồ đa dạng nhất của bất kỳ thương hiệu đồng hồ Thụy Sĩ nào, và một trong những bộ sưu tập kinh điển mà công ty đã liên tục sản xuất trong nhiều thập kỷ là Constellation. Omega phát hành bản Constellation đầu tiên vào năm 1952 và nó vẫn là nền tảng vững chắc của thương hiệu cho tới ngày nay. Chiếc Constellation này được sản xuất từ khoảng năm 1961 và có một số đặc điểm đặc biệt mà sau này trở thành định dạng của cả thương hiệu Omega. Tất nhiên, mặt số có chữ Constellation, cũng như một biểu tượng ngôi sao ở góc 6 giờ. Mặt sau có hình ảnh của Đài thiên văn Geneva với tám ngôi sao đại diện cho tám cuộc thi Chronometer của đài thiên văn mà Omega đã giành được trong thế kỷ 20.

Constellation là câu trả lời của Omega cho việc một chiếc đồng hồ đeo tay đẹp về mặt thẩm mỹ lẫn kỹ thuật sẽ trông như thế nào. Mặt số “pie-pan” hay còn được gọi là “mặt bát quái”, vốn đã thu hút được sự chú ý của các nhà sưu tập những chiếc Omega cổ điển huyền thoại trong nhiều năm qua. Có rất nhiều biến thể của mặt số “pie-pan” được sản xuất. Đây là mặt số không sử dụng tritium với kim và cọc thép được đánh bóng.

Vỏ máy thoạt nhìn đơn giản, nhưng có các cạnh hình học độc đáo trên 4 càng được thiết kế dài hơn khiến thiết kế trở nên thú vị từ mọi góc nhìn. Hình dạng này đã được các nhà sưu tập đặt cho biệt danh “chân chó” trong nhiều năm do hình dạng gấp khúc đặc biệt của 4 chiếc càng. Omega đã sử dụng một số nhà sản xuất vỏ máy khác nhau trong những năm này. Bạn có thể đã nghe nói về “HF” và “CB”, vì họ được tin tưởng để chế tạo các phiên bản Speedmaster vào những năm 1960. Chiếc vỏ Constellation này đươc nhà sản xuất “CB” thực hiện, hang này được giao thực hiện những chiếc vỏ Omega “chân chó” đầu tiên và nối tiếp sau đó là nhà sản xuất “SGR’’ sau này.

Hãy hỏi bất kỳ nhà sưu tập Omega dày dạn kinh nghiệm nào, và họ sẽ xác nhận về mức độ nguyên bản của biến thể “chân chó” và “bát quái” này – team Spacetime thực sự hạnh phúc khi được giới thiệu chiếc đồng hồ tuyệt vời này đến các nhà sưu tầm.','https://github.com/AhnHani2003/watch-web/assets/145345242/81e1ca0c-44f4-490a-9265-e364ffc9c1ae','https://github.com/AhnHani2003/watch-web/assets/145345242/81e1ca0c-44f4-490a-9265-e364ffc9c1ae','https://github.com/AhnHani2003/watch-web/assets/145345242/78c8583d-bd78-40f7-8113-8c4612aa7d6a','https://github.com/AhnHani2003/watch-web/assets/145345242/4946e46e-ec69-41bb-b2c9-48b469616b0b','https://github.com/AhnHani2003/watch-web/assets/145345242/26e1914d-873b-433e-8752-cc4d7bb9ef50');


INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('OM0003',N'Omega Constellation vàng đúc mạ',N'Đồng hồ Omega cổ Omega Constellation bát quái vàng đúc mạ nam máy cơ',232000000,N'Đồng-hồ-Omega-cổ-vàng-đúc-18kOmega?id=','false','true','false',1,1,N'Dây da cao cấp dày bền đẹp',N'Hình bát quái chất liệu Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Caliber 505 Thụy Sỹ',N'Đồng hồ Omega cổOmega Contellation – một mẫu thiết kế siêu đẳng cấp và độc đáo đến từ thương hiệu đồng hồ Omega đã có mặt tại DWatch. Với thiết kế mạnh mẽ đẳng cấp cùng mức giá tốt nhất trên thị trường.

Đồng hồ Omega cổ Omega Constellation mặt kính nguyên zin hình bát quát răng cá mật tuyệt đẹp. Núm đồng hồ Omega zin cùng với bộ máy Caliber 505 Thụy Sỹ bền bỉ chuẩn xác hoàn hảo.','https://github.com/AhnHani2003/watch-web/assets/145345242/a84e056c-5b0b-4438-b37a-bfb5f12f1811','https://github.com/AhnHani2003/watch-web/assets/145345242/a84e056c-5b0b-4438-b37a-bfb5f12f1811','https://github.com/AhnHani2003/watch-web/assets/145345242/f7c55df9-07e7-4183-99ff-88a5f8015506','https://github.com/AhnHani2003/watch-web/assets/145345242/9a4cab80-2009-4e5c-af89-fbf83e1e07ab');



INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,thongtinphu3,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4,hinhanh5) VALUES
('OM0004',
N'Đồng Hồ Omega Bản Đồ Thế Giới',
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

INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('H0001','Hublot Big Bang Steel Pave 38 mm','Hublot Big Bang Steel Pave 38 mm',380000000,N'Hublot-Big-Bang-Steel-Pave-38-mmHublot?id=','true','false','false',2,2,N'Dây đai cao su có cấu trúc màu đen',N'Bộ thép không gỉ được đánh bóng với 36 viên kim cương với giá 0,76ct','100m or 10 ATM',N'Đường kính: 33mm',N'Vỏ đồng hồ: Bộ thép không gỉ được đánh bóng với 130 viên kim cương với giá 0,4ct',N'Chuyển động: HUB1120 Self-winding Movement',N'Đồng Hồ Hublot Big Bang Steel Pavé 38mm 361.SX.1270.RX.1704 là một sản phẩm đồng hồ với lớp vỏ được chế tác từ chất liệu Thép không gỉ, có đường kính 38mm. Vành Bezel của đồng hồ được hoàn thiện bằng phương pháp chải xước và đánh bóng quen thuộc, cả tổng thể đều mang đến cho chủ nhân một vẻ đẹp đầy xa xỉ và nữ quyền bởi vẻ ngoài hào nhoáng mà 198 viên kim cương đem lại. Trong đó, 114 viên kim cương cỡ lớn hơn được xếp đều đặn và ngăn nắp trên vành bezel tròn trịa của đồng hồ . Ở mỗi một đỉnh của lục giác là một chiếc đinh vít Titanium hình chữ H, giúp cố định chặt bộ vỏ thép và đảm bảo khả năng chống nước 100m. Bên trong lớp vỏ là mặt số đen tuyền, phủ một lớp Rhodium, bộ kim chỉ giờ và phút được thiết kế theo dáng skeleton, phủ một lớp nhẹ phát quang có khả năng phát sáng trong bóng tối, hệ thống số Ả Rập xen kẽ vạch chỉ giờ. Dưới cọc số 12h là tên thương hiệu Hublot màu trắng, nổi bật trong nền đen của mặt số. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời thể hiện được rõ ràng cỗ máy cơ khí đẹp mắt hoạt động bên dưới.

Bên cạnh đó, Hublot Big Bang Steel Pavé 38mm 361.SX.1270.RX.1704 còn được trang bị bộ máy Quartz chạy bằng pin của Hublot có tên gọi Cal HUB2900 có thể vận hành tốt và bền bỉ trong khoảng thời gian 4-5 năm để thay hệ thống pin mới, đây là một sự lựa chọn hoàn hảo và tiện lợi dành cho các quý cô khi không phải lên dây cót thường xuyên cho đồng hồ.','https://github.com/AhnHani2003/watch-web/assets/145345242/12737372-fe91-4852-bc46-c13d97bc2077','https://github.com/AhnHani2003/watch-web/assets/145345242/12737372-fe91-4852-bc46-c13d97bc2077','https://github.com/AhnHani2003/watch-web/assets/145345242/20af6784-0c38-4b60-884e-c6d37aa6b37f','https://github.com/AhnHani2003/watch-web/assets/145345242/0ca06259-0842-4911-8edc-9cb22a2df566');


INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0005',
N'Đồng hồ Omega Geneve',
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




INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0006',
N'Đồng hồ Omega Geneve',
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



INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0007',
N'Omega Deville Brown Dial',
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



INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,mota,hinhanhnen,hinhanh1,hinhanh2) VALUES
('OM0008',
N'Omega De Ville Co-Axial',
N'Omega De Ville Co-Axial',
346000000,
N'Đồng-Hồ-Omega-De-Ville-Co-Axial?id=',
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




INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('H0002',
N'Hublot Aerofusion Black Magic Bracelet',
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
