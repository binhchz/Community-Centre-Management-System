CREATE DATABASE DBPROJECT character set UTF8MB3 collate utf8_unicode_ci;
USE DBPROJECT;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- CREATE DINH CHINH TABLE 
CREATE TABLE `chung_minh_thu` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `soCMT` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CREATE DINH CHINH TABLE 
CREATE TABLE `dinh_chinh` (
  `ID` int(11) NOT NULL,
  `idHoKhau` int(11) DEFAULT NULL,
  `thongTinThayDoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiTu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiThanh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL,
  `nguoiThayDoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE GIA DINH TABLE 

CREATE TABLE `gia_dinh` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quanHeVoiNhanKhau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienTai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE HO KHAU TABLE 
CREATE TABLE `ho_khau` (
  `ID` int(11) NOT NULL,
  `maHoKhau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idChuHo` int(11) DEFAULT NULL,
  `maKhuVuc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayLap` date DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoiThucHien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE KHAI TU  TABLE 
CREATE TABLE `khai_tu` (
  `ID` int(11) NOT NULL,
  `idNguoiKhai` int(11) DEFAULT NULL,
  `idNguoiChet` int(11) DEFAULT NULL,
  `ngayKhai` date DEFAULT NULL,
  `ngayChet` date DEFAULT NULL,
  `lyDoChet` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CREATE NHAN KHAU TABLE 
CREATE TABLE `nhan_khau` (
  `ID` int(11) NOT NULL,
  `maNhanKhau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietDanh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiSinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyenQuan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tonGiao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocTich` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soHoChieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiThuongTru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienNay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoHocVan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrinhDoChuyenMon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietTiengDanToc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoNgoaiNgu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tienAn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDen` date DEFAULT NULL,
  `lyDoChuyenDen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyenDi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiMoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int(11) DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int(11) DEFAULT NULL,
  `lyDoXoa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghiChu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE TAM TRU TABLE 
CREATE TABLE `tam_tru` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamtru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soDienThoaiNguoiDangKy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date NOT NULL,
  `denNgay` date NOT NULL,
  `lyDo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE TAM VANG TABLE 
CREATE TABLE `tam_vang` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamVang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiTamtru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `lyDo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE THANH VIEN CUA HO TABLE 
CREATE TABLE `thanh_vien_cua_ho` (
  `idNhanKhau` int(11) NOT NULL,
  `idHoKhau` int(11) NOT NULL,
  `quanHeVoiChuHo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE TIEU SU TABLE 
CREATE TABLE `tieu_su` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `thu_ky` (
  `ID` int(11) NOT NULL,
  `thu_ky_Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE TABLE THAY DOI NHAN KHAU
CREATE TABLE `thay_doi_nhan_khau` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `hoTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietDanh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiSinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyenQuan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tonGiao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocTich` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soHoChieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiThuongTru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienNay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soDienThoai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenChuHo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quanHeVoiChuHo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiDungThayDoi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- CREATE USER TABLE
CREATE TABLE USERTAB(
`soCMT` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
USERUSERNAME VARCHAR(100) NOT NULL, 
USERPASSWORD VARCHAR(100) NOT NULL, 
FULLNAME VARCHAR(100)NOT NULL,
ADDRESS VARCHAR(1000) NOT NULL, 
SIGNUPDATE DATETIME NOT NULL, 
JOB VARCHAR(100) NOT NULL,
BIRTHDAY DATE NOT NULL,
PHONENUMBER VARCHAR(11) NOT NULL, 
CONSTRAINT PK_USER1 PRIMARY KEY(USERUSERNAME));


-- CREAT TABLE ROOM
CREATE TABLE ROOM(ROOMNAME VARCHAR(100) NOT NULL,
FLOOR INT NOT NULL,
ROOMUSAGE VARCHAR(1000) NOT NULL,
CONSTRAINT PK_ROOM PRIMARY KEY(ROOMNAME));

-- CRATE REQUEST TABLE

CREATE TABLE REQUEST(REQUESTID INT NOT NULL,
STARTTIMEREQUEST DATETIME NOT NULL,
FINISHTIMEREQUEST DATETIME NOT NULL,
REQUESTDESCRIPTIONS VARCHAR(1000),
USERUSERNAME VARCHAR(100) NOT NULL,
REQUESTROOM VARCHAR(100),
CONSTRAINT PK_REQUEST PRIMARY KEY(REQUESTID),
CONSTRAINT FK_USER_REQUEST FOREIGN KEY(USERUSERNAME) REFERENCES USERTAB(USERUSERNAME));
ALTER TABLE REQUEST ADD CONSTRAINT FK_REQUEST_ROOM FOREIGN KEY(REQUESTROOM) REFERENCES ROOM(ROOMNAME);


-- CREATE TABLE REQUESTWANTROOM

CREATE TABLE REQUESTWANTROOM(REQUESTID INT NOT NULL,
ROOMNAME VARCHAR(100) NOT NULL,
CONSTRAINT PK_REQUESTWANTROOM PRIMARY KEY(REQUESTID, ROOMNAME),
CONSTRAINT FK_REQUESTWANTROOM_REQUEST FOREIGN KEY(REQUESTID) REFERENCES REQUEST(REQUESTID),
CONSTRAINT FK_REQUESTWANTROOM_ROOM FOREIGN KEY(ROOMNAME) REFERENCES ROOM(ROOMNAME));

-- -- CREATE INFRASTRUCTURE TABLE
CREATE TABLE INFRASTRUCTURE(ITEMID INT AUTO_INCREMENT NOT NULL ,
ITEMNAME VARCHAR(200) NOT NULL,
AMOUNT INT NOT NULL,
LASTTIMEUPDATE DATE NOT NULL,
ITEMDESCRIPTION VARCHAR(1000) NOT NULL,
ROOMNAME VARCHAR(100) NOT NULL,
CONSTRAINT PK_INFRASTRUCTURE PRIMARY KEY(ITEMID),
CONSTRAINT FK_INFRASTRUCTURE_ROOM FOREIGN KEY(ROOMNAME) REFERENCES ROOM(ROOMNAME));



-- CREATE MANAGER TABLE
CREATE TABLE MANAGER(
MNGUSERNAME VARCHAR(100) NOT NULL,
MNGPASSWORD VARCHAR(100) NOT NULL,
FULLNAME VARCHAR(200) NOT NULL,
ADDRESS VARCHAR(1000) NOT NULL,
BIRTHDAY DATE NOT NULL,
SIGNUPDAY DATETIME NOT NULL,
PHONENUMBER VARCHAR(100) NOT NULL,
CONSTRAINT PK_MANAGER PRIMARY KEY(MNGUSERNAME));



-- CREATE APPROVE TABLE
CREATE TABLE APPROVE(MNGUSERNAME VARCHAR(100) NOT NULL,
REQUESTID INT NOT NULL,
STATE VARCHAR(10) NOT NULL,
NOTE VARCHAR(10),
FEE INT NOT NULL,
CONSTRAINT PK_APPROVE PRIMARY KEY(MNGUSERNAME, REQUESTID),
CONSTRAINT FK_APPROVE_MANAGER FOREIGN KEY(MNGUSERNAME) REFERENCES MANAGER(MNGUSERNAME),
CONSTRAINT FK_APPROVE_REQUEST FOREIGN KEY(REQUESTID) REFERENCES REQUEST(REQUESTID));
ALTER TABLE APPROVE MODIFY COLUMN NOTE VARCHAR(1000);

-- CREATE EVENT TABLE
CREATE TABLE EVENTTABLE(
EVENTID INT NOT NULL,
EVENTNAME VARCHAR(200) NOT NULL,
STARTTIME DATETIME NOT NULL,
FINISHTIME DATETIME NOT NULL,
ROOMNAME VARCHAR(100) NOT NULL,
EVENTDESCRIPTION VARCHAR(1000) NOT NULL,
FEE INT NOT NULL,
CONSTRAINT PK_EVENT PRIMARY KEY(EVENTID),
CONSTRAINT FK_EVENT_ROOM FOREIGN KEY(ROOMNAME) REFERENCES ROOM(ROOMNAME));

INSERT INTO `thu_ky` (`ID`, `thu_ky_Name`, `passwd`) VALUES
(1, 'thuKy', '1');


INSERT INTO `chung_minh_thu` (`ID`, `idNhanKhau`, `soCMT`, `ngayCap`, `noiCap`) VALUES
(13, 26, '000000000001', NULL, NULL),
(14, 27, '000000000002', NULL, NULL),
(15, 28, '000000000003', NULL, NULL),
(16, 29, '000000000004', NULL, NULL),
(17, 30, '000000000005', NULL, NULL),
(18, 31, '000000000006', NULL, NULL),
(19, 32, '000000000007', NULL, NULL),
(20, 33, '000000000008', NULL, NULL),
(21, 34, '000000000009', NULL, NULL),
(22, 35, '100000000001', NULL, NULL),
(23, 36, '100000000002', NULL, NULL),
(24, 37, '000000000010', NULL, NULL),
(25, 38, '000000000011', NULL, NULL);
(13, 39, '000000000012', NULL, NULL),
(14, 40, '000000000013', NULL, NULL),
(15, 41, '000000000014', NULL, NULL),
(16, 42, '000000000015', NULL, NULL),
(17, 43, '000000000016', NULL, NULL),
(18, 44, '000000000017', NULL, NULL),
(19, 45, '000000000018', NULL, NULL),
(20, 46, '000000000019', NULL, NULL),
(21, 47, '000000000020', NULL, NULL),
(22, 48, '000000000021', NULL, NULL),

-- INSERT INTO GIA DINH TABLE 
INSERT INTO `gia_dinh` (`ID`, `idNhanKhau`, `hoTen`, `namSinh`, `gioiTinh`, `quanHeVoiNhanKhau`, `ngheNghiep`, `diaChiHienTai`) VALUES
(2, 27, 'Nguy???n Minh Qu??n', '1995-05-31', 'Nam', 'Ch???ng', 'K??? s??', 'S??? 2 T??? Quang B???u, Hai B?? Tr??ng, H?? N???i'),
(3, 28, 'Tr???n Thanh Duy??n', '1997-12-23', 'N???', 'V???', 'Nh??n vi??n v??n ph??ng', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(4, 29, 'V?? M??? Linh', '1965-12-06', 'N???', 'V???', 'N???i tr???', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(5, 29, 'Nguy???n Ti???n ?????t', '1990-09-09', 'Nam', 'Con trai', 'K??? s?? ??i???n', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(6, 29, 'Nguy???n Tr?? My', '1997-12-12', 'N???', 'Con g??i', 'Lu???t s??', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(7, 30, 'Nguy???n Ti???n D??ng', '1964-06-03', 'Nam', 'Ch???ng', 'Ph?? gi??m ?????c', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(8, 30, 'Nguy???n Ti???n ?????t', '1990-09-09', 'Nam', 'Con trai', 'K??? s?? ??i???n', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(9, 30, 'Nguy???n Tr?? My', '1997-12-12', 'N???', 'Con G??i', 'Lu???t s??', ''),
(10, 31, 'Nguy???n Ti???n D??ng', '1964-06-03', 'Nam', 'B???', 'Ph?? gi??m ?????c', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(11, 31, 'V?? M??? Linh', '1965-12-06', 'N???', 'M???', 'N???i tr???', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(12, 31, 'Nguy???n Tr?? My', '1997-12-12', 'N???', 'Em g??i', 'Lu???t s??', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(13, 32, 'Nguy???n Ti???n D??ng', '1964-06-03', 'Nam', 'B???', 'Ph?? gi??m ?????c', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(14, 32, 'V?? M??? Linh', '1965-12-06', 'N???', 'M???', 'N???i tr???', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(15, 32, 'Nguy???n Ti???n ?????t', '1990-09-09', 'Nam', 'Anh trai', 'K??? s?? ??i???n', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(16, 33, 'Nguy???n Minh Tuy???t', '1985-09-02', 'N???', 'V???', 'B??c s??', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(17, 33, 'Tr???n Trung Ki??n', '2008-12-25', 'Nam', 'Con trai', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(18, 33, 'Tr???n Th??y Ng???c', '2013-01-15', 'N???', 'Con g??i', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(19, 34, 'Tr???n Trung Ki??n', '2008-12-25', 'Nam', 'Con trai', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(20, 34, 'Tr???n Th??y Ng???c', '2013-01-15', 'N???', 'Con g??i', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(21, 34, 'Tr???n V??n Nam', '1980-07-09', 'Nam', 'Ch???ng', 'Gi???ng vi??n ?????i h???c', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(22, 35, 'Tr???n V??n Nam', '1980-07-09', 'Nam', 'B???', 'Gi???ng vi??n ?????i h???c', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(23, 35, 'Nguy???n Minh Tuy???t', '1985-09-02', 'N???', 'M???', 'B??c s??', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(24, 35, 'Tr???n Th??y Ng???c', '2013-01-15', 'N???', 'Em g??i', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(25, 36, 'Tr???n V??n Nam', '1980-07-09', 'Nam', 'B???', 'Gi???ng vi??n ?????i h???c', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(26, 36, 'Nguy???n Minh Tuy???t', '1985-09-02', 'N??? ', 'M???', 'B??c s??', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(27, 36, 'Tr???n Trung Ki??n', '2008-12-25', 'Nam', 'Anh trai', 'H???c sinh', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(28, 37, 'B??i Th??? H??', '1948-02-03', 'N???', 'V???', 'N???i tr???', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(29, 37, 'L?? Th??nh Nam', '1968-06-12', 'Nam', 'Con Trai', 'C??ng nh??n', 'S??? 89, ng?? 98 Tr?????ng Chinh, H?? N???i'),
(30, 37, 'L?? Thu Th???y', '1971-03-05', 'N???', 'Con G??i', 'Nh??n vi??n v??n ph??ng', 'S??? 3, ng?? 568 ???????ng L??ng, H?? N???i'),
(31, 38, 'L?? V??n C??ng', '1945-06-04', 'Nam', 'Ch???ng', 'B??? ?????i v??? h??u', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),
(32, 38, 'L?? Th??nh Nam', '1968-06-12', 'Nam', 'Con trai', 'C??ng nh??n', 'S??? 89, ng?? 98 Tr?????ng Chinh, H?? N???i'),
(33, 38, 'L?? Thu Th???y', '1971-03-05', 'N???', 'Con g??i', 'Nh??n vi??n v??n ph??ng', 'S??? 3, ng?? 568 ???????ng L??ng, H?? N???i');


-- INSERT INTO HO KHAU TABLE 
INSERT INTO `ho_khau` (`ID`, `maHoKhau`, `idChuHo`, `maKhuVuc`, `diaChi`, `ngayLap`, `ngayChuyenDi`, `lyDoChuyen`, `nguoiThucHien`) VALUES
(13, 'TQB002', 28, 'HN03', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL),
(14, 'TQB001', 26, 'HN03', 'S??? 1 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL),
(15, 'TQB003', 29, 'HN03', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL),
(16, 'TQB004', 33, 'HN03', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '2019-12-08', NULL, NULL, NULL);


-- INSERT INTO NHAN KHAU TABLE 
INSERT INTO `nhan_khau` (`ID`, `maNhanKhau`, `hoTen`, `bietDanh`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `tonGiao`, `quocTich`, `soHoChieu`, `noiThuongTru`, `diaChiHienNay`, `trinhDoHocVan`, `TrinhDoChuyenMon`, `bietTiengDanToc`, `trinhDoNgoaiNgu`, `ngheNghiep`, `noiLamViec`, `tienAn`, `ngayChuyenDen`, `lyDoChuyenDen`, `ngayChuyenDi`, `lyDoChuyenDi`, `diaChiMoi`, `ngayTao`, `idNguoiTao`, `ngayXoa`, `idNguoiXoa`, `lyDoXoa`, `ghiChu`) VALUES
(26, NULL, 'Trinh V??n An', '', '1990-12-07', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i', 'S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? B', 'Gi??o Vi??n', 'Tr?????ng THCS Chu V??n An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(27, NULL, 'Tr???n Thanh Duy??n', '', '1997-12-23', 'N???', NULL, 'H???i Ph??ng', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 3, ???????ng ????nh ????ng, ph?????ng ????nh ????ng, qu???n Ng?? Quy???n, H???i Ph??ng', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? D', 'Nh??n vi??n v??n ph??ng', 'C??ng ty ABC', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(28, NULL, 'Nguy???n Minh Qu??n', '', '1995-05-31', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? D', 'K??? s??', 'Viettel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(29, NULL, 'Nguy???n Ti???n D??ng', '', '1964-06-03', 'Nam', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'K??? s??', 'Kh??ng', 'Kh??ng', 'Ph?? gi??m ?????c', 'C??ng ty EXE', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(30, NULL, 'V?? M??? Linh', '', '1965-12-06', 'N???', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12', 'C??? Nh??n', 'Kh??ng', 'Kh??ng', 'N???i tr???', 'T???i nh??', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(31, NULL, 'Nguy???n Ti???n ?????t', '', '1990-09-09', 'Nam', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'K??? s??', 'kh??ng', 'Anh tr??nh ????? C', 'K??? s?? ??i???n', 'C??ng ty ??i???n EVN', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(32, NULL, 'Nguy???n Tr?? My', '', '1997-12-12', 'N???', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'kh??ng', 'Anh tr??nh ????? D', 'Lu???t s??', 'V??n ph??ng lu???t s?? 123', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(33, NULL, 'Tr???n V??n Nam', '', '1980-07-09', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Ti???n s??', 'Kh??ng', 'Anh tr??nh ????? D', 'Gi???ng vi??n ?????i h???c', '?????i h???c B??ch khoa H?? N???i', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(34, NULL, 'Nguy???n Minh Tuy???t', '', '1985-09-02', 'N???', NULL, 'Nam ?????nh', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '12/12 ch??nh quy', 'Th???c s??', 'Kh??ng', 'Anh tr??nh ????? D', 'B??c s??', 'B???nh vi???n qu???c t??? HJK', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(35, NULL, 'Tr???n Trung Ki??n', '', '2008-12-25', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '6/12 ch??nh quy', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'H???c sinh', 'Tr?????ng THCS Chu V??n An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(36, NULL, 'Tr???n Th??y Ng???c', '', '2013-01-15', 'N???', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '1/12 ch??nh quy', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'H???c sinh', 'Tr?????ng ti???u h???c Chu V??n An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(37, NULL, 'L?? V??n C??ng', '', '1945-06-04', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '10/12 ch??nh quy', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'V??? h??u', 'Kh??ng', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(38, NULL, 'B??i Th??? H??', '', '1948-02-03', 'N???', NULL, 'H???i Ph??ng', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', '10/12', 'Kh??ng', 'Kh??ng', 'Kh??ng', 'N???i tr???', 'T???i nh??', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL);

-- INSERT INTO THAY DOI NHAN KHAU TABLE 
INSERT INTO `thay_doi_nhan_khau` (`ID`,`idNhanKhau`, `hoTen`, `bietDanh`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `tonGiao`, `quocTich`, `soHoChieu`, `noiThuongTru`, `diaChiHienNay`, `soDienThoai`, `tenChuHo` , `quanHeVoiChuHo`, `noiDungThayDoi`,`ngayThayDoi`) VALUES
(1,26, 'Trinh V??n An', '', '1990-12-07', 'Nam', NULL, 'H?? N???i', 'Kinh', 'Kh??ng', 'Vi???t Nam', '', 'S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i', 'S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i','69696969696',  'Trinh V??n An','Ch??? h???','X??a ????ng k?? th?????ng tr??, x??a ????ng k?? t???m tr??','2021-5-19'),
(2,32, 'Nguy???n Tr?? My', '', '1997-12-12', 'N???', NULL, 'H???i D????ng', 'Kinh', 'Thi??n ch??a gi??o', 'Vi???t Nam', '', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','96969696969','Nguy???n Ti???n D??ng','Con g??i','T??ch s??? h??? kh???u','2021-4-12');

-- INSERT INTO THANH VIEN CUA HO TABLE
INSERT INTO `thanh_vien_cua_ho` (`idNhanKhau`, `idHoKhau`, `quanHeVoiChuHo`) VALUES
(26, 14, 'Ch??? h???'),
(27, 13, 'V???'),
(29, 15, 'Ch??? h???'),
(30, 15, 'V???'),
(31, 15, 'Con trai'),
(32, 15, 'Con g??i'),
(33, 16, 'Ch??? h???'),
(34, 16, 'V???'),
(35, 16, 'Con trai'),
(36, 16, 'Con g??i');

-- INSERT INTO TIEU SU TABLE
INSERT INTO `tieu_su` (`ID`, `idNhanKhau`, `tuNgay`, `denNgay`, `diaChi`, `ngheNghiep`, `noiLamViec`) VALUES
(2, 27, '2015-09-05', '2015-09-05', 'S??? 45, ng?? 56, Nguy???n Khang, C???u Gi???y, H?? N???i', 'Sinh Vi??n', '?????i h???c Th????ng m???i'),
(3, 28, '2012-09-05', '2017-09-05', '556 La Th??nh, H?? N???i', 'Sinh Vi??n', '?????i h???c B??ch khoa H?? N???i'),
(4, 29, '1989-05-10', '2000-08-25', 'S??? 5 Nguy???n Khuy???n, H?? N???i', 'Qu???n l?? nh???n s???', 'C??ng ty BCC'),
(5, 30, '1987-05-23', '1997-03-01', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Nh??n vi??n v??n ph??ng', 'C??ng ty Zezs'),
(6, 31, '2008-09-05', '2013-09-05', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Sinh vi??n', '?????i h???c B??ch khoa H?? N???i'),
(7, 32, '2015-09-05', '2019-09-05', 'S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Sinh vi??n', '?????i h???c Lu???t H?? N???i'),
(8, 33, '1998-09-05', '2003-09-05', 'S??? 66, ng?? 445 Nguy???n Khang, C???u Gi???y, H?? N???i', 'Sinh Vv??n', '?????i h???c B??ch khoa H?? N???i'),
(9, 33, '2003-10-03', '2018-08-06', 'S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i', 'Gi???ng vi??n', '?????i h???c C??ng ngi???p H?? N???i'),
(10, 34, '2003-09-05', '2011-09-05', 'S??? 8 T??n Th???t T??ng, H?? N???i', 'Sinh vi??n', '?????i h???c Y H?? N???i'),
(11, 34, '2011-10-03', '2015-08-09', 'S??? 8 T??n Th???t T??ng, H?? N???i', 'B??c s?? n???i tr??', 'B???nh vi???n B???ch Mai'),
(12, 37, '1961-01-01', '1963-01-01', 'Kh??ng r??', 'B??? ?????i', 'H?? N???i');

-- INSERT INTO USERTABLE
INSERT INTO USERTAB VALUES ('0000000012','dobuiquanganh','root','????? B??i Quang Anh','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000013','nguyenvietanh','root','Nguy???n Vi???t Anh','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000014','nguyenanhvuong','root','Nguy???n Anh V????ng','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000015','leanhdung','root','L?? Anh D??ng','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000016','daongocban','root','????o Ng???c B???n','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000017','phungngocvinh','root','Ph??ng Ng???c Vinh','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000018','nguyentienviet','root','Nguy???n Ti???n Vi???t','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000019','dangleduy','root','?????ng L?? Duy','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000020','ngotrunghieu','root','Ng?? Trung Hi???u','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');
INSERT INTO USERTAB VALUES ('0000000021','nguyencongbinh','root','Nguy???n C??ng B??nh','Hoa Th??m-H?? N???i','2021-05-01 12:12:12','Sinh vi??n','2001-02-31','123456789');

-- INSERT INTO MANAGER

INSERT INTO MANAGER VALUES('admin', '1', 'Nguy???n Ti???n Vi???t', 'Long Bi??n-H?? N???i', '2001-04-31', '2021-05-01 17:17:17', '0973265421');

-- INSERT INTO ROOM
INSERT INTO ROOM VALUES('H???i tr?????ng', 1, 'H???p ,H???i ,Li??n hoan');
INSERT INTO ROOM VALUES ('Ph??ng ch???c n??ng', 2, 'T??? ch???c v??n ngh???');
INSERT INTO ROOM VALUES ('S??n nh?? v??n h??a', 2, 'S??? ki???n ngo??i tr???i');

-- INSERT INTO ROOM
INSERT INTO INFRASTRUCTURE VALUES (1, 'B??n', 30, '2021-05-01', 'M???i nguy??n', 'H???i tr?????ng');
INSERT INTO INFRASTRUCTURE VALUES (2, 'Gh???', 100, '2021-05-01', 'M???i nguy??n', 'H???i tr?????ng');
INSERT INTO INFRASTRUCTURE VALUES (3, 'Loa',10 , '2021-05-01', 'M???i nguy??n', 'H???i tr?????ng');
INSERT INTO INFRASTRUCTURE VALUES (4, '????n', 20, '2021-05-01', 'M???i nguy??n', 'H???i tr?????ng');
INSERT INTO INFRASTRUCTURE VALUES (5, 'L??? hoa', 40, '2021-05-01', 'M???i nguy??n', 'H???i tr?????ng');
INSERT INTO INFRASTRUCTURE VALUES (6, 'M??y chi???u', 2, '2021-05-01', 'M???i nguy??n', 'H???i tr?????ng');
INSERT INTO INFRASTRUCTURE VALUES (7, 'B??n', 20, '2021-05-01', 'M???i', 'Ph??ng ch???c n??ng');
INSERT INTO INFRASTRUCTURE VALUES (8, 'Gh???', 60, '2021-05-01', 'M???i ', 'Ph??ng ch???c n??ng');
INSERT INTO INFRASTRUCTURE VALUES (9, 'Loa',20 , '2021-05-01', 'M???i ', 'Ph??ng ch???c n??ng');
INSERT INTO INFRASTRUCTURE VALUES (10, '????n', 30, '2021-05-01', 'M???i ', 'Ph??ng ch???c n??ng');
INSERT INTO INFRASTRUCTURE VALUES (11, 'L??? hoa', 50, '2021-05-01', 'M???i ', 'Ph??ng ch???c n??ng');
INSERT INTO INFRASTRUCTURE VALUES (12, 'M??y chi???u', 2, '2021-05-01', 'M???i ', 'Ph??ng ch???c n??ng');
INSERT INTO INFRASTRUCTURE VALUES (13, 'Loa', 4, '2021-05-01', 'M???i ', 'S??n nh?? v??n h??a');

-- INSERT INTO EVENTTABLE
INSERT INTO EVENTTABLE VALUES (1, 'H???p h???i ph??? n???', '2021-05-02 20:00:00', '2021-05-02 23:00:00', 'H???i tr?????ng', 'Ban t??? ch???c h???i ph??? n??? thu??', 0);
INSERT INTO EVENTTABLE VALUES (2, 'H???c sinh m?????n ph??ng t???p v??n ngh???', '2021-05-03 18:00:23', '2021-05-03 20:00:00', 'Ph??ng ch???c n??ng', 'C?? gi??o vi??n ??i k??m', 0);
INSERT INTO EVENTTABLE VALUES (3, 'H???p t??? d??n ph???', '2021-05-07 20:00:00', '2021-05-07 22:00:00', 'H???i tr?????ng', 'T??? tr?????ng t??? d??n ph??? t??? ch???c', 0);

INSERT INTO EVENTTABLE VALUES (4, 'C??ng ty Ti???n Vi???t m?????n ph??ng qu???ng b?? s???n ph???m', '2021-05-15 07:30:00', '2021-05-15 17:00:00', 'H???i tr?????ng', 'Ch??? t???ch c??ng ty ??a c???p', 1000000);
INSERT INTO EVENTTABLE VALUES (5, 'H???i th???o k?? n??ng s???ng', '2021-05-16 07:30:00', '2021-05-16 17:00:00', 'H???i tr?????ng', 'Sinh vi??n B??ch Khoa tuy??n truy???n', 0);
INSERT INTO EVENTTABLE VALUES (6, 'H???i tr???i', '2021-05-17 08:30:00', '2021-05-17 16:00:00', 'S??n nh?? v??n h??a', '??o??n vi??n thanh ni??n t??? ch???c', 0);

INSERT INTO EVENTTABLE VALUES (7, 'V??n ngh??? thi???u ni??n, thanh ni??n', '2021-05-18 20:00:00', '2021-05-18 22:00:00', 'Ph??ng ch???c n??ng', 'Chu???n b??? cho t???t thi???u nhi 6/1', 0);

--
ALTER TABLE USERTAB
  ADD FULLTEXT KEY `soCMT` (`soCMT`);



ALTER TABLE `chung_minh_thu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);
ALTER TABLE `chung_minh_thu` ADD FULLTEXT KEY `soCMT` (`soCMT`);

--
-- Ch??? m???c cho b???ng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idHoKhau` (`idHoKhau`),
  ADD KEY `nguoiThayDoi` (`nguoiThayDoi`);

--
-- Ch??? m???c cho b???ng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Ch??? m???c cho b???ng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idChuHo` (`idChuHo`);
ALTER TABLE `ho_khau` ADD FULLTEXT KEY `maHoKhau` (`maHoKhau`);

--
-- Ch??? m???c cho b???ng `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiKhai` (`idNguoiKhai`),
  ADD KEY `idNguoiChet` (`idNguoiChet`);

--
-- Ch??? m???c cho b???ng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiTao` (`idNguoiTao`),
  ADD KEY `idNguoiXoa` (`idNguoiXoa`);
ALTER TABLE `nhan_khau` 
  ADD FULLTEXT KEY `hoTen` (`hoTen`,`bietDanh`);
--


-- Ch??? m???c cho b???ng `thay_doi_nhan_khau`
ALTER TABLE `thay_doi_nhan_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);


-- Ch??? m???c cho b???ng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Ch??? m???c cho b???ng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Ch??? m???c cho b???ng `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD PRIMARY KEY (`idNhanKhau`,`idHoKhau`),
  ADD KEY `idHoKhau` (`idHoKhau`);

--
-- Ch??? m???c cho b???ng `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Ch??? m???c cho b???ng `users`
--
  ALTER TABLE `thu_ky`
    ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho c??c b???ng ???? ?????
--

----
-- AUTO_INCREMENT cho b???ng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT cho b???ng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho b???ng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho b???ng `ho_khau`
--
ALTER TABLE `ho_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho b???ng `khai_tu`
--
ALTER TABLE `khai_tu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho b???ng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho b???ng `thay_doi_nhan_khau`
ALTER TABLE `thay_doi_nhan_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;


-- AUTO_INCREMENT cho b???ng `tam_tru`
--
ALTER TABLE `tam_tru`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho b???ng `tam_vang`
--
ALTER TABLE `tam_vang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho b???ng `tieu_su`
--
ALTER TABLE `tieu_su`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho b???ng `users`
--
ALTER TABLE `thu_ky`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- C??c r??ng bu???c cho c??c b???ng ???? ?????
--
-- C??c r??ng bu???c cho b???ng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD CONSTRAINT `chung_minh_thu_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);
--
-- C??c r??ng bu???c cho b???ng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD CONSTRAINT `dinh_chinh_ibfk_1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`);
--
-- C??c r??ng bu???c cho b???ng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD CONSTRAINT `gia_dinh_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- C??c r??ng bu???c cho b???ng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD CONSTRAINT `ho_khau_ibfk_1` FOREIGN KEY (`idChuHo`) REFERENCES `nhan_khau` (`ID`);

--
-- C??c r??ng bu???c cho b???ng `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD CONSTRAINT `khai_tu_ibfk_1` FOREIGN KEY (`idNguoiKhai`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `khai_tu_ibfk_2` FOREIGN KEY (`idNguoiChet`) REFERENCES `nhan_khau` (`ID`);


ALTER TABLE `thay_doi_nhan_khau`
  ADD CONSTRAINT `thay_doi_nhan_khau_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);
 
--
-- C??c r??ng bu???c cho b???ng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD CONSTRAINT `tam_tru_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- C??c r??ng bu???c cho b???ng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- C??c r??ng bu???c cho b???ng `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_2` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`);

--
-- C??c r??ng bu???c cho b???ng `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD CONSTRAINT `tieu_su_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);
COMMIT;
