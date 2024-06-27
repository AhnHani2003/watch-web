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
	hinhanh varchar(MAX) NOT NULL,
	topp bit NOT NULL
	)

INSERT INTO TOPDANHMUC (tendanhmuc, hinhanh, topp) VALUES
('TOP NEW','https://github.com/AhnHani2003/watch-web/assets/145345242/220de57e-fc35-4c1d-9bcd-70f267bf32b3','true'),
('TOP SELLER','https://github.com/AhnHani2003/watch-web/assets/145345242/b171bb15-422f-4b7c-9fcf-1d32a2bf3a36','true'),
('TOP DISCOUNT','https://github.com/AhnHani2003/watch-web/assets/145345242/9fe04322-c9f3-4cf4-9d6a-ea78d7973f2c','true');



INSERT INTO Brands (BrandID, BrandName) VALUES
(1, 'Omega'),
(2, 'Hublot'),
(3, 'Rolex');


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


Chiếc đồng hồ đã được mô tả và hiển thị trong hình ảnh như thực tế. Đây là một món đồ trang sức cũ/cổ điển: vui lòng yên tâm đặt giá thầu/mua hàng.','https://github.com/AhnHani2003/watch-web/assets/145345242/9fe04322-c9f3-4cf4-9d6a-ea78d7973f2c','https://github.com/AhnHani2003/watch-web/assets/145345242/9fe04322-c9f3-4cf4-9d6a-ea78d7973f2c','https://github.com/AhnHani2003/watch-web/assets/145345242/57da090b-9d79-4171-8e83-90281c01fe7e','https://github.com/AhnHani2003/watch-web/assets/145345242/7066dbf1-5aa6-47ec-aa95-de5b605206d8');

INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4,hinhanh5) VALUES
('OM0002','Omega Constellation Pie Pan Watch',N'Đồng hồ Omega Constellation Pie Pan Watch cổ nam máy cơ',295000000,250000000,N'Đồng-hồ-đeo-tay-Omega-Constellation-Pie-Pan-WatchOmega?id=','false','false','true',1,1,N'Dây da cao cấp dày',N'Hình bát quái Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật',N'Omega có một trong những danh mục đồng hồ đa dạng nhất của bất kỳ thương hiệu đồng hồ Thụy Sĩ nào, và một trong những bộ sưu tập kinh điển mà công ty đã liên tục sản xuất trong nhiều thập kỷ là Constellation. Omega phát hành bản Constellation đầu tiên vào năm 1952 và nó vẫn là nền tảng vững chắc của thương hiệu cho tới ngày nay. Chiếc Constellation này được sản xuất từ khoảng năm 1961 và có một số đặc điểm đặc biệt mà sau này trở thành định dạng của cả thương hiệu Omega. Tất nhiên, mặt số có chữ Constellation, cũng như một biểu tượng ngôi sao ở góc 6 giờ. Mặt sau có hình ảnh của Đài thiên văn Geneva với tám ngôi sao đại diện cho tám cuộc thi Chronometer của đài thiên văn mà Omega đã giành được trong thế kỷ 20.

Constellation là câu trả lời của Omega cho việc một chiếc đồng hồ đeo tay đẹp về mặt thẩm mỹ lẫn kỹ thuật sẽ trông như thế nào. Mặt số “pie-pan” hay còn được gọi là “mặt bát quái”, vốn đã thu hút được sự chú ý của các nhà sưu tập những chiếc Omega cổ điển huyền thoại trong nhiều năm qua. Có rất nhiều biến thể của mặt số “pie-pan” được sản xuất. Đây là mặt số không sử dụng tritium với kim và cọc thép được đánh bóng.

Vỏ máy thoạt nhìn đơn giản, nhưng có các cạnh hình học độc đáo trên 4 càng được thiết kế dài hơn khiến thiết kế trở nên thú vị từ mọi góc nhìn. Hình dạng này đã được các nhà sưu tập đặt cho biệt danh “chân chó” trong nhiều năm do hình dạng gấp khúc đặc biệt của 4 chiếc càng. Omega đã sử dụng một số nhà sản xuất vỏ máy khác nhau trong những năm này. Bạn có thể đã nghe nói về “HF” và “CB”, vì họ được tin tưởng để chế tạo các phiên bản Speedmaster vào những năm 1960. Chiếc vỏ Constellation này đươc nhà sản xuất “CB” thực hiện, hang này được giao thực hiện những chiếc vỏ Omega “chân chó” đầu tiên và nối tiếp sau đó là nhà sản xuất “SGR’’ sau này.

Hãy hỏi bất kỳ nhà sưu tập Omega dày dạn kinh nghiệm nào, và họ sẽ xác nhận về mức độ nguyên bản của biến thể “chân chó” và “bát quái” này – team Spacetime thực sự hạnh phúc khi được giới thiệu chiếc đồng hồ tuyệt vời này đến các nhà sưu tầm.','https://github.com/AhnHani2003/watch-web/assets/145345242/2785abc1-045a-42be-a6b7-900b04c9bce3','https://github.com/AhnHani2003/watch-web/assets/145345242/2785abc1-045a-42be-a6b7-900b04c9bce3','https://github.com/AhnHani2003/watch-web/assets/145345242/68db5ea1-568f-488c-ae3f-4bdb5097385b','https://github.com/AhnHani2003/watch-web/assets/145345242/c74aff30-8ff0-4ec1-835c-64dee2f5bf60','https://github.com/AhnHani2003/watch-web/assets/145345242/fbd568a7-7404-4ce2-b13f-7a2ed7c32075','https://github.com/AhnHani2003/watch-web/assets/145345242/bc6ad63b-ba2d-49a3-9445-cc2a0d98bebe');


INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0003',N'Omega Constellation bát quái vàng đúc mạ',N'Đồng hồ Omega cổ Omega Constellation bát quái vàng đúc mạ nam máy cơ',232000000,N'Đồng-hồ-Omega-cổ-vàng-đúc-18kOmega?id=','false','true','false',1,1,N'Dây da cao cấp dày bền đẹp',N'Hình bát quái chất liệu Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Caliber 505 Thụy Sỹ',N'Đồng hồ Omega cổOmega Contellation – một mẫu thiết kế siêu đẳng cấp và độc đáo đến từ thương hiệu đồng hồ Omega đã có mặt tại DWatch. Với thiết kế mạnh mẽ đẳng cấp cùng mức giá tốt nhất trên thị trường.

Đồng hồ Omega cổ Omega Constellation mặt kính nguyên zin hình bát quát răng cá mật tuyệt đẹp. Núm đồng hồ Omega zin cùng với bộ máy Caliber 505 Thụy Sỹ bền bỉ chuẩn xác hoàn hảo.','https://github.com/AhnHani2003/watch-web/assets/145345242/b171bb15-422f-4b7c-9fcf-1d32a2bf3a36','https://github.com/AhnHani2003/watch-web/assets/145345242/b171bb15-422f-4b7c-9fcf-1d32a2bf3a36','https://github.com/AhnHani2003/watch-web/assets/145345242/ad5db7ca-8d52-4b92-861f-d60f5514a11c','https://github.com/AhnHani2003/watch-web/assets/145345242/2af793c2-2884-4e5c-93e1-673723283589','https://github.com/AhnHani2003/watch-web/assets/145345242/2332e67a-4470-42c3-98c4-f0d0d35f6d57');



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
'https://github.com/AhnHani2003/watch-web/assets/145345242/7b734f66-c9fd-4153-b21f-88c86223ea0c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/7b734f66-c9fd-4153-b21f-88c86223ea0c',
'https://github.com/AhnHani2003/watch-web/assets/145345242/aab1bcc9-8f56-40c9-90d6-b24d84fc6794',
'https://github.com/AhnHani2003/watch-web/assets/145345242/af28cada-4895-4909-92a2-61b89a56cd88',
'https://github.com/AhnHani2003/watch-web/assets/145345242/970aa8a2-77c7-4486-9421-5f9267a4e68d',
'https://github.com/AhnHani2003/watch-web/assets/145345242/b533a1a4-c1f0-4903-9e70-cecc9cc92f46');

INSERT INTO product(productid,productname,tieude,productprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanhnen,hinhanh1,hinhanh2,hinhanh3) VALUES
('H0001','Hublot Big Bang Steel Pave 38 mm','Hublot Big Bang Steel Pave 38 mm',380000000,N'Hublot-Big-Bang-Steel-Pave-38-mmHublot?id=','true','false','false',2,2,N'Dây đai cao su có cấu trúc màu đen',N'Bộ thép không gỉ được đánh bóng với 36 viên kim cương với giá 0,76ct','100m or 10 ATM',N'Đường kính: 33mm',N'Vỏ đồng hồ: Bộ thép không gỉ được đánh bóng với 130 viên kim cương với giá 0,4ct',N'Chuyển động: HUB1120 Self-winding Movement',N'Đồng Hồ Hublot Big Bang Steel Pavé 38mm 361.SX.1270.RX.1704 là một sản phẩm đồng hồ với lớp vỏ được chế tác từ chất liệu Thép không gỉ, có đường kính 38mm. Vành Bezel của đồng hồ được hoàn thiện bằng phương pháp chải xước và đánh bóng quen thuộc, cả tổng thể đều mang đến cho chủ nhân một vẻ đẹp đầy xa xỉ và nữ quyền bởi vẻ ngoài hào nhoáng mà 198 viên kim cương đem lại. Trong đó, 114 viên kim cương cỡ lớn hơn được xếp đều đặn và ngăn nắp trên vành bezel tròn trịa của đồng hồ . Ở mỗi một đỉnh của lục giác là một chiếc đinh vít Titanium hình chữ H, giúp cố định chặt bộ vỏ thép và đảm bảo khả năng chống nước 100m. Bên trong lớp vỏ là mặt số đen tuyền, phủ một lớp Rhodium, bộ kim chỉ giờ và phút được thiết kế theo dáng skeleton, phủ một lớp nhẹ phát quang có khả năng phát sáng trong bóng tối, hệ thống số Ả Rập xen kẽ vạch chỉ giờ. Dưới cọc số 12h là tên thương hiệu Hublot màu trắng, nổi bật trong nền đen của mặt số. Mặt kính chất liệu Sapphire với khả năng chống sốc và chống xây xước tuyệt vời thể hiện được rõ ràng cỗ máy cơ khí đẹp mắt hoạt động bên dưới.

Bên cạnh đó, Hublot Big Bang Steel Pavé 38mm 361.SX.1270.RX.1704 còn được trang bị bộ máy Quartz chạy bằng pin của Hublot có tên gọi Cal HUB2900 có thể vận hành tốt và bền bỉ trong khoảng thời gian 4-5 năm để thay hệ thống pin mới, đây là một sự lựa chọn hoàn hảo và tiện lợi dành cho các quý cô khi không phải lên dây cót thường xuyên cho đồng hồ.','https://github.com/AhnHani2003/watch-web/assets/145345242/220de57e-fc35-4c1d-9bcd-70f267bf32b3','https://github.com/AhnHani2003/watch-web/assets/145345242/220de57e-fc35-4c1d-9bcd-70f267bf32b3','https://github.com/AhnHani2003/watch-web/assets/145345242/9726aa8e-00b1-4c7d-9dc4-8f6b7f4287a0','https://github.com/AhnHani2003/watch-web/assets/145345242/a713ebe8-4dfd-4971-86f0-774b810cd3c7');
