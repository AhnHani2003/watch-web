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
    tieude nvarchar(200) NOT NULL,
    productprice int NULL,
    newprice int NULL,
    alias nvarchar(50) NULL,
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

INSERT INTO Brands (BrandID, BrandName) VALUES
(1, 'Omega'),
(2, 'Hublot'),
(3, 'Rolex');


INSERT INTO category(categoryID, categories) VALUES
(1, 'Đồng hồ chạy cơ'),
(2, 'Đồng hồ chạy pin');

INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanh1,hinhanh2,hinhanh3) VALUES
('OM0001','OMEGA Constellation',N'Đồng hồ Omega Constellation cổ nam máy cơ',145000000, 130000000, N'Đồng-hồ-đeo-tay-OMEGA-Constellation','false','false','true',1,1, N'Dây da cao cấp dày bền đẹp', N'Hình bát quái Sapphire','5ATM','Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật','Đồng hồ Omega Constellation Pie Pan 168.005/6 Cal 564 Quickset Solid 18k Rose Gold


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


Chiếc đồng hồ đã được mô tả và hiển thị trong hình ảnh như thực tế. Đây là một món đồ trang sức cũ/cổ điển: vui lòng yên tâm đặt giá thầu/mua hàng.','https://github.com/AhnHani2003/watch-web/assets/145345242/9fe04322-c9f3-4cf4-9d6a-ea78d7973f2c','https://github.com/AhnHani2003/watch-web/assets/145345242/57da090b-9d79-4171-8e83-90281c01fe7e','https://github.com/AhnHani2003/watch-web/assets/145345242/7066dbf1-5aa6-47ec-aa95-de5b605206d8');

INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanh1,hinhanh2,hinhanh3,hinhanh4,hinhanh5) VALUES
('OM0002','Omega Constellation Pie Pan Watch',N'Đồng hồ Omega Constellation Pie Pan Watch cổ nam máy cơ',295000000,250000000,N'Đồng-hồ-đeo-tay-Omega-Constellation-Pie-Pan-Watch','false','false','true',1,1,N'Dây da cao cấp dày',N'Hình bát quái Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Nhật',N'Omega có một trong những danh mục đồng hồ đa dạng nhất của bất kỳ thương hiệu đồng hồ Thụy Sĩ nào, và một trong những bộ sưu tập kinh điển mà công ty đã liên tục sản xuất trong nhiều thập kỷ là Constellation. Omega phát hành bản Constellation đầu tiên vào năm 1952 và nó vẫn là nền tảng vững chắc của thương hiệu cho tới ngày nay. Chiếc Constellation này được sản xuất từ khoảng năm 1961 và có một số đặc điểm đặc biệt mà sau này trở thành định dạng của cả thương hiệu Omega. Tất nhiên, mặt số có chữ Constellation, cũng như một biểu tượng ngôi sao ở góc 6 giờ. Mặt sau có hình ảnh của Đài thiên văn Geneva với tám ngôi sao đại diện cho tám cuộc thi Chronometer của đài thiên văn mà Omega đã giành được trong thế kỷ 20.

Constellation là câu trả lời của Omega cho việc một chiếc đồng hồ đeo tay đẹp về mặt thẩm mỹ lẫn kỹ thuật sẽ trông như thế nào. Mặt số “pie-pan” hay còn được gọi là “mặt bát quái”, vốn đã thu hút được sự chú ý của các nhà sưu tập những chiếc Omega cổ điển huyền thoại trong nhiều năm qua. Có rất nhiều biến thể của mặt số “pie-pan” được sản xuất. Đây là mặt số không sử dụng tritium với kim và cọc thép được đánh bóng.

Vỏ máy thoạt nhìn đơn giản, nhưng có các cạnh hình học độc đáo trên 4 càng được thiết kế dài hơn khiến thiết kế trở nên thú vị từ mọi góc nhìn. Hình dạng này đã được các nhà sưu tập đặt cho biệt danh “chân chó” trong nhiều năm do hình dạng gấp khúc đặc biệt của 4 chiếc càng. Omega đã sử dụng một số nhà sản xuất vỏ máy khác nhau trong những năm này. Bạn có thể đã nghe nói về “HF” và “CB”, vì họ được tin tưởng để chế tạo các phiên bản Speedmaster vào những năm 1960. Chiếc vỏ Constellation này đươc nhà sản xuất “CB” thực hiện, hang này được giao thực hiện những chiếc vỏ Omega “chân chó” đầu tiên và nối tiếp sau đó là nhà sản xuất “SGR’’ sau này.

Hãy hỏi bất kỳ nhà sưu tập Omega dày dạn kinh nghiệm nào, và họ sẽ xác nhận về mức độ nguyên bản của biến thể “chân chó” và “bát quái” này – team Spacetime thực sự hạnh phúc khi được giới thiệu chiếc đồng hồ tuyệt vời này đến các nhà sưu tầm.','https://github.com/AhnHani2003/watch-web/assets/145345242/2785abc1-045a-42be-a6b7-900b04c9bce3','https://github.com/AhnHani2003/watch-web/assets/145345242/68db5ea1-568f-488c-ae3f-4bdb5097385b','https://github.com/AhnHani2003/watch-web/assets/145345242/c74aff30-8ff0-4ec1-835c-64dee2f5bf60','https://github.com/AhnHani2003/watch-web/assets/145345242/fbd568a7-7404-4ce2-b13f-7a2ed7c32075','https://github.com/AhnHani2003/watch-web/assets/145345242/bc6ad63b-ba2d-49a3-9445-cc2a0d98bebe');


INSERT INTO product(productid,productname,tieude,productprice,newprice,alias,newprod,topprod,discountprod,brandid,categoryid,lday,matkinh,chongnuoc,thongtinphu,thongtinphu1,thongtinphu2,mota,hinhanh1,hinhanh2,hinhanh3,hinhanh4) VALUES
('OM0003',N'Omega Constellation bát quái vàng đúc mạ',N'Đồng hồ Omega cổ Omega Constellation bát quái vàng đúc mạ nam máy cơ',232000000,200000000,N'Đồng-hồ-Omega-cổ-vàng-đúc-18k','false','false','true',1,1,N'Dây da cao cấp dày bền đẹp',N'Hình bát quái chất liệu Sapphire','5ATM',N'Đường kính: 40mm',N'Bề dày mặt: 8mm',N'Bộ máy: Cơ tự động Caliber 505 Thụy Sỹ',N'Đồng hồ Omega cổOmega Contellation – một mẫu thiết kế siêu đẳng cấp và độc đáo đến từ thương hiệu đồng hồ Omega đã có mặt tại DWatch. Với thiết kế mạnh mẽ đẳng cấp cùng mức giá tốt nhất trên thị trường.

Đồng hồ Omega cổ Omega Constellation mặt kính nguyên zin hình bát quát răng cá mật tuyệt đẹp. Núm đồng hồ Omega zin cùng với bộ máy Caliber 505 Thụy Sỹ bền bỉ chuẩn xác hoàn hảo.','https://github.com/AhnHani2003/watch-web/assets/145345242/b171bb15-422f-4b7c-9fcf-1d32a2bf3a36','https://github.com/AhnHani2003/watch-web/assets/145345242/ad5db7ca-8d52-4b92-861f-d60f5514a11c','https://github.com/AhnHani2003/watch-web/assets/145345242/2af793c2-2884-4e5c-93e1-673723283589','https://github.com/AhnHani2003/watch-web/assets/145345242/2332e67a-4470-42c3-98c4-f0d0d35f6d57');
