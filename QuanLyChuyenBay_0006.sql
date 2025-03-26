CREATE DATABASE QuanLyChuyenBay_0006
GO
USE QuanLyChuyenBay_0006
GO

CREATE TABLE CHUYENBAY(
	MaCB CHAR(5) NOT NULL,
	GaDi VARCHAR(50),
	GaDen VARCHAR(50),
	DoDai INT,
	GioDi TIME,
	GioDen TIME,
	ChiPhi INT,
	MaMB INT,
);

ALTER TABLE CHUYENBAY ADD CONSTRAINT PK_ChuyenBay PRIMARY KEY(MaCB)
ALTER TABLE CHUYENBAY ALTER COLUMN GioDi TIME(0)
ALTER TABLE CHUYENBAY ALTER COLUMN GioDen TIME(0)

CREATE TABLE MAYBAY(
	MaMB INT NOT NULL,
	Loai NVARCHAR(20),
	TamBay INT
);

ALTER TABLE MAYBAY ADD CONSTRAINT PK_MayBay PRIMARY KEY(MaMB)
ALTER TABLE CHUYENBAY ADD CONSTRAINT FK_ChuyenBay_MaMB FOREIGN KEY(MaMB) REFERENCES MAYBAY(MaMB)

CREATE TABLE NHANVIEN(
	MaNV CHAR (9) NOT NULL,
	Ten NVARCHAR(50),
	Luong INT
);

ALTER TABLE NHANVIEN ADD CONSTRAINT PK_NhanVien PRIMARY KEY(MaNV)

CREATE TABLE CHUNGNHAN(
	MaNV CHAR(9) NOT NULL,
	MaMB INT NOT NULL
);

ALTER TABLE CHUNGNHAN ADD CONSTRAINT PK_ChungNhan PRIMARY KEY(MaNV , MaMB)

INSERT INTO MAYBAY(MAMB, LOAI, TAMBAY) VALUES
(747, 'BOEING 747 - 400', 13488),
(737, 'BOEING 737 - 800', 5413),
(340, 'AIRBUS A340 - 300', 11392),
(757, 'BOEING 757 - 300', 6416),
(777, 'BOEING 777 - 300', 10306),
(767, 'BOEING 767 - 400ER', 10360),
(320, 'AIRBUS A320', 4168),
(319, 'AIRBUS A319', 2888),
(727, 'BOEING 727', 2406),
(154, 'TUPOLEV 154', 6565)

INSERT INTO CHUYENBAY(MACB, GADI, GADEN, DODAI, GIODI, GIODEN, CHIPHI, MAMB) VALUES
('VN431', 'SGN', 'CAH', '3693', '05:55', '06:55', 236, 747),
('VN320', 'SGN', 'DAD', '2798', '06:00', '07:10', 221, 737),
('VN464', 'SGN', 'DLI', '2002', '07:20', '08:05', 225, 340),
('VN216', 'SGN', 'DIN', '4170', '10:30', '14:20', 262, 757),
('VN280', 'SGN', 'HPH', '11979', '06:00', '08:00', 1279, 777),
('VN254', 'SGN', 'HUI', '8765', '18:40', '20:00', 781, 767),
('VN338', 'SGN', 'BMV', '4081', '15:25', '16:25', 375, 320),
('VN440', 'SGN', 'BMV', '4081', '18:30', '19:30', 426, 319),
('VN651', 'DAD', 'SGN', '2798', '19:30', '08:00', 221, 727),
('VN276', 'DAD', 'CXR', '1283', '09:00', '12:00', 203, 154),
('VN374', 'HAN', 'VII', '510', '11:40', '13:25', 120, 747),
('VN375', 'VII', 'CXR', '752', '14:15', '16:00', 181, 737),
('VN269', 'HAN', 'CXR', '1262', '14:10', '15:50', 202, 340),
('VN315', 'HAN', 'DAD', '134', '11:45', '13:00', 112, 757),
('VN317', 'HAN', 'UIH', '827', '15:00', '16:15', 190, 777),
('VN741', 'HAN', 'PXU', '395', '06:30', '08:30', 120, 767),
('VN474', 'PXU', 'PQC', '1586', '08:40', '11:20', 102, 747),
('VN476', 'UIH', 'PQC', '485', '09:15', '11:50', 117, 777)

INSERT INTO NHANVIEN(MANV, TEN, LUONG) VALUES
('242518965', N'TRẦN VĂN SƠN', 120433),
('141582651', N'ĐOÀN THỊ MAI', 178345),
('011564812', N'TÔN VĂN QUÝ', 153972),
('567354612', N'QUAN CẨM LY', 256481),
('552455318', N'LA QUẾ', 101745),
('550156548', N'NGUYỄN THỊ CẨM', 205187),
('390487451', N'LÊ VĂN LUẬT', 212156),
('274878974', N'MAI QUỐC MINH', 99890),
('254099823', N'NGUYỄN THỊ QUỲNH', 24450),
('356187925', N'NGUYỄN VINH BẢO', 44740),
('355548984', N'TRẦN THỊ HOÀI AN', 212156),
('310454876', N'TẠ VĂN ĐỒ', 212156),
('489456522', N'NGUYỄN THỊ QUÝ LINH', 127984),
('489221823', N'BÙI QUỐC CHINH', 23980),
('548977562', N'LÊ VĂN QUÝ', 84476),
('310454877', N'TRẦN VĂN HẠO', 33546),
('142519864', N'NGUYỄN THỊ XUÂN ĐÀO', 227489),
('269734834', N'TRƯƠNG TUẤN ANH', 289950),
('287321212', N'DƯƠNG VĂN MINH', 48090),
('552455348', N'BÙI THỊ DUNG', 92013),
('248965255', N'TRẦN THỊ BA', 43723),
('159542516', N'LÊ VĂN KỲ', 48250),
('348121549', N'NGUYỄN VĂN THANH', 32899),
('574489457', N'BÙI VĂN LẬP', 20)

INSERT INTO CHUNGNHAN(MANV, MAMB) VALUES
('567354612', 747),
('567354612', 737),
('567354612', 757),
('567354612', 777),
('567354612', 767),
('567354612', 727),
('567354612', 340),
('552455318', 737),
('552455318', 319),
('552455318', 747),
('552455318', 767),
('390487451', 340),
('390487451', 320),
('390487451', 319),
('274878974', 757),
('274878974', 767),
('355548984', 154),
('310454876', 154),
('142519864', 747),
('142519864', 757),
('142519864', 777),
('142519864', 767),
('142519864', 737),
('142519864', 340),
('142519864', 320),
('269734834', 747),
('269734834', 737),
('269734834', 340),
('269734834', 757),
('269734834', 777),
('269734834', 767),
('269734834', 320),
('269734834', 319),
('269734834', 727),
('269734834', 154),
('242518965', 737),
('242518965', 757),
('141582651', 737),
('141582651', 757),
('141582651', 767),
('011564812', 737),
('011564812', 757),
('574489457', 154)

/*======================================== / CHỌN VÀ KẾT \ ========================================*/
--Câu 1 : Cho Biết Các Chuyến Bay Đi Đà Lạt ( DAD)
SELECT * FROM CHUYENBAY
WHERE GaDen = 'DAD'

--Câu 2 : Cho Biết Các Loại Máy Bay Có Tầm Bay Lớn Hơn 10,000 Km
SELECT * FROM MAYBAY
WHERE TamBay > 10000

--Câu 3 : Tìm Các NHân Viên Có Lương Nhỏ Hơn 10,000
SELECT * FROM NHANVIEN
WHERE Luong < 10000

--Câu 4 : Cho Biết Các Chuyến Bay Có Độ Dài Đường Bay Nhỏ Hơn 10,000 Km và Lớn Hơn 8,000 Km
SELECT * FROM CHUYENBAY
WHERE DoDai > 8000 AND DoDai < 10000

--Câu 5 : Cho Biết Các Chuyến Bay Xuất Phát Từ Sài Gòn ( SGN ) Đi Ban Mê Thuộc ( BMV )
SELECT * FROM CHUYENBAY
WHERE GaDi = 'SGN' AND GaDen = 'BMV'

--Câu 6 : Có Bao Nhiêu Chuyến Bay Xuất Phát Từ Sài Gòn ( SGN )
SELECT * FROM CHUYENBAY
WHERE GaDi = 'SGN'

--Câu 7 : Có Bao Nhiêu Loại Máy Bay BOEING
SELECT * FROM MAYBAY
WHERE Loai LIKE 'BOEING%'

--Câu 8 : Cho Biết Tổng Số Lương Phải Trả Cho Các Nhân Viên
SELECT SUM(Luong) AS[Tổng Số Lương Phải Trả Cho Các Nhân Viên]
FROM NHANVIEN

--Câu 9 : Cho Biết Mã Số Của Các Phi Công Lái Máy Bay Boeing
SELECT CN.MaNV [Mã Số Nhân Viên]
FROM CHUNGNHAN CN
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB 
WHERE MB.Loai LIKE 'BOEING%'
GROUP BY CN.MaNV 

--Câu 10 : Cho Biết Các Nhân Viên Có Thể Lái Máy bay Có Mã Số 747
SELECT CN.MaNV [Mã Số Nhân Viên] , NV.Ten [Tên] , MB.MaMB [Mã Máy Bay]
FROM CHUNGNHAN CN
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
WHERE MB.MaMB = 747

--Câu 11 : Cho Biết Mã Số Của Các Loại Máy Bay Mà Nhân Viên Có Họ Nguyễn Có Thể Lái
SELECT MB.MaMB [Mã Máy Bay] , NV.Ten [Tên Nhân Viên Lái]
FROM MAYBAY MB 
JOIN CHUNGNHAN CN ON MB.MaMB = CN.MaMB
JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
WHERE NV.Ten LIKE N'NGUYỄN%'

--Câu 12 : Cho Biết Mã Số Của Các Phi Công Vừa Lái Được Boeing Vừa Lái Được Airbus
SELECT NV.MaNV [Mã Số Nhân Viên] , NV.Ten [Tên Nhan Viên]
FROM CHUNGNHAN CN 
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
GROUP BY NV.MaNV , NV.Ten
HAVING SUM(CASE WHEN MB.Loai LIKE 'BOEING%' THEN 1 ELSE 0 END ) > 0
AND	   SUM(CASE WHEN MB.Loai LIKE 'AIRBUS%' THEN 1 ELSE 0 END ) > 0

--Câu 13 : Cho Biết Các Loại Máy Bay Có Thể Thực Hiện Chuyến Bay VN280
SELECT * FROM CHUYENBAY
WHERE MaCB = 'VN280'

--Câu 14 : Cho Biết Các Chuyến Bay Có Thể Được Thực Hiện Bởi Máy Bay Airbus A320
SELECT CB.MaCB [Mã Chuyến Bay] , CB.GaDi [Ga Đi] , CB.GaDen [Ga Đến] , CB.DoDai [Độ Dài] , 
	   CB.GioDi [Giờ Đi] , CB.GioDen [Giờ Đến] , CB.ChiPhi [Chi Phí] , CB.MaMB [Mã Máy Bay] , MB.Loai [Loại Máy Bay]
FROM CHUYENBAY CB
JOIN MAYBAY MB ON CB.MaMB = MB.MaMB
WHERE MB.Loai = 'AIRBUS A320'

--Câu 15 : Cho Biết Tên Của Các Phi Công Lái Máy Bay BOEING
SELECT NV.Ten [Tên Nhân Viên]
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
WHERE MB.Loai LIKE 'BOEING%'
GROUP BY NV.Ten

--Câu 16 : Với Mỗi Loại Máy Bay Có Phi Công Lái Cho Biết Mã Số , Loại Máy Bay Và Tổng Số Phi Công Có Thể Lái Loại Máy Bay Đó
SELECT MB.MaMB [Mẫ Máy Bay] , MB.Loai [Loại Máy Bay] , COUNT(DISTINCT(CN.MaNV)) [Số Lượng Nhân Viên Lái]
FROM CHUNGNHAN CN
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
GROUP BY MB.MaMB , MB.Loai

--Câu 17 : Giả Sử Một Khách Hàng Muốn Đi Thẳng Từ Ga A Đến Ga B Rồi Quay Trở Lại Ga A . Cho Biết Các Đường Bay Nào Có Thể Đáp Ứng Yêu Cầu Này
SELECT CB1.MaCB [Mã Chuyến Bay] ,CB1.GaDi [Ga Đi] , CB1.GaDen [Ga Đến] 
FROM CHUYENBAY CB1
JOIN CHUYENBAY CB2 ON CB1.GaDi = CB2.GaDen AND CB1.GaDen = CB2.GaDi
GROUP BY CB1.GaDi , CB1.GaDen , CB1.MaCB

/*======================================== / GOM NHÓM \ ========================================*/
--Câu 1 : Với Mỗi Ga Có Chuyến Bay Xuất Phát Từ Đó , Cho Biết Có Bao Nhiêu Chuyến Bay Khởi Hành Từ Ga Đó
SELECT CB.GaDi [Ga Đi] ,COUNT(CB.GaDi) AS [Số Lượng Chuyến Bay Khởi Hành Cùng Ga]
FROM CHUYENBAY CB
GROUP BY CB.GaDi

--Câu 2 : Với Mỗi Ga Có Chuyến Bay Xuất Phát Từ Đó Cho Biết Tổng Chi Phí Phải Trả Cho Phi Công Lái Các Chuyến Bay Khởi Hành Từ Ga Đó
SELECT CB.GaDi [Ga Đi] ,Sum(CB.ChiPhi) AS[Tổng Số Chi Phí Phải Trả Cho Các Nhân Viên Cùng Ga]
FROM CHUYENBAY CB
GROUP BY CB.GaDi

--Câu 3 : Với Mỗi Địa Điểm Xuất Phát Cho Biết Có Bao Nhiêu Chuyên Bay Có Thể Khởi Hành Trước 12:00.
SELECT CB.GaDi [Ga Đi] , COUNT(GioDi) AS [Số Chuyến Bay Trước 12:00]
FROM CHUYENBAY CB
WHERE CB.GioDi < '12:00'
GROUP BY CB.GaDi

--Câu 4 : Cho Biết Mã Số Của Các Phi Công Chỉ Lái Được 3 Loại Máy Bay
SELECT CN.MaNV [Mã Số Nhân Viên] 
FROM CHUNGNHAN CN
GROUP BY CN.MaNV
HAVING COUNT(DISTINCT CN.MaMB) = 3

--Câu 5 : Với Mỗi Phi Công Lái Được Nhiều Hơn 3 Loại Máy Bay , Cho Biết Mã Số Phi Công Và Tầm Bay Lớn Nhất Của Các Loại Mấy Bay Mà Phi Công Đó Lái
SELECT CN.MaNV [Mã Số Nhân Viên],MAX(MB.TamBay) [Tầm Bay Lớn Nhất Phi Công Có Thể Lái]
FROM CHUNGNHAN CN
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
GROUP BY CN.MaNV 
HAVING COUNT(DISTINCT CN.MaMB) > 3 

--Câu 6 : Với Mỗi Phi Công Cho Biết Mã Số Phi Công Và Tổng Số Loại Máy Bay Mà Phi Công Đó Có Thể Lái
SELECT CN.MaNV [Mẫ Nhân Viên] , COUNT(DISTINCT(MB.Loai)) AS [Tổng Số Loại Máy Bay Mà Phi Công Đó Có Thể Lái]
FROM CHUNGNHAN CN
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
GROUP BY CN.MaNV

--Câu 7 : Cho Biết Mã Số Của Các Phi Công Có Thể Lái Được Nhiều Loại Máy Bay Nhất
SELECT TOP 1 WITH TIES CN.MaNV [Mã Nhân Viên] , COUNT(DISTINCT(CN.MaMB)) AS [Số Lượng Máy Bay Có Thể Lái]
FROM CHUNGNHAN CN
GROUP BY CN.MaNV
ORDER BY [Số Lượng Máy Bay Có Thể Lái] DESC

--Câu 8 : Cho Biết Mã Số Của Các Phi Công Có Thể Lái Được Ít Loại Máy Bay Nhất
SELECT TOP 1 WITH TIES CN.MaNV [Mã Nhân Viên] , COUNT(DISTINCT(CN.MaMB)) AS [Số Lượng Máy Bay Có Thể Lái]
FROM CHUNGNHAN CN
GROUP BY CN.MaNV
ORDER BY [Số Lượng Máy Bay Có Thể Lái]

/*======================================== / TRUY VẤN LỒNG \ ========================================*/
--Câu 1 : Tìm Các Nhân Viên Không Phải Phi Công
SELECT NV.MaNV [Mã Nhân Viên] , NV.Ten [Tên Nhân Viên]
FROM NHANVIEN NV
WHERE NV.MaNV NOT IN (SELECT DISTINCT MaNV FROM CHUNGNHAN)

--Câu 2 : Tìm Mã Số Của Nhân Viên Có Lương Cao Nhất
SELECT  NV.MaNV [Mã Nhân Viên] , NV.Ten [Tên Nhân Viên] , NV.Luong [Lương]
FROM NHANVIEN NV 
WHERE NV.Luong = (SELECT MAX(Luong) FROM NHANVIEN )

--Câu 3 : Cho Biết Tổng Số Lương Phải Trả Cho Các Phi Công
SELECT SUM(NV.Luong) AS[Tổng Lương Các Phi Công]
FROM NHANVIEN NV
WHERE NV.MaNV IN(SELECT DISTINCT MaNV FROM CHUNGNHAN)

--Câu 4 : Tìm Các Chuyến Bay Có Thể Được Thực Hiện Bởi Tất Cả Các Loại Máy Bay Boeing
SELECT CB.MaCB , CB.GaDi , CB.GaDen , CB.DoDai
FROM CHUYENBAY CB
JOIN MAYBAY MB ON CB.MaMB = MB.MaMB
WHERE MB.Loai LIKE 'BOEING%' AND CB.DoDai <= (SELECT MIN(TamBay) FROM MAYBAY  WHERE Loai LIKE 'BOEING%')

--Câu 5 : Cho Biết Mã Số Của Các Máy Bay Có Thể Được Sử Dụng Để Thực Hiện Chuyến Bay Từ Sài Gòn (SGN ) Đến Huế ( HUI )
SELECT MB.MaMB [Mã Máy Bay]
FROM MAYBAY MB
WHERE MB.TamBay >= (SELECT MAX(DoDai) FROM CHUYENBAY  WHERE GaDi = 'SGN' AND GaDen = 'HUI')

--Câu 6 : Tìm Các Chuyến Bay Có Thể Được Lái Bởi Các Phi Công Có Lương Lớn Hơn 100,000
SELECT CB.MaCB , CB.GaDi , CB.GaDen , CB.MaMB
FROM CHUYENBAY CB
WHERE CB.MaMB IN(
	SELECT CN.MaMB
	FROM CHUNGNHAN CN
	JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
	WHERE NV.Luong > 100000
);

--Câu 7 : Cho Biết Tên Các Phi Công Có Lương Nhỏ Hơn Chi Phí Thấp Nhất Của Đường Bay Từ Sài Gòn ( SGN ) Tơi Buôn Mê Thuộc ( BMV )
SELECT NV.Ten
FROM NHANVIEN NV
WHERE NV.Luong < ( SELECT MIN(ChiPhi) FROM CHUYENBAY WHERE GaDi = 'SGN' AND GaDen = 'BMV')

--Câu 8 : Cho Biết Mã Số Của Phi Công Có Lương Cao Nhất
SELECT DISTINCT NV.MaNV , NV.Ten , NV.Luong [Lương Cao Nhất]
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
WHERE NV.Luong = ( SELECT MAX(Luong) FROM NHANVIEN WHERE MaNV IN (SELECT MaNV FROM CHUNGNHAN))

--Câu 9 : Cho Biêt Mã Số Nhân Viên Có Lương Cao Thứ Nhì
SELECT DISTINCT NV.MaNV , NV.Ten , NV.Luong [Lương Cao Nhì]
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
WHERE NV.Luong = (SELECT MAX(Luong) FROM NHANVIEN WHERE MaNV IN(SELECT MaNV FROM CHUNGNHAN )
	 AND Luong < (SELECT MAX(Luong) FROM NHANVIEN WHERE MaNV IN(SELECT MaNV FROM CHUNGNHAN )))

--Câu 10 : Cho Biêt Mã Số Nhân Viên Có Lương Cao Thứ Nhất và Thứ Nhì
SELECT DISTINCT NV.MaNV , NV.Ten , NV.Luong [Lương Cao Nhất Và Nhì]
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
WHERE NV.Luong IN(
				(SELECT MAX(Luong) FROM NHANVIEN WHERE MaNV IN(SELECT MaNV FROM CHUNGNHAN)),

				(SELECT MAX(Luong) FROM NHANVIEN WHERE MaNV IN(SELECT MaNV FROM CHUNGNHAN) 
	AND Luong < (SELECT MAX(Luong) FROM NHANVIEN WHERE MaNV IN(SELECT MaNV FROM CHUNGNHAN)))
)

--Câu 11 : Cho Biết Tên Và Lương Của Các Nhân Viên Không Phải Là Phi Công Và Có Lương Lớn Hơn Lương Trung Bình Của Tất Cả Các Phi Công
SELECT NV.Ten , NV.Luong
FROM NHANVIEN NV
WHERE NV.MaNV NOT IN(SELECT MaNV FROM CHUNGNHAN) AND NV.Luong > (SELECT AVG(Luong) FROM NHANVIEN WHERE MaNV IN(SELECT MaNV FROM CHUNGNHAN))

--Câu 12 : Cho Biết Tên Các Phi Công Có Thể Lái Các Máy Bay Có Tầm Bay Lớn Hơn 4,800Km Nhưng Không Có Chứng Nhận Lái Máy Bay Boeing
SELECT NV.MaNV , NV.Ten
FROM NHANVIEN NV
WHERE NV.MaNV IN(
	SELECT CN.MaNV
	FROM CHUNGNHAN CN
	JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
	WHERE MB.TamBay > 4800
) AND NV.MaNV NOT IN(
	SELECT CN.MaNV
	FROM CHUNGNHAN CN
	JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
	WHERE MB.Loai LIKE 'BOEING%'
)

--Câu 13 : Cho Biết Tên Các Phi Công Lái Ít Nhất 3 Loại Máy Bay Có Tầm Bay Xa Hơn 3200Km
SELECT DISTINCT NV.MaNV , NV.Ten
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
WHERE NV.MaNV IN(
	SELECT CN.MaNV
	FROM CHUNGNHAN CN
	JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
	WHERE MB.TamBay > 3200
	GROUP BY CN.MaNV
	HAVING COUNT(DISTINCT CN.MaMB) >= 3
)

/*======================================== / KẾT NGOÀI \ ========================================*/
--Câu 1 : Với Mỗi Nhân Viên Cho Biết Mã Số , Tên Nhân Viên Và Tổng Số Loại Máy Bay Mà Nhân Viên Đó Có Thể Lại
SELECT NV.MaNV , NV.Ten , COUNT(CN.MaMB) [Tổng Số Loại Máy Bay Mà Nhân Viên Có Thể Lái]
FROM NHANVIEN NV
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
GROUP BY NV.MaNV , NV.Ten

--Câu 2 : Với Mỗi Nhân Viên Cho Biết Mã Số , Tên Nhân Viên Và Tổng Số Loại Máy Bay Boeing Mà Nhân Viên Đó Có Thể Lái
SELECT NV.MaNV , NV.Ten , COUNT(MB.Loai) [Tổng Số Loại Máy Bay Boeing Mà Nhân Viên Có Thể Lái]
FROM NHANVIEN NV
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
LEFT JOIN MAYBAY MB ON CN.MaMB = MB.MaMB AND  MB.Loai LIKE '%BOEING%'
GROUP BY NV.MaNV , NV.Ten

--Câu 3 : Với Mỗi Loại Máy Bay Cho Biết Loại Máy Bay Và Tổng Số Phi Công Có Thể Lái Loại Máy Bay Đó
SELECT MB.Loai , COUNT(CN.MaNV) [Tổng Số Phi Công Có Thể Lái Loại Máy Bay]
FROM MAYBAY MB
LEFT JOIN CHUNGNHAN CN ON MB.MaMB = CN.MaMB
GROUP BY MB.Loai

--Câu 4  Với Mỗi Loại Máy Bay CHo Biết Loại Máy Bay Và Tổng Số Chuyến Bay Không Thể Thực Hiện Bởi Loại Máy Bay Đó
SELECT MB.Loai , COUNT(CB.MaCB) [Tổng Số Chuyến Bay Không Thể Thực Hiện Bởi Loại Máy Bay Đó]
FROM MAYBAY MB
LEFT JOIN CHUYENBAY CB ON MB.TamBay < CB.DoDai
GROUP BY MB.Loai

--Câu 5 : Với Mỗi Loại Máy Bay Cho Biết Loại Máy Bay Và Tổng Số Phi Công Có Lương Lớn Hơn 100,000 Có Thể Lái Loại Máy Bay Đó
SELECT MB.Loai , COUNT(DISTINCT CASE WHEN NV.Luong > 100000 THEN NV.MaNV END) [Tổng Số Phi Công Có Lương Lớn Hơn 100,000 Có Thể Lái Loại Máy Bay Đó]
FROM MAYBAY MB
LEFT JOIN CHUNGNHAN CN ON MB.MaMB = CN.MaMB 
LEFT JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
GROUP BY MB.Loai

--Câu 6 : Với Mỗi Loại Máy Bay Có Tầm Bay Trên 3200 Km , Cho Biết Tên Của Loại Máy Bay Và Lương Trung Bình Của Các Phi Công Có Thể Lái Loại Máy Đó
SELECT MB.Loai , AVG(NV.Luong) [Lương Trung Bình Của Các Phi Công Có Thể Lái Loại Máy Bay Đó]
FROM MAYBAY MB
LEFT JOIN CHUNGNHAN CN ON MB.MaMB = CN.MaMB AND MB.TamBay > 3200
LEFT JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
GROUP BY MB.Loai

--Câu 7 : Với Mỗi Loại Máy Bay Cho Biết Loại Máy Bay Và Tổng Số Nhân Viên Không Thể Lái Loại Máy Bay Đó
SELECT MB.Loai , COUNT(DISTINCT NV.MaNV) [Tổng Số Nhân Viên Không Thể Lái Loại Máy Bay Đó]
FROM MAYBAY MB
JOIN NHANVIEN NV ON 1 = 1
LEFT JOIN CHUNGNHAN CN ON MB.MaMB = CN.MaMB AND NV.MaNV = CN.MaNV
WHERE CN.MaMB IS NULL
GROUP BY MB.Loai

--Câu 8 : Với Mỗi Loại Máy Bay Cho Biết Loại Máy Bay Và Tổng Số Phi Công Không Thể Lái Loại Máy Bay
SELECT MB.Loai , COUNT(DISTINCT NV.MaNV) [Tổng Số Phi Công Không Thể Lái Loại Máy Bay]
FROM MAYBAY MB
JOIN (SELECT DISTINCT CN.MaNV FROM CHUNGNHAN CN ) AS NV ON 1 = 1
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV AND MB.MaMB = CN.MaMB
WHERE CN.MaMB IS NULL
GROUP BY MB.Loai

--Câu 9 : Với Mỗi Nhân Viên Cho Biết Mã Số , Tên Nhân Viên Và Tổng Số Chuyến Bay Xuất Phát Từ Sài Gòn Mà Nhân Viên Đó Có Thể Lái
SELECT NV.MaNV , NV.Ten , COUNT(DISTINCT CB.MaCB) [Tổng Số Chuyến Bay Xuất Phát Từ Sài Gòn Mà Nhân Viên Có Thể Lái]
FROM NHANVIEN NV
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
LEFT JOIN CHUYENBAY CB ON CN.MaMB = CB.MaMB AND CB.GaDi = 'SGN'
GROUP BY NV.MaNV , NV.Ten

--Câu 10 : Với Mỗi Nhân Viên Cho Biết Mã Số , Tên Nhân Viên Và Tổng Số Chuyến Bay Xuất Từ Sài Gòn Mà Nhân Viên Đó Không Thể Lái
SELECT NV.MaNV , NV.Ten , COUNT(DISTINCT CB.MaCB) [Tổng Số Chuyến Bay Xuất Phát Từ Sài Gòn Mà Nhân Viên Không Thể Lái]
FROM NHANVIEN NV
JOIN CHUYENBAY CB ON CB.GaDi = 'SGN'
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV AND CB.MaMB = CN.MaMB
WHERE CN.MaMB IS NULL
GROUP BY NV.MaNV , NV.Ten

--Câu 11 Với Mỗi Phi Công Cho Biết Mã Số , Tên Nhân Viên Và Tổng Số Chuyến Bay Xuất Phát Từ Sài Gòn Mà Nhân Viên Đó Có Thể Lái
SELECT NV.MaNV , NV.Ten , COUNT(DISTINCT CB.MaCB) [Tổng Số Chuyến Bay Xuất Phát Từ Sài Gòn Mà Nhân Viên Đó Có Thể Lái]
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
JOIN CHUYENBAY CB ON CN.MaMB = CB.MaMB AND CB.GaDi = 'SGN'
GROUP BY NV.MaNV , NV.Ten

--Câu 12 : Với Mỗi Phi Công Cho Biết Mã Số , Tên Phi Công Và Tổng Số Chuyến Bay Xuất Phát Từ Sài Gòn Mà Phi Công Đó Không Thể Lái
SELECT NV.MaNV , NV.Ten , COUNT(DISTINCT CB.MaCB) [Tổng SốC huyến Bay Xuất Phát Từ Sài Gòn Mà Nhân Viên Đó Không Thể Lái]
FROM NHANVIEN NV
JOIN (SELECT DISTINCT CN.MaNV FROM CHUNGNHAN CN ) AS PC ON NV.MaNV = PC.MaNV
JOIN CHUYENBAY CB ON CB.GaDi = 'SGN'
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV AND CB.MaMB = CN.MaMB
WHERE CN.MaMB IS NULL
GROUP BY NV.MaNV , NV.Ten

--Câu 13 : Với Mỗi Chuyến Bay Cho Biết Mẫ Sô Chuyên Bay Và Tổng Số Loại Máy Bay Không Thể Thực Hiện Chuyến Bay Đó
SELECT CB.MaCB , COUNT(DISTINCT MB.MaMB) [Tổng Số Loại Máy Bay Không Thể Thực Hiện Chuyến Bay Đó]
FROM CHUYENBAY CB
LEFT JOIN MAYBAY MB ON MB.TamBay < CB.DoDai
GROUP BY CB.MaCB

--Câu 14 : Với Mỗi Chuyến Bay Cho Biết Mã Số Chuyến Bay Và Tổng Số Loại Máy Bay Có Thể Thực Hiện Chuyến Bay Đó
SELECT CB.MaCB , COUNT(DISTINCT MB.MaMB) [Tổng Số Loại Máy Bay Có Thể Thực Hiện Chuyến Bay Đó]
FROM CHUYENBAY CB
LEFT JOIN MAYBAY MB ON MB.TamBay >= CB.DoDai
GROUP BY CB.MaCB

--Câu 15 : Với Mỗi Chuyến Bay Cho Biết Mã Số Chuyến Bay Và Tổng Số Nhân Viên Không Thể Lái Chuyến Đó
SELECT CB.MaCB, COUNT(DISTINCT NV.MaNV) AS [Tổng Số Nhân Viên Không Thể Lái Chuyến Đó]
FROM CHUYENBAY CB
JOIN NHANVIEN NV ON 1=1  
LEFT JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV AND CB.MaMB = CN.MaMB  
WHERE CN.MaMB IS NULL  
GROUP BY CB.MaCB;

--câu 16 : Với Mỗi Chuyến Bay Cho Biết Mã Số Chuyến Bay Và Tổng Số Phi Công Không Thể Lái Chuyến Bay Đó
SELECT CB.MaCB , COUNT(DISTINCT PC.MaNV) [Tổng Số Phi Công Không Thể Lái Chuyến Đó]
FROM CHUYENBAY CB
JOIN ( SELECT DISTINCT CN.MaNV FROM CHUNGNHAN CN) PC ON 1=1
LEFT JOIN CHUNGNHAN CN ON CB.MaMB = CN.MaMB AND PC.MaNV = CN.MaNV
WHERE CN.MaMB IS NULL
GROUP BY CB.MaCB

/*======================================== / EXISTS VÀ CÁC DẠNG KHÁC \ ========================================*/
/*Câu 1 : Một Hành Khách Muốn Đi Từ Hà Nội (HAN) Đến Nha Trang ( CXR ) Mà Không Phải Đổi Chuyến Bay Quá Một Lần . 
          Cho Biết Mã Chuyến Bay Và Thời Gian Khởi Hành Từ Hà Nội Nếu Hành Khách Muốn Đến Nha Trang Trước 16:00 */
SELECT CB1.MaCB , CB1.GioDi , CB1.GioDen
FROM CHUYENBAY CB1
WHERE CB1.GaDi = 'HAN' AND CB1.GaDen = 'CXR' AND CB1.GioDen < '16:00'

UNION

SELECT CB1.MaCB , CB1.GioDi , CB2.GioDen
FROM CHUYENBAY CB1
JOIN CHUYENBAY CB2 ON CB1.GaDen = CB2.GaDi
WHERE CB1.GaDi = 'HAN' AND CB2.GaDen = 'CXR' AND CB1.GioDen <= CB2.GioDi AND CB2.GioDen < '16:00'

--Câu 2 : Cho Biết Tên Các Loại Máy Bay Mà Tất Cả Các Phi Công Có Thể Lái Đều Có Lương Lớn Hơn 200,000
SELECT MB.Loai [Loại Máy Bay]
FROM MAYBAY MB 
JOIN CHUNGNHAN CN ON MB.MaMB = CN.MaMB
JOIN NHANVIEN NV ON CN.MaNV = NV.MaNV
GROUP BY MB.Loai , MB.MaMB
HAVING NOT EXISTS(
	SELECT 1
	FROM CHUNGNHAN CN1
	JOIN NHANVIEN NV1 ON CN1.MaNV = NV1.MaNV 
	WHERE CN1.MaMB = MB.MaMB AND NV1.Luong < 200000
);

--Câu 3 : Cho Biết Thông Tin Của Các Đường Bay Mà Tất Cả Các Phi Công Có Thể Bay Trên Đường Bay Đó Đều Có Lương Lớn Hơn 100,000
SELECT CB.MaCB , CB.GaDi , CB.GaDen , CB.GioDi , CB.GioDen , CB.DoDai , CB.MaMB
FROM CHUYENBAY CB
JOIN MAYBAY MB ON CB.MaMB = MB.MaMB
GROUP BY CB.MaCB , CB.GaDi , CB.GaDen , CB.GioDi , CB.GioDen , CB.DoDai , CB.MaMB , MB.MaMB
HAVING NOT EXISTS(
	SELECT 1
	FROM CHUNGNHAN CN1
	JOIN NHANVIEN NV1 ON CN1.MaNV = NV1.MaNV
	WHERE CN1.MaMB = MB.MaMB AND NV1.Luong < 100000
)

--Câu 4 : Chi Biết Tên Các Phi Công Chỉ Lái Các Loại Máy Báy Có Tầm Bay Xa Hơn 3200 KM
SELECT NV.Ten
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
GROUP BY NV.Ten , NV.MaNV
HAVING NOT EXISTS(
	SELECT 1
	FROM CHUNGNHAN CN1
	JOIN MAYBAY MB1 ON CN1.MaMB = MB1.MaMB
	WHERE CN1.MaNV = NV.MaNV
	AND MB1.TamBay <= 3200
)

--Câu 5 : Cho Biết Tên Các Phi Công Chỉ Lái Các Loại Máy Bay Có Tầm Bay Xa Hon 3200 KM Và Một Trong Số Đó Là Boeing
SELECT DISTINCT NV.Ten
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
GROUP BY NV.Ten , NV.MaNV
HAVING NOT EXISTS(
	SELECT 1
	FROM CHUNGNHAN CN1
	JOIN MAYBAY MB1 ON CN1.MaMB = MB1.MaMB
	WHERE CN1.MaNV = NV.MaNV
	AND MB1.TamBay <= 3200
)
AND EXISTS(
	SELECT 1
	FROM CHUNGNHAN CN2
	JOIN MAYBAY MB2 ON CN2.MaMB = MB2.MaMB
	WHERE CN2.MaNV = NV.MaNV
	AND MB2.Loai LIKE 'BOEING%'
)

--Câu 6 : Tìm Các Phi Công Có Thể Lái Tất Cả Các Loại Máy Bay
SELECT NV.MaNV , NV.Ten
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
GROUP BY NV.MaNV , NV.Ten
HAVING COUNT(DISTINCT CN.MaMB) = (SELECT COUNT(MaMB) FROM MAYBAY)

--Câu 7 : Tìm Các Phi Công Có Thể Lái Tất Cả Các Loại Máy Bay Boeing
SELECT NV.MaNV , NV.Ten
FROM NHANVIEN NV
JOIN CHUNGNHAN CN ON NV.MaNV = CN.MaNV
JOIN MAYBAY MB ON CN.MaMB = MB.MaMB
WHERE MB.Loai LIKE 'BOEING%'
GROUP BY NV.MaNV , NV.Ten
HAVING COUNT(DISTINCT MB.MaMB) = (SELECT COUNT(DISTINCT MaMB) FROM MAYBAY WHERE Loai LIKE 'BOEING%')