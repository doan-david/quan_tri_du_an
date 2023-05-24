-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 09:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmucbaiviet` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmucbaiviet`, `tinhtrang`, `hinhanh`) VALUES
(19, 'Vietnam Airlines ký kết hợp tác toàn diện với tỉnh Hà Nam', '<p>Lễ k&yacute; kết nằm trong khu&ocirc;n khổ chương tr&igrave;nh X&uacute;c tiến đầu tư ph&aacute;t triển du lịch tỉnh H&agrave; Nam, mở ra cơ hội ph&aacute;t triển du lịch, đầu tư thương mại v&agrave; h&agrave;ng kh&ocirc;ng.</p>\r\n', '<p>Theo đ&oacute;, Vietnam Airlines v&agrave; tỉnh H&agrave; Nam sẽ phối hợp đẩy mạnh x&uacute;c tiến, quảng b&aacute; thị trường du lịch h&agrave;ng kh&ocirc;ng trong v&agrave; ngo&agrave;i nước về điểm đến, c&aacute;c sản phẩm dịch vụ du lịch, h&agrave;ng kh&ocirc;ng, cơ hội đầu tư của hai b&ecirc;n tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin đại ch&uacute;ng.</p>\r\n\r\n<p>Hai b&ecirc;n sẽ phối hợp nghi&ecirc;n cứu c&aacute;c sản phẩm v&agrave; tuyến điểm du lịch, tổ chức c&aacute;c sự kiện gi&aacute;o dục, văn h&oacute;a, thể thao v&agrave; du lịch&hellip;mang tầm quốc gia v&agrave; khu vực.</p>\r\n\r\n<p>Hợp t&aacute;c to&agrave;n diện giữa UBND tỉnh H&agrave; Nam v&agrave; Vietnam Airlines sẽ g&oacute;p phần hỗ trợ du lịch tỉnh ph&aacute;t triển mạnh mẽ hơn nữa, trở th&agrave;nh ng&agrave;nh&nbsp;<a href=\"https://vtc.vn/kinh-te-29.html\" title=\"kinh tế\">kinh tế</a>&nbsp;quan trọng, đ&oacute;ng g&oacute;p t&iacute;ch cực v&agrave;o sự ph&aacute;t triển kinh tế - x&atilde; hội của tỉnh n&oacute;i ri&ecirc;ng v&agrave; khu vực miền Bắc n&oacute;i chung, tạo động lực th&uacute;c đẩy cho nhiều ng&agrave;nh, lĩnh vực kh&aacute;c.</p>\r\n\r\n<p><img alt=\"Vietnam Airlines ký kết hợp tác toàn diện với tỉnh Hà Nam  - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/20/hop-tac-toan-dien-giua-ubnd-tinh-ha-nam-va-vietnam-airlines-se-gop-phan-ho-tro-du-lich-tinh-phat-trien-manh-me-hon-nua-tro-thanh-nganh-kinh-te-quan-trong-12284478.jpg\" style=\"height:495px\" /></p>\r\n\r\n<p>Hợp t&aacute;c to&agrave;n diện giữa UBND tỉnh H&agrave; Nam v&agrave; Vietnam Airlines sẽ g&oacute;p phần hỗ trợ du lịch tỉnh ph&aacute;t triển mạnh mẽ hơn nữa, trở th&agrave;nh ng&agrave;nh kinh tế quan trọng.</p>\r\n\r\n<p>H&agrave; Nam l&agrave; một v&ugrave;ng kinh tế trọng điểm Bắc Bộ, sở hữu nguồn t&agrave;i nguy&ecirc;n du lịch tự nhi&ecirc;n v&agrave; nh&acirc;n văn phong ph&uacute;, mang lại lợi thế quan trọng để khai th&aacute;c nhiều loại h&igrave;nh du lịch hấp dẫn như: du lịch sinh th&aacute;i, du lịch n&ocirc;ng th&ocirc;n, du lịch văn h&oacute;a - t&acirc;m linh, trong đ&oacute;, du lịch văn h&oacute;a - t&acirc;m linh l&agrave; thế mạnh nổi trội, đặc biệt tại khu du lịch quốc gia Tam Ch&uacute;c.</p>\r\n\r\n<p>H&agrave; Nam nổi tiếng với nhiều điểm đến như: Khu du lịch t&acirc;m linh Ch&ugrave;a B&agrave; Đanh - N&uacute;i Ngọc, Đền Tr&uacute;c - Ngũ Động Sơn, Khu du lịch L&agrave;ng nghề dệt lụa tơ tằm Nha X&aacute;, Hang Luồn, Ao Dong&hellip;</p>\r\n\r\n<p>L&agrave; h&atilde;ng h&agrave;ng kh&ocirc;ng quốc gia với chất lượng dịch vụ quốc tế 4 sao, Vietnam Airlines cam kết kh&ocirc;ng ngừng mở rộng mạng bay, kết nối giữa c&aacute;c điểm du lịch hấp dẫn khắp cả nước.</p>\r\n\r\n<p>Mạng đường bay rộng khắp c&ugrave;ng lịch bay thuận lợi sẽ tạo điều kiện cho du kh&aacute;ch gh&eacute; thăm tỉnh H&agrave; Nam bằng c&aacute;ch trung chuyển qua c&aacute;c s&acirc;n bay l&acirc;n cận như Nội B&agrave;i (H&agrave; Nội), C&aacute;t Bi (Hải Ph&ograve;ng) hoặc V&acirc;n Đồn (Quảng Ninh); đồng thời tăng cường kết nối c&aacute;c điểm đến của tỉnh H&agrave; Nam với c&aacute;c tỉnh, th&agrave;nh kh&aacute;c trong cả nước, tạo th&agrave;nh c&aacute;c tuyến du lịch hấp dẫn giới thiệu tới đ&ocirc;ng đảo du kh&aacute;ch trong v&agrave; ngo&agrave;i nước.</p>\r\n', 4, 1, '1684563610_tin1.jpg'),
(21, 'Giá vàng hôm nay 20/5: Kim loại quý giảm giá nhẹ', '<p>gi&aacute; v&agrave;ng h&ocirc;m nay</p>\r\n', '<h2>S&aacute;ng nay 20/5 (giờ Việt Nam), gi&aacute; v&agrave;ng thế giới giảm nhẹ 2 USD/ounce, trong khi v&agrave;ng trong nước tăng 50.000 - 100.000 đồng mỗi lượng.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute; v&agrave;ng h&ocirc;m nay đang ở mức 1.956 USD/ounce, giảm 2 USD so với ng&agrave;y trước đ&oacute;.</p>\r\n\r\n<p>&Ocirc;ng Lorie Logan, Chủ tịch Cục Dự trữ li&ecirc;n bang Mỹ (Fed) chi nh&aacute;nh Dallas, cho biết, lạm ph&aacute;t vẫn chưa hạ nhiệt đủ nhanh để cho ph&eacute;p Fed tạm dừng tăng l&atilde;i suất v&agrave;o th&aacute;ng 6/2023. Theo c&aacute;c quan chức của Fed, vẫn c&ograve;n qu&aacute; sớm để đ&aacute;nh gi&aacute; t&aacute;c động đầy đủ của việc tăng l&atilde;i suất.</p>\r\n\r\n<p>Thị trường đang dự đo&aacute;n x&aacute;c suất Fed giữ nguy&ecirc;n l&atilde;i suất trong cuộc họp th&aacute;ng S&aacute;u l&agrave; 82%.</p>\r\n\r\n<p>Trong khi đ&oacute;, Tổng thống Joe Biden v&agrave; Chủ tịch Hạ viện Kevin McCarthy đều đưa ra những b&igrave;nh luận lạc quan về việc ho&agrave;n tất một thỏa thuận trước ng&agrave;y 1/6 li&ecirc;n quan tới nợ c&ocirc;ng.</p>\r\n\r\n<p>ADVERTISEMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Giá vàng hôm nay 20/5: Kim loại quý giảm giá nhẹ - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/20/gia-vang-vtc-07075661.jpeg\" style=\"height:413px\" /></p>\r\n\r\n<p>Gi&aacute; v&agrave;ng h&ocirc;m nay giảm nhẹ.</p>\r\n\r\n<p><strong>Diễn biến gi&aacute; v&agrave;ng h&ocirc;m nay</strong></p>\r\n\r\n<p>+ Gi&aacute; v&agrave;ng trong nước</p>\r\n\r\n<p>L&uacute;c 7h ng&agrave;y 20/5, gi&aacute; v&agrave;ng tại Doji được ni&ecirc;m yết ở mức 66,55 - 67,15 triệu đồng/lượng (mua - b&aacute;n), tăng 50.000 đồng/lượng ở cả 2 chiều mua - b&aacute;n so với c&ugrave;ng thời điểm h&ocirc;m qua.</p>\r\n\r\n<p>Trong khi đ&oacute;, gi&aacute; v&agrave;ng tại SJC được ni&ecirc;m yết ở mức 66,65 - 67,25 triệu đồng/lượng (mua - b&aacute;n), tăng 100.000 đồng/lượng ở cả hai chiều v&agrave;o so với chiều qua.</p>\r\n\r\n<p>Gi&aacute; v&agrave;ng nhẫn, nữ trang c&aacute;c loại giao dịch quanh mức 54,84 - 57,00 triệu đồng/lượng.</p>\r\n\r\n<p>+ Gi&aacute; v&agrave;ng quốc tế</p>\r\n\r\n<p>C&ugrave;ng thời điểm,&nbsp;<a href=\"https://vtc.vn/tin-gia-vang-113.html\" title=\"giá vàng thế giới\">gi&aacute; v&agrave;ng thế giới</a>&nbsp;ni&ecirc;m yết tr&ecirc;n s&agrave;n Kitco ở mức 1.956 USD/ounce, giảm 2 USD so với phi&ecirc;n giao dịch trước đ&oacute;.&nbsp;</p>\r\n\r\n<p>V&agrave;ng tương lai th&aacute;ng 6 giao dịch lần cuối ở mức 1.959,8 USD/ounce, giảm 25,1 USD so với rạng s&aacute;ng ng&agrave;y h&ocirc;m qua, 18/5 (giờ Việt Nam ).</p>\r\n\r\n<p><strong>Dự b&aacute;o gi&aacute; v&agrave;ng</strong></p>\r\n\r\n<p>C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch cảnh b&aacute;o rằng nếu kh&ocirc;ng giữ được mức 1.950 USD/ounce, v&agrave;ng c&oacute; nguy cơ thua lỗ nhiều hơn.</p>\r\n\r\n<p>C&aacute;c yếu tố đẩy v&agrave;ng đi xuống bao gồm sự phục hồi của đồng USD khi thị trường định gi&aacute; lại khả năng tăng l&atilde;i suất của Fed. Theo c&ocirc;ng cụ CME FedWatch, c&oacute; 38% khả năng l&atilde;i suất sẽ tăng th&ecirc;m 25 điểm cơ bản v&agrave;o th&aacute;ng 6. Những dữ liệu vĩ m&ocirc; c&ocirc;ng bố gần đ&acirc;y đang củng cố khả năng n&agrave;y.</p>\r\n\r\n<p>Theo chiến lược gia thị trường trưởng Phillip Streible của Blue Line Futures, những dữ liệu mới đ&acirc;y cho thấy khả năng về một cuộc hạ c&aacute;nh mềm. Điều n&agrave;y đ&atilde; th&uacute;c đẩy đồng USD. Rạng s&aacute;ng nay, chỉ số US Dollar Index đ&atilde; tăng 0,62% l&ecirc;n 103,52 điểm.</p>\r\n\r\n<p>Trong cuộc họp th&aacute;ng 5, Chủ tịch Fed Jerome Powell đ&atilde; b&aacute;o hiệu khả năng tạm dừng chu kỳ thắt chặt ch&iacute;nh s&aacute;ch tiền tệ mạnh mẽ, vốn chứng kiến l&atilde;i suất tăng 5% chỉ sau hơn một năm.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, nhiều quan chức của Fed vẫn tương đối &ldquo;diều h&acirc;u&rdquo;, buộc thị trường phải điều chỉnh lại kỳ vọng l&atilde;i suất th&aacute;ng 6 v&agrave; đẩy l&ugrave;i hy vọng cắt giảm l&atilde;i suất v&agrave;o cuối năm.</p>\r\n\r\n<p>Chủ tịch Fed chi nh&aacute;nh St. Louis James Bullard n&oacute;i rằng lạm ph&aacute;t ở Mỹ đang kh&ocirc;ng hạ nhiệt đủ nhanh để Fed nhấn n&uacute;t tạm dừng. Chủ tịch Fed chi nh&aacute;nh Dallas Lorie Logan cũng cho rằng c&ograve;n qu&aacute; sớm để Fed tạm dừng.&nbsp;</p>\r\n\r\n<p>Theo chiến lược gia thị trường cấp cao Frank Cholly của RJO Futures, hiện c&ograve;n qu&aacute; sớm để n&oacute;i đ&acirc;u l&agrave; đ&aacute;y của v&agrave;ng. Tuy nhi&ecirc;n, mức 1.950 USD/ounce l&agrave; mức m&agrave; v&agrave;ng cần phải giữ.&nbsp;&nbsp;</p>\r\n\r\n<p>Chuy&ecirc;n gia n&agrave;y dự b&aacute;o kim loại qu&yacute; c&oacute; thể sẽ đi ngang khi kh&ocirc;ng t&igrave;m thấy chất x&uacute;c t&aacute;c trong thời điểm hiện tại để đẩy gi&aacute; l&ecirc;n tr&ecirc;n 2.000 USD/ounce. Tuy nhi&ecirc;n, nếu khả năng vỡ nợ tăng cao, v&agrave;ng sẽ được hưởng lợi. Cholly cũng kh&ocirc;ng loại trừ khả năng Fed sẽ tăng th&ecirc;m 25 điểm cơ bản v&agrave;o th&aacute;ng 6.</p>\r\n', 4, 1, '1684564998_tin3.webp'),
(22, 'Bảng lương sĩ quan quân đội theo cấp bậc quân hàm áp dụng từ 1/7/2023', '<p>Bảng lương của sĩ quan qu&acirc;n đội &aacute;p dụng từ ng&agrave;y 1/7/2023 theo cấp bậc qu&acirc;n h&agrave;m đ&atilde; được quy định cụ thể.</p>\r\n', '<p>Theo Điều 1 Luật Sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam 1999 quy định về sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam, sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam (sĩ quan) l&agrave; c&aacute;n bộ của Đảng Cộng sản Việt Nam v&agrave; Nh&agrave; nước Cộng h&ograve;a x&atilde; hội chủ nghĩa Việt Nam, hoạt động trong lĩnh vực qu&acirc;n sự, được Nh&agrave; nước phong qu&acirc;n h&agrave;m cấp &uacute;y, cấp t&aacute;, cấp tướng.</p>\r\n\r\n<p>Bảng lương sĩ quan Qu&acirc;n đội theo cấp bậc qu&acirc;n h&agrave;m được thực hiện theo Mục 1 Bảng 6 ban h&agrave;nh k&egrave;m theo Nghị định số 204/2004/NĐ-CP. Mức lương cơ sở hiện h&agrave;nh l&agrave; 1.490.000 đồng/th&aacute;ng (theo Nghị định số 38/2019/NĐ-CP).</p>\r\n\r\n<p>Theo Nghị quyết của Quốc hội, từ ng&agrave;y 1/7/2023 sẽ thực hiện tăng lương cơ sở cho c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức l&ecirc;n mức 1.800.000 đồng/th&aacute;ng - tương đương tăng 20,8% so với mức lương cơ sở hiện h&agrave;nh.</p>\r\n\r\n<p>Do đ&oacute;, bảng lương của sĩ quan qu&acirc;n đội từ ng&agrave;y 1/7/2023 sẽ tăng so với quy định cũ.&nbsp;</p>\r\n\r\n<h2>Như vậy, tiền lương sĩ quan qu&acirc;n đội theo cấp bậc qu&acirc;n h&agrave;m từ 1/7/2023 như sau:</h2>\r\n\r\n<p><img alt=\"Bảng lương sĩ quan quân đội theo cấp bậc quân hàm áp dụng từ 1/7/2023 - 2\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/15/bang-luong-qd-09371423.JPG\" style=\"height:536px\" /></p>\r\n\r\n<p>Tiền lương sĩ quan qu&acirc;n đội theo cấp bậc qu&acirc;n h&agrave;m</p>\r\n\r\n<p><strong>Tiền lương, phụ cấp, nh&agrave; ở đối với sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n thế n&agrave;o?</strong></p>\r\n\r\n<p>Tại Điều 31 Luật sửa đổi, bổ sung một số điều của Luật Sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam (năm 2008) quy định về tiền lương, phụ cấp, nh&agrave; ở v&agrave; điều kiện l&agrave;m việc đối với sĩ quan tại ngũ như sau:</p>\r\n\r\n<p>1. Chế độ tiền lương v&agrave; phụ cấp do Ch&iacute;nh phủ quy định;</p>\r\n\r\n<p>Bảng lương của sĩ quan căn cứ v&agrave;o cấp bậc qu&acirc;n h&agrave;m v&agrave; chức vụ được quy định ph&ugrave; hợp với t&iacute;nh chất, nhiệm vụ của qu&acirc;n đội l&agrave; ng&agrave;nh lao động đặc biệt;</p>\r\n\r\n<p>Th&acirc;m ni&ecirc;n t&iacute;nh theo mức lương hiện hưởng v&agrave; thời gian phục vụ tại ngũ.</p>\r\n\r\n<p>Sĩ quan được hưởng phụ cấp, trợ cấp như đối với c&aacute;n bộ, c&ocirc;ng chức c&oacute; c&ugrave;ng điều kiện l&agrave;m việc v&agrave; phụ cấp, trợ cấp c&oacute; t&iacute;nh chất đặc th&ugrave; qu&acirc;n sự;</p>\r\n\r\n<p>2. Đủ ti&ecirc;u chuẩn, đến thời hạn x&eacute;t thăng qu&acirc;n h&agrave;m nhưng đ&atilde; c&oacute; bậc qu&acirc;n h&agrave;m cao nhất của chức vụ đang đảm nhiệm hoặc đ&atilde; c&oacute; bậc qu&acirc;n h&agrave;m Đại t&aacute;, cấp tướng 4 năm trở l&ecirc;n m&agrave; chưa được thăng cấp bậc qu&acirc;n h&agrave;m cao hơn th&igrave; được n&acirc;ng lương theo chế độ tiền lương của sĩ quan;</p>\r\n\r\n<p>3. Giữ nhiều chức vụ trong c&ugrave;ng một thời điểm th&igrave; được hưởng quyền lợi của chức vụ cao nhất v&agrave; phụ cấp ki&ecirc;m nhiệm chức danh l&atilde;nh đạo theo quy định của ph&aacute;p luật;</p>\r\n\r\n<p>4. Khi được giao chức vụ thấp hơn chức vụ đang đảm nhiệm theo quy định tại điểm a khoản 3 Điều 21 Luật Sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam th&igrave; được giữ nguy&ecirc;n quyền lợi của chức vụ cũ;</p>\r\n\r\n<p>5. Khi c&oacute; quyết định miễn nhiệm chức vụ th&igrave; được hưởng c&aacute;c quyền lợi theo cương vị mới;</p>\r\n\r\n<p>6. Được bảo đảm điều kiện để thực hiện nhiệm vụ theo quy định của Bộ trưởng Bộ Quốc ph&ograve;ng;</p>\r\n\r\n<p>7. Được bảo đảm nh&agrave; ở, đăng k&yacute; hộ khẩu theo quy định của Ch&iacute;nh phủ.</p>\r\n\r\n<p><strong>Tiền lương qu&acirc;n đội sẽ được x&acirc;y dựng theo chức vụ, chức danh, cấp bậc qu&acirc;n h&agrave;m</strong></p>\r\n\r\n<p>Li&ecirc;n quan đến cải c&aacute;ch ch&iacute;nh s&aacute;ch tiền lương, phụ cấp đối với c&aacute;n bộ, chiến sĩ qu&acirc;n đội, qu&acirc;n nh&acirc;n chuy&ecirc;n nghiệp, Bộ Quốc ph&ograve;ng đ&atilde; trả lời kiến nghị của cử tri về nội dung: &quot;Điều chỉnh mức lương đối với c&aacute;n bộ, chiến sĩ qu&acirc;n đội, qu&acirc;n nh&acirc;n chuy&ecirc;n nghiệp, bảo đảm tiền lương c&oacute; t&iacute;nh ưu đ&atilde;i tương xứng với mức độ đặc th&ugrave; của qu&acirc;n đội&quot; v&agrave; nội dung: &quot;Chuyển đổi h&igrave;nh thức trả lương theo cấp bậc qu&acirc;n h&agrave;m v&agrave; phụ cấp chức vụ sang trả lượng theo vị tr&iacute;, chức vụ v&agrave; phụ cấp qu&acirc;n h&agrave;m, ph&ugrave; hợp với chủ trương của Đảng v&agrave; Nh&agrave; nước&quot;.</p>\r\n\r\n<p>Theo đ&oacute;, thực hiện cải c&aacute;ch ch&iacute;nh s&aacute;ch tiền lương theo Nghị quyết số 27-NQ/TW ng&agrave;y 21/5/2018 Hội nghị lần thứ bảy Ban Chấp h&agrave;nh Trung ương kh&oacute;a XII,&nbsp;Ban Chỉ đạo cải c&aacute;ch ch&iacute;nh s&aacute;ch tiền lương lực lượng vũ trang đ&atilde; nghi&ecirc;n cứu, đề xuất x&acirc;y dựng bảng lương mới đối với c&aacute;c đối tượng trong Qu&acirc;n đội theo tinh thần Nghị quyết số 27-NQ/TW.&nbsp;</p>\r\n\r\n<p>Trong đ&oacute;, tiền lương của sĩ quan Qu&acirc;n đội sẽ được x&acirc;y dựng theo chức vụ, chức danh v&agrave; cấp bậc qu&acirc;n h&agrave;m ph&ugrave; hợp với Luật Sĩ quan Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam được sửa đổi, bổ sung.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, c&aacute;c chế độ phụ cấp n&oacute;i chung cũng được nghi&ecirc;n cứu cải c&aacute;ch cho ph&ugrave; hợp với thực tiễn.</p>\r\n\r\n<p>Ri&ecirc;ng đối với c&aacute;c đối tượng trong Qu&acirc;n đội được thực hiện chế độ phụ cấp đặc th&ugrave; qu&acirc;n sự v&agrave; được nghi&ecirc;n cứu điều chỉnh theo hướng mở rộng đối tượng được hưởng, tăng mức hưởng để bảo đảm tương xứng với t&iacute;nh chất, hoạt động đặc th&ugrave; trong Qu&acirc;n đội.</p>\r\n\r\n<p><strong>Nghi&ecirc;n cứu, cải c&aacute;ch c&aacute;c chế độ phụ cấp theo tinh thần Nghị quyết số 27-NQ/TW</strong></p>\r\n\r\n<p>Đối với nội dung:&nbsp;&quot;C&oacute; chế độ, ch&iacute;nh s&aacute;ch đồng bộ với những người c&ocirc;ng t&aacute;c ở v&ugrave;ng s&acirc;u, v&ugrave;ng xa, bi&ecirc;n giới, biển đảo; ch&iacute;nh s&aacute;ch thu h&uacute;t nguồn nh&acirc;n lực chất lượng cao&quot;:</p>\r\n\r\n<p>C&aacute;c đối tượng trong Qu&acirc;n đội c&ocirc;ng t&aacute;c ở v&ugrave;ng s&acirc;u, v&ugrave;ng xa, bi&ecirc;n giới, biển đảo đang được hưởng c&aacute;c chế độ ưu đ&atilde;i theo quy định của Nh&agrave; nước như: Phụ cấp đặc biệt, phụ cấp khu vực, phụ cấp thu h&uacute;t&hellip;</p>\r\n\r\n<p>Hiện nay, Bộ Quốc ph&ograve;ng đang phối hợp với c&aacute;c Bộ, ng&agrave;nh của Nh&agrave; nước nghi&ecirc;n cứu, cải c&aacute;ch c&aacute;c chế độ phụ cấp theo tinh thần Nghị quyết số 27-NQ/TW.</p>\r\n\r\n<p>Trong đ&oacute;, chế độ phụ cấp đối với đối tượng c&ocirc;ng t&aacute;c ở v&ugrave;ng s&acirc;u, v&ugrave;ng xa, bi&ecirc;n giới, biển đảo sẽ được nghi&ecirc;n cứu để điều chỉnh theo hướng mở rộng đối tượng được hưởng v&agrave; tăng mức hưởng, g&oacute;p phần ổn định cuộc sống, tạo điều kiện thuận lợi để c&aacute;c đối tượng ở v&ugrave;ng s&acirc;u, v&ugrave;ng xa, bi&ecirc;n giới, biển đảo y&ecirc;n t&acirc;m c&ocirc;ng t&aacute;c, phục vụ l&acirc;u d&agrave;i trong Qu&acirc;n đội.</p>\r\n\r\n<p><em>Bộ Quốc ph&ograve;ng n&ecirc;u r&otilde;: Th&ocirc;ng qua việc cải c&aacute;ch ch&iacute;nh s&aacute;ch tiền lương sẽ g&oacute;p phần đ&aacute;p ứng được y&ecirc;u cầu về thu h&uacute;t nguồn nh&acirc;n lực chất lượng cao v&agrave;o phục vụ trong Qu&acirc;n đội.</em></p>\r\n', 4, 1, '1684565216_bang-luong-quan-doi-09360593.jpg'),
(23, 'Bố trí hơn 59.000 tỷ đồng để tăng lương cơ sở từ ngày 1/7', '<p>Thứ trưởng Bộ T&agrave;i ch&iacute;nh Nguyễn Đức Chi cho biết, c&aacute;c cơ quan đ&atilde; bố tr&iacute; hơn 59.000 tỷ đồng để chuẩn bị nguồn lực tăng lương cơ sở từ ng&agrave;y 1/7.</p>\r\n', '<p>Tại họp b&aacute;o Ch&iacute;nh phủ thường kỳ chiều 5/5, th&ocirc;ng tin về nguồn kinh ph&iacute; thực hiện tăng lương cơ sở l&ecirc;n 1,8 triệu đồng từ ng&agrave;y 1/7, Thứ trưởng Bộ T&agrave;i ch&iacute;nh Nguyễn Đức Chi cho biết, Bộ T&agrave;i ch&iacute;nh đ&atilde; đề xuất với Ch&iacute;nh phủ đề xuất Quốc hội bố tr&iacute; đầy đủ nguồn lực để phục vụ cho việc tăng lương.</p>\r\n\r\n<p>&quot;<em>C&aacute;ch đ&acirc;y nửa năm, t&ocirc;i c&oacute; th&ocirc;ng tin l&agrave; cần 60.000 tỷ đồng để cho 6 th&aacute;ng cuối năm 2023. Hiện nay con số ch&iacute;nh x&aacute;c l&agrave; hơn 59.000 tỷ đồng. Với số tiền n&agrave;y, ch&uacute;ng t&ocirc;i đ&atilde; bố tr&iacute; trong dự to&aacute;n ng&acirc;n s&aacute;ch nh&agrave; nước năm 2023 l&agrave; 12.000 tỷ đồng. C&ograve;n 47.000 tỷ đồng kh&aacute;c được bố tr&iacute; từ nguồn tăng thu d&agrave;nh cho cải c&aacute;ch tiền lương, trong đ&oacute; ng&acirc;n s&aacute;ch địa phương l&agrave; 27.000 tỷ đồng, ng&acirc;n s&aacute;ch Trung ương l&agrave; 20.000 tỷ đồng</em>&quot;, Thứ trưởng Bộ T&agrave;i ch&iacute;nh th&ocirc;ng tin.</p>\r\n\r\n<p><img alt=\"Bố trí hơn 59.000 tỷ đồng để tăng lương cơ sở từ ngày 1/7 - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/05/thu-truong-bo-tai-chinh-nguyen-duc-chi-18065187.jpg\" style=\"height:440px\" /></p>\r\n\r\n<p>Thứ trưởng Bộ T&agrave;i ch&iacute;nh Nguyễn Đức Chi.&nbsp;</p>\r\n\r\n<p>Theo &ocirc;ng Nguyễn Đức Chi,&nbsp;Ch&iacute;nh phủ đ&atilde; chủ động bố tr&iacute; đầy đủ nguồn lực để phục vụ cho ch&iacute;nh s&aacute;ch về tăng lương v&agrave; cải c&aacute;ch tiền lương 6 th&aacute;ng cuối năm 2023.</p>\r\n\r\n<p>Bổ sung &yacute; kiến về vấn đề n&agrave;y, Thứ trưởng Bộ Nội vụ Nguyễn Duy Thăng n&ecirc;u r&otilde;, tr&ecirc;n cơ sở &yacute; kiến của c&aacute;c bộ, ng&agrave;nh địa phương v&agrave; &yacute; kiến của nh&acirc;n d&acirc;n được lấy tr&ecirc;n cổng th&ocirc;ng tin của Bộ, trong th&aacute;ng Tư, Bộ Nội vụ đ&atilde; gửi Bộ Tư ph&aacute;p thẩm định dự thảo Nghị định của Ch&iacute;nh phủ điều chỉnh lương cơ sở. Trước k&igrave; nghỉ lễ vừa qua, Bộ Tư ph&aacute;p đ&atilde; tổ chức cuộc họp thẩm định vấn đề n&agrave;y.</p>\r\n\r\n<p>Tr&ecirc;n cơ sở đ&oacute;, Bộ Nội vụ sẽ khẩn trương tiếp thu, giải tr&igrave;nh c&aacute;c &yacute; kiến v&agrave; tr&igrave;nh Ch&iacute;nh phủ trong th&aacute;ng 5/2023 về Nghị định quy định mức lương cơ sở đối với c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức v&agrave; lực lượng vũ trang để đảm bảo thực hiện từ 1/7 tăng lương cơ sở từ 1,49&nbsp; - 1,8 triệu đồng.</p>\r\n\r\n<p>Về kinh ph&iacute; thực hiện tăng lương cơ sở, dự thảo Nghị định của Ch&iacute;nh phủ quy định mức lương cơ sở đối với c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức v&agrave; lực lượng vũ trang n&ecirc;u r&otilde;, c&aacute;c bộ, cơ quan ngang bộ, cơ quan thuộc Ch&iacute;nh phủ, cơ quan kh&aacute;c ở Trung ương sử dụng nguồn tiết kiệm 10% chi thường xuy&ecirc;n (kh&ocirc;ng kể c&aacute;c khoản chi tiền lương, phụ cấp theo lương, c&aacute;c khoản c&oacute; t&iacute;nh chất lương v&agrave; c&aacute;c khoản chi cho con người theo chế độ) dự to&aacute;n năm 2023 tăng th&ecirc;m so với dự to&aacute;n năm 2022 được cấp c&oacute; thẩm quyền giao; một phần nguồn thu được để lại theo chế độ của cơ quan h&agrave;nh ch&iacute;nh, đơn vị sự nghiệp c&ocirc;ng l&acirc;p; sử dụng nguồn thực hiện cải c&aacute;ch tiền lương năm 2022 chưa sử dụng hết chuyển sang (nếu c&oacute;).</p>\r\n\r\n<p>Đối với c&aacute;c tỉnh, th&agrave;nh phố trực thuộc Trung ương, dự thảo Nghị định n&ecirc;u r&otilde; sử dụng 10% tiết kiệm chi thường xuy&ecirc;n; Sử dụng 70% tăng thu ng&acirc;n s&aacute;ch địa phương năm 2022 thực hiện so với dự to&aacute;n; Sử dụng nguồn thực hiện cải c&aacute;ch tiền lương năm 2022 chưa sử dụng hết chuyển sang; Sử dụng tối thiểu 40% số thu được để lại theo chế độ năm 2023.</p>\r\n\r\n<p>Ng&acirc;n s&aacute;ch Trung ương bổ sung nguồn kinh ph&iacute; c&ograve;n thiếu do điều chỉnh mức lương cơ sở năm 2023 cho c&aacute;c bộ, cơ quan ngang bộ, cơ quan thuộc Ch&iacute;nh phủ, cơ quan kh&aacute;c ở Trung ương v&agrave; c&aacute;c tỉnh, th&agrave;nh phố trực thuộc Trung ương.</p>\r\n', 4, 1, '1684565286_thu-truong-bo-tai-chinh-nguyen-duc-chi-18065187.webp'),
(24, 'Va chạm với tàu sắt, tàu cá của ngư dân Quảng Nam bị chìm', '<p>T&agrave;u c&aacute; của ngư d&acirc;n Quảng Nam bị ch&igrave;m sau khi va chạm với t&agrave;u sắt tr&ecirc;n biển, rất may 3 người tr&ecirc;n t&agrave;u c&aacute; gặp nạn được ứng cứu kịp thời.</p>\r\n', '<p>Trưa 20/5, Bộ Chỉ huy Bộ đội Bi&ecirc;n ph&ograve;ng tỉnh Quảng Nam cho biết vừa c&oacute; b&aacute;o c&aacute;o về việc t&agrave;u c&aacute; của ngư d&acirc;n địa phương bị t&ocirc;ng va trong khi h&agrave;nh nghề tr&ecirc;n biển.</p>\r\n\r\n<p><img alt=\"Va chạm với tàu sắt, tàu cá của ngư dân Quảng Nam bị chìm  - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/20/chim-tau-13071584.jpg\" style=\"height:396px\" /></p>\r\n\r\n<p>T&agrave;u c&aacute; ngư d&acirc;n bị ch&igrave;m sau khi va chạm với t&agrave;u sắt. (Ảnh minh họa)</p>\r\n\r\n<p>Theo đ&oacute;, khoảng 8h07 c&ugrave;ng ng&agrave;y, t&agrave;u c&aacute; QNa 00881 TS do &ocirc;ng Hồ Thanh T&acirc;m (tr&uacute; x&atilde; Tam Quang, huyện N&uacute;i Th&agrave;nh, Quảng Nam) l&agrave;m chủ ki&ecirc;m thuyền trưởng, khi đang hoạt động tại khu vực c&aacute;ch mũi An H&ograve;a tầm 18 hải l&yacute; về hướng Đ&ocirc;ng th&igrave; bất ngờ bị t&agrave;u sắt t&ocirc;ng va.</p>\r\n\r\n<p>Rất may, trước khi t&agrave;u c&aacute; bị ch&igrave;m, 3 ngư d&acirc;n tr&ecirc;n t&agrave;u đ&atilde; được c&aacute;c thuyền vi&ecirc;n h&agrave;nh nghề tr&ecirc;n t&agrave;u QNa 01628 TS của &ocirc;ng Hồ Văn Lương đang hoạt động gần đ&oacute; ứng cứu kịp thời, đưa v&agrave;o bờ an to&agrave;n.</p>\r\n\r\n<p>Được biết, t&agrave;u QNa 00881 TS, c&ocirc;ng suất 33 CV, xuất bến tại Trạm Kiểm so&aacute;t Bi&ecirc;n ph&ograve;ng An H&ograve;a h&ocirc;m 15/5, h&agrave;nh nghề c&acirc;u, tr&ecirc;n t&agrave;u c&oacute; 3 lao động.</p>\r\n\r\n<p>Hiện, vụ việc đang được cơ quan chức năng điều tra, l&agrave;m r&otilde;.</p>\r\n', 5, 1, '1684565395_chim-tau-13071584.jpg'),
(25, 'Giới thiệu sách của Tổng Bí thư về con đường đi lên CNXH bằng 7 ngôn ngữ', '<p>Việc xuất bản cuốn s&aacute;ch của Tổng B&iacute; thư bằng 7 ng&ocirc;n ngữ gi&uacute;p bạn b&egrave; quốc tế hiểu th&ecirc;m về đất nước, con người, văn h&oacute;a, sự nghiệp đổi mới v&agrave; ph&aacute;t triển của Việt Nam.</p>\r\n', '<p>Chiều 19/5, Ban Tuy&ecirc;n gi&aacute;o Trung ương chủ tr&igrave;, phối hợp với Ban Chỉ đạo C&ocirc;ng t&aacute;c th&ocirc;ng tin đối ngoại Trung ương v&agrave; Nh&agrave; xuất bản Ch&iacute;nh trị quốc gia Sự thật tổ chức Lễ c&ocirc;ng bố, giới thiệu s&aacute;ch &ldquo;Một số vấn đề l&yacute; luận v&agrave; thực tiễn về chủ nghĩa x&atilde; hội v&agrave; con đường đi l&ecirc;n chủ nghĩa x&atilde; hội ở Việt Nam&rdquo; của Tổng B&iacute; thư Nguyễn Ph&uacute; Trọng xuất bản bằng 7 ng&ocirc;n&nbsp;ngữ&nbsp;gồm: Anh, Trung Quốc, L&agrave;o, Nga, Ph&aacute;p, T&acirc;y Ban Nha v&agrave; H&agrave; Lan.</p>\r\n\r\n<p>&Ocirc;ng Nguyễn Trọng Nghĩa, B&iacute; thư Trung ương Đảng, Trưởng Ban Tuy&ecirc;n gi&aacute;o Trung ương, Trưởng Ban Chỉ đạo c&ocirc;ng t&aacute;c th&ocirc;ng tin đối ngoại dự v&agrave; chủ tr&igrave; buổi lễ.</p>\r\n\r\n<p><img alt=\"Giới thiệu sách của Tổng Bí thư về con đường đi lên CNXH bằng 7 ngôn ngữ - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/ong-nguyen-trong-nghia-19053544.jpeg\" style=\"height:406px\" /></p>\r\n\r\n<p>Trưởng Ban Tuy&ecirc;n gi&aacute;o Trung ương Nguyễn Trọng Nghĩa ph&aacute;t biểu tại buổi lễ.</p>\r\n\r\n<p>Ph&aacute;t biểu tại buổi lễ, b&agrave; Phạm Thị Thinh, Ph&oacute; Gi&aacute;m đốc - Ph&oacute; Tổng Bi&ecirc;n tập Nh&agrave; xuất bản Ch&iacute;nh trị quốc gia Sự thật cho biết, cuốn s&aacute;ch &quot;Một số vấn đề l&yacute; luận v&agrave; thực tiễn về chủ nghĩa x&atilde; hội v&agrave; con đường đi l&ecirc;n chủ nghĩa x&atilde; hội ở Việt Nam&quot; (phi&ecirc;n bản tiếng Việt) ra mắt bạn đọc nh&acirc;n kỷ niệm 92 năm Ng&agrave;y th&agrave;nh lập Đảng Cộng sản Việt Nam (3/2/1930 - 3/2/2022), l&agrave; một trong những ấn phẩm c&oacute; sức ảnh hưởng mạnh mẽ, s&acirc;u rộng của Tổng B&iacute; thư Nguyễn Ph&uacute; Trọng.</p>\r\n\r\n<p>Đến nay, số lượng in ấn v&agrave; ph&aacute;t h&agrave;nh của phi&ecirc;n bản n&agrave;y đ&atilde; l&ecirc;n tới gần 30.000 bản. Cuốn s&aacute;ch l&agrave; t&agrave;i liệu qu&yacute;, tổng kết l&yacute; luận về đường lối đổi mới, những ph&aacute;t triển s&aacute;ng tạo ri&ecirc;ng c&oacute; của Đảng Cộng sản Việt Nam về m&ocirc; h&igrave;nh CNXH ở Việt Nam tr&ecirc;n cơ sở vận dụng s&aacute;ng tạo chủ nghĩa M&aacute;c - L&ecirc;nin v&agrave; tư tưởng Hồ Ch&iacute; Minh.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy, ngay sau khi ra mắt bạn đọc, cuốn s&aacute;ch đ&atilde; nhận được những đ&aacute;nh gi&aacute; t&iacute;ch cực v&agrave; sự quan t&acirc;m s&acirc;u rộng của dư luận trong v&agrave; ngo&agrave;i nước, cũng như sự&nbsp;quan t&acirc;m s&acirc;u sắc của c&aacute;c nh&agrave; nghi&ecirc;n cứu, học giả v&agrave; độc giả c&aacute;c nước.</p>\r\n\r\n<p>Đ&oacute; ch&iacute;nh l&agrave; cơ sở cho &yacute; tưởng tổ chức bi&ecirc;n dịch, xuất bản cuốn s&aacute;ch n&agrave;y ra tiếng nước ngo&agrave;i, bước đầu bằng 7 ng&ocirc;n&nbsp;ngữ, với mục đ&iacute;ch nhằm lan tỏa &yacute; nghĩa ch&iacute;nh trị, gi&aacute; trị định hướng của cuốn s&aacute;ch, g&oacute;p phần tuy&ecirc;n truyền quan điểm, chủ trương, đường lối của Đảng v&agrave; Nh&agrave; nước Việt Nam về CNXH&nbsp;v&agrave; con đường đi l&ecirc;n CNXH của Việt Nam ra thế giới.</p>\r\n\r\n<p>Qua đ&oacute; gi&uacute;p bạn b&egrave; quốc tế, bạn đọc trong v&agrave; ngo&agrave;i nước, kiều b&agrave;o ta ở nước ngo&agrave;i hiểu th&ecirc;m&nbsp;về đất nước, con người, văn h&oacute;a, sự nghiệp đổi mới v&agrave; ph&aacute;t triển của Việt Nam.</p>\r\n\r\n<p><img alt=\"Giới thiệu sách của Tổng Bí thư về con đường đi lên CNXH bằng 7 ngôn ngữ - 2\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sach-cua-tbt-19055705.jpeg\" style=\"height:371px\" /></p>\r\n\r\n<p>Cuốn s&aacute;ch &ldquo;Một số vấn đề l&yacute; luận v&agrave; thực tiễn về CNXH v&agrave; con đường đi l&ecirc;n CNXH ở Việt Nam&rdquo; của Tổng B&iacute; thư Nguyễn Ph&uacute; Trọng xuất bản bằng 7 ng&ocirc;n ngữ: Anh, Trung Quốc, L&agrave;o, Nga, Ph&aacute;p, T&acirc;y Ban Nha v&agrave; H&agrave; Lan.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; cao &yacute; tưởng bi&ecirc;n dịch, xuất bản cuốn s&aacute;ch bằng 7 ng&ocirc;n&nbsp;ngữ của Nh&agrave; xuất bản Ch&iacute;nh trị quốc gia Sự thật, Trưởng Ban Tuy&ecirc;n gi&aacute;o Trung ương Nguyễn Trọng Nghĩa cho biết, hiện nay, nhiều bạn b&egrave; quốc tế v&agrave; c&aacute;c nh&agrave; xuất bản nước ngo&agrave;i c&oacute; mong muốn, đề xuất được dịch cuốn s&aacute;ch n&agrave;y ra tiếng bản địa.</p>\r\n\r\n<p>Do đ&oacute;, Nh&agrave; xuất bản Ch&iacute;nh trị quốc gia Sự thật c&oacute; thể phối hợp với c&aacute;c cơ quan li&ecirc;n quan nghi&ecirc;n cứu, đ&aacute;nh gi&aacute; về mức độ quan t&acirc;m của dư luận c&aacute;c nước&nbsp;về cuốn s&aacute;ch, qua đ&oacute; tiếp tục c&oacute; c&aacute;c đề xuất về việc dịch th&ecirc;m ra ng&ocirc;n&nbsp;ngữ kh&aacute;c, nhằm phục vụ c&ocirc;ng t&aacute;c nghi&ecirc;n cứu về con người, về đất nước Việt Nam, về l&yacute; luận CNXH của Việt Nam, gi&uacute;p cuốn s&aacute;ch được chia sẻ tới c&aacute;c tầng lớp nh&acirc;n d&acirc;n ở c&aacute;c quốc gia tr&ecirc;n thế giới. V&agrave; đối với Việt Nam, đ&acirc;y cũng l&agrave; một k&ecirc;nh th&ocirc;ng tin đối ngoại hết sức mạnh mẽ v&agrave; hiệu quả.</p>\r\n\r\n<p>Theo Trưởng Ban Tuy&ecirc;n gi&aacute;o Trung ương, việc c&ocirc;ng bố, giới thiệu cuốn s&aacute;ch của Tổng B&iacute; thư bằng 7 ngoại ngữ h&ocirc;m nay vừa c&oacute; &yacute; nghĩa ch&iacute;nh trị, vừa c&oacute; &yacute; nghĩa lịch sử - văn h&oacute;a. &Ocirc;ng hy vọng cuốn s&aacute;ch bằng c&aacute;c ng&ocirc;n&nbsp;ngữ kh&aacute;c nhau sẽ tiếp tục lan tỏa những gi&aacute; trị qu&yacute; b&aacute;u, gi&uacute;p cho bạn b&egrave; quốc tế hiểu th&ecirc;m, hiểu s&acirc;u về chủ trương, đường lối đổi mới v&agrave; ph&aacute;t triển đất nước của Việt Nam, g&oacute;p phần củng cố v&agrave; thắt chặt mối quan hệ hữu nghị giữa Việt Nam với c&aacute;c nước.</p>\r\n\r\n<p><em>&ldquo;Rất mong c&aacute;c vị đại diện&nbsp;cơ quan ngoại giao nước ngo&agrave;i tại Việt Nam sẽ l&agrave; &ldquo;c&aacute;nh tay nối d&agrave;i&rdquo; gi&uacute;p cho cuốn s&aacute;ch c&oacute; thể đến được người d&acirc;n, c&aacute;c độc giả nước sở tại. Sau buổi ra mắt ng&agrave;y h&ocirc;m nay, đề nghị Nh&agrave; xuất bản Ch&iacute;nh trị quốc gia Sự thật tiếp tục phối hợp với c&aacute;c cơ quan đại diện của Việt Nam ở nước ngo&agrave;i thực hiện sứ mệnh lan tỏa nội dung cuốn s&aacute;ch</em>&rdquo;, &ocirc;ng Nguyễn Trọng Nghĩa cho biết./.</p>\r\n', 5, 1, '1684565555_ong-nguyen-trong-nghia-19053544.webp'),
(26, 'Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa', '<p>17 c&acirc;y sao đen 15 năm tuổi bị đốn hạ ngay giữa m&ugrave;a nắng n&oacute;ng khiến người d&acirc;n huyện miền n&uacute;i Phước Sơn, tỉnh Quảng Nam kh&ocirc;ng khỏi bức x&uacute;c đan xen x&oacute;t xa.</p>\r\n', '<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-11-09273840.jpg\" style=\"height:408px\" /></p>\r\n\r\n<p>Hơn một tuần trở lại đ&acirc;y, người d&acirc;n huyện Phước Sơn b&agrave;y tỏ sự bức x&uacute;c, kh&oacute; hiểu trước việc h&agrave;ng c&acirc;y sao đen trước S&acirc;n vận động huyện (đường 12 th&aacute;ng 5, thị trấn Kh&acirc;m Đức) bị đốn hạ. Hiện tại, khu vực vỉa h&egrave; n&agrave;y kh&ocirc;ng c&ograve;n lấy một b&oacute;ng c&acirc;y xanh che m&aacute;t.</p>\r\n\r\n<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 2\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-1-09281538.jpg\" style=\"height:495px\" /></p>\r\n\r\n<p>Theo thống k&ecirc;, tổng cộng 17 c&acirc;y sao đen bị cưa hạ v&agrave; được ph&acirc;n kh&uacute;c chuyển về tập kết tại Bến xe huyện Phước Sơn (c&aacute;ch địa điểm S&acirc;n vận động huyện tầm 1 c&acirc;y số).</p>\r\n\r\n<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 3\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-13-09345563.jpg\" style=\"height:495px\" /></p>\r\n\r\n<p>B&agrave; L.T.T. (tr&uacute; thị trấn Kh&acirc;m Đức) bức x&uacute;c n&oacute;i:<em>&nbsp;&quot;Từ nhiều năm qua, h&agrave;ng sao đen phủ b&oacute;ng m&aacute;t rất lớn cho khu vực vỉa h&egrave; trước s&acirc;n vận động. Những h&ocirc;m huyện tổ chức sự kiện thể dục, thể thao, b&agrave; con tới xem c&oacute; chỗ để xe, tr&aacute;nh nắng. T&ocirc;i v&agrave; người d&acirc;n ở đ&acirc;y thực sự kh&oacute; hiểu, rằng tại sao phải chặt bỏ h&agrave;ng loạt c&acirc;y sao đen để trồng loại c&acirc;y kh&aacute;c&quot;.</em></p>\r\n\r\n<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 4\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-12-09491010.jpg\" style=\"height:461px\" /></p>\r\n\r\n<p>Ng&agrave;y 19/5, trả lời&nbsp;<strong>VTC News</strong>&nbsp;về việc đốn hạ h&agrave;ng c&acirc;y sao đen giữa m&ugrave;a nắng n&oacute;ng khiến người d&acirc;n bức x&uacute;c, &ocirc;ng L&ecirc; Quang Trung - Chủ tịch UBND huyện Phước Sơn - cho hay huyện vừa c&oacute; b&aacute;o c&aacute;o một số nội dung li&ecirc;n quan việc thanh l&yacute; v&agrave; trồng thay thế c&acirc;y sao đen tr&ecirc;n tuyến đường 12 th&aacute;ng 5.</p>\r\n\r\n<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 5\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-10-09510504.jpg\" style=\"height:495px\" /></p>\r\n\r\n<p>&nbsp;Theo UBND huyện Phước Sơn, h&agrave;ng c&acirc;y sao đen tr&ecirc;n tuyến đường 12 th&aacute;ng 5 được trồng v&agrave;o năm 2008; qua kiểm tra thực tế tại thời điểm trước khi đốn hạ, th&acirc;n c&acirc;y cao từ gốc đến ngọn khoảng từ 15-17m v&agrave; cao hơn đường d&acirc;y điện trung thế b&ecirc;n cạnh khoảng 5-6m.&nbsp;</p>\r\n\r\n<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 6\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-8-09533234.jpg\" style=\"height:468px\" /></p>\r\n\r\n<p>L&yacute; giải cho việc chặt hạ c&acirc;y sao đen, UBND huyện Phước Sơn cho biết sẽ trồng c&acirc;y mai hồng diệp để thống nhất một loại c&acirc;y, tạo điểm nhấn về cảnh quan, mỹ quan cho tuyến đường 12 th&aacute;ng 5.</p>\r\n\r\n<p><img alt=\"Cận cảnh 17 cây sao đen bị đốn hạ khiến người dân ở Quảng Nam xót xa - 7\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/19/sao-den-13-09552645.jpg\" style=\"height:438px\" /></p>\r\n\r\n<p>UBND huyện Phước Sơn quyết định thanh l&yacute; 17 c&acirc;y sao đen tr&ecirc;n tuyến đường 12 th&aacute;ng 5, đồng thời th&agrave;nh lập Hội đồng định gi&aacute; khởi điểm thanh l&yacute; t&agrave;i sản. Tổng khối lượng gỗ sao đen qua kiểm đếm l&agrave; 5,326 m3 v&agrave; c&aacute;c ng&agrave;nh li&ecirc;n quan đang triển khai c&aacute;c bước quy tr&igrave;nh thủ tục thanh l&yacute; t&agrave;i sản theo quy định của ph&aacute;p luật</p>\r\n', 5, 1, '1684565674_sao-den-1-09281538.jpg'),
(27, 'Khởi tố, bắt tạm giam cựu Bí thư và cựu Chủ tịch tỉnh Lào Cai', '<p>C&ocirc;ng an tỉnh L&agrave;o Cai vừa khởi tố, bắt tạm giam &ocirc;ng Nguyễn Văn Vịnh, cựu B&iacute; thư Tỉnh ủy L&agrave;o Cai v&agrave; &ocirc;ng Do&atilde;n Văn Hưởng, cựu Chủ tịch UBND tỉnh L&agrave;o Cai.</p>\r\n', '<p>Tối 18/5, theo th&ocirc;ng tin từ Cổng th&ocirc;ng tin điện tử tỉnh L&agrave;o Cai, Cơ quan CSĐT C&ocirc;ng an tỉnh L&agrave;o Cai ra quyết định khởi tố bị can, bắt tạm giam bị can v&agrave; kh&aacute;m x&eacute;t nơi ở v&agrave; nơi l&agrave;m việc của Nguyễn Văn Vịnh (SN 1960, cựu B&iacute; thư Tỉnh ủy L&agrave;o Cai); Do&atilde;n Văn Hưởng (SN 1956; Cựu Chủ tịch UBND tỉnh L&agrave;o Cai); Ng&ocirc; Đức Ho&agrave;ng (SN 1974, Chuy&ecirc;n vi&ecirc;n ph&ograve;ng Kế hoạch &ndash; T&agrave;i ch&iacute;nh Cục Địa chất Việt Nam, thuộc Bộ T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường).</p>\r\n\r\n<p><img alt=\"Khởi tố, bắt tạm giam cựu Bí thư và cựu Chủ tịch tỉnh Lào Cai - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/18/batgiam-1--23163151.jpg\" style=\"height:422px\" /></p>\r\n\r\n<p>C&ocirc;ng an phong tỏa, kh&aacute;m x&eacute;t nh&agrave; ri&ecirc;ng &ocirc;ng Nguyễn Văn Vịnh. (Ảnh: Cổng th&ocirc;ng tin điện từ L&agrave;o Cai)</p>\r\n\r\n<p>C&aacute;c bị can bi khởi tố về tội lợi dụng chức vụ, quyền hạn trong khi thi h&agrave;nh c&ocirc;ng vụ theo quy định tại Khoản 3, Điều 281, Bộ Luật H&igrave;nh sự năm 1999.</p>\r\n\r\n<p><img alt=\"Khởi tố, bắt tạm giam cựu Bí thư và cựu Chủ tịch tỉnh Lào Cai - 2\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/18/nguyen-van-vinh-23183292.jpg\" style=\"height:443px\" /></p>\r\n\r\n<p>Bị can Nguyễn Văn Vịnh (SN 1960, cựu B&iacute; thư Tỉnh ủy L&agrave;o Cai).</p>\r\n\r\n<p>C&aacute;c quyết định v&agrave; lệnh tr&ecirc;n đ&atilde; được Viện KSND tỉnh L&agrave;o Cai ph&ecirc; chuẩn. Hiện nay, Cơ quan cảnh s&aacute;t điều tra C&ocirc;ng an tỉnh L&agrave;o Cai đang phối hợp với Viện KSND tỉnh L&agrave;o Cai tiến h&agrave;nh điều tra l&agrave;m r&otilde; theo quy định của ph&aacute;p luật.</p>\r\n', 5, 1, '1684565835_batgiam-1--23163151.jpg'),
(28, 'Hoãn cưới giành HCV SEA Games 32, Nguyễn Linh Na được cầu hôn khi về nước', '<p>VĐV điền kinh Nguyễn Linh Na vừa được bạn trai l&acirc;u năm cầu h&ocirc;n v&agrave; c&ocirc; sẽ chuẩn bị cho đ&aacute;m cưới của m&igrave;nh sau khi gi&agrave;nh HCV điền kinh SEA Games 32.</p>\r\n', '<p>Tối 19/5, Nguyễn Linh Na vui mừng th&ocirc;ng b&aacute;o tr&ecirc;n trang c&aacute; nh&acirc;n việc c&ocirc; được bạn trai l&acirc;u năm Trần B&iacute;ch &Aacute;nh cầu h&ocirc;n. C&ocirc; viết: &quot;<em>Cảm ơn anh v&igrave; 8 năm b&ecirc;n nhau, buồn vui anh lu&ocirc;n b&ecirc;n cạnh. Cảm ơn anh v&igrave; ước mơ mang huy chương về cho tổ quốc của em m&agrave; đ&atilde; đồng &yacute; ho&atilde;n cưới. Cảm ơn anh người đồng ch&iacute; đồng đội lu&ocirc;n nhẫn nhịn chịu đựng c&ocirc; g&aacute;i bướng bỉnh n&agrave;y. Cảm ơn anh v&igrave; tất cả những g&igrave; anh đ&atilde; l&agrave;m cho em.</em></p>\r\n\r\n<p><em>Em mong m&igrave;nh sẽ khởi đầu một tương lai mới, khi em ch&iacute;nh thức được gọi anh l&agrave; chồng. Khi hai ta vun v&eacute;n cho nhau tổ ấm nhỏ. Khi hai ta c&oacute; với nhau những đứa con v&agrave; vui sống đến gi&agrave;</em>&quot;.</p>\r\n\r\n<p><img alt=\"Hoãn cưới giành HCV SEA Games 32, Nguyễn Linh Na được cầu hôn khi về nước - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/20/nguyen-linh-na-13133650.jpeg\" style=\"height:485px\" /></p>\r\n\r\n<p>Bạn trai Trần B&iacute;ch &Aacute;nh cầu h&ocirc;n VĐV Nguyễn Linh Na.</p>\r\n\r\n<p>VĐV điền kinh Nguyễn Linh Na tạo n&ecirc;n cơn sốt tr&ecirc;n mạng x&atilde; hội khi c&ocirc; gi&agrave;nh HCV ở một trong những nội dung vất vả nhất l&agrave; 7 m&ocirc;n phối hợp. Đến khi Linh Na gi&agrave;nh HCV sau nội dung 800m, người h&acirc;m mộ mới biết c&ocirc; đ&atilde; l&ugrave;i kế hoạch tổ chức đ&aacute;m cưới để cống hiến th&ecirc;m một k&igrave; đại hội nữa cho thể thao Việt Nam. Chồng của Linh Na - anh Trần B&iacute;ch &Aacute;nh cũng l&agrave; chiến sỹ trong Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam.</p>\r\n\r\n<p>Nguyễn Linh Na l&agrave; VĐV gi&agrave;nh HCV SEA Games 31 ngay tr&ecirc;n s&acirc;n nh&agrave;. C&ocirc; ph&aacute; kỷ lục SEA Games ở nội dung 7 m&ocirc;n phối hợp nữ. Linh Na được trao tặng danh hiệu &quot;Gương mặt trẻ ti&ecirc;u biểu&quot; của Qu&acirc;n đội nh&acirc;n d&acirc;n Việt Nam năm 2022.&nbsp;</p>\r\n\r\n<p>N&oacute;i về cuộc sống h&ocirc;n nh&acirc;n tương lai, Linh Na tự sự: &quot;<em>Tương lai thế n&agrave;o, ai d&aacute;m n&oacute;i trước. C&oacute; thể m&igrave;nh sẽ th&agrave;nh tỷ ph&uacute; hoặc sẽ l&agrave; cuộc sống đơn sơ. Nhưng, em tin, nơi n&agrave;o c&oacute; anh sẽ lu&ocirc;n c&oacute; em. V&igrave; khi anh trao cho em chiếc nhẫn n&agrave;y c&ugrave;ng tấm ch&acirc;n t&igrave;nh suốt 8 năm qua, em đ&atilde; cảm nhận được m&igrave;nh đ&atilde; đ&uacute;ng khi chọn anh l&agrave;m chồng.</em></p>\r\n\r\n<p><em>Chiếc nhẫn n&agrave;y em sẽ m&atilde;i đeo b&ecirc;n m&igrave;nh để lu&ocirc;n cảm nhận được t&igrave;nh cảm anh d&agrave;nh cho em. Một m&aacute;i ấm nhỏ đang chờ ch&uacute;ng ta ph&iacute;a trước, cảm ơn anh v&igrave; đ&atilde; lu&ocirc;n chờ đợi em suốt những năm qua</em>&quot;.</p>\r\n', 7, 1, '1684566084_nguyen-linh-na-13133650.webp'),
(29, 'Nể phục VĐV điền kinh đang cạnh tranh gắt gao vẫn giúp đỡ đối thủ', '<p>Vận động vi&ecirc;n của Singapore c&oacute; h&agrave;nh động đẹp với đối thủ đang cạnh tranh gắt gao tr&ecirc;n đường đua.</p>\r\n', '<p>H&igrave;nh ảnh đẹp thể hiện tinh thần thể thao cao thượng xảy ra ở chung kết m&ocirc;n 10.000m nam&nbsp;<a href=\"https://vtc.vn/sea-games-31-253.html\" title=\"SEA Games\">SEA Games</a>&nbsp;32. VĐV Rikki Simbolon (Indonesia) v&ocirc; t&igrave;nh l&agrave;m đổ chai nước, lỡ trạm tiếp nước. VĐV Soh Rui Yong (Singapore) chạy s&aacute;t ph&iacute;a sau quyết định chia phần nước trong chiếc cốc nhựa m&agrave; anh lấy được cho đối thủ dẫn đầu đo&agrave;n đua.</p>\r\n\r\n<p>Rikki Simbolon ch&iacute;nh l&agrave; nh&agrave; v&ocirc; địch nội dung 10.000m nam m&ocirc;n điền kinh SEA Games 32. Về đ&iacute;ch thứ hai l&agrave; Soh Rui Yong của Singapore.</p>\r\n', 7, 1, '1684566171_sea-games-32-31-07093001.jpg'),
(30, 'Thắng U22 Thái Lan ở trận chung kết hỗn loạn, U22 Indonesia vô địch SEA Games 32', '<p>U22 Indonesia gi&agrave;nh huy chương v&agrave;ng b&oacute;ng đ&aacute; nam SEA Games 32 sau khi đ&aacute;nh bại U22 Th&aacute;i Lan với tỉ số 5-2 ở trận chung kết.</p>\r\n', '<p>Sau U22 Việt Nam, đến lượt U22 Th&aacute;i Lan nếm trải đ&ograve;n n&eacute;m bi&ecirc;n lợi hại của U22 Indonesia. Đội b&oacute;ng xứ vạn đảo kh&ocirc;ng c&oacute; Pratama Arhan do &aacute;n treo gi&ograve; nhưng vẫn c&ograve;n Alfeandra Dewangga thực hiện những c&uacute; n&eacute;m mạnh như tạt b&oacute;ng. U22 Indonesia mở tỉ số ở ph&uacute;t 21 theo kịch bản quen thuộc n&agrave;y. Muhammad Ramadhan Sananta l&agrave; người ghi b&agrave;n.</p>\r\n\r\n<p><img alt=\"Thắng U22 Thái Lan ở trận chung kết hỗn loạn, U22 Indonesia vô địch SEA Games 32 - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/16/indo-thai-9-22052444.jpg\" style=\"height:487px\" /></p>\r\n\r\n<p>U22 Indonesia đ&aacute;nh bại U22 Th&aacute;i Lan trong trận chung kết SEA Games 32. (Ảnh: Thế Sơn)</p>\r\n\r\n<p>Khi U22 Th&aacute;i Lan vẫn loay hoay t&igrave;m c&aacute;ch kiểm so&aacute;t trận đấu để gỡ h&ograve;a, họ lại mắc sai lầm dẫn đến b&agrave;n thua thứ hai. Pha b&oacute;ng chần chừ của hậu vệ đội b&oacute;ng xứ ch&ugrave;a v&agrave;ng tạo cơ hội cho Sananta tung ra c&uacute; dứt điểm đưa b&oacute;ng qua đầu thủ m&ocirc;n, gi&uacute;p U22 Indonesia nh&acirc;n đ&ocirc;i c&aacute;ch biệt ngay trong hiệp một.</p>\r\n\r\n<p>U22 Indonesia chuyển sang thế ph&ograve;ng ngự phản c&ocirc;ng. Trong khi đ&oacute;, U22 Th&aacute;i Lan buộc phải đẩy cao đội h&igrave;nh. Đ&oacute; l&agrave; điều kiện thuận lợi để những cầu thủ tấn c&ocirc;ng gi&agrave;u tốc độ của U22 Indonesia c&oacute; th&ecirc;m cơ hội, nhưng đội b&oacute;ng xứ vạn đảo kh&ocirc;ng tận dụng th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>Ở chiều ngược lại, U22 Th&aacute;i Lan tạo ra nhiều t&igrave;nh huống uy hiếp v&agrave; g&acirc;y sức &eacute;p li&ecirc;n tục cho h&agrave;ng thủ đối phương. Đội b&oacute;ng xứ ch&ugrave;a v&agrave;ng thắp hy vọng với b&agrave;n r&uacute;t ngắn tỉ số của Anan Yodsangwal.&nbsp;</p>\r\n\r\n<p>Kịch t&iacute;nh xảy ra trong thời gian b&ugrave; giờ khi U22 Th&aacute;i Lan gỡ h&ograve;a ở gi&acirc;y cuối c&ugrave;ng. M&agrave;n x&ocirc; x&aacute;t căng thẳng xảy ra ngay sau đ&oacute; khiến cả 2 đội đều bị mất người.</p>\r\n\r\n<p>Bước sang hiệp phụ, U22 Th&aacute;i Lan mắc sai lầm để đối thủ vượt l&ecirc;n. Hỗn chiến lại nổ ra v&agrave; khi trận đấu trở lại, c&aacute;c cầu thủ xứ ch&ugrave;a v&agrave;ng kh&ocirc;ng giữ được b&igrave;nh tĩnh. Họ bị đuổi th&ecirc;m 2 cầu thủ v&agrave; thủng lưới 2 lần nữa. U22 Indonesia thắng 5-2 v&agrave; v&ocirc; địch SEA Games 32.</p>\r\n', 7, 1, '1684566334_indo-thai-9-22052444.webp'),
(32, 'Trợ lý HLV U22 Thái Lan khóc nức nở, xin lỗi trưởng đoàn U22 Indonesia', '<p>Th&agrave;nh vi&ecirc;n ban huấn luyện Th&aacute;i Lan chủ động gặp mặt để n&oacute;i lời xin lỗi trưởng đo&agrave;n U22 Indonesia sau vụ x&ocirc; x&aacute;t ở chung kết SEA Games 32.</p>\r\n', '<p>Trợ l&yacute; HLV U22 Th&aacute;i Lan gặp gỡ v&agrave; xin lỗi trưởng đo&agrave;n U22 Indonesia.</p>\r\n\r\n<p>Ng&agrave;y 17/5, một đ&ecirc;m sau trận chung kết m&ocirc;n b&oacute;ng đ&aacute; nam&nbsp;<a href=\"https://vtc.vn/sea-games-31-253.html\" title=\"SEA Games\">SEA Games</a>&nbsp;32 giữa U22 Th&aacute;i Lan v&agrave; U22 Indonesia, c&aacute;c th&agrave;nh vi&ecirc;n của hai b&ecirc;n đ&atilde; gặp mặt v&agrave; thể hiện thiện ch&iacute; sau cuộc x&ocirc; x&aacute;t.</p>\r\n\r\n<p>Trợ l&yacute; HLV của U22 Th&aacute;i Lan t&igrave;m đến nơi đ&oacute;n qu&acirc;n của U22 Indonesia để t&igrave;m gặp trưởng đo&agrave;n U22 Indonesia, &ocirc;ng Kombes Pol Sumardji, người bị đ&aacute;nh chảy m&aacute;u mồm khi cố gắng ngăn cản cuộc ẩu đả.</p>\r\n\r\n<p>Trong video của một ph&oacute;ng vi&ecirc;n Indonesia, trợ l&yacute; U22 Th&aacute;i Lan vừa kh&oacute;c, vừa xin lỗi. &Ocirc;ng Sumardji cũng dang tay &ocirc;m lấy người đ&atilde; đ&aacute;nh m&igrave;nh v&agrave; n&oacute;i:&nbsp;<em>&ldquo;Kh&ocirc;ng sao, kh&ocirc;ng sao đ&acirc;u&rdquo;.</em>&nbsp;Th&agrave;nh vi&ecirc;n của U22 Th&aacute;i Lan li&ecirc;n tục c&uacute;i đầu thể hiện sự hối hận.</p>\r\n\r\n<p><img alt=\"Trợ lý HLV U22 Thái Lan khóc nức nở, xin lỗi trưởng đoàn U22 Indonesia - 1\" src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/05/17/tro-ly-u22-thai-lan-15310652.png\" style=\"height:363px\" /></p>\r\n\r\n<p>H&agrave;nh động thể hiện sự hối lỗi của trợ l&yacute; U22 Th&aacute;i Lan.&nbsp;</p>\r\n\r\n<p>Trong trận chung kết b&oacute;ng đ&aacute; nam SEA Games 32, &ocirc;ng Sumardji bị đ&aacute;nh v&agrave; ng&atilde; ra s&acirc;n giữa đ&aacute;m đ&ocirc;ng hỗn loạn. Vị trưởng đo&agrave;n của U22 Indonesia bị sứt m&ocirc;i, chảy m&aacute;u. &Ocirc;ng phải nhờ hai trợ l&yacute; k&eacute;o dậy v&agrave; d&igrave;u v&agrave;o khu vực huấn luyện.</p>\r\n\r\n<p>N&oacute;i về t&igrave;nh huống đ&oacute;, &ocirc;ng Sumardji chia sẻ:&nbsp;<em>&ldquo;Ban huấn luyện, cầu thủ, mọi người đều chạy về ph&iacute;a U22 Th&aacute;i Lan khi tỷ số l&agrave; 2-2. T&ocirc;i n&oacute;i với đội bạn rằng m&igrave;nh bất ngờ bị đ&aacute;nh từ ph&iacute;a sau v&agrave; gục xuống. T&ocirc;i chỉ cố gắng ngăn cản cuộc x&ocirc; x&aacute;t m&agrave; th&ocirc;i. Nhưng kh&ocirc;ng sao, t&ocirc;i nghĩ rằng đ&acirc;y l&agrave; một phần của b&oacute;ng đ&aacute;, bạn phải c&oacute; tinh thần đấu tranh v&igrave; chiến thắng. Cuộc chiến n&agrave;y lu&ocirc;n đ&ograve;i hỏi sự hy sinh.</em></p>\r\n\r\n<p><em>T&ocirc;i cũng cảm thấy rất tiếc nuối, nếu mọi người giữ b&igrave;nh tĩnh hơn, sự việc c&oacute; lẽ kh&ocirc;ng đi xa như vậy&rdquo;.</em></p>\r\n\r\n<p>&Ocirc;ng Kombes Pol Sumardji l&agrave; sĩ quan cảnh c&oacute; nhiều năm c&ocirc;ng t&aacute;c tại Đ&ocirc;ng Java. Tốt nghiệp Học viện cảnh s&aacute;t Indonesi năm 1998, &ocirc;ng từng l&agrave; Ph&oacute; gi&aacute;m đốc sở cảnh s&aacute;t Polda Metro Jaya.</p>\r\n\r\n<p>Sau gần 20 năm l&agrave;m trong ng&agrave;nh cảnh s&aacute;t, &ocirc;ng Sumardji chuyển sang lĩnh vực quản l&yacute; b&oacute;ng đ&aacute;. Năm 2016, &ocirc;ng trở th&agrave;nh gi&aacute;m đốc của CLB Bhayangkara, sau đ&oacute; gia nhập Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Indonesia v&agrave;o năm 2019. &Ocirc;ng Sumardji l&agrave; trưởng đo&agrave;n U22 Indonesia tại c&aacute;c giải đấu quốc tế trong 5 năm qua.</p>\r\n', 7, 1, '1684566259_tro-ly-u22-thai-lan-15310652.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(50) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(51, 26, '6226', 0, '2023-05-20 08:38:20', 'vnpay', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(71, '6226', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(22, 'nguyễn hữu chiến', 'bautroiuru@gmail.com', 'Hà Nội', '771408925250e00f519d055b7a1dab91', 978390481),
(26, 'Cao Việt Hoàng', 'hoang@gmail.com', 'ok', 'f82e62d7c3ea69cc12b5cdb8d621dab6', 123345);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(24, 'Tài Liệu Học Tập', 1),
(25, 'Tiểu thuyết', 2),
(26, 'Đời Sống - Kĩ Năng', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_danhmucbaiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_danhmucbaiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(4, 'Tin kinh tế', 1),
(5, 'Tin thời sự', 2),
(7, 'Tin thể thao', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `thongtinlienhe`) VALUES
(1, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Comic Sans MS,cursive\">Li&ecirc;n hệ với ch&uacute;ng t&ocirc;i</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Comic Sans MS,cursive\">số điện thoại: 0978390444</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Comic Sans MS,cursive\">facebook:&nbsp;<a href=\"https://www.facebook.com/groups/152803672085344/?hoisted_section_header_type=recently_seen&amp;multi_permalinks=1364036024295430\">(2) NguyenHuuChien| Facebook</a></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Comic Sans MS,cursive\">gmail: nguyenhuuchien17112k2@gmail.com</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Comic Sans MS,cursive\">chuy&ecirc;n cung cấp s&aacute;ch combo gi&aacute; si&ecirc;u ưu đ&atilde;i&nbsp;🙃 😉 😌 😍 🥰 😘 😗 😙 😚 😋 😛 😝 😜 🤪</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><img alt=\"\" src=\"data:image/jpeg;base64,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\" style=\"height:240px; width:423px\" /><img alt=\"\" src=\"https://th.bing.com/th/id/OIP.5BSFm1W04FhoVq8qlCuA5QHaE7?w=253&amp;h=180&amp;c=7&amp;r=0&amp;o=5&amp;dpr=1.3&amp;pid=1.7\" style=\"height:240px; width:336px\" /></span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(39, 'Cây cam ngọt của tôi', 'SP01', '100000', 10, '1684559501_sach1.jpg', '<p>tiểu thuyết về cậu b&eacute; tr&ecirc;n con đường trưởng th&agrave;nh</p>\r\n', '<p>tiểu thuyết về cậu b&eacute; tr&ecirc;n con đường trưởng th&agrave;nh</p>\r\n', 1, 25),
(40, 'Chưa kịp lớn đã phải trưởng thành', 'SP02', '100000', 10, '1684559587_sach2.jpg', '<p>chưa kịp lớn đ&atilde; phải trưởng th&agrave;nh</p>\r\n', '<p>chưa kịp lớn đ&atilde; phải trưởng th&agrave;nh</p>\r\n', 1, 25),
(41, 'Nhà giả kim', 'SP03', '120000', 10, '1684559647_sach3.jpg', '<p>Nh&agrave; giả kim</p>\r\n', '<p>Nh&agrave; giả kim</p>\r\n', 1, 25),
(42, 'Ghi chép pháp y', 'SP04', '300000', 10, '1684560651_sach4.jpg', '<p>Ghi ch&eacute;p ph&aacute;p y</p>\r\n', '<p>Ghi ch&eacute;p ph&aacute;p y</p>\r\n', 1, 25),
(43, 'Tôi là bê tô', 'SP05', '240000', 10, '1684560717_sach5.jpg', '<p>T&ocirc;i l&agrave; b&ecirc; t&ocirc;</p>\r\n', '<p>T&ocirc;i l&agrave; b&ecirc; t&ocirc;</p>\r\n', 1, 25),
(45, 'Bước chậm lại giữa thế gian vội vã', 'SP06', '340000', 10, '1684561050_sach6.jpg', '<p>Bước chậm lại giữa thế gian vội v&atilde;</p>\r\n', '<p>Bước chậm lại giữa thế gian vội v&atilde;</p>\r\n', 1, 25),
(46, 'Có hai con mèo ngồi bên cửa sổ', 'SP07', '150000', 10, '1684561102_sach7.jpg', '<p>C&oacute; hai con m&egrave;o ngồi b&ecirc;n cửa sổ</p>\r\n', '<p>C&oacute; hai con m&egrave;o ngồi b&ecirc;n cửa sổ</p>\r\n', 1, 25),
(47, 'Tôi thấy hoa vàng trên cỏ xanh', 'SP08', '170000', 10, '1684561154_sach8.jpg', '<p>T&ocirc;i thấy hoa v&agrave;ng tr&ecirc;n cỏ xanh</p>\r\n', '<p>T&ocirc;i thấy hoa v&agrave;ng tr&ecirc;n cỏ xanh</p>\r\n', 1, 25),
(48, 'Làm bạn với bầu trời', 'SP09', '320000', 10, '1684561203_sach9.jpg', '<p>L&agrave;m bạn với bầu trời</p>\r\n', '<p>L&agrave;m bạn với bầu trời</p>\r\n', 1, 25),
(49, 'Dưới cánh cửa thầm thì', 'SP10', '45000', 10, '1684561267_sach10.jpg', '<p>Dưới c&aacute;nh cửa thầm th&igrave;</p>\r\n', '<p>Dưới c&aacute;nh cửa thầm th&igrave;</p>\r\n', 1, 25),
(50, 'Chiến binh cầu vồng', 'SP11', '345000', 10, '1684561318_sach11.jpg', '<p>Chiến binh cầu vồng</p>\r\n', '<p>Chiến binh cầu vồng</p>\r\n', 1, 25),
(51, 'Số Đỏ', 'SP12', '300000', 10, '1684561355_sach12.jpg', '<p>Số đỏ</p>\r\n', '<p>Số đỏ</p>\r\n', 1, 25),
(52, 'Tổng ôn ngữ pháp tiếng anh', 'SP13', '540000', 10, '1684561410_sach13.jpg', '<p>Tổng &ocirc;n ngữ ph&aacute;p tiếng anh</p>\r\n', '<p>Tổng &ocirc;n ngữ ph&aacute;p tiếng anh</p>\r\n', 1, 24),
(53, 'Alat địa lý việt nam', 'SP14', '200000', 10, '1684561476_sach14.jpg', '<p>alat địa l&yacute; việt nam</p>\r\n', '<p>alat địa l&yacute; việt nam</p>\r\n', 1, 24),
(54, 'Luyện thi tiếng anh vào 10', 'SP15', '100000', 10, '1684561517_sach15.jpg', '<p>luyện thi tiếng anh</p>\r\n', '<p>luyện thi tiếng anh</p>\r\n', 1, 24),
(55, 'Vật lý 9', 'SP16', '75000', 10, '1684561568_sach16.jpg', '<p>s&aacute;ch gi&aacute;o vi&ecirc;n vật l&yacute; 9</p>\r\n', '<p>s&aacute;ch gi&aacute;o vi&ecirc;n vật l&yacute; 9</p>\r\n', 1, 24),
(56, 'Luyện thi ngữ văn', 'SP17', '53000', 10, '1684561632_sach17.jpg', '<p>luyện thi ngữ văn</p>\r\n', '<p>luyện thi ngữ văn</p>\r\n', 1, 24),
(57, 'Tiếng Anh 7', 'SP18', '34000', 11, '1684561673_sach18.jpg', '<p>Tiếng anh 7</p>\r\n', '<p>Tiếng anh 7</p>\r\n', 1, 24),
(58, 'Hóa học 9', 'SP19', '56000', 11, '1684561709_sach19.jpg', '<p>H&oacute;a học 9 s&aacute;ch gi&aacute;o vi&ecirc;n</p>\r\n', '<p>H&oacute;a học 9 s&aacute;ch gi&aacute;o vi&ecirc;n</p>\r\n', 1, 24),
(59, 'Luyện thi toán', 'SP20', '230000', 12, '1684561746_sach20.jpg', '<p>3000 b&agrave;i tập n&acirc;ng cao</p>\r\n', '<p>3000 b&agrave;i tập n&acirc;ng cao</p>\r\n', 1, 24),
(60, 'Ngữ văn 8', 'SP21', '32000', 12, '1684561787_sach21.jpg', '<p>l&agrave;m chủ ngữ văn lớp 8</p>\r\n', '<p>l&agrave;m chủ ngữu văn lớp 8</p>\r\n', 1, 24),
(61, 'Sổ tay toán học', 'SP22', '50000', 12, '1684561824_sach22.jpg', '<p>ghi ch&eacute;p c&aacute;c c&ocirc;ng thức to&aacute;n</p>\r\n', '<p>ghi ch&eacute;p c&aacute;c c&ocirc;ng thức to&aacute;n</p>\r\n', 1, 24),
(62, 'Sổ tay tiếng anh', 'SP23', '50000', 12, '1684561864_sach23.jpg', '<p>c&aacute;c th&igrave; trong tiếng anh, ngữ ph&aacute;p, cấu tr&uacute;c c&acirc;u</p>\r\n', '<p>c&aacute;c th&igrave; trong tiếng anh, ngữ ph&aacute;p, cấu tr&uacute;c c&acirc;u</p>\r\n', 1, 24),
(63, 'Sổ tay ngữ văn', 'SP24', '50000', 10, '1684561942_sach24.jpg', '<p>c&aacute;c b&agrave;i văn m&acirc;u hay về c&aacute;c t&aacute;c phẩm lớn như vợ nhặt, chiếc thuyền ngo&agrave;i xa</p>\r\n', '<p>c&aacute;c b&agrave;i văn m&acirc;u hay về c&aacute;c t&aacute;c phẩm lớn như vợ nhặt, chiếc thuyền ngo&agrave;i xa</p>\r\n', 1, 24),
(64, 'Nhân số học', 'SP25', '345000', 12, '1684561989_sach25.jpg', '<p>thay đổi cuộc sống với nh&acirc;n số học</p>\r\n', '<p>thay đổi cuộc sống với nh&acirc;n số học</p>\r\n', 1, 26),
(65, 'Hiểu về trái tim', 'SP26', '324000', 11, '1684562025_sach26.jpg', '<p>Hiểu về tr&aacute;i tim</p>\r\n', '<p>Hiểu về tr&aacute;i tim</p>\r\n', 1, 26),
(66, 'Hành tinh của một kẻ nghĩ nhiều', 'SP27', '345000', 11, '1684562076_sach27.jpg', '<p>H&agrave;nh tinh của một kẻ nghĩ nhiều</p>\r\n', '<p>H&agrave;nh tinh của một kẻ nghĩ nhiều</p>\r\n', 1, 26),
(67, 'Khéo ăn khéo nói sẽ có được thiên hạ', 'SP28', '345000', 10, '1684562135_sach28.jpg', '<p>kh&eacute;o ăn kh&eacute;o n&oacute;i sẽ c&oacute; được thi&ecirc;n hạ</p>\r\n', '<p>kh&eacute;o ăn kh&eacute;o n&oacute;i sẽ c&oacute; được thi&ecirc;n hạ</p>\r\n', 1, 26),
(68, 'Cùng bạn trưởng thành', 'SP29', '250000', 11, '1684562183_sach29.jpg', '<p>C&ugrave;ng bạn trưởng th&agrave;nh</p>\r\n', '<p>C&ugrave;ng bạn trưởng th&agrave;nh</p>\r\n', 1, 26),
(69, 'Vãn tình', 'SP30', '345000', 12, '1684562224_sach30.jpg', '<p>c&agrave;ng b&igrave;nh tĩnh c&agrave;ng hạnh ph&uacute;c</p>\r\n', '<p>c&agrave;ng b&igrave;nh tĩnh c&agrave;ng hạnh ph&uacute;c</p>\r\n', 1, 26),
(70, 'Đời ngắn đừng ngủ dài', 'SP31', '200000', 10, '1684562254_sach31.jpg', '<p>Đời ngắn đừng ngủ d&agrave;i</p>\r\n', '<p>Đời ngắn đừng ngủ d&agrave;i</p>\r\n', 1, 26),
(71, 'Đừng lựachọn khi bạn còn quá trẻ', 'SP32', '300000', 11, '1684562302_sach32.jpg', '<p>Đừng lựa chọn khi bạn c&ograve;n qu&aacute; trẻ</p>\r\n', '<p>Đừng lựa chọn khi bạn c&ograve;n qu&aacute; trẻ</p>\r\n', 1, 26),
(72, 'Tuổi trẻ đáng giá bao nhiêu', 'SP33', '345000', 12, '1684562423_sach33.jpg', '<p>tuổi trẻ đ&aacute;ng gi&aacute; bao nhi&ecirc;u</p>\r\n', '<p>tuổi trẻ đ&aacute;ng gi&aacute; bao nhi&ecirc;u</p>\r\n', 1, 26),
(73, 'càng kỷ luật càng tự do', 'SP34', '350000', 11, '1684562457_sach34.jpg', '<p>c&agrave;ng kỷ luật c&agrave;ng tự do</p>\r\n', '<p>c&agrave;ng kỷ luật c&agrave;ng tự do</p>\r\n', 1, 26),
(74, 'Đọc vị bất kỳ ai', 'SP35', '100000', 10, '1684562491_sach35.jpg', '<p>đọc vị bất kỳ ai</p>\r\n', '<p>đọc vị bất kỳ ai</p>\r\n', 1, 26),
(75, 'Thao túng tâm lý', 'SP36', '300000', 10, '1684562550_sach36.jpg', '<p>thao t&uacute;ng t&acirc;m l&yacute;</p>\r\n', '<p>thoa t&uacute;ng t&acirc;m l&yacute;</p>\r\n', 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(200) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(5, 'NGUYỄN HỮU CHIẾN', '0978390481', 'Ha Noi', 'giao nhanh nhé', 22),
(8, 'Cao Việt Hoàng vip pro', '0943928814', 'Nghệ An', 'hàng dễ vỡ cẩn thận chút', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnpay_amount` varchar(50) NOT NULL,
  `vnpay_bankcode` varchar(50) NOT NULL,
  `vnpay_banktranno` varchar(50) NOT NULL,
  `vnpay_cardtype` varchar(50) NOT NULL,
  `vnpay_orderinfo` varchar(100) NOT NULL,
  `vnpay_paydate` varchar(50) NOT NULL,
  `vnpay_tmncode` varchar(50) NOT NULL,
  `vnpay_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnpay_amount`, `vnpay_bankcode`, `vnpay_banktranno`, `vnpay_cardtype`, `vnpay_orderinfo`, `vnpay_paydate`, `vnpay_tmncode`, `vnpay_transactionno`, `code_cart`) VALUES
(14, '20000000', 'NCB', 'VNP14017025', 'ATM', 'Thanh toán đơn hàng tại web', '20230520083914', 'GWH74WKC', '14017025', '6226'),
(15, '20000000', 'NCB', 'VNP14017025', 'ATM', 'Thanh toán đơn hàng tại web', '20230520083914', 'GWH74WKC', '14017025', '6226');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_danhmucbaiviet`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Indexes for table `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_danhmucbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
