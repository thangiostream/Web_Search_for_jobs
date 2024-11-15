-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 02:36 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vieclamdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` mediumtext NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `NATIONALID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `NATIONALID`) VALUES
(2023017, 'Thang', 'Nguyen', 'Van', '137 Pham Hung', 'Female', 'Single', '2003-11-26', 'Quy Nhon', 20, 'vanthang', '8cb2237d0679ca88db6464eac60da96345513964', 'vanthangnguyen@gmail.com', '0772568859', '12', 'photos/da036963277958d9d7793039372aee7a.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `ID` int(11) NOT NULL,
  `FILEID` varchar(30) DEFAULT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) NOT NULL,
  `FILE_LOCATION` varchar(255) NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`ID`, `FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(14, '20236912565', 9, 'Resume', 'photos/051220230454301,2,3 (Thắng + Triều ).docx', 2023017);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(2, '000', 79, 1, 'employeeid'),
(3, '0', 18, 1, 'APPLICANT'),
(4, '69125', 66, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(34, 'Dược Sĩ'),
(37, '.NET Developer (Senior/Lead)'),
(39, 'Chuyên Viên Thu Hồi Nợ Trực Tiếp Cho Vay Tín Chấp '),
(40, 'Giám Sát Dịch Vụ Khách Hàng'),
(41, 'Chuyên Viên Quản Lí Quan Hệ Khách Hàng Ưu Tiên R2 '),
(42, 'Chuyên Viên Cao Cấp Khách Hàng Cá Nhân'),
(43, 'Kỹ Sư Triển Khai Bản Vẽ Autocad 2D');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL,
  `COMPANYSTATUS` varchar(90) NOT NULL,
  `COMPANYMISSION` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`, `COMPANYSTATUS`, `COMPANYMISSION`) VALUES
(12, 'Công ty TNHH Phần mềm FPT – FPT Software.', 'Tòa nhà FPT Cầu Giấy, Duy Tân, Quận Cầu Giấy, Hà Nội', '02437689048', '', ''),
(13, 'CÔNG TY TNHH BUYMED', 'Tòa FS - GoldSeason số 47 Nguyễn Tuân, P.Thanh Xuân Trung, Q.Thanh Xuân, Hà Nội', '0123456789', '', ''),
(14, 'Ngân Hàng Thương Mại Cổ Phần Quốc Tế Việt Nam', 'Tầng 1, (Tầng trệt) và Tầng 2 Tòa nhà Sailing Tower, số 111A Pasteur, Phường Bến Nghé, Quậ', '01234567891', '', ''),
(15, 'CÔNG TY TNHH BẢO HIỂM NHÂN THỌ SUN LIFE VIỆT NAM', 'Tầng L29, L30, Tòa Nhà Vietcombank Tower, 5 Công Trường Mê Linh, Phường Bến Nghé, Quận 1, ', '08743293473', '', ''),
(16, 'NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN KỸ THƯƠNG VIỆT NAM', 'Số 6 Quang Trung, phường Trần Hưng Đạo, Quận Hoàn Kiếm, Thành phố Hà Nội', '08743293473', '', ''),
(17, 'Công ty Phát triển Phần mềm Xây dựng Aureole', 'Tầng 22, Tòa nhà AB Tower, 76 Lê Lai, p. Bến Thành, Quận 1, TP.HCM', '0234561234', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblemployees`
--

INSERT INTO `tblemployees` (`INCID`, `EMPLOYEEID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `EMP_EMAILADDRESS`, `CELLNO`, `POSITION`, `WORKSTATS`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`, `COMPANYID`) VALUES
(77, '4451050344', 'Thắng', 'Nguyễn', 'Văn', '170 An Dương Vương , Tp Quy Nhơn , Bình Định', '2003-11-26', 'Gia Lai', 20, 'Male', 'Single', '0772568859', 'vanthangnguyen269@gmail.com', '', 'Kĩ sư hệ thống', '', '', '4451050344', '717f9ae91e5886e5d337bd4a2b3feb11ece86f1c', '2023-12-14', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` mediumtext NOT NULL,
  `JOBDESCRIPTION` mediumtext NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `SECTOR_VACANCY` mediumtext NOT NULL,
  `JOBSTATUS` varchar(90) NOT NULL,
  `DATEPOSTED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`) VALUES
(1, 2, 'Technology', 'ISD', 6, 15000, 'jan 30', 'Two year Experience', 'We are looking for bachelor of science in information technology.\r\nasdasdasd', 'Male/Female', 'yes', '', '2018-05-20 00:00:00'),
(2, 2, 'Technology', 'Accounting', 1, 15000, 'may 20', 'Two years Experience', 'We are looking for bachelor of science in Acountancy', 'Female', 'yes', '', '2018-05-20 02:33:00'),
(3, 14, 'Chuyên Viên Thu Hồi Nợ Trực Tiếp Cho Vay Tín Chấp ', 'Chuyên Viên ', 0, 0, '4 năm kinh nghiệm', 'Trình độ Cao đẳng trở lên, ưu tiên chuyên ngành Tài chính, Ngân hàng, Kinh tế, Kế toán, hoặc Luật;\\r\\nTối thiểu 5 năm (Chuyên viên cao cấp)/ 3 năm (Chuyên viên chính)/ 2 năm (Chuyên viên)/ưu tiên có (Nhân viên) kinh nghiệm làm việc trong lĩnh vực thu hồi nợ, ưu tiên có kinh nghiệm thu hồi nợ trực tiếp ở các trung tâm thu hồi nợ trực thuộc ngân hàng, các tổ chức tài chính; công ty quản lý tài sản;\\r\\nKiến thức về thị trường bán lẻ và quy định của pháp luật liên quan đến cho vay khách hàng cá nhân;\\r\\nKỹ năng quản lý danh mục một cách hiệu quả;\\r\\nKỹ năng đàm phán, quan hệ và giao tiếp, xử lý tình huống tốt;\\r\\nCó khả năng đi công tác thường xuyên.', 'Chịu trách nhiệm (i) Thực hiện việc trực tiếp tới nhà/cơ sở/công ty của khách hàng NHBL để thu hồi các khoản nợ quá hạn nhóm 2, nợ có vấn đề, nợ có rủi ro cao của các sản phẩm cho vay không có TSBĐ; (ii) Tham gia phát triển công tác thu hồi nợ quá hạn với các sản phẩm cho vay.\\r\\nTham gia lập kế hoạch và thực hiện thu hồi nợ các khoản nợ quá hạn, nợ có vấn đề của sản phẩm cho vay không có TSBĐ thuộc danh mục khách hàng Khối NHBL quản lý;\\r\\n\\r\\nTheo dõi và giám sát việc thực hiện các cam kết thanh toán/ phương án thu hồi nợ đã được phê duyệt; Đề xuất chuyển Phòng Xử lý Nợ/ đối tác thu nợ với đối với các khoản nợ không thể xử lý;\\r\\nTheo dõi giám sát việc thu hồi nợ của đối tác thu hồi nợ đối với các khách hàng thuộc địa bàn quản lý; Lưu trữ, bảo quản hồ sơ khách hàng của Phòng, chuyển hồ sơ sang Kho lưu trữ khi khách hàng đã tất toán hoặc bàn giao cho Phòng Xử lý Nợ/ đối tác thu nợ nếu khoản vay chuyển sang sự quản lý của Phòng Xử lý Nợ/ đối tác thu nợ;\\r\\nHỗ trợ tổ chức và tham gia triển khai các chương trình đào tạo giúp tăng tỉ lệ nợ được thu hồi của Trung tâm;\\r\\nThực hiện các nhiệm vụ khác theo phân công của cấp quản lý.', 'Nam/Nữ', 'Chuyên Viên Thu Hồi Nợ Trực Tiếp Cho Vay Tín Chấp ', '', '2023-12-05 10:38:00'),
(4, 12, '.NET Developer (Senior/Lead)', '.NET Developer (Senior/Lead) ', 0, 0, '4 năm kinh nghiệm', 'Tốt nghiệp CĐ/ĐH chuyên ngành Công nghệ thông tin hoặc có liên quan;\\r\\nThành thạo C#, ASP.NET và .NET Core framework, MS SQL Server;\\r\\nCó kiến thức và tư duy lập trình hướng đối tượng (OOP);\\r\\nƯu tiên có kinh nghiệm với HTML5, CSS, JavaScript, Boostrap, Webservices; Angular/ReactJS;\\r\\nƯu tiên có kiến thức về phân tích thiết kế lập trình và quy trình phát triển phần mềm;\\r\\nCó khả năng nghiên cứu và nắm bắt các công nghệ mới;\\r\\nKhả năng tiếng anh đọc hiểu tốt, giao tiếp căn bản;', 'Tham gia phân tích, thiết kế và phát triển các dự án phần mềm;\\r\\nTiếp cận và phát triển sản phẩm trên nền tảng Cloud Computing và Microservices;\\r\\nXây dựng và chỉnh sửa các module, tính năng theo yêu cầu;\\r\\nNghiên cứu công nghệ mới, áp dụng cải tiến business framework;\\r\\nĐược tham gia toàn bộ quy trình phát triển phần mềm;\\r\\nCơ hội phát triển bản thân, trở thành Team Leader trong tương lai.\\r\\nThời gian làm việc: từ thứ Hai tới thứ Sáu;\\r\\nCơ hội làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau;\\r\\nCơ hội học hỏi, đào tạo và tham gia vào các dự án lớn theo xu hướng công nghệ 4.0 trong lĩnh vực: Chính phủ, Y tế 4.0, SmartCity, Doanh nghiệp, Ngân hàng..;\\r\\nMôi trường làm việc thân thiện, năng động;\\r\\nTham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm.\\r\\nTham gia bảo hiểm FPTCare cho bản thân và gia đình;\\r\\nKhám sức khỏe định kỳ;\\r\\nDu lịch/nghỉ mát cùng công ty hàng năm;\\r\\n12 ngày phỉ phép, 03 ngày nghỉ mát và các ngày nghỉ Lễ theo quy định;\\r\\nLương tháng 13 và thưởng KPI;\\r\\nXem xét tăng lương hàng năm;\\r\\nTham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.', 'Nam/Nữ', 'Công nghệ thông tin', '', '2023-12-05 10:44:00'),
(5, 13, 'Dược Sĩ', 'Dược Sĩ ', 0, 0, '4 năm kinh nghiệm', 'Tốt nghiệp trung cấp trở lên chuyên ngành Dược \\r\\nĐã có kinh nghiệm làm việc tại nhà thuốc, có kinh nghiệm bán thuốc \\r\\nCó Tiếng Anh là một lợi thế \\r\\nKhả năng giao tiếp, tư vấn, giải quyết vấn đề \\r\\nTrung thực, nhiệt tình trong công việc.\\r\\nCó thể đứng quầy độc lập', 'Nhà thuốc Circa tự hào là chuỗi nhà thuốc đáng tin cậy luôn nỗ lực thiết lập hệ sinh thái chăm sóc sức khỏe, cung cấp hệ thống chăm sóc toàn diện và cung cấp cho khách hàng những sản phẩm hàng đầu cũng như nhiều dịch vụ chăm sóc sức khỏe.\\r\\nHướng tới năm 2025, tầm nhìn của chúng tôi là mở rộng tới 2.400 nhà thuốc và nâng cao dịch vụ điều trị y tế. Chúng tôi mong muốn phát triển các ứng dụng thân thiện với người dùng cho phép tương tác trực tuyến với bác sĩ để được tư vấn và cung cấp dịch vụ kê đơn tại các hiệu thuốc của chúng tôi.\\r\\nGiới thiệu, tư vấn bán thuốc cho khách hàng Tại nhà thuốc\\r\\nHướng dẫn giải đáp thắc mắc cách sử dụng thuốc/TPCN cho khách hàng\\r\\nNhận đơn thuốc từ bác sĩ, bệnh nhân, soạn thuốc theo yêu cầu của khách hàng, hướng dẫn khách sử dụng thuốc hợp lý, đúng theo chỉ dẫn của bác sĩ\\r\\nVệ sinh các dụng cụ, quầy tủ, kệ đựng thuốc gọn gàng, sạch sẽ\\r\\nKiểm thuốc được giao bởi Nhà cung cấp & nhập biên bản nhận hàng.\\r\\nKiểm tra xuất nhập theo quy định. Kiểm soát hàng nhập xuất: Đúng số lượng, chất lượng ghi trên phiếu, không sửa chữa, tẩy xoá. Hàng nhập trước xuất trước, chú ý hạn dùng. Đảm bảo an toàn tuyệt đối\\r\\nBảo quản, kiểm kê hạn sử dụng, tình trạng hàng hóa để có phương án xử lý hàng hết hạn, hư hỏng\\r\\n', 'Nam/Nữ', 'Dược sĩ', '', '2023-12-05 10:47:00'),
(6, 15, 'Giám Sát Dịch Vụ Khách Hàng', 'Giám Sát', 0, 0, '4 năm kinh nghiệm', 'KIẾN THỨC VÀ KỸ NĂNG:\\r\\n\\r\\n- Tư duy phục vụ khách hàng\\r\\n- Chú ý đến chi tiết và khả năng làm theo qui trình, qui định\\r\\n- Kỹ năng phân tích và xử lý khiếu nại\\r\\n- Kỹ năng đa nhiệm\\r\\n- Kỹ năng giao tiếp và tổ chức , quản lý đội nhóm hiêu quả\\r\\n- Kỹ năng đưa ra quyết định\\r\\n- Kỹ năng máy tính tốt (Excel, Word, Access)\\r\\n- Kỹ năng giao tiếp tiếng Anh (nói và viết). Thành thạo tiếng Anh là một lợi thế\\r\\n\\r\\n\\r\\nKỸ NĂNG GIẢI QUYẾT VẤN ĐỀ:\\r\\n\\r\\n- Chủ động giải quyết vấn đề\\r\\n- Có khả năng thấu hiểu hoặc hoàn thành hoặc giải quyết các nhiệm vụ/vấn đề/tình huống/con người\\r\\n- Là đầu mối tiếp nhận thông tin và xử các vấn đề phức tạp và không thường nhật\\r\\n\\r\\n\\r\\nHỌC VẤN VÀ KINH NGHIỆM:\\r\\n\\r\\n- Tốt nghiệp Cao đẳng/Đại học\\r\\n- Có ít nhất 2 năm làm nhân viên chăm sóc khách hàng trong lĩnh vực dịch vụ tài chính, ưu tiên có kinh nghiệm về bảo hiểm nhân thọ.', 'Mô tả công việc\\r\\nTRÁCH NHIỆM CHÍNH:\\r\\n\\r\\n- Giám sát tất cả đầu mục công việc Dịch vụ khách hàng trong khu vực được phân công, bao gồm các hoạt động hàng ngày, thực hiện dịch vụ tiêu chuẩn, phong cách giao tiếp; và hỗ trợ thực hiện công việc cùng nhóm. (50%)\\r\\n- Hỗ trợ bộ phận Quản lý Văn phòng trong việc giám sát / thực hiện các công việc quản lý văn phòng, bao gồm các dịch vụ văn phòng và bảo trì. Vai trò này là đầu mối tiếp nhận thông tin và xử lý các vấn đề phức tạp và không thường nhật xảy ra trong khu vực cùng với người phụ trách từ bộ phận Quản lý văn phòng. (20%)\\r\\n- Hoàn thành tất cả các báo cáo cần thiết hàng ngày để kiểm soát chất lượng và đưa ra phản hồi kịp thời. (5%)\\r\\n- Cập nhật và truyền đạt kiến thức chuyên môn cho các thành viên trong nhóm thông qua đào tạo và huấn luyện. (15%)\\r\\n- Đánh giá và quản lý hiệu quả làm việc của nhân viên. Xác định và giải quyết kịp thời các nhu cầu đào tạo và huấn luyện nhân viên. (10%)\\r\\n\\r\\n \\r\\n\\r\\nQUẢN LÝ ĐỘI NHÓM:\\r\\n\\r\\n- Tổng số nhân viên quản lý (báo cáo trực tiếp): 6 - 10\\r\\n- Tổng số địa điểm quản lý: 4 – 6\\r\\n ', 'Nam/Nữ', 'Giám Sát', '', '2023-12-05 10:53:00'),
(7, 16, 'Chuyên Viên Quản Lí Quan Hệ Khách Hàng Ưu Tiên R2 ', 'Chuyên Viên ', 0, 0, '4 năm kinh nghiệm', '- Tốt nghiệp Đại học;  \\r\\n- Có ít nhất từ 2 năm kinh nghiệm tín dụng, kinh doanh, bán hàng trực tiếp trong lĩnh vực tài chính ngân hàng. Ưu tiên ứng viên có 1-3 năm tư vấn sản phẩm dịch vụ cho phân khúc khách hàng ưu tiên,...; \\r\\n- Đã có kinh nghiệm quản lý danh mục khách hàng . Am hiểu hành vi và có khả năng phân tích nhu cầu của KHƯT; \\r\\n- Am hiểu các sản phẩm dành cho KHƯT bao gồm: tiết kiệm, tín dụng, đầu tư, bảo hiểm, thẻ...và có khả năng tư vấn gói giải pháp tài chính tổng thể cho khách hàng; \\r\\n- Khả năng học hỏi và nắm bắt nhanh, chịu được áp lực công việc cao.', '- Quản lý, chăm sóc danh mục khách 150 - 200 KHUT được giao định kỳ và đánh giá được hiệu quả danh mục khách hàng; \\r\\n- Xây dựng mạng lưới khách hàng, mở rộng quan hệ từ tệp khách hàng có sẵn để khai thác và tìm kiếm các khách hàng tiềm năng; \\r\\n- Khai thác thông tin, phân tích và đánh giá các sản phẩm/dịch vụ khách hàng đang sử dụng để am hiểu toàn diện nhu cầu tài chính của khách hàng; \\r\\n- Tư vấn các sản phẩm dành cho đối tượng KHƯT bao gồm: tiết kiệm, tín dụng, đầu tư, bảo hiểm \\r\\nManulife, thẻ tín dụng,..; \\r\\n- Liên tục cập nhật cho KH các tính năng mới, lợi ích mới của sản phẩm dịch vụ khách hàng đang sử dụng, các chính sách, quy định có tác động đến tài sản KH và thông tin thay đổi của thị trường, xu thế; \\r\\n- Ghi nhận & phản hồi ý kiến của khách hàng về sản phẩm dịch vụ và đề xuất các giải pháp để nâng cao tiêu chuẩn chất lượng dịch vụ cho khách hàng ưu tiên (Sẽ được đào tạo về sản phẩm, quy định của ngân hàng trước khi vào làm việc); \\r\\n- Bán các sản phẩm: Bảo hiểm, thẻ, huy động, trái phiếu, tương tác khách hàng vip,....', 'Nam/Nữ', 'Ngân hàng', '', '2023-12-05 10:57:00'),
(8, 16, 'Chuyên Viên Cao Cấp Khách Hàng Cá Nhân', 'Chuyên Viên Cao Cấp Khách Hàng Cá Nhân', 0, 0, '4 năm kinh nghiệm', ' Trình độ đại học với chuyên ngành đào tạo: kinh tế, tài chính, ngân hàng, ngoại thương\\r\\n\\r\\n- Tối thiểu 5 năm kinh nghiệm trong lĩnh vực Ngân hàng ở vị trí tương đương\\r\\n\\r\\n- Có kinh nghiệm sử dụng các phần mềm VP, tài chính ngân hàng.\\r\\n\\r\\n- Trình độ tiếng Anh: Không áp dụng\\r\\n\\r\\n ', '1. KHÁCH HÀNG: TƯ VẤN VÀ CUNG CẤP SẢN PHẨM, DỊCH VỤ TÀI CHÍNH CÁ NHÂN PHÙ HỢP VỚI NHU CẦU CỦA KHÁCH HÀNG.\\r\\n\\r\\n- Tiếp nhận, tìm hiểu các thông tin của khách hàng để tư vấn và cung cấp các sản phẩm, dịch vụ phù hợp với nhu cầu của khách hàng hoặc giới thiệu tới các vị trí theo quy định nhằm mang lại trải nghiệm tốt nhất cho Khách hàng.\\r\\n\\r\\n- Khai thác, tư vấn, cung cấp các sản phẩm, dịch vụ tài chính cá nhân phù hợp với nhu cầu khách hàng theo danh sách khách hàng được giao trong từng thời kỳ.\\r\\n\\r\\n- Phát triển khách hàng theo các kênh bán theo định hướng từng thời kỳ của ngân hàng.\\r\\n\\r\\n2. SẢN PHẨM and DỊCH VỤ: ĐẢM BẢO VÀ NÂNG CAO CHẤT LƯỢNG DỊCH VỤ, GIÚP MANG TỚI TRẢI NGHIỆM KHÁCH HÀNG TỐT NHẤT\\r\\n\\r\\n- Thực hiện các giao dịch/ tư vấn theo yêu cầu của Khách hàng một cách chính xác, đầy đủ, nhanh chóng và kịp thời, đảm bảo đúng SLAs và các tiêu chuẩn về Chất lượng dịch vụ.\\r\\n\\r\\n- Cập nhật thông tin về sản phẩm, quy trình/ quy định, chương trình Marketing, các chiến dịch bán hàng mới và hướng dẫn của Techcombank theo từng thời kỳ nhằm cung cấp dịch vụ của Ngân hàng cho khách hàng tốt nhất.\\r\\n\\r\\n- Tiếp nhận, giải quyết các yêu cầu, khiếu nại của khách hàng theo đúng quy định của Techcombank.\\r\\n\\r\\n- Có khuyến nghị đối với các bộ phận liên quan nhằm góp phần cải thiện các vấn đề về sản phẩm, quy trình, chính sách theo từng thời kỳ.\\r\\n\\r\\n3. HỆ THỐNG: TUÂN THỦ VẬN HÀNH and QUẢN LÝ RỦI RO\\r\\n\\r\\n- Thực hiện công việc theo đúng chính sách, quy trình, quy định, hướng dẫn của Ngân hàng.\\r\\n\\r\\n- Thực hiện nhận biết thông tin khách hàng cũng như các dấu hiệu cảnh báo trước, trong và sau khi giao dịch của khách hàng, đảm bảo tuân thủ đúng quy trình, quy định của Techcombank và pháp luật.\\r\\n\\r\\n- Quản lý rủi ro tín dụng, rủi ro vận hành trên danh sách khách hàng được giao theo đúng quy định và hướng dẫn của ngân hàng\\r\\n\\r\\n- Đảm bảo sự tuân thủ đối với chính sách, quy trình quy chế của Techcombank.\\r\\n\\r\\n- Tuân thủ quy trình kiểm tra sau vay (kiểm soát mục đích sử dụng vốn của khách hàng, tài sản đảm bảo, tình hình tài chính ...). Định kỳ theo quy định của các sản phẩm tín dụng/quy định kiểm soát sau vay thực hiện đánh giá khách hàng, kiểm soát mục đích sử dụng vốn của khách hàng, lập tức thông báo ngay cho các bộ phận liên quan khi khách hàng có vấn đề về tình hình tài chính, khả năng trả nợ, mục đích sử dụng vốn.v.v...\\r\\n\\r\\n- Nhận diện, báo cáo, tham gia các công tác xử lý rủi ro hoạt động.\\r\\n\\r\\n- Tuân thủ các quy định về bảo mật thông tin và an ninh thông tin.\\r\\n\\r\\n4. NHÂN SỰ: PHÁT TRIỂN CON NGƯỜI and XÂY DỰNG VHTC\\r\\n\\r\\n4.1. Phát triển bản thân\\r\\n\\r\\n- Tham gia đầy đủ các chương trình đào tạo của TCB\\r\\n\\r\\n- Luôn có tinh thần tự học hỏi trong công việc và cuộc sống\\r\\n\\r\\n- Chủ động xây dựng kế hoạch phát triển bản thân.\\r\\n\\r\\n- Luôn có thái độ cởi mở chia sẻ thông tin với người khác and tinh thần sẵn sàng đón nhận thay đổi.\\r\\n\\r\\n- Làm chủ, chịu trách nhiệm trong công việc, hướng đến kết quả vượt trội.\\r\\n\\r\\n4.2. Xây dựng VHTC tại đơn vị\\r\\n\\r\\n- Xây dựng văn hóa gắn kết, khuyến khích đồng nghiệp đạt được thành công.\\r\\n\\r\\n- Nhận thức đầy đủ về văn hóa tổ chức của Techcombank và thực hiện nhiệm vụ theo tinh thần các giá trị cốt lõi, chuẩn mực hành vi của TCB, thể hiện DNA của Techcomer.\\r\\n\\r\\n5. QUẢN TRỊ HIỆU QUẢ: QUẢN LÝ KẾ HOẠCH and KẾT QUẢ KINH DOANH\\r\\n\\r\\n- Xây dựng và thực hiện kế hoạch kinh doanh của cá nhân để đạt được các chỉ tiêu kinh doanh được giao.\\r\\n\\r\\n Thực hiện các công việc khác có liên quan theo yêu cầu của GĐ khách hàng cá nhân/ GĐ Chi nhánh', 'Nam/Nữ', 'Ngân Hàng', '', '2023-12-05 10:59:00'),
(9, 17, 'Kỹ Sư Triển Khai Bản Vẽ Autocad 2D', 'Kỹ sư', 0, 0, '4 năm kinh nghiệm', '• Tốt nghiệp trình độ Trung cấp/Cao đẳng/Đại học các ngành liên quan đến Xây dựng, Kỹ thuật, Kiến trúc\\r\\n\\r\\n• Kỹ năng cần có: sử dụng thành thạo Autocad\\r\\n\\r\\n• Biết tiếng Nhật hoặc yêu thích môi trường làm việc trong các công ty Nhật là một lợi thế\\r\\n\\r\\n• Không yêu cầu kinh nghiệm, sẽ được đào tạo khi vào công ty.\\r\\n\\r\\n• Mong muốn được gắn bó lâu dài', '• Triển khai bản vẽ kết cấu thi công các công trình Nhật Bản (nội thất nhà ở, nhà bếp, phòng tắm cao cấp...)\\r\\n\\r\\n• Thực hiện các nghiệp vụ triển khai bản vẽ theo yêu cầu từ phía khách hàng hoặc hướng dẫn từ quản lý\\r\\n\\r\\n• Sử dụng chính phần mềm Autocad (hoặc phần mềm riêng từ phía khách hàng)', 'Nam/Nữ', 'Xây Dựng', '', '2023-12-05 11:02:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` varchar(30) DEFAULT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`) VALUES
(14, 17, 9, 2023017, 'Thang Nguyen', '2023-12-05', 'Pending', '20236912565', 1, 1, '2023-12-05 16:54:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00018', 'Nguyen Van Thang', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/WIN_20231108_14_10_40_Pro.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Chỉ mục cho bảng `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Chỉ mục cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Chỉ mục cho bảng `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Chỉ mục cho bảng `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Chỉ mục cho bảng `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Chỉ mục cho bảng `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Chỉ mục cho bảng `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Chỉ mục cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023018;

--
-- AUTO_INCREMENT cho bảng `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
