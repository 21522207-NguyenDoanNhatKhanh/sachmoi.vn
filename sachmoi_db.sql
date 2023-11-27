-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2023 at 04:17 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ineshop2`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `description`, `Image`) VALUES
(1, 'Annet Schaap', 'Họa sĩ minh họa và nhà văn thiếu nhi người Hà Lan. Tốt nghiệp hai học viện nghệ thuật ở Kampen và Den Haag, bà là họa sĩ nổi tiếng với hơn 200 đầu sách minh họa. Niềm say mê viết lách đã khiến Schaap quyết tâm học thêm bốn năm tại một trường viết văn ở Amsterdam. Tuy nhiên, phải mất rất lâu sau đó, khi bà đã ở tuổi ngoại ngũ tuần, cuốn tiểu thuyết đầu tay của Annet Schaap mới chào đời. Đèn Nhỏ (2017) ngay lập tức đạt thành công vang dội, gặt hái bốn giải thưởng văn chương lớn trong nước, được dịch sang tiếng Anh với nhan đề Đèn Nhỏ và những đứa con của biển, và là tác phẩm dịch đầu tiên từng được đề cử Huân chương Carnegie danh giá (2020).', 'annet-schaap.webp'),
(2, 'Elizabeth Kolbert', 'Nhà báo, tác giả người Mỹ. Bà đã đoạt giải thưởng Pulitzer danh giá với tác phẩm \"Đợt tuyệt chủng thứ sáu\".', 'elizabeth-kolbert.webp'),
(3, 'Hannah Witton', 'Tác giả, Youtuber với gần 800.000 lượt theo dõi. Chủ đề ưa thích của cô là về những mối quan hệ lành mạnh, sức khỏe tình dục, và được rất nhiều bạn trẻ ủng hộ.', 'hannah-witton.webp'),
(4, 'Hiltrud Baier', 'Tác giả người Đức, chuyên sáng tác các tác phẩm dành cho thiếu nhi.', 'hiltrud-baier.webp'),
(5, 'Nguyễn Ngọc Thạnh', 'Nguyễn Ngọc Thạnh là một tác giả Việt Nam đương đại. Tuy không có nhiều thông tin cụ thể về tác giả này, nhưng có một số tác phẩm của ông đã được xuất bản và nhận được sự chú ý từ độc giả. Tuyên Ngôn Độc Lập là một trong những tác phẩm của Nguyễn Ngọc Thạnh được biết đến. Đây là một cuốn sách viết về lịch sử Việt Nam, tập trung vào giai đoạn chiến tranh và cuộc kháng chiến chống Pháp và Mỹ. Cuốn sách này có thể nêu lên quan điểm và suy nghĩ của tác giả về các sự kiện lịch sử quan trọng của Việt Nam. Ngoài ra, Nguyễn Ngọc Thạnh cũng có thể đã viết về các chủ đề khác như văn học, xã hội, hoặc vấn đề chính trị. Tuy nhiên, do hạn chế thông tin, không có đủ dữ liệu để cung cấp thông tin chi tiết về các tác phẩm khác của ông.', 'nguyen-ngoc-thanh.jpg'),
(6, 'Nguyễn Huy Thiệp', 'Nguyễn Huy Thiệp sinh năm 1950 ở Thái Nguyên, quê gốc ở Hà Nội. Thuở\r\n            nhỏ, ông cùng gia đình di tản qua nhiều vùng quê ở Thái Nguyên, Phú\r\n            Thọ, Vĩnh Phúc. Ông tốt nghiệp khoa Lịch sử, Đại học Sư phạm Hà Nội.\r\n            Ông xuất hiện trên văn đàn Việt Nam từ năm 1986, với một số truyện\r\n            ngắn đăng trên Báo Văn nghệ đề tài nông thôn. Ngoài truyện ngắn, ông\r\n            viết 10 vở kịch, bốn tiểu thuyết cùng nhiều tiểu luận, phê bình văn\r\n            học gây chú ý, được xem là \"hiện tượng hiếm\" của văn đàn trong nước.\r\n            Ông từng nhận huân chương Văn học Nghệ thuật Pháp (2007), giải\r\n            thưởng Premio Nonino (Italy, 2008). Một số tác phẩm nổi bật của ông\r\n            gồm truyện ngắn Tướng về hưu, chuyển thể thành phim điện ảnh cùng\r\n            tên năm 1988, Những ngọn gió Hua Tát (tập truyện ngắn và kịch,\r\n            1989), Tiểu Long Nữ (tiểu thuyết, 1996), Tuổi 20 yêu dấu (tiểu\r\n            thuyết, xuất bản ở Pháp năm 2002)...', 'nht.webp'),
(7, 'Nicolas Mathieu', '            Nicolas Mathieu sinh năm 1978, là tiểu thuyết gia người Pháp. Tuy mới chỉ ra mắt tiểu thuyết đầu tay năm 2014, Nicolas Mathieu đã giành được giải thưởng Goncourt 2018 danh giá với tác phẩm thứ hai của mình, Con cháu của họ cũng thế thôi. Được đánh giá là cây bút tài năng của thế hệ nhà văn mới, trong các tác phẩm của mình, Mathieu thường đan xen những điều bình dị thân thuộc với yếu tố chính trị, qua đó thể hiện nỗi bất lực trước xã hội và cơn thịnh nộ mang tính hiện sinh.\r\n', 'nicolas-mathieu.jpg'),
(8, 'Nguyễn Nhật Ánh', 'Nguyễn Nhật Ánh (sinh ngày 7 tháng 5 năm 1955)[1] là một nam nhà văn\r\n            người Việt Nam. Được xem là một trong những nhà văn hiện đại xuất\r\n            sắc nhất Việt Nam hiện nay, ông được biết đến qua nhiều tác phẩm văn\r\n            học về đề tài tuổi trẻ. Nhiều tác phẩm của ông được độc giả và giới\r\n            chuyên môn đánh giá cao, đa số đều đã được chuyển thể thành phim.\r\n            Ông lần lượt viết về sân khấu, phụ trách mục tiểu phẩm, phụ trách\r\n            trang thiếu nhi và hiện nay là bình luận viên thể thao trên báo Sài\r\n            Gòn Giải phóng Chủ nhật với bút danh Chu Đình Ngạn. Ngoài ra, ông\r\n            còn có những bút danh khác như Anh Bồ Câu, Lê Duy Cật, Đông Phương\r\n            Sóc, Sóc Phương Đông.', 'nna.jpg'),
(9, 'Rosie Nguyễn', 'Đây là chuyên mục tổng hợp tất cả các tác phẩm của tác giả Rosie Nguyễn. Rosie Nguyễn (tên thật Nguyễn Hoàng Nguyên) sinh năm 1987. Cô không chỉ là blogger/facebooker về văn hóa du lịch mà còn là tác giả sách, giảng viên các khóa học kỹ năng và huấn luyện viên yoga. Hiện cô đang làm công việc viết tự do.', 'rosie-nguyen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` double DEFAULT '0',
  `shipping_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_products` int DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `order_date`, `total_amount`, `shipping_status`, `payment_status`, `name`, `number`, `address`, `total_products`) VALUES
(9, 4, '2023-11-26 09:07:43', 180000, 'shipped', 'pending', 'nama', '055', 'kk', 3),
(11, 4, '2023-11-26 09:19:32', 135150, 'Pending', 'completed', 'g', 'g', 'g', 3),
(12, 4, '2023-11-26 13:29:43', 380000, 'shipped', 'completed', 'TuanVo', '23424', 'newthenameuser', 2),
(14, 4, '2023-11-26 14:55:18', 526000, 'shipped', 'completed', 'q', 'q', 'q', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_amount` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_id`, `quantity`, `order_amount`) VALUES
(1, 3, 408, 1, 45000),
(2, 3, 413, 1, 45000),
(3, 3, 412, 1, 90000),
(4, 5, 413, 1, 45000),
(5, 5, 408, 1, 45000),
(6, 5, 412, 1, 90000),
(7, 7, 413, 1, 45000),
(8, 7, 408, 1, 45000),
(9, 7, 412, 1, 90000),
(10, 8, 413, 1, 45000),
(11, 8, 408, 1, 45000),
(12, 8, 129, 1, 150),
(13, 9, 413, 1, 45000),
(14, 9, 408, 1, 45000),
(15, 9, 412, 1, 90000),
(18, 11, 413, 1, 45000),
(19, 11, 412, 1, 90000),
(20, 11, 129, 1, 150),
(21, 12, 527, 2, 380000),
(24, 14, 527, 1, 190000),
(25, 14, 528, 2, 336000);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `Image`, `link`, `description`) VALUES
(2, 'Penguin UK', 'doitac1.webp', 'https://www.penguin.co.uk/', ''),
(3, 'DK', 'doitac2.webp', 'https://www.dk.com/uk/', ''),
(4, 'Penguin Random House', 'doitac4.svg', 'https://www.penguinrandomhouse.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `image` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_count` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `category_id` int DEFAULT NULL,
  `view_count` int DEFAULT '0',
  `stock_quantity` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `author`, `publisher`, `release_date`, `size`, `page_count`, `description`, `price`, `category_id`, `view_count`, `stock_quantity`) VALUES
(123, 'ndb.jpg', 'Người Đài Bắc', 'Bạch Tiến Dũng', 'Hà Nội', '2023-10-04', '14 x 20.5cm', 313, '\"Bao gồm 14 truyện ngắn từng được đăng trên tờ Văn học hiện đại trong suốt thập niên 60 thế kỷ 20, lần đầu xuất bản vào năm 1971 song đến nay vẫn xếp thứ 7 trong danh sách 100 tiểu thuyết Hoa ngữ tiêu biểu thế kỷ 20, Người Đài Bắc là tác phẩm giữ thứ hạng cao nhất của một nhà văn còn tại thế trong danh sách này. \"', 179000, 1, 3, 500),
(124, 'txnv.jpg', 'Tật xấu người Việt', 'Di Li', 'Hội nhà văn', '2023-10-04', '14 x 20.5cm', 384, '\"“Các cụ xưa nay vẫn cho rằng ở đời có ba việc lớn là cưới vợ, xây nhà, tậu trâu (trâu đây là sự nghiệp, vì nghiệp xưa của các cụ vốn gắn liền với trâu). Có người thì định nghĩa ‘Hạnh phúc là sáng muốn đi làm, chiều thì muốn về nhà.’ Đủ hiểu hạnh phúc hay bất hạnh ở đời cũng chỉ loanh quanh ba cái điều ấy thôi. \"', 149000, 2, 4, 496),
(125, 'nlddhctt.jpg', 'Những lối đi dưới hàng cây tăm tối', 'Ivan Bunin', 'Văn học', '2023-09-19', '14 x 20.5cm', 292, '.', 85000, 1, 2, 500),
(126, 'nhk.jpg', 'Nam Hoa Kinh', 'Trang Tử', 'Văn học', '2023-10-06', '15x24 cm', 334, '\"“Thầy Trang mặc áo vải to mà có chỗ vá, nối đai, buộc giày mà sang chơi vua nước Ngụy.\"', 109000, 1, 0, 500),
(127, 'hhmm.jpg', 'Hội hè miên man', 'Ernest Hemingway', 'Hội nhà văn', '2023-09-19', '14 x 20.5cm', 318, '.', 115000, 1, 0, 500),
(128, 'dt.jpg', 'Đồi thỏ', 'Richard Adams', 'Hội nhà văn', '2023-09-19', '15x24 cm', 494, '.', 169000, 1, 0, 500),
(129, 'tlbtttna-m.jpg', 'Trở lại Babylon tuyển tập truyện ngắn Anh - Mỹ', 'Ernest Hemingway', 'Văn học', '2023-10-18', '14 x 20.5cm', 473, '\"Tuyển tập truyện ngắn của mười tên tuổi lớn trong nền văn học Anh - Mỹ, những người có thể coi là một đỉnh cao, tỏa bóng và để lại ảnh hưởng lên rất nhiều thế hệ nhà văn sau này:\"', 150000, 1, 3, 497),
(130, 'bnksh.jpg', 'Biên niên ký Sao Hỏa', 'Ray Bradbury', 'Văn học', '2023-08-08', '14 x 20.5cm', 402, '\"Dẫu được tôn vinh vào hàng kinh điển trong dòng sách khoa học viễn tưởng, khoa học lại mờ nhạt đến gần như vắng bóng trong Biên niên ký Sao Hỏa. Sao Hỏa, trong trí tưởng tượng của Bradbury những năm bốn mươi của thế kỷ hai mươi, không có gì giống với hành tinh lạnh lẽo khô khốc chúng ta biết tới ngày nay. Đó là một nơi có bầu khí quyển gần như Trái Đất, sinh sống một giống loài thông minh khá giống loài người. Đó là xứ sở của những rặng núi xanh lam, của những dòng kênh xanh lục, của những cây cột pha lê, của lớp bụi mờ phủ lên những thành phố tráng lệ đã chết. Sao Hỏa của Bradbury là một chốn của hy vọng, của ảo mộng và của ẩn dụ. Chính ở nơi đây, những kẻ xâm lược Trái Đất đã đến, tháo chạy khỏi một thế giới không tương lai đến một miền đất hứa, một giấc mơ Mỹ thứ hai. Người Trái Đất tràn lên Sao Hỏa, để rồi bị chính Sao Hỏa ru ngủ trong những tiện nghi thân quen lọc lừa, rù quến trong ánh hào quang còn sót lại của chủng loài bản địa cổ xưa đầy bí hiểm.\"', 16500, 1, 0, 500),
(131, 'ct.jpg', 'Con Trai (phần thứ tư của Người truyền ký ức)', 'Lois Lowry', 'Hội nhà văn', '2023-09-06', '14 x 20.5cm', 425, '\"Họ gọi cô là Claire Thủy Triều. Khi cô trôi dạt vào bờ biển của họ, chẳng ai biết rằng cô vừa trốn chạy khỏi một xã hội không sắc màu, không cảm xúc.\"', 15800, 1, 0, 500),
(132, 'tktn.jpg', 'Tiếng kèn thiên nga', 'E.B.White', 'Hội nhà văn', '2023-08-25', '14 x 20.5cm', 241, '\"“Thiên nga thì phải vui tươi, không buồn bã; phong nhã, không vụng về; can trường, không hèn nhát.” Và nếu là thiên nga kèn, thì còn phải biết cất tiếng kêu \"', 8000, 1, 4, 500),
(133, 'lcncnt-t2.jpg', 'Lời của Nietzsche cho người trẻ - Tập 2', 'Shiratori Haruhiko', 'Thế Giới', '2023-09-08', '14.5x20.5 cm', 276, '\"Trong làng triết học phương Tây, Nietzsche có lẽ là một trường hợp hiếm hoi không khiến cho người ta phải sợ hãi [vì trừu tượng] hay ngao ngán [vì kinh viện]. Cũng vậy ở Việt Nam, kể từ khi các tác phẩm của Nietzsche lần đầu xuất hiện, biết bao nhiêu thế hệ trẻ đã đọc và yêu mến ông, mang theo tư tưởng mãnh liệt và hân hoan của ông trong hành trang của đời mình, cùng với những tình yêu, hoài bão và đổ vỡ.\"', 10800, 1, 0, 500),
(134, 'id5-nnknckn.jpg', 'Infinite Dendrogram 5 - Những người kết nối các khả năng', 'Kaidou Sakon', 'Hà Nội', '2023-09-06', '13x18 cm', 248, 'Vua Phá Hoại xông trận.', 11500, 1, 0, 500),
(135, 'dbg.jpg', 'Dám bị ghét', 'Kishimi Ichiro và Koga Fumitake', 'Dân Trí', '2023-09-08', '14 x 20.5cm', 333, 'Các mối quan hệ xã hội thật', 11900, 1, 1, 500),
(136, 'bsjvoh.jpg', 'Bác sĩ Jekyll và ông Hyde', 'Robert Louis Balfour Stevenson', 'Hội nhà văn', '2023-08-25', '14 x 20.5cm', 160, '', 6200, 1, 0, 500),
(137, 'rvj.jpg', 'Romeo và Juliet', 'William Shakespeare', 'Hội nhà văn', '2023-09-19', '14 x 20.5cm', 160, '\"“Ngày xưa, ở thành Verona tươi đẹp,\"', 5800, 1, 0, 500),
(138, 'ptmn.jpg', 'Phương trình mầu nhiệm', 'Hal Elrod', 'Thông Tấn', '2023-09-19', '14 x 20.5cm', 371, '\"Thẳm sâu bên trong, chúng ta biết rằng bản thân mình không có giới hạn. Nhưng bộ não của chính chúng ta và thế giới xung quanh giam hãm chúng ta, để rồi chúng ta cứ mãi nhỏ bé hơn tầm vóc đáng có. Xung đột này dẫn đến nỗi bất hạnh, sự lo lắng đi đôi với cảm giác thường trực rằng thế giới ngoài kia có một thứ khác, cao xa hơn, dành cho mình. \"', 16900, 1, 0, 500),
(139, 'nncttg.jpg', 'Nỗi niềm của thám tử Galileo', 'Higashino Keigo', 'Hà Nội', '2023-09-11', '14x20.5 cm', 336, 'Tôi không tha thứ cho kẻ lấy khoa học làm công cụ giết người. Tuyệt đối không!', 14600, 1, 0, 500),
(140, 'ctckvcgtt1.jpg', 'Chuyện tình hài lãng mạn không thể chê vào đâu 2', 'Daisuke Suzuki', 'Hà Nội', '2023-09-06', '13x18 cm', 216, '\"Kanaruzawa Sekai chết đi, thế giới được tái lập, và câu chuyện lại một lần nữa bắt đầu khi Sekai chuyển đến trường cấp ba nơi Kirishima Yuuki đang theo học. \"', 11800, 1, 0, 500),
(141, 'gmtt.jpg', 'Giấc mơ tiên tri', 'Higashino Keigo', 'Hà Nội', '2023-08-07', '14 x 20.5cm', 245, '\"Đêm khuya, một gã đàn ông lẻn vào phòng của thiếu nữ mười sáu tuổi. Người mẹ phát hiện và nổ súng. Khi bị bắt, gã đàn ông khai hắn đã mơ thấy mình trở thành chồng thiếu nữ này từ mười bảy năm về trước, bằng chứng là bài văn mô tả cô gái do hắn viết từ thời tiểu học. Lẽ nào người trong mơ lại xuất hiện ngoài đời thực? Đó chỉ là sự trùng hợp quá đỗi ngẫu nhiên, hay thực sự tồn tại giấc mơ tiên tri?\"', 11800, 1, 0, 500),
(142, 'cdvsp.jpg', 'Cuộc đời và số phận', 'Vasily Semyonovich Grossman', 'Hội nhà văn', '2023-09-06', '17x25 cm', 826, '\"Xoay quanh trận Stalingrad, trận chiến mang tính bước ngoặt trong Thế chiến Hai, Cuộc đời và Số phận muốn nắm bắt tinh thần của một thời đại bão tố mà nước Nga trải qua. Đó là một bức tranh mênh mông với đông đảo các nhân vật thuộc đủ mọi tầng lớp khiến sự chân thực của bức tranh ấy không chỉ đến những sự kiện lớn lao, những anh hùng thời đại quyết định vận mệnh của một dân tộc, mà còn đến từ những tình cảm, suy nghĩ nhỏ nhặt, những bi kịch tinh thần của mỗi cá nhân. \"', 46000, 1, 0, 500),
(143, 'je.jpg', 'Jane Eyre', 'Charlotte Bronte', 'Văn học', '2023-07-31', '15x24 cm', 540, '\"“Nhà văn đã cầm lấy tay chúng ta, dắt chúng ta đi theo con đường của bà, bắt chúng ta phải nhìn thấy những gì bà thấy, không bao giờ rời chúng ta nửa bước hay cho phép chúng ta quên mất sự hiện diện của bà. Cuối cùng, chúng ta càng lúc càng đắm chìm trong tài năng, sự mãnh liệt, sự phẫn nộ của Charlotte Brontë.”\"', 17900, 1, 0, 500),
(144, 'lngh.jpg', 'Lắng nghe gió hát', 'Haruki Murakami', 'Hội nhà văn', '2023-06-09', '14 x 20.5cm', 192, '\"Mười tám ngày của mùa hè năm hai mươi tuổi, đối với “tôi” là một kỳ nghỉ hè không sự kiện. Bất chấp những tối uống tràn ở quán Jay’s Bar cùng cậu bạn mang tên Chuột hay mối quen tình cờ với cô gái ở cửa hàng đĩa hát, thành phố quê hương ven biển mùa hè chỉ còn là gió trong “tôi”. Những chuyện kể về gió, tiếng gió hát bên bờ biển, và cảm giác tuổi thanh xuân trôi qua như gió. Mười tám ngày ấy đã gói ghém cả quá khứ, hiện tại, tương lai cùng với hoang mang, mất mát và cô đơn…\"', 8800, 1, 0, 500),
(145, 'ntmtl.jpg', 'Nàng Thợ may Tinh linh (Hariko no Otome)', 'Zeroki', 'Hà Nội', '2023-06-15', '13x18 cm', 304, '', 13800, 1, 0, 500),
(146, 'vtt.jpg', 'Vượn trần trụi', 'Desmond Morris', 'Hội nhà văn', '2023-06-15', '14 x 20.5cm', 400, 'CUỐN SÁCH MÀ KHÔNG CON VẬT NGƯỜI NÀO DÁM BỎ QUA.', 13800, 1, 0, 500),
(147, 'f-jwvg.jpg', 'Faust - Johann WolfGang Von Goethe', 'Johann Wolfgang von Goethe', 'Văn học', '2023-06-09', '15x24 cm', 604, '\"Trong đêm tối nghìn năm Trung cổ, nhân loại dần tỉnh giấc, dấn bước kiếm tìm giá trị bản thân và nhận thức thế giới. Trên chặng đường đó, đã sinh ra Faust - một nhân vật có thật, được huyền thoại hóa nhiều vào bậc nhất lịch sử thế giới, cả trong văn học dân gian lẫn văn học bác học, với đỉnh cao của mọi đỉnh cao là Faust của \"', 20000, 1, 0, 500),
(148, 'lth.jpg', 'Lá thư hè', 'Alphonse Daudet', 'Văn học', '2023-07-31', '14 x 20.5cm', 167, 'Chính', 5200, 1, 0, 500),
(149, 'ndptdl.jpg', 'Người đao phủ thành Đại La', 'Hoài Điệp Thứ Lang', 'Hội nhà văn', '2023-06-22', '15.5x24 cm', 338, '\"Dưới thời hôn quân Lê Ngọa Triều, dân chúng đói khổ, lầm than, mạng người bị coi như cỏ rác, uất hận không sao kể xiết. Khu pháp trường bên sông Tô Lịch không khi nào thiếu mùi máu tanh với những chiếc đầu lâu trên cổng thành và một gã đao phủ mà chỉ nghe tên người ta đã rụng rời. Tất cả để làm khiếp nhược bất cứ ý đồ phản kháng nào. Nhưng rồi có một người, một tráng sĩ phong thái kiêu dũng, kiếm pháp vô song, tấm lòng trượng nghĩa,...\"', 13800, 1, 0, 500),
(150, 'cmcb.jpg', 'Chuyện một cậu bé', 'Nick Hornby', 'Hội nhà văn', '2023-06-22', '14 x 20.5cm', 434, '\"Will Freeman ba mươi sáu tuổi, độc thân, bảnh bao, sành điệu và giàu có. Anh sống một cuộc đời vô lo vô nghĩ, không thích trẻ con nhưng lại có hứng thú với mẹ của chúng. Gia nhập hội cha mẹ đơn thân, anh đã gặp Marcus – cậu bé mười hai tuổi “già dặn nhất trên đời”.\"', 16800, 1, 0, 500),
(151, 'tgcm.jpg', 'Thời gian của ma', 'Yi Jeong Kim', 'Hà Nội', '2023-06-22', '14 x 20.5cm', 309, '“Có lẽ cha chỉ là một bóng ma. Một bóng ma không thể tồn tại ở bất cứ nơi đâu trên mảnh đất này.”', 14800, 1, 0, 500),
(152, 'tgnttt.jpg', 'Thư gửi nhà tiểu thuyết trẻ', 'Mario Vargas Llosa', 'Hội nhà văn', '2023-06-22', '14 x 20.5cm', 161, '\" là bản tổng kết kinh nghiệm viết và đọc tiểu thuyết của một trong những nhà văn lớn nhất thời đại chúng ta, Mario Vargas Llosa.\"', 10900, 1, 0, 500),
(153, 'dnnmsctg3.jpg', 'Dã ngoại nơi Mặt sau của Thế giới (Otherside Picnic) 3', 'Iori Miyazawa', 'Hà Nội', '2023-07-07', '13x18 cm', 327, '\"Bên cạnh thế giới bình thường của con người tồn tại một “Thế giới Mặt sau” nơi cư ngụ của những sinh vật kỳ dị và nguy hiểm trong truyện ma và truyền thuyết đô thị. Một ngày nọ cô sinh viên Kamikoshi Sorawo vô tình mở ra cánh cửa đến với \"\"Thế giới Mặt sau\"\" và gặp được Nishina Toriko - một cô gái đang trên đường tìm kiếm người bạn mất tích của mình tại đây. Với những động cơ khác nhau hai người đã lập thành một nhóm và cùng nhau chiến đấu để sinh tồn trong thế giới quái dị đó.\"', 15000, 1, 0, 500),
(154, 'sndktg-t2.jpg', 'Sáu người đi khắp thế gian - Tập 2', 'James Albert Michener', 'Văn học', '2023-07-03', '16 x 24 cm', 565, '', 16500, 1, 0, 500),
(155, 'qvtqdn.jpg', 'Quái vật trong quán đồ nướng', 'Sái Tất Quý', 'Hà Nội', '2023-07-07', '14 x 20.5cm', 393, '\"Sái Tất Quý là một tiểu thuyết gia làng nhàng, đang lúc bất đắc chí, anh tình cờ quen biết cô chủ quán đồ nướng bí ẩn Sở Gia và nhận được một công việc kỳ lạ: mỗi tối thứ Tư hàng tuần đến quán nghe thực khách kể về những chuyện ly kỳ mà họ đích thân trải qua rồi ghi chép lại.\"', 15800, 1, 0, 500),
(156, 'ld.jpg', 'Lâu đài (Franz Kafka)', 'Franz Kafka', 'Lê Chu Cầu', '2023-07-10', '14 x 20.5cm', 437, '\"Xảy ra vỏn vẹn trong 6 ngày, mà đằng đẵng bằng vạn kiếp con người, câu chuyện của K. tan hẫng, dang dở không kết thúc, dìm toàn bộ cái sân khấu yêu đương, tranh đấu, nỗ lực, bất lực, náo hoạt nhưng dường như câm lặng của lũ rối đang trình diễn vào đầm lầy tư tưởng...\"', 13200, 1, 0, 500),
(157, 'ctckvcgtt1.jpg', 'Chàng trai chuyển kiếp và cô gái thiên tài 1', 'Nora Kohigashi', 'Phụ nữ', '2023-07-10', '13x18 cm', 261, '', 13500, 1, 0, 500),
(158, 'bgct.jpg', 'Ba gã cùng thuyền', 'Jerome K. Jerome', 'Văn học', '2023-07-10', '13 x 20.5 cm', 262, '\"Bọn hắn có bốn mạng (tính cả con chó), và bọn hắn tiến hành chuyến du hành sông Thames để đời này với một lý do chính đáng không để đâu cho hết: để thư giãn. Quả thật, nếu không tính đến sự cứng đầu cứng cổ của mớ hành lý, sự vô ơn của con thuyền, sự quỷ quyệt của cái ấm trà, sự om sòm của bầy thiên nga (v.v. và v.v.) thì ái chà, bọn hắn quả đã được thư giãn thật. Thêm vào đó, bọn hắn còn được biết thế nào là một chuyến du hành đích thực…\"', 8800, 1, 0, 500),
(159, 'lcncnt-t1.jpg', 'Lời của Nietzsche cho người trẻ - Tập 1', 'Shiratori Haruhiko', 'Thế Giới', '2023-09-08', '14.5x20.5 cm', 280, '\"Trong làng triết học phương Tây, Nietzsche có lẽ là một trường hợp hiếm hoi không khiến cho người ta phải sợ hãi [vì trừu tượng] hay ngao ngán [vì kinh viện]. Cũng vậy ở Việt Nam, kể từ khi các tác phẩm của Nietzsche lần đầu xuất hiện, biết bao nhiêu thế hệ trẻ đã đọc và yêu mến ông, mang theo tư tưởng mãnh liệt và hân hoan của ông trong hành trang của đời mình, cùng với những tình yêu, hoài bão và đổ vỡ.\"', 10800, 1, 0, 500),
(160, 'bmtnh.jpg', 'Bóng ma trong nhà hát', 'Gaston Leroux', 'Văn học', '2023-07-31', '15x24 cm', 360, '\"Nhà hát có “ma”??? Nhà hát lớn Paris.Những sự việc lạ lùng liên tiếp xảy ra từ khi các ngài Moncharmin và Richard tiếp quản vị trí: cái chết của trưởng bộ phận dàn dựng sân khấu trong tư thế treo cổ dưới tầng hầm, bức thư nặc danh đe dọa hai tân giám đốc, diva Carlotta bỗng “hát như cóc kêu” trên sân khấu, đèn chùm trong khán phòng rơi đè chết người... Cùng lúc đó, Christine, nữ ca sĩ vô danh với giọng hát “như mèo hen” bỗng như thoát xác, cất tiếng hát làm rung động công chúng. Tất cả chỉ là trùng hợp ngẫu nhiên hay có bàn tay một thế lực thần bí nào?\"', 12000, 1, 0, 500),
(161, 'lskh.jpg', 'Lược sử khoa học', 'William Bynum', 'Thế Giới', '2023-07-31', '15.5 x 24cm', 364, '\"Cuộc sống hiện đại với vô vàn sự vật hết sức quen thuộc mà mỗi khi dừng lại để nghĩ về chúng, con người không khỏi ngạc nhiên và thán phục trí tuệ siêu phàm của các bậc tiền nhân hàng nghìn năm qua: những con số mà chúng ta viết, những máy vi tính cá nhân mà chúng ta sử dụng, gần gũi hơn nữa là cấu tạo và chức năng của các cơ quan trong cơ thể người. Những sự thật như Trái Đất quay quanh Mặt Trời hay lực hút khiến mọi vật trên Trái Đất rơi xuống theo chiều thẳng đứng cũng đã trải qua một lịch sử gian nan mới được phổ biến như ngày nay.\"', 15900, 1, 0, 500),
(162, 'dc.jpg', 'Diệt chủng', 'Takano Kazuaki', 'Hội nhà văn', '2023-06-05', '15.5x24 cm', 585, '\"Koga Kento, cậu sinh viên cao học chuyên ngành hóa dược, đột ngột nhận được email từ người cha quá cố. Bức thư tuyệt mệnh lạ lùng đã dẫn cậu lần ra một phòng thí nghiệm tư nhân bí ẩn. Cha cậu – một\"', 27900, 1, 0, 500),
(163, 'vclh.jpg', 'Vật chứa linh hồn', 'Frances Hardinge', 'Phụ nữ', '2023-03-17', '15.5x24 cm', 420, '\"Khi thân xác nằm lại, linh hồn trở nên lạc lối và cần nơi ẩn náu.\"', 20000, 1, 0, 500),
(164, 'lncc.jpg', 'Lời nhắn cuối cùng', 'Laura Dave', 'Hà Nội', '2023-05-24', '14 x 20.5cm', 400, '\"Hannah Hall có một cuộc hôn nhân muộn màng nhưng hạnh phúc với Owen Michaels, bất chấp những khó khăn xảy đến giữa cô và Bailey, đứa con gái riêng mười sáu tuổi của Owen với người vợ trước. Bỗng nhiên một ngày Owen Michaels biến mất, chỉ để lại một lời nhắn bí hiểm: “Hãy bảo vệ nó”, mà Hannah hiểu rằng người được nhắc đến chính là Bailey. Khao khát một câu trả lời khi mà hạnh phúc gia đình bỗng vuột khỏi tầm tay, Hannah cùng Bailey cất công đi tìm Owen, để rồi nhận ra người chồng, người cha của họ còn một quá khứ cay đắng và bí mật mà anh không bao giờ nhắc đến. \"', 16000, 1, 0, 500),
(165, 'cvc.jpg', 'Cha và Con (Ivan Turgenev)', 'Ivan Turgenev', 'Văn học', '2023-05-24', '14 x 20.5cm', 405, '“Điều quan trọng duy nhất là hai lần hai là bốn còn mọi thứ khác đều vô nghĩa.”', 12000, 1, 0, 500),
(166, 'dl-nltttdvcxcptan.jpg', 'Điềm lành - Những lời tiên tri tuyệt đích và chuẩn xác của phù thủy Agnes Nutter', 'Neil Gaiman', 'Phụ nữ', '2022-12-23', '15.5x24 cm', 448, '\"Quỷ Crowley và thiên thần Aziraphale biết rằng Tận Thế sắp sửa đến với thế giới này, với sự giáng lâm của Kẻ Chống Chúa trong hình hài đứa trẻ sơ sinh. Đáng lẽ cả hai phải lấy làm sung suớng: cuộc chiến tối hậu giữa thiên đường và địa ngục, dù phe nào thắng, thì cũng sẽ hủy diệt thế giới này, kết thúc cuộc giằng co hàng thiên niên kỷ giữa Thiện và Ác. Nhưng khốn nỗi, cả Crowley và Aziraphale lại thấy nuối tiếc thế giới của nhân loại. Thế giới con người vừa nhếch nhác, ngu xuẩn, lại vừa độc địa, thế nhưng nó cũng thú vị ghê gớm, đến nổi viễn cảnh phải sống ở một nơi toàn địa ngục hay toàn thiên đường trở nên không thể chịu đựng nổi với cả hai. Thiên thần và ác quỷ cùng tham gia vào một mưu đồ vừa khôn ngoan, vừa dớ dẩn, để cứu thế giới khỏi họa diệt vong.\"', 22000, 1, 0, 500),
(167, 'bt.jpg', 'Bọ tuyết', 'Yasushi Inoue', 'Phụ nữ', '2023-03-22', '14x20.5 cm', 336, '\"Rời xa cha mẹ từ khi mới lên năm, cậu bé Kousaku đến sống cùng bà lão Onui trong căn nhà trát đất bình dị nơi thôn dã. Vốn là vợ bé của ông cố Kousaku, bà Onui phải chịu bao điều tiếng và cái nhìn phán xét từ người làng, nhưng bà vẫn dành cho Kousaku một tình thương đặc biệt. Và cứ thể dưới đôi bàn tay bà chăm sóc, tầm hồn non trẻ của Kousaku lớn lên từng ngày giữa thiên nhiên Izu thơ mộng đầy nắng ấm và cỏ thơm.\"', 13500, 1, 0, 500),
(168, 'esdccm.jpg', 'Em sẽ đến cùng cơn mưa', 'Ichikawa Takuji', 'Văn học', '2023-03-24', '13 x 20.5 cm', 332, '', 10800, 1, 0, 500),
(169, 'vdqtmb.jpg', 'Vùng đất quỷ tha ma bắt', 'Kevin Chen', 'Hà Nội', '2023-03-27', '14 x 20.5cm', 413, 'Quê hương là một vùng đất nhỏ...', 16800, 1, 0, 500),
(170, 'tt.jpg', 'Thú tội', 'Minato Kanae', 'Hội nhà văn', '2023-03-24', '14 x 20.5cm', 245, '\"Moriguchi là giáo viên cấp hai đồng thời là bà mẹ đơn thân của một cô gái 4 tuổi. Một hôm, xác cô bé được phát hiện trong bể bơi trường học. Cảnh sát nhận định đây là vụ tai nạn nhưng Moriguchi biết ai đã sát hại con gái mình -  kẻ ở ngay trong lớp học do mình chủ nhiệm. Moriguchi bắt đầu kế hoạch báo thù của riêng cô...\"', 9900, 1, 0, 500),
(171, 'ttbnr-h.jpg', 'Thị trấn bị nguyền rủa - HEX', 'Thomas Olde Heuvelt', 'Phụ nữ', '2023-03-29', '15.5x24 cm', 446, '\"Bất cứ ai sinh ra tại nơi đây, sẽ phải ở lại cho đến chết.\"', 22200, 1, 0, 500),
(172, 'tnvd.jpg', 'Thiên nga và dơi', 'Higashino Keigo', 'Hà Nội', '2023-03-31', '14 x 20.5cm', 641, '\"Xác của ông Shiraishi Kensuke, một luật sư sống tại Tokyo được tìm thấy trong một chiếc xe bị bỏ lại trên đường. Không lâu sau đó, ông Kuraki Tatsuro, hơn sáu mươi tuổi, ngụ tại tỉnh Aichi đứng ra nhận mọi tội lỗi, bao gồm cả tội giết người trong một vụ án khác đã xảy ra cách đấy hơn ba mươi năm. Dù không thể xác minh được lời khai của ông Tatsuro, cảnh sát vẫn khép lại vụ án.\"', 26900, 1, 0, 500),
(173, 'ct-stg-2.jpg', 'Ca trực - Silo Tháp Giống #2', 'Hugh Howey', 'Hội nhà văn', '2023-03-31', '15.5x24 cm', 643, 'Có những bí mật ta cần quên đi.', 27200, 1, 0, 500),
(174, 'hncbc-tVcttdbccp.jpg', 'Hội nghị của bầy chim - Tập V của Trại trẻ đặc biệt của cô Peregrine', 'RANSOM RIGGS', 'Hội nhà văn', '2023-03-29', '14 x 20.5cm', 420, 'Những lời trăn trối của ông H – liên hệ cuối cùng mà Jacob Portman có được với cuộc sống bí mật của ông nội Abe – giao cho Jacob một nhiệm vụ: đưa người đặc biệt mới tiếp xúc tên Noor Pradesh đến với đặc vụ V.', 16500, 1, 0, 500),
(175, 'hvvc.jpg', 'Hãy về với cha', 'Shin Kyung Sook', 'Hà Nội', '2023-04-03', '14 x 20.5cm', 466, '\"Mất đi con gái, nữ nhà văn thu mình lại, đoạn tuyệt với mọi mối quan hệ, thậm chí với chính những người thân trong gia đình, hòng trốn tránh nỗi đau và dằn vặt quá lớn. Phải tới khi về lại quê hương để chăm sóc người cha già yếu một thân một mình, cô mới nhận ra tấm khiên mình dựng lên bấy lâu cũng chính là mũi giáo đâm vào lòng những người ruột thịt. \"', 17900, 1, 0, 500),
(176, 'ntt.jpg', 'Người truyền tin (phần thứ ba của Người truyền ký ức)', 'Lois Lowry', 'Hội nhà văn', '2023-04-24', '14 x 20.5cm', 189, '\"Lại là Trái Đất trong tương lai. Lại một thế giới hoàn toàn khác. Không phải xã hội công nghệ phát triển vượt bậc và quy củ đến lạnh người. Cũng chẳng phải thị trấn lạc hậu nơi kẻ yếu thế bị ruồng bỏ man rợ. Rốt cuộc, trong phần thứ ba của bộ tứ Người truyền ký ức, ta cũng gặp một cộng đồng tốt lành, nơi người người đối xử với nhau thương yêu và trân trọng…\"', 10000, 1, 0, 500),
(177, 'tm.jpg', 'Truyện ma (M.R.James)', 'M.R.James', 'Hội nhà văn', '2023-05-19', '15.5x24 cm', 457, '\"Ba mươi truyện ma kinh điển kể về một thế giới ma mị ám ảnh của M. R. James, cha đẻ của thể loại truyện ma hiện đại.\"', 14900, 1, 0, 500),
(178, 'nccs-t2qd.jpg', 'Ngụy chứng của Solomon - Tập 2 Quyết định', 'Miyabe Miyuki', 'Dân Trí', '2023-04-28', '15.5x24 cm', 611, '\"Hai người bạn cùng lớp chết không rõ ràng. Giới truyền thông đưa tin đầy thiên kiến. Thầy cô bỏ mặc học sinh, tìm mọi cách để lấp liếm và xoa dịu tình hình. Ở thế giới bên kia, Kashiwagi\"', 30000, 1, 0, 500),
(179, 'mme.jpg', 'Momo (Michael Ende)', 'Michael Ende', 'Hội nhà văn', '2023-05-15', '14 x 20.5cm', 278, '', 9000, 1, 0, 500),
(180, 'hddncg.jpg', 'Hãy đi đặt người canh gác', 'Harper Lee', 'Văn học', '2023-05-24', '14 x 20.5cm', 304, '\"Nước Mỹ những năm 1950. Làn sóng đòi quyền bình đẳng cho người da đen đang dâng trào cả nước; trong vài tiểu bang miền Nam, người da trắng tập hợp để bảo vệ cái mà họ coi là bản sắc bị tước đoạt của mình… Trở về thăm nhà như lệ thường, Jean Louise không ngờ mình sắp bước chân vào giữa cuộc chiến tư tưởng của thập kỷ. Cô sẽ ngỡ ngàng thấy người cha Atticus, vị anh hùng vì lẽ công bình của cô thuở bé, dường như đã đổi màu niềm tin; người thân, bạn bè lâu năm bỗng dưng xa lạ; thị trấn Maycomb quê hương và chính cô không còn nhận ra nhau. Công lý ở đâu, đúng sai là gì? Khi thành trì lương tâm tuổi thơ cô đã vụn vỡ từng viên đá một, Jean Louise bắt đầu đi tìm một sự thật của riêng mình.\"', 12500, 1, 0, 500),
(181, 'chp.jpg', 'Chiếc hộp Pandora', 'Bernard Werber', 'Văn học', '2023-05-19', '15.5x24 cm', 521, '\"Trong lúc xem một buổi biểu diễn thôi miên, René, một giáo viên lịch sử, được lựa chọn làm người tham gia tiết mục cuối cùng. Vừa nghi hoặc vừa tò mò, anh nhập vai vào trò chơi, và đột nhiên thấy mình đang ở kiếp sống trước. Nhưng đó mới chỉ là đoạn bắt đầu… \"', 24900, 1, 0, 500),
(182, 'mttrrongbc.jpg', 'Một thoáng ta rực rỡ ở nhân gian ( Bìa cứng)', 'Ocean Vuong', 'Hội nhà văn', '2022-12-14', '14x20.5 cm', 306, '“Vuong thực sự có thiên tài quan sát.” The New York Times', 19500, 1, 0, 500),
(183, 'vrnv.jpg', 'Và rồi núi vọng', 'Khaled Hosseini', 'Hội nhà văn', '2021-10-06', '14x20.5 cm', 512, '\"Afghanistan, mùa thu năm 1952.\"', 14800, 1, 0, 500),
(184, 'tavhp.jpg', 'Tội ác và hình phạt', 'Fyodor Dostoyevsky', 'Hà Nội', '2021-07-05', '17x25 cm', 600, '\"Raskolnikov, một cựu sinh viên luật, sống ở St. Petersburg trong sự nghèo đói, túng thiếu. Một mặt, chàng là một thanh niên lương thiện, tốt bụng; mặt khác, chàng nung nấu một niềm tin rằng mình thuộc về lớp người siêu phàm, loại người có thể phá bỏ luật lệ để làm nên việc lớn. Trong những ngày tháng bần cùng, bất mãn, chàng quyết định ra tay sát hại và cướp của một mụ già cầm đồ, mà chàng tin là không đáng sống trên đời này, hòng sử dụng số tiền đó để giúp đỡ mẹ và em gái ở quê, cũng như giải phóng bản thân khỏi cảnh ngộ hiện tại. Nhưng cái chàng không ngờ đến là hành động ấy, tưởng chừng là một bước chứng tỏ mình có thể vượt qua ranh giới luân lý của số đông để trở nên vĩ đại, lại đẩy chàng vào một cuộc khủng hoảng trầm trọng về đạo đức và tinh thần.\"', 30000, 1, 0, 500),
(185, 'tl.jpg', 'Tàn lửa', 'Shizukui Shusuke', 'Hà Nội', '2022-03-21', '14x20.5 cm', 484, '', 18500, 1, 0, 500),
(186, 'atdla.jpg', 'Anne tóc đỏ làng Avonlea', 'Lucy Maud Montgomery', 'Hội nhà văn', '2022-03-11', '14x20.5 cm', 404, '\"Mới ngày nào cô bé Anne mặt tàn nhang và dễ kích động vừa mới đặt chân lên đảo Hoàng Tử Edward đã gây bao xôn xao, xáo trộn. Vậy mà giờ đây Anne đã vụt lớn thành một thiếu nữ mười sáu tuổi tươi tắn và xinh đẹp. Tuổi mười sáu đặt lên vai cô nhiều trọng trách: một cô giáo làng với tham vọng gieo những ước vọng đẹp đẽ trong tâm hồn trẻ thơ, một sáng lập viên Hội Cải tạo với mong muốn biến Avonlea thành một ngôi làng xanh sạch đẹp hơn, và một người bảo hộ bất đắc dĩ của hai đứa bé sinh đôi mồ côi rất đáng yêu nhưng cũng gây lắm chuyện đau đầu. Nhưng tuổi mười sáu vẫn không làm mất đi trong Anne tính lãng mạn vô phương cứu chữa cũng như chẳng khiến Anne thôi vướng vào vô số sự cố dở khóc dở cười chẳng khác gì những học trò nhỏ tinh nghịch và hăng hái của cô.\"', 11200, 1, 0, 500),
(187, 'ttd1ntcntt.jpg', 'Trúc thư dao 1 - Nước Tần - Có nàng tên Thập', 'Văn Giản Tử', 'Hà Nội', '2022-03-21', '14x20.5 cm', 528, '', 17900, 1, 0, 500),
(188, 'dba.jpg', 'Dịch bệnh Atlantis', 'A.G. Riddle', 'Hội nhà văn', '2022-03-21', '15.5x24cm', 496, '\"Tại Marbella, Tây Ban Nha, Tiến sĩ Kate Warner tỉnh dậy trước thực tại kinh hoàng: Loài người đang đứng trên bờ vực tuyệt chủng. Một đại dịch chưa từng có đang càn quét địa cầu. Gần nửa tỷ người đã chết - còn những người sống sót thì phải chịu một trong hai số phận: hoặc thoái hóa, hoặc tiến hóa thần tốc.\"', 19500, 1, 0, 500),
(189, 'thct.jpg', 'Tâm hồn cao thượng', 'Edmondo De Amicis', 'Phụ nữ', '2022-03-23', '15.5x24 cm', 432, '\"“Triệu triệu con em, tất cả cùng học hỏi, cũng những điều ấy qua hàng trăm thể thức khác nhau. Hãy hình dung cái tổ kiến học sinh hàng trăm dân tộc rộng khắp, cái công cuộc vận động bất tận con đang dự phần ấy để mà tự nhủ:\"', 15000, 1, 0, 500),
(190, 'thctbc.jpg', 'Tâm hồn cao thượng (Bìa cứng)', 'Edmondo De Amicis', 'Phụ nữ', '2022-03-31', '15.5x24cm', 434, '\"“Triệu triệu con em, tất cả cùng học hỏi, cũng những điều ấy qua hàng trăm thể thức khác nhau. Hãy hình dung cái tổ kiến học sinh hàng trăm dân tộc rộng khắp, cái công cuộc vận động bất tận con đang dự phần ấy để mà tự nhủ:\"', 22000, 1, 0, 500),
(191, '9mcl.jpg', '9 màu chia ly', 'Bernhard Schlink', 'Hội nhà văn', '2022-03-25', '14x20.5 cm', 256, '\"Được viết ra ở nửa muộn của tuổi bảy mươi, với \"', 12000, 1, 0, 500),
(192, 'bvantccso.jpg', 'Bàn về âm nhạc - Trò chuyện cùng Seiji Ozawa', 'Haruki Murakami', 'Dân Trí', '2022-06-29', '14x20.5 cm', 400, '\"Nhạc trưởng và nhà văn, bên nhau, cùng lắng nghe những đĩa nhạc, ôn lại những kỷ niệm về quãng đời Seiji Ozawa đã trải qua cùng những bậc thầy như Glenn Gould, Bernstein, Karajan..., chia sẻ niềm đồng cảm sâu sắc về âm nhạc của Beethoven, Brahms và Mahler... Một cuộc phỏng vấn chạm tới âm vang của trái tim và linh hồn của sự sáng tạo, kéo dài trong suốt một năm ròng.\"', 16800, 1, 0, 500),
(193, 'cgmvt.jpg', 'Cô gái mặc váy tím', 'Imamura Natsuko', 'Hà Nội', '2022-07-18', '14 x 20.5 cm', 160, '', 9500, 1, 0, 500),
(194, 'mmt.jpg', 'Mã mẫu tử', 'Carole Stivers', 'Thế Giới', '2022-04-12', '15.5x24 cm', 381, '', 18000, 1, 0, 500),
(195, 'atctr.jpg', 'AI THẢ CÁC THẦN RA?', 'Maz Evans', 'Hội nhà văn', '2022-07-18', '14 x 20.5 cm', 412, '', 17900, 1, 0, 500),
(196, 'st.jpg', 'Sáng trăng', 'Guy De Maupassant', 'Phụ nữ', '2022-07-18', '14 x 20.5 cm', 188, '\"\"\"Vì sao Chúa tạo ra điều đó? Một khi đêm đã dành cho giấc ngủ cho nỗi vô tri vô giác cho sự nghỉ ngơi lãng quên hết thảy thì vì sao lại khiến cho đêm thâu duyên dáng hơn ban ngày êm dịu hơn bình minh và chiều hôm và tại sao vì tinh tú từ tốn quyến rũ thi vị hơn vầng dương và do hết sức kín đáo dường như dành để rọi soi những điều quá ư tế nhị và bí ẩn đối với ánh sáng lồ lộ vì tinh tú ấy lại đến làm cho bóng đêm cực kỳ trong suốt?\"', 7500, 1, 0, 500),
(197, 'kasgatcdn.jpg', 'Không ai sống giống ai trong cuộc đời này', 'Jean-Paul Dubois', 'Hội nhà văn', '2022-07-29', '14x20.5cm', 316, '', 14500, 1, 0, 500),
(249, 'adknm.jpg', 'Ăn dặm không nước mắt (TB 2023)', 'Nguyễn Thị Ninh', 'Thế Giới', '2023-08-07', '14.5x20.5cm', 176, '\"Thế nào là ăn dặm không nước mắt? Là khi con không khóc vì bị ép ăn và mẹ không khóc vì con bỏ bữa. Là khi con hào hứng trước mỗi bữa ăn và mẹ hạnh phúc thấy con ăn hết phần đồ ăn mẹ làm.  Cuốn sách Ăn dặm không nước mắt của mẹ Xoài, một người mẹ Việt nuôi con ở Nhật hẳn sẽ mang đến nhiều gợi ý. Học hỏi các bà mẹ Nhật, mẹ Xoài đã cố gắng tập cho bé Xoài thói quen ăn uống tự giác, tập trung. Mẹ Xoài cũng tôn trọng sở thích, nhu cầu và mong muốn của bé. Còn để khiến bé háu ăn và ăn được nhiều hơn, mẹ Xoài đã chế biến các món ăn thật ngon lành, đa dạng, trang trí vô cùng đẹp mắt để bé chỉ nhìn thôi đã thèm.\"', 120000, 2, 14, 500),
(250, 'stadcm.jpg', 'Sổ tay ăn dặm của mẹ', 'BS Lê Thị Hải', 'Thế Giới', '2020-03-23', '\"14 x 20,5cm\"', 267, '\"“Trong quá trình khám chữa bệnh, tôi gặp nhiều trường hợp các em bé bị suy dinh dưỡng, còi xương không phải vì gia đình không có điều kiện mà do… quá có điều kiện. Tôi gặp những em bé khá bụ bẫm nhưng bố mẹ vẫn đưa đi khám vì thấy con không tăng cân và cho là con biếng ăn. Trong khi đó cũng có những trường hợp bố mẹ nói rằng con ăn rất được nhưng thực ra khẩu phần dinh dưỡng lại không đủ hoặc không cân đối. Nhưng biếng ăn là câu chuyện tôi gặp nhiều nhất. Chưa bao giờ câu chuyện cho bé ăn gì và ăn như thế nào lại khiến các bố mẹ lo lắng nhiều như vậy.\"', 99000, 2, 0, 500),
(251, 'cvmdlkkh.jpg', 'Chó và mèo dưới lăng kính khoa học', 'Antonio Fischetti', 'Thế Giới', '2019-11-28', '25x32 cm', 62, '\"Bạn có nuôi chó hoặc mèo? Chắc hẳn là bạn rất thân thiết với người bạn bốn chân ấy. Vậy bạn có hiểu những hành vi, cử chỉ của “boss”? Chẳng hạn, tại sao chó lại vẫy đuôi cả khi vui mừng lẫn khi căng thẳng? Có nên nhìn thẳng vào mắt một con chó đang giận dữ? Những tiếng gừ gừ của mèo có ý nghĩa gì? Tại sao mèo lại khó tính với đồ ăn đến thế?\"', 125000, 2, 0, 500),
(252, 'tdcqvn.jpg', 'Từ điển chức quan Việt Nam', 'Đỗ Văn Ninh', 'Thông Tấn', '2019-06-24', '17x25 cm', 678, '\"Lịch sử lâu đời hơn hai nghìn năm của nước Việt Nam đã tạo nên những hệ thống quan lại liên tục được cải tổ theo sự vận động của các thời kỳ, các triều đại. Một hiểu biết vừa tổng thể, vừa chi tiết về bộ máy cai trị của xã hội là điều kiện cần thiết để chúng ta hôm nay có thể đọc sử và hiểu sử.\"', 250000, 2, 0, 500),
(253, 'dctclm-klvtch.jpg', 'Địa chính trị của loài muỗi - Khái lược về toàn cầu hóa', 'Erik Orsenna', 'Hà Nội', '2019-10-04', '14 x 20.5 cm', 328, '\"Từ 250 triệu năm trước, muỗi đã có mặt trên Trái đất, vậy nhưng chúng chẳng nán lại lâu la gì: vòng đời trung bình của một con muỗi là 30 ngày. Rất đông đúc (3564 loài), có mặt trên khắp các châu lục, chúng giết người vô tội vạ (750 000 người mỗi năm)! Khi chúng vo ve bên tai ta thì không phải chỉ là để quấy rầy giấc khuya của ta, mà còn là để kể cho chúng ta một câu chuyện : câu chuyện về những đường biên giới bị xóa nhòa, về những đột biến không ngừng, về những cuộc chiến đấu để sinh tồn. Và đặc biệt là câu chuyện tay ba giữa muỗi, ký sinh trùng và con mồi (chính là chúng ta).\"', 108000, 2, 0, 500),
(254, 'ntshpgtc.jpg', 'Nghệ thuật sống hạnh phúc gặt thành công', 'Rolf Dobelli', 'Thế Giới', '2019-07-09', '14x20.5 cm', 396, '\"Từ xưa tới nay, con người vẫn luôn tự hỏi thế nào là một đời hạnh phúc? Con người ta nên sống ra sao? Điều gì rạo nên một cuộc sống hạnh phúc? Hạnh phúc tại tâm hay vì đạt được những mục tiêu trong đời? Sẽ tốt hơn nếu chủ động tìm kiếm hạnh phúc hay chủ động né tránh những điều khiến ta không hạnh phúc? Có người dành cả đời mải miết đi tìm câu trả lời cho những câu hỏi này, và vì một lẽ nào đó chỉ luôn nhận lại thất vọng. Vì sao ư? Phải chăng vì họ cứ kiếm tìm một nguyên tắc duy nhất, một nguyên lý duy nhất, một quy luật duy nhất, trong khi chén thánh đó của cuộc sống hạnh phúc đâu có tồn tại.\"', 129000, 2, 0, 500),
(255, 'nvnttg-cltll.jpg', 'Nhân vật nổi tiếng thế giới– Các lãnh tụ lẫy lừng', 'Renzo Barsotti', 'Hà Nội', '2019-09-20', '24x31 cm', 126, 'Mong muốn được sống tử tế và sống có ích là điều then chốt tạo nên một cuộc sống hạnh phúc cho bạn trong tương lai. Các nhà lãnh đạo tự cổ chí kim đều mang trong mình những tố chất khơi gợi cảm hứng ấy và truyền cho bạn động lực bước lên những nấc thang mới.', 149000, 2, 0, 500),
(256, 'cthp.jpg', 'Công thức hạnh phúc', 'Manfred F. R. Kets de Vries', 'Thế Giới', '2020-08-10', '14x20.5 cm', 164, 'Hạnh phúc thực ra là gì? Công thức nào tạo ra hạnh phúc?', 88000, 2, 0, 500),
(257, 'skkrr.jpg', 'Sống khỏe không rủi ro', 'Frédéric Saldmann', 'Dân Trí', '2019-12-19', '14 x 20.5cm', 348, '\"Nên rửa tay trước hay sau khi đi vệ sinh, đá lạnh có thể giúp giảm cân, ôm giúp cắt cơn đói, tiểu đứng hay tiểu ngồi có lợi, đạp xe nhiều làm giảm nhu cầu tình dục,...? Bằng cách cung cấp những quy tắc vệ sinh đáng ngạc nhiên, những cách cắt cơn đói tự nhiên, danh sách những loại thực phẩm chống tăng cân,... \"', 118000, 2, 0, 500),
(258, 'llnmqo.jpg', 'Lịch lãm như một quý ông', 'Élisabeth Jammes', 'Thế Giới', '2019-12-04', '15x21 cm', 128, '\"Lịch lãm luôn là yếu tố tiên quyết tạo nên sức hấp dẫn cho phái mạnh. Với tất cả những ai đang loay hoay tìm kiếm phong cách, hoặc xây dựng hình ảnh người đàn ông hiện đại, thành công và thu hút, \"', 108000, 2, 0, 500),
(259, 'nvnttgvhvn.jpg', 'Nhân vật nổi tiếng thế giới – Văn hóa và nghệ thuật', 'Renzo Barsotti', 'Hà Nội', '2020-03-02', '24x31 cm', 126, 'Các hoạt động nghệ thuật và văn hóa giúp chúng ta giải tỏa căng thẳng trong cuộc sống và còn từng bước vun đắp tâm hồn ta.', 149000, 2, 0, 500),
(260, 'nvnttgkhvp.jpg', 'Nhân vật nổi tiếng thế giới – Khoa học và phát minh', 'Renzo Barsotti', 'Hà Nội', '2020-03-02', '24x31 cm', 126, '\"Nhắc đến khoa học, hẳn chúng ta sẽ nghĩ ngay đến kiến thức. Nhưng cuốn sách này không chỉ chứa những kiến thức khô cứng. Sách mở ra cho bạn thấy nhân sinh quan tươi sáng và tinh thần vươn lên của các vĩ nhân, sách còn kể lại những trải nghiệm xây đắp nên sự vĩ đại của họ.\"', 149000, 2, 0, 500),
(261, 'stmbt2.jpg', 'Sổ tay mẹ bầu ( TB 2019)', 'Ngọc Ánh', 'Lao động', '2019-04-18', '14x20.5 cm', 260, 'Bác sĩ', 82000, 2, 0, 500),
(262, 'bbpt.jpg', 'Ba bài pháp thoại', 'Đại sư Jetsunma Palmo', 'Hội nhà văn', '2019-04-25', '14 x 20.5cm', 121, '\"Để dẫn dắt TÂM vượt qua chướng ngại trên con đường đi tới giác ngộ, con người cần gì? Những bài pháp thoại của Đại ni sư Jetsunma Tenzin Palermo, người từng  có 12 năm thiền định trong hang núi, giúp soi tỏ theo một cách hiếm thấy. Bởi vì hiểu được bản thân mình như một đối tượng khách quan không phải điều dễ dàng, và bậc thầy, từ sự chứng nghiệm của bản thân, đãmở lòng cầm tay dẫn lối. TÂM có thể đạt tới yên tĩnh, tỉnh giác, có thể được trong veo trở lại như mặt hồ phản ánh bầu trời xanh, được khai mở dần như những cánh hoa mở ra vẻ đẹp sâu thẳm. TÂM cần được hiểu và luyện tập đúng đắn để mở đường cho sự chứng nghiệm giác ngộ.\"', 69000, 2, 0, 500),
(263, 'lsctcttn.jpg', 'Lịch sử chính trị cho thanh thiếu niên', '\"Alex Frith, Rosie Hore & Louie Stowell\"', 'Lao động', '2019-04-22', '17 x24cm', 127, '\"Chính trị  là một trong những chủ đề người ta hạn chế đề cập đến trong những cuộc nói chuyện lịch sự, có phải vì các quan điểm chính trị khác nhau dễ gây tranh cãi ? Nhưng nếu bạn muốn hiểu về thế giới xung quanh, bạn phải hiểu về chính trị. Chính trị là cách bất kỳ nhóm người nào quyết định cách điều hành một nhóm, một thành phố, một đất nước hay một lục địa. Chính trị là cách đưa ra các quyết định: nhỏ bé như quyết định ai là lớp trưởng; to tát như bỏ phiếu bầu đại biểu quốc hội hay Chủ tịch nước. Chính trị ở khắp mọi nơi và sớm muộn gì, chúng ta cũng sẽ là một phần của chính trị.\"', 118000, 2, 0, 500),
(264, 'btdcbgpdctl.jpg', 'Buông tay để con bay  - Giải pháp để con tự lập & mẹ tự do', 'Thu Hà (Mẹ Xu-Sim)', 'Thế Giới', '2019-05-25', '14.5x20.5 cm', 250, '\"Có cha mẹ nào không muốn con mình trở thành những đứa trẻ biết tự học, tự phục vụ bản thân, tự tin, tự hạnh phúc và có chính kiến. Rất nhiều khi, bí kíp không nằm ở việc bố mẹ phải làm những gì, phải ngồi kèm con học bao lâu, phải trả lời mọi điều con hỏi đến đâu, phải dắt con đến những trung tâm học thêm nào, hay đăng ký cho con tham gia các trại hè kỹ năng tốn kém ra sao. Rất nhiều khi, điều quan trọng lại giản dị đến bất ngờ: không làm gì. Buông.\"', 100000, 2, 0, 500),
(265, 'dttystvt2.jpg', 'Dịch từ tiếng yêu sang tiếng việt ( TB 2019)', 'Lê Bích', 'Hội nhà văn', '2019-01-25', '14 x15cm', 211, '\"Tình yêu là mù quáng! Tây ta đều nói \"\"Love is blind\"\". Đúng vậy! Tình yêu là mù quáng chính vì thế nên bây giờ Lê Bích đã hiểu vì sao yêu nhau người ta cứ phải sờ soạng mới hiểu được nhau để rồi sau đó hôn nhân sẽ làm họ sáng mắt ra.\"', 85000, 2, 0, 500),
(266, 'ttktl3.jpg', 'Thủ thỉ kiến thức lớp 3', 'Mitsuharu Ohyama', 'Thế Giới', '2019-01-04', '15 x 20.5 cm', 195, 'Cuốn', 85000, 2, 0, 500),
(267, 'nkhlbt1.jpg', 'Nhật ký học làm bánh (tập 1)', 'Linh trang', 'Thế Giới', '2019-02-28', '\"14,5 x 20,5 cm\"', 220, '\"Được trông đợi ngay từ khi còn là bản thảo, cuốn sách \"', 105000, 2, 0, 500),
(268, 'tntmtpctnc.jpg', 'Tín ngưỡng thờ Mẫu Tứ phủ - Chốn thiêng nơi cõi thực (TB 2019)', 'Thạc sĩ Trần Quang Dũng (chủ biên)', 'Thế Giới', '2019-05-14', '17x25 cm', 151, '\"Trong đời sống tinh thần của người Việt, niềm tin tâm linh có vai trò vô cùng quan trọng và là biểu hiện sinh động của văn hóa Việt. Tín ngưỡng không chỉ giúp xoa dịu nỗi đau và thiệt thòi của số phận, mà còn động viên, dẫn dắt mỗi kiếp người không ngừng hướng thiện, vượt khó vươn lên trong cuộc sống. Trong các tín ngưỡng ở Việt Nam, Tín ngưỡng thờ Mẫu Tứ phủ là tín ngưỡng nội sinh mang bản sắc Việt. Trải bao thăng trầm và có lúc bị cấm đoán, Tín ngưỡng vẫn âm thầm được gìn giữ, thực hành trong một cộng đồng dân tộc. Ngày nay, tín ngưỡng ấy đã trở thành một trong những biểu tượng của văn hóa Việt cũng và di sản văn hóa phi vật thể của nhân loại.\"', 138000, 2, 0, 500),
(269, 'ttktl4.jpg', 'Thủ thỉ kiến thức lớp 4', 'Mitsuharu Ohyama', 'Thế Giới', '2019-01-22', '15 x 20.5 cm', 199, 'Cuốn', 88000, 2, 0, 500),
(270, 'smcnmn.jpg', 'Sức mạnh của người mẹ Nhật', 'An Minjung', 'Thế Giới', '2018-06-25', '14x20.5 cm', 276, '\"Cuộc đời tác giả Ahn Min Jung bắt đầu thay đổi từ khi gặp người chồng Trung Quốc giỏi tiếng Nhật. Sau nhiều thăng trầm và đi tới kết hôn, cô đã sinh được một bé gái xinh đẹp tên là Lena và bắt đầu nuôi dạy con ở Nhật. Cuốn sách này kể lại hành trình nuôi dạy con mà người mẹ Hàn đích thân trải nghiệm trong quá trình nuôi dạy con gái tại Nhật, được trình bày với sự quan sát và văn phong báo chí đặc trưng của một phóng viên. Những bài tiểu luận dựa trên kinh nghiệm có thực của gia đình\"', 95000, 2, 0, 500),
(271, 'tnm.jpg', 'Tarot nhập môn', 'Kim Huggens', 'Hà Nội', '2019-01-24', '\"14 x 20,5 \"', 455, '\"Tarot – bộ môn vừa mang màu sắc chiêm đoán vừa mang tính nghệ thuật. Mỗi lá bài đem đến cho bạn những thông điệp được ẩn giấu từ quá khứ, hiện tại hoặc tương lai. Từng lá bài giống như một “bảo tàng nghệ thuật” thu nhỏ – từng bức tranh được gửi gắm trong đó đều chứa những thông điệp về nhân sinh quan.\"', 120000, 2, 0, 500),
(272, 'hfwhhvta.jpg', 'How Food Works - Hiểu hết về thức ăn', 'Trần Trương Phúc Hạnh', 'Thế Giới', '2019-01-22', '\"19,5 x 23,5 cm \"', 255, 'Hướng dẫn đơn giản nhất và trực quan nhất từ trước đến nay về thức ăn và dinh dưỡng!', 300000, 2, 0, 500),
(273, 'csthsh.jpg', 'Cool Series - Toán học siêu hay', 'Katie Hewett - Tracie Young', 'Thế Giới', '2019-02-08', '\"20,5 x 15,5\"', 112, '\"Có thể toán là nhạt nhẽo và không hề đặc sắc với những người không sẵn sàng hiểu nó, nhưng với những người còn lại, toán là nơi mà phép màu và điều kỳ diệu tồn tại trong hình hài của những con số và phương trình, trong những lý thuyết và công thức. Toán đem đến sự tươi mới cho thế giới bình thường này và biến một tình huống tẻ nhạt trở thành niềm vui bất tận đến không thể tin được.\"', 85000, 2, 0, 500),
(274, 'ccdqtt.jpg', 'Cùng con đi qua tuổi teen', 'Chu Hồng Vân', 'Lao động', '2018-06-28', '14 x 20.5cm', 392, '\"Khi con bước vào tuổi dậy thì ẩm ương, dở trẻ con dở người lớn, thì cũng là lúc nhiều cha mẹ thường xuyên ở trong trạng thái bối rối, lo âu, thậm chí tăng xông, sốc nặng. Tại sao con bỗng nhiên ngang như cua? Tại sao con tức giận bừng bừng chỉ vì một lý do bé tí? Tại sao con thích một mình? Tại sao con lơ là gia đình mà thân thiết với bạn bè? Tại sao con ăn mặc không giống ai? Tại sao con yêu bạn khác giới? Tại sao con tò mò về sex? Có 1001 các vấn đề của tuổi teen nhưng hình như ngoài chuyện học hành ra, cha mẹ không mấy quan tâm.  Nhưng nếu cha mẹ biết đứa trẻ cảm thấy cô đơn, không được chia sẻ, căng thẳng và thậm chí tổn thương đến thế nào…\"', 108000, 2, 0, 500),
(275, 'cptcd.jpg', 'Có phải tại con đâu!', 'Isabelle Filliozat', 'Thế Giới', '2018-06-26', '16x20.5 cm', 176, '\"Khi trẻ đã lên 6, các bậc cha mẹ tưởng như được dễ thở hơn bởi không còn phải đối mặt với những trận ăn vạ, những cơn gào khóc nhưng thay vì thế thì: chạy nhảy khắp nơi, quên đồ đạc, không tập trung nổi, mất lòng tin, nổi khùng lên trước một việc nhỏ nhặt, hung hăng khi ở trường, khó chịu nơi bàn ăn, tè dầm ra giường,… - Những thử thách mới trong một chặng đường mới! Và liệu những la hét, quát mắng hay hình phạt có phải là giải pháp hay chỉ càng đổ thêm dầu vào lửa?\"', 75000, 2, 0, 500),
(276, '1kqkttg.jpg', '10 Kỳ quan kiến trúc thế giới', 'Alain Boyer', 'Thông Tấn', '2018-07-03', '25x25 cm', 50, '', 109000, 2, 0, 500),
(277, '1btdnlshh.jpg', '10 bức tranh đẹp nhất lịch sử hội họa', 'Sophie Crépon', 'Thông Tấn', '2018-07-03', '25x25 cm', 50, '', 109000, 2, 0, 500),
(278, 'qgidmvs.jpg', 'Quẳng gánh Ielts đi mà vui sống!', 'Lê Thanh Tùng', 'Thế Giới', '2018-07-05', '14 x 20.5cm', 324, '\"Tiếng Anh – thứ ngôn ngữ quốc tế - có vẻ như chưa bao giờ dễ tiếp cận đến thế. Ngày nay, với những trung tâm tiếng Anh mọc nên như nấm, chưa nói Internet ở mọi nơi, với vô số ứng dụng trên điện thoại phục vụ cho việc học thức ngôn ngữ này, tưởng chừng chinh phục nó sẽ là điều không quá khó nhọc.\"', 90000, 2, 0, 500),
(279, 'gdttdh.jpg', 'Giáo dục trẻ tự định hướng', 'Phương Đặng', 'Thế Giới', '2018-08-26', '14 x 20.5cm', 424, '- Giáo dục trẻ tự định hướng/tự chỉ huy thực sự là gì?', 115000, 2, 0, 500),
(280, 'dccyncccct.jpg', 'Để cho con yên nhưng cứ chuyển cho con tiền', 'Anthonye. Wolf', 'Thế Giới', '2018-08-25', '14x20.5 cm', 328, '\"Không có độ tuổi nào gây nhiều bối rối hơn tuổi mới lớn. Bối rối không chỉ cho chính những đứa trẻ đang trải qua độ tuổi ấy, mà còn cho những người xung quanh chúng, trên hết là các bậc cha mẹ. Những đứa con hôm qua còn là đứa trẻ vui vẻ, cởi mở, tự giác giúp đỡ cha mẹ việc nhà, hôm nay đã trở thành những cô cậu thiếu niên hay cáu gắt, sưng sỉa, không thiết động chân tay làm một việc gì mà chỉ biết đấu khẩu hoặc né tránh cha mẹ. Những người cha người mẹ hoang mang có thể sẽ tìm thấy sức mạnh cho mình từ cuốn cẩm nang về trẻ tuổi teen thời đại mới này của Anthony E. Wolf.\"', 110000, 2, 0, 500),
(281, 'manckm.jpg', '\"Mẹ ăn ngon, con khỏe mạnh\"', 'Nguyễn Thị Ninh', 'Thế Giới', '2018-07-27', '14.5x20.5 cm', 228, '\"Chế độ dinh dưỡng thời kỳ thai nghén và sau sinh luôn là mối quan tâm lớn của các bà mẹ. Bây giờ mẹ bầu và mẹ cho con bú đã ăn uống thoải mái hơn, không kiêng khem nhiều như xưa, nhưng ăn thế nào cho lành mạnh, đủ dưỡng chất, ngon miệng mà không biến mẹ trở thành “vĩ đại”, lại chế biến đơn giản, thì không phải ai cũng nắm được.\"', 129000, 2, 0, 500),
(282, 'nkhlb3kbvl.jpg', 'Nhật ký học làm bánh 3 - Khi bếp vắng lò', 'Linh trang', 'Thế Giới', '2018-08-26', '16 x 24', 296, '\"“Tất cả những công thức trong cuốn sách này được biên soạn với tiêu chí: không cần nhiều kĩ năng hay dụng cụ bếp đặc biệt, nguyên liệu không quá khó tìm, cách thực hiện đơn giản, ngay cả người ‘mới nhất’ trong bếp cũng có thể làm thành công trong lần thử đầu tiên. Và quan trọng hơn hết là tất cả những món ngọt này đều không cần lò nướng. Ý tưởng ‘khi bếp vắng lò’ xuất phát từ rất nhiều phản hồi của bạn đọc \"', 179000, 2, 0, 500),
(283, '7dcnvc.jpg', '72 điều chớ nói với con', 'Hà Hạo', 'Thông Tấn', '2018-09-19', '15x20.5 cm', 276, '\"“Tôi ép con học cũng chỉ là vì nó, sao nó nỡ bỏ đi?”\"', 89000, 2, 0, 500),
(284, 'ckltgbbktl.jpg', 'Các kỷ lục thế giới - Bộ Bách khoa thư Larousse', 'Danh Việt', 'Thế Giới', '2018-12-10', '20 x 34 cm', 95, '\"Bạn có biết trong các loàicá mập trắng, linh cẩu và cá sấu, loài nào có hàm răng khỏe nhất? Bạn có biết giun dây giày có thể dài đến 60 mét, đủ để buộc hàng chục đôi giày và người phụ nữ thấp nhất chỉ caocó 61 xăng ti mét? Luôn chứa đựng biết bao điều kỳ thú, thế giới tự nhiên muôn hình muôn vẻ vì thế lúc nào cũng khơi gợi sự hiếu kỳ, say mê khám phá của con người.\"', 130000, 2, 0, 500),
(285, 'clkq.jpg', 'Con là khách quý', 'Kẩm Nhung', 'Thế Giới', '2018-12-13', '15 x 24 cm', 302, '\"“Đây là một cuốn sách hấp dẫn và bổ ích, nhất là những thông tin về chăm sóc sức khỏe hay ăn uống cho bé. Tôi  nghĩ đây sẽ là một cuốn sách có ích cho các ông bố bà mẹ, và nhất là cho các ông bà nội ngoại của các em bé. Trên hết, cuốn sách sẽ rất cần cho các bác sỹ nhi khoa (và cả sản khoa) ở Việt Nam đọc để thay đổi cách suy nghĩ  và tư vấn cho các ông bố bà mẹ ở Việt Nam.”\"', 86000, 2, 0, 500),
(286, 'tlmpt1.jpg', 'Tự làm mỹ phẩm (TB 110.000)', 'Anh Thư - Thu Giang', 'Thế Giới', '2018-12-10', '15 x 20.5 cm', 155, '\"\"\"Quá trình tự học làm mỹ phẩm của chúng tôi chắc không được coi là vô cùng suôn sẻ. Không có tài liệu nào bằng tiếng Việt. Không đủ tiền mua nguyên vật liệu... Cũng vì vậy mà tôi đã làm hỏng nhiều và những bài học đó tôi nhớ sâu sắc chúng tôi làm ra cuốn sách này cũng vì muốn bạn có một quá trình học làm mĩ phẩm thuận lợi hơn... Các công thức trong sách hướng dẫn này đã vượt qua bài kiểm tra về độ kích ứng trên da tại Trung tâm Kiểm nghiệm Dược phẩm - Mỹ phẩm Hà Nội.\"', 110000, 2, 0, 500),
(287, 'stnhd.jpg', 'Sinh tồn nơi hoang dã', 'Makoto Minemura', 'Lao động', '2018-04-23', '18x22cm', 179, '\"Nhắc đến “sinh tồn”, bạn sẽ nghĩ đến điều gì? Phiêu lưu trên đảo không người, thám hiểm trong rừng thẳm… nghe thật xa lạ với đời sống hiện đại nhỉ!\"', 138000, 2, 0, 500),
(288, 'nnkplstkvvv.jpg', 'Những nhà khám phá lịch sử tri kiến vạn vật và con người', 'Daniel J. Boorstin', 'Thế Giới', '2018-12-26', '17 x 25 cm', 751, '\"Được coi như cuốn sách lớn nhất của một trong những sử gia lớn nhất thời hiện đại, \"', 209000, 2, 0, 500),
(289, 'lbvbd.jpg', 'Làm bạn với bóng đá', 'Tatsuki Noda', 'Lao động', '2018-04-23', '18x22cm', 194, '\"Hằng ngày, trên khắp thế giới có hàng triệu bạn trẻ cùng chạy theo trái bóng. Nhìn vào những bạn ấy, ta sẽ hiểu rằng cầu thủ càng giỏi thì càng giàu tình yêu bóng đá. Chính nhờ tình yêu này, người ta hăng say luyện tập kiên trì để cải thiện những điểm còn yếu. Cầu thủ chưa xuất sắc thì cần nỗ lực luyện tập hơn người khác nhiều lần và dần dà sẽ phát huy được hết khả năng của mình.\"', 148000, 2, 0, 500),
(290, 'nttdrm.jpg', 'Nghệ thuật tư duy rành mạch', 'Rolf Dobelli', 'Thế Giới', '2018-12-28', '\"14 x 20,5 cm\"', 447, '\"Mọi người đều mắc sai lầm. Những sai lầm trong việc ra quyết định đều bắt nguồn từ các lỗi tư duy tưởng như đơn giản, nhưng dần dà chúng tích tụ thành những thành kiến khó bỏ. Vậy mà hiếm khi chúng ta nhận ra điều đó, nên sai lầm cứ nối tiếp sai lầm, dẫn đến bao hối tiếc vì những quyết định không đúng cho cuộc đời mình: Cứ mãi đeo bám một công việc dù biết trước chẳng thu được lợi lộc gì; cho rằng một dự án thành công suôn sẻ là do tài năng và trí lực, còn thất bại do ngoại cảnh khách quan; bán cổ phiếu lúc đã quá trễ, hoặc bán quá sớm… Và đó chỉ là một vài trong số hàng loạt các sai lầm “cơ bản” được Dobelli mổ xẻ phân tích qua 99 chương sách ngắn gọn, súc tích với những ví dụ minh họa thiết thực giúp ta có thể nhận diện và né tránh chúng. Đơn giản, rõ ràng và toàn diện một cách đáng  ngạc nhiên, cuốn cẩm nang nhất định phải có này có thể thay đổi mãi mãi cách ta suy nghĩ, giúp ta quyết định sáng suốt hơn mỗi ngày ở bất cứ đâu,  trong bất cứ tình huống nào.\"', 118000, 2, 0, 500),
(291, 'hnntl.jpg', 'Hiểu nghề nghiệp tương lai', 'Azumo Sonoko', 'Lao động', '2018-04-23', '18x22cm', 195, '\"Bạn thường thấy những nghề nào quanh mình? Thầy cô ở trường, cô chú ở công ty, bác tài xe buýt hay chú lái tàu điện… Nào, giờ bạn thử nghĩ tiếp đến những nghề xa xôi hơn, những cầu thủ bóng đá đại diện cho đất nước đi thi đấu ở nước ngoài, nghệ sĩ trên tivi, phi hành gia… Ngoài ra, còn rất, rất nhiều các công việc khác trên thế giới này.\"', 148000, 2, 0, 500),
(292, 'nt.jpg', 'Nếu... thì', 'Randall Munroe', 'Lao động', '2018-04-23', '17x23cm', 384, '', 129000, 2, 0, 500),
(293, 'blnkn.jpg', 'Bơi lội như kình ngư', 'Iwamoto Kenichi', 'Lao động', '2018-04-23', '18x22cm', 178, '\"Quyển sách này dành cho những ai sợ nước hay chưa biết bơi. Bơi lội là môn thể thao đòi hỏi nhiều công sức để luyện tập cho nhuần nhuyễn, cũng như đi xe đạp vậy. Em có còn nhớ cảm giác xúc động khi lần đầu tiên trèo lên chiếc xe? Hay cảm giác vui sướng khi tự đạp xe chạy băng băng? Thế nhưng những ngày đầu ai cũng phải nhờ người khác giúp, và tập đi tập lại biết bao nhiêu lần mới đạp được, phải không!\"', 142000, 2, 0, 500),
(294, 'bcdtc.jpg', 'Bắt chước để thành công', 'Tachikawa Mitsuaki', 'Thế Giới', '2018-05-17', '\"14 x 20,5 cm\"', 248, '\"Tachikawa Mitsuaki không ngại tiết lộ bí quyết thành công của ông, đó chính là bắt chước. Con người vốn là loài động vật dễ bị ảnh hưởng, dù muốn hay không cũng đang chịu ảnh hưởng từ môi trường và những người xung quanh, đây cũng chính là việc nhân loại thích ứng với môi trường để sinh tồn và phát triển. Nói cách khác, bắt chước cũng chính là học hỏi.\"', 96000, 2, 0, 500);
INSERT INTO `product` (`id`, `image`, `name`, `author`, `publisher`, `release_date`, `size`, `page_count`, `description`, `price`, `category_id`, `view_count`, `stock_quantity`) VALUES
(295, 'tlctbl.jpg', 'Tâm lý chiến trong bán lẻ', 'Toshifumi Suzuki', 'Tri Thức', '2017-09-25', '\"14 x 20,5 \"', 305, '\"Từ một người không có chút kiến thức nào trong ngành bán lẻ, không có kỹ năng đặc biệt hay một chứng chỉ cụ thể nào, thậm chí còn không có cảm xúc về các con số khi bán hàng, Toshifumi Suzuki đã đưa 7-Eleven trở thành đế chế bán lẻ được mệnh danh là chuỗi cửa hàng tiện lợi “đáng sợ” nhất trên thế giới, khi cứ hai giờ đồng hồ trôi qua lại có một cửa hàng mọc lên.\"', 93000, 2, 0, 500),
(296, 'nbtvbcltt.jpg', 'Nàng bạch tuyết và bảy chú lùn - Truyện tranh ghép hình', 'Bồ Câu', 'Hội nhà văn', '2017-12-13', '\"17 x 16,2 cm\"', 20, 'Tranh ghép hình được ưa chuộng nhất nước Ý', 60000, 2, 0, 500),
(297, 'nckccn.jpg', '\"Nuôi con khéo, chăm con nhàn\"', 'Rory (Joon Hee Kim)', 'Thế Giới', '2017-11-14', '15x24cm', 393, '\"Nuôi con có phải là một việc dễ dàng? Tiếng khóc giữa đêm của con có bao giờ là niềm vui với các bà mẹ? Tại sao càng dỗ con ngủ, con càng khóc. Bế con cả đêm trên tay mà con vẫn ngủ không yên. Giờ ngủ. Con không ngủ. Giờ ăn. Con không ăn. Người cha người mẹ phải làm gì đây?\"', 116000, 2, 0, 500),
(298, 'tntbc.jpg', 'Thương nhớ thời bao cấp', 'Thành Phong', 'Hội nhà văn', '2018-01-27', '17x20.5cm', 251, '', 150000, 2, 0, 500),
(299, 'dakpbk.jpg', 'Để ăn không phải băn khoăn', 'Nguyễn Bích Hiền', 'Thế Giới', '2018-01-24', '\"14 x 20,5 \"', 267, '\"“Độc giả sợ thực phẩm gây ung thư. Còn tôi, tôi hãi truyền thông về an toàn thực phẩm.”\"', 80000, 2, 0, 500),
(300, 'atko.jpg', 'An toàn khi online', 'Louie Stowell.', 'Thế Giới', '2018-01-10', '14x20.5cm', 144, '\"Tuần này bạn đã check in ở bao nhiêu quán? Đã selfie bao nhiêu lần? Lần cuối bạn vào WC mà không mang theo smartphone là từ bao giờ? Nếu bạn thấy cả nguồn sống bỗng chốc thu bé lại vừa bằng một màn hình thì bạn không cô đơn đâu. Internet đã chạm đến mọi ngóc ngách trong cuộc sống của chúng ta. Thế giới đó thật kỳ diệu với nguồn tri thức bất tận, và muôn màu vẻ cuộc sống đang hiện lên từng giây từng phút. Nhưng còn những mặt trái của nó, những những mê cung tăm tối đầy cạm bẫy với đủ loại quái thú, nào spammer, nào troll, hay cả những kẻ ấu dâm đáng sợ?\"', 49000, 2, 0, 500),
(301, 'hbsndgdtmcc.jpg', 'Hỏi bác sĩ nhi đồng: Giải đáp thắc mắc của cha mẹ về bệnh con nít', 'Bác sĩ Trương Hữu Khanh', 'Thế Giới', '2018-03-27', '\"14 x 20,5 cm\"', 288, '\"Gần một đời nghề làm việc với trẻ em, gần một đời nghề tiếp xúc với bệnh nhi, làm việc tại Khoa Nhiễm - Thần kinh của Bệnh viện Nhi Đồng 1, nơi “đầu sóng ngọn gió” về dịch bệnh, Bác sĩ Trương Hữu Khanh thấu hiểu những khó khăn, lo lắng và nhiều vấn đề cha mẹ các bé quan tâm và hỏi han trong quá trình chăm sóc con cái. Với mong muốn chia sẻ, giải thích những khúc mắc của  cha mẹ các bé, bác sĩ đã mở fanpage \"', 79000, 2, 0, 500),
(404, 'cgtv-cgttp.jpg', 'Chuyên gia từ vựng - Có gì trong thành phố', 'Annabel Savery', 'Hà Nội', '2023-10-06', '23x26 cm', 48, 'Dành cho lứa tuổi 4+', 75000, 3, 0, 500),
(405, 'ngtg().jpg', 'Nếp gấp thời gian (The Graphic Novel)', 'Madeleine L’Engle', 'Hội nhà văn', '2023-10-13', '15.5x23 cm', 392, '', 220000, 3, 1, 500),
(406, 'lnl_mdhb.jpg', '\"Làm người lớn, một điều huyền bí\"', 'Thêm vào giỏ hàng', '8935235239555', '2023-10-13', '15x20 cm', 111, 'MỘT CUỐN SÁCH GÂY ĐỒNG CẢM SÂU SẮC VÀ BUỒN CƯỜI KHÔNG CHỊU ĐƯỢC.', 69000, 3, 1, 500),
(407, 'qvb-bhhsmnacdw.jpg', 'Quái vật băng – Bestseller hài hước SỐ MỘT nước Anh của David Walliams', 'David Walliams', 'Hội nhà văn', '2023-09-21', '14 x 20.5cm', 491, 'Đây là câu chuyện kể về một cô bé mồ côi mười tuổi và một con voi ma mút 10.000 tuổi...', 180000, 3, 0, 500),
(408, 'tstcgd-cymvc.jpg', 'Tủ sách tình cảm gia đình - Con yêu mẹ vô cùng', 'Phượng Nguyễn', 'Hà Nội', '2023-10-18', '20x20 cm', 28, 'Lời yêu thương', 45000, 3, 14, 494),
(409, 'cgtv-cgosb.jpg', 'Chuyên gia từ vựng - Có gì ở sân bay', 'Skylar White minh họa', 'Hà Nội', '2023-10-06', '23x26 cm', 48, 'Dành cho lứa tuổi 4+', 75000, 3, 1, 500),
(410, 'gk-lha.jpg', 'Gấu Koda - Làn hơi ấm', 'Lee Rury & Emanuele Bertossi', 'Hội nhà văn', '2023-08-07', '20.5x23.5 cm', 38, '', 65000, 3, 0, 500),
(411, 'cxtt.jpg', 'Cuốc xe tuổi trẻ', 'Mèo Mốc', 'Thế Giới', '2023-08-16', '17x24 cm', 186, '\" là một hành trình đầy sôi nổi và say mê của 12 họa sĩ trẻ Việt Nam, với 12 truyện ngắn bằng tranh sinh động và giàu sáng tạo. Mỗi câu chuyện là một góc nhìn, có khi huyền ảo, mộng mơ, có khi sâu lắng, day dứt, về một lát cắt đời thường, về một vấn đề xã hội, một sắc màu văn hóa, một góc khuất nội tâm hay một cảm xúc bất ngờ.  \"', 155000, 3, 0, 500),
(412, 'ngtg.jpg', 'Nếp gấp thời gian', 'Madeleine L’Engle', 'Hội nhà văn', '2023-10-13', '14 x 20.5cm', 307, '', 90000, 3, 1, 495),
(413, 'tstcgd-cnbn.jpg', 'Tủ sách tình cảm gia đình - Cả nhà bên nhau', 'Phượng Nguyễn', 'Hà Nội', '2023-10-18', '20x20 cm', 28, 'Cùng gắn kết', 45000, 3, 3, 494),
(414, 'cgmxc.jpg', 'Cô gà mái xổng chuồng', 'Hwang Sun-mi', 'Hội nhà văn', '2023-08-25', '15x23 cm', 196, '\"Mầm Lá là cô gà duy nhất trong đàn đến giờ ăn không chúi đầu vào máng mà lại thò cổ qua lưới sắt để ngắm tán cây Mimosa ngoài vườn, cũng là cô gà duy nhất có một cái tên riêng do cô tự đặt. Không chấp nhận cuộc sống quẩn quanh trong chuồng chỉ để xơi cám và đẻ trứng, Ipssac mơ ước được đi lại đó đây, được ấp trứng rồi dẫn bầy con của mình tha thẩn khắp nơi như Gà Mái nhà – thành viên của gia đình sân vườn.\"', 109000, 3, 0, 500),
(415, 'cplkdcet.jpg', 'Chuyến phiêu lưu kỳ diệu của Edward Tulane', 'Kate DiCamillo', 'Hồng Đức', '2023-08-25', '16.5x19 cm', 210, '\"Ngày xưa, trong ngôi nhà trên phố Ai Cập, có một chú  thỏ bằng sứ tên là Edward Tulane. Chú được làm ra bởi một người chế tác đồ chơi bậc thầy, được mặc trên người những bộ quần áo tuyệt hảo đặt may riêng.Chú vô cùng ngưỡng mộ và đề cao bản thân, không màng tới cô chủ Abilene đang vô cùng nâng niu chú. Thế nhưng, trên chuyến đi lênh đênh vượt đại dương, một thằng bé đã vô tình quăng chú khỏi mạn tàu. Và từ đó, hành trình lưu lạc của Edward bắt đầu. \"', 92000, 3, 0, 500),
(416, 'mltvbcn.jpg', 'Mèo lang thang và Bồ Câu nhí', 'Edward Hemingway', 'Hà Nội', '2023-09-06', '24x24 cm', 35, 'Gã Mèo lang thang chiếm một khu đất hoang làm nơi nương náu. Chẳng kẻ nào được phép bén mảng vào địa phận của gã.', 69000, 3, 0, 500),
(417, 'lgsncsn.jpg', 'Lật giở song ngữ - CHIA SẺ NÀO', 'Yusuke Yonezu', 'Thông Tấn', '2023-09-06', '16.8x16.8 cm', 26, 'Sách lật giở song ngữ 0-3 tuổi', 92000, 3, 0, 500),
(418, 'lgsnmmm.jpg', 'Lật giở song ngữ - MĂM MĂM MĂM', 'Yusuke Yonezu', 'Thông Tấn', '2023-09-06', '16.8x16.8 cm', 24, 'Sách lật giở song ngữ 0-3 tuổi', 92000, 3, 0, 500),
(419, 'lgsnmgv.jpg', 'Lật giở song ngữ - MÓN GÌ VẬY', 'Yusuke Yonezu', 'Thông Tấn', '2023-09-06', '16.8x16.8 cm', 16, 'Sách lật giở song ngữ 0-3 tuổi', 86000, 3, 0, 500),
(420, 'lgsndkn.jpg', 'Lật giở song ngữ - ĐỪNG KHÓC NHÉ', 'Yusuke Yonezu', 'Thông Tấn', '2023-09-06', '16.8x16.8 cm', 16, 'Sách lật giở song ngữ 0-3 tuổi', 86000, 3, 0, 500),
(421, 'lgsnhgt.jpg', 'Lật giở song ngữ - HOA GÌ THẾ', 'Yusuke Yonezu', 'Thông Tấn', '2023-09-06', '16.8x16.8 cm', 14, 'Sách lật giở song ngữ 0-3 tuổi', 86000, 3, 0, 500),
(422, 'lgsnqgd.jpg', 'Lật giở song ngữ - QUẢ GÌ ĐÂY', 'Yusuke Yonezu', 'Thông Tấn', '2023-09-06', '16.8x16.8 cm', 14, 'Sách lật giở song ngữ 0-3 tuổi', 86000, 3, 0, 500),
(423, 'lstgtdsktt.jpg', 'Lịch sử thế giới theo dòng sự kiện - Từ thời đồ đá tới thời hiện đại', 'Jane Chisholm', 'Hội nhà văn', '2023-09-19', '23.8x30.5cm', 130, '\"Có bao giờ bạn tự hỏi, bánh xe được sáng tạo ra từ khi nào? Hay bạn muốn biết, vào lúc các Pharaoh cho xây dựng các Kim tự tháp ở Ai Cập thì người Ấn Độ đã văn minh đến đâu? Hoặc đơn giản, bạn đã quá ngán những tiết học lịch sử trên lớp, và muốn khám phá cuộc hành trình đến với văn minh của loài người theo một cách trực quan và sinh động, và nhất là… không gây buồn ngủ?\"', 189000, 3, 0, 500),
(424, 'ktcddgbtqh.jpg', 'Kho tàng câu đố dân gian bằng tranh – Quê hương Đất nước', 'Thụ Nho sưu tầm & biên soạn', 'Hội nhà văn', '2023-06-22', '16 x 24 cm', 83, 'Dành cho tuổi mẫu giáo và tiểu học', 68000, 3, 0, 500),
(425, 'ktcddgbtgd.jpg', 'Kho tàng câu đố dân gian bằng tranh – Gia đình Làng xóm', 'Thụ Nho sưu tầm & biên soạn', 'Hội nhà văn', '2023-06-22', '16 x 24 cm', 83, 'Dành cho tuổi mẫu giáo và tiểu học', 68000, 3, 0, 500),
(426, 'ltdt.jpg', 'Lũ trẻ đường tàu', 'Edith Nesbit', 'Hội nhà văn', '2023-07-07', '14 x 20.5cm', 310, '', 85000, 3, 0, 500),
(427, 'vmycnbilysm.jpg', 'Vì mẹ yêu con nhiều - Because I love you so much', 'Guido Van Genechten', 'Dân Trí', '2023-03-27', '20.5x28.5cm', 25, '\"Bé Gấu Tuyết đã biết rất nhiều điều: đám cá ngon lành bơi ở đâu, bông tuyết có vị thế nào, gió có thể mơn man mà cũng có thể buốt táp, khi nào mặt trời nhô và khi nào mặt trăng ló. Bé cũng biết nếu ở cách mẹ bao xa thì dễ gặp nguy hiểm. \"', 65000, 3, 0, 500),
(428, 'ptknxh5hdt.jpg', '\"PHÁT TRIỂN KỸ NĂNG XÃ HỘI - 50 hoạt động thú vị giúp bạn nhỏ kết bạn, giao tiếp và thành thạo các kỹ năng xã hội\"', 'Sarah Rebar', 'Hà Nội', '2023-03-29', '19x24 cm', 147, 'Học kỹ năng xã hội qua những hoạt động SIÊU VUI!', 135000, 3, 0, 500),
(429, 'cxgqtchd.jpg', 'Chuyện xóm gà – Quả trứng của Hoàng đế', 'Christian Jolibois-Christian Heinrich', 'Hà Nội', '2023-04-13', '14.5x19 cm', 48, '\"Carmen, Carmélito, Bélino và gà Ú đang mải miết chơi thả diều thì một chuyện quái lạ xảy đến khiến tất cả cùng bối rối: xóm gà thân yêu của chúng đã thay hình đổi dạng! Giờ đây không sao vượt qua được tường thành… Thậm chí ông bạn già Pédro còn có vẻ không nhận ra chúng!\"', 58000, 3, 0, 500),
(430, 'cxggcdsht.jpg', 'Chuyện xóm gà – Giải cứu dòng sông hôi thối', 'Christian Jolibois-Christian Heinrich', 'Hà Nội', '2023-04-13', '14.5x19 cm', 48, '\"Còn gì khoái bằng việc được tắm sông sau một trận lội bùn tĩ tã. Nhưng thảm hoạ thay! Con sông chảy qua xóm gà đã mang một màu khác lạ, chưa kể nó còn bốc mùi hôi thối! Carmen, Carmélito và Bélino bèn lội ngược dòng lên thượng nguồn để tìm hiểu vấn đề…\"', 58000, 3, 0, 500),
(431, 'cxgcdbboxg.jpg', 'Chuyện xóm gà – Chim dodo bé bỏng ở xóm gà', 'Christian Jolibois-Christian Heinrich', 'Hà Nội', '2023-04-13', '14.5x19 cm', 48, '\"Một bà chim lạ vừa từ những hòn đảo xa xôi đến xin tị nạn ở xóm gà. Cháu trai bà, một chú chim sơ sinh bé bỏng, đang phải đối mặt với một nguy hiểm trầm trọng. Chỉ phép mầu mới có thể cứu được chú. Carmen, Carmélito và Bélino, vốn tốt bụng và hào hiệp như thường lệ, sẽ lại lên đường tìm kiếm người duy nhất có thể thực hiện điều kỳ diệu này…\"', 58000, 3, 0, 500),
(432, 'ttkmcxsncc.jpg', 'Tự tin khiến mình càng xuất sắc - Những câu chuyện để trưởng thành', 'Đào Xuân Ni', 'Dân Trí', '2023-05-31', '14 x 20.5cm', 154, '\" xoáy vào từng khía cạnh nhỏ giúp xây đắp lòng tự tin: cần cù, cải thiện không ngừng, giữ niềm tin vào mình, luyện lòng bao dung, không xem nhẹ bản thân, kiên trì tiến bước… Mỗi câu chuyện là một bài học nhỏ có mô tả nhân vật sinh động, giúp bạn đọc hiểu trực quan và dễ vận dụng cho bản thân mình. 30 câu chuyện về sự tự tin này là nguồn suốt mát lành vun đắp cho những bạn đọc trẻ ngẩng cao đầu yêu thương chính mình.\"', 65000, 3, 0, 500),
(433, 'mtctnnccd.jpg', 'Mình tự chịu trách nhiệm - Những câu chuyện để trưởng thành', 'Đào Xuân Ni', 'Dân Trí', '2023-05-31', '14 x 20.5cm', 154, '\" gồm gần 30 câu chuyện sinh động về cuộc sống và tinh thần trách nhiệm. Biết gánh vác, chia sẻ, thể hiện yêu thương, vun đắp ước mơ, bỏ qua định kiến, khoan dung, vượt qua thất bại… là những bước nhỏ giúp bạn đọc có trách nhiệm với cuộc đời. Chịu trách nhiệm sẽ giúp mỗi người khỏe mạnh hơn, vững vàng hơn, đủ đầy hơn trong cuộc sống, và hỗ trợ được mọi người xung quanh.\"', 65000, 3, 0, 500),
(434, 'cchttnccd.jpg', 'Chăm chỉ học thành tài - Những câu chuyện để trưởng thành', 'Đào Xuân Ni', 'Dân Trí', '2023-05-31', '14 x 20.5cm', 154, '\" đào sâu vào các khía cạnh của việc học, làm thế nào vun đắp những kỹ năng tốt hữu ích cho học hành và cả cuộc sống sau này. Sách giới thiệu 30 bài học rõ nét từ những người giỏi giang vươn lên khỏi khó khăn, vững bước trên con đường học hỏi suốt đời, không giới hạn trong học văn, toán, kiến thức mà còn bao gồm đọc sách, học nhạc, học thể thao, học cách vượt lên số phận… “Học, học nữa, học mãi” cũng là một hạnh phúc.\"', 65000, 3, 0, 500),
(435, 'smddmklncc.jpg', 'Say mê dẫn dắt mình khôn lớn - Những câu chuyện để trưởng thành', 'Đào Xuân Ni', 'Dân Trí', '2023-05-31', '14 x 20.5cm', 154, '\"Say mê dẫn dắt mình khôn lớn là 30 bài học về những hoàn cảnh khó khăn đi lên bằng say mê, như ngôi sao Leonardo DiCaprio, kỳ tài điện ảnh Quentin Tarantino, ngôi sao bóng rổ Dirk Nowitzki, thiên tài ngôn ngữ mù Alexia Sloane, CEO Chrysler, nhà soạn nhạc Sebatian Bach… Trước khi chạm đến thành công, họ đã đi qua nhiều gian khó bằng chính say mê và nội lực sâu sắc. Những nguồn năng lượng tích cực ấy giúp bạn đọc có thêm niềm tin và mạnh mẽ tiến bước.\"', 65000, 3, 0, 500),
(436, 'smcntgncc.jpg', 'Sức mạnh của những tấm gương - Những câu chuyện để trưởng thành', 'Đào Xuân Ni', 'Dân Trí', '2023-05-31', '14 x 20.5cm', 154, '\" gồm 30 câu chuyện truyền cảm hứng vươn lên cho mỗi độc giả nhỏ. Người tạo dựng nên đế chế đồ jean, nhà khoa học nghèo chạm đến cánh cửa Viện Hàn lâm Khoa học Hoàng gia Anh, “chú lính chì” cụt chân vẫn chơi bóng, cậu bé kém cỏi vươn lên dẫn đầu lớp… là những tấm gương sống động, bằng xương bằng thịt, truyền tải sức mạnh phấn chấn cho độc giả. Được tiếp thêm động lực, mỗi người đều có thể trở thành “anh hùng” cho chính cuộc đời mình.\"', 65000, 3, 0, 500),
(437, 'othbhhsmn.jpg', 'Ông Thối Hoắc - Bestseller hài hước SỐ MỘT nước Anh của David Walliams', 'David Walliams', 'Hội nhà văn', '2023-05-31', '14 x 20.5cm', 195, '“Ông Thối Hoắc hôi rình. Thối hoắc thối hoăng. Nếu trong từ điển còn từ nào thối hơn để diễn tả thứ mùi của ông thì xin cứ việc dùng...”', 106000, 3, 0, 500),
(438, 'cslrrvbs.jpg', 'Cuốn sách lớn rực rỡ về bác sĩ', 'Liesbet Slegers', 'Hà Nội', '2023-06-05', '25x26 cm', 28, '\"Khi bị ốm mệt, em đừng lo lắng\"', 58000, 3, 0, 500),
(439, 'cslrrvlch.jpg', 'Cuốn sách lớn rực rỡ về lính cứu hỏa', 'Liesbet Slegers', 'Hà Nội', '2023-06-05', '25x26 cm', 28, '\"Nguy hiểm vô cùng, những đám cháy!\"', 58000, 3, 0, 500),
(440, 'tmgv.jpg', 'Tớ mặc gì vậy', 'Loufane', 'Hà Nội', '2023-07-19', '18.5cm x 18.5cm', 14, '', 62000, 3, 0, 500),
(441, 'datn.jpg', 'Đuôi ai thế này', 'Anita Bijsterbosch', 'Hà Nội', '2023-07-19', '18.5cm x 18.5cm', 14, 'Đoán xem tớ là ai nào!', 62000, 3, 0, 500),
(442, 'ogk.jpg', 'Ông già Khottabych', 'Lazar Laghin', 'Hội nhà văn', '2023-07-31', '15.5x24 cm', 353, '', 108000, 3, 0, 500),
(443, 'tmptnbcb15tt.jpg', 'Tô màu phát triển não bộ cho bé 1-5 tuổi Tập 5', 'Phạm Ngọc Điệp minh họa', 'Dân Trí', '2022-09-09', '18.5x26cm', 20, 'SÁCH TÔ MÀU PHÁT TRIỂN NÃO BỘ', 16000, 3, 0, 500),
(444, 'gk-cmd.jpg', 'Gấu Koda - Cái mũi đen', 'Lee Rury & Emanuele Bertossi', 'Hội nhà văn', '2023-08-07', '20.5x23.5 cm', 38, '\"Ở ngôi làng Bắc Cực có hai mẹ con gấu Koda sống bên nhau yên bình, hạnh phúc. Cho tới một ngày kia, tên thợ săn Vova tới và truy đuổi hai mẹ con...Câu chuyện dịu dàng, cảm động kể về tình cảm mẹ con, sự hi sinh và tha thứ sẽ đem tới nhiều cảm xúc và suy nghĩ cho các độc giả nhỏ tuổi.\"', 65000, 3, 0, 500),
(445, 'hdcebd.jpg', 'Hỏi đáp cùng em! - Bóng đá!', 'Valentin Verthé', 'Thế Giới', '2022-12-23', '14x20.5 cm', 112, '\"Một cuốn sách giải đáp hơn 200 câu hỏi về những cầu thủ, đội bóng nổi tiếng cùng những giải bóng đá và kỷ lục hấp dẫn nhất.\"', 229000, 3, 0, 500),
(446, 'cnmemdkciha.jpg', 'Con nuôi một em mèo được không? - Can I have a little cat? (Sách song ngữ Anh - Việt)', 'Céline Claire', 'Dân Trí', '2023-03-27', '22x26 cm', 30, 'Nuôi một em mèo trong nhà chẳng phải rất tuyệt sao?', 65000, 3, 0, 500),
(447, 'hdceltndbvt.jpg', 'Hỏi đáp cùng em! - Làm thế nào để bảo vệ thiên nhiên?', 'Sophie De Mullenheim', 'Thế Giới', '2023-01-12', '14x20.5 cm', 112, 'Một cuốn sách giải đáp hơn 200 câu hỏi về những nguồn tài nguyên đáng kinh ngạc của hành tinh chúng ta cùng những hành động tuy nhỏ nhưng có ích để bảo vệ chúng.', 229000, 3, 0, 500),
(448, 'nhdttvfk.jpg', 'Nụ hôn đầu tiên - The very first kiss', 'Guido Van Genechten', 'Dân Trí', '2023-03-27', '25x26 cm', 30, '\"Một nụ hôn sẽ làm tim cậu đập nhanh hơn, bụng cậu như có bướm bay rộn ràng, lòng cậu ấm áp và cả người cứ râm ran. Một nụ hôn sẽ khiến chân cậu bủn rủn và làm cậu cảm thấy bồng bềnh như đang bay.\"', 65000, 3, 0, 500),
(449, 'btdtekns.jpg', 'Bé trai đi toilet - Ehon kỹ năng sống', 'Jinco', 'Hà Nội', '2022-04-04', '14 x 14 cm', 20, 'Cuốn sách vui nhộn này', 59000, 3, 0, 500),
(450, 'bynnggcoxl.jpg', '\"Bé yêu ngoan ngoãn giỏi giang – Cảm ơn, xin lỗi\"', 'Studio Afra', 'Dân Trí', '2022-04-12', '24x17 cm', 28, '', 38000, 3, 0, 500),
(451, 'bgdtekns.jpg', 'Bé gái đi toilet - Ehon kỹ năng sống', 'Jinco', 'Hà Nội', '2022-04-04', '14 x 14 cm', 20, 'Cuốn sách đáng yêu này', 59000, 3, 0, 500),
(452, 'svhktncdthc.jpg', '\"Sinh vật học kỳ thú - Những cư dân tí hon của rừng Việt Nam – Bướm, Chuồn chuồn và những người bạn khác\"', 'Ira Semenyuk', 'Dân Trí', '2022-04-12', '20.5x28.5 cm', 122, '', 145000, 3, 0, 500),
(453, 'bynnggmtnn.jpg', 'Bé yêu ngoan ngoãn giỏi giang – Mình tự ngủ ngoan', 'Studio Afra', 'Dân Trí', '2022-04-12', '17x24 cm', 28, '', 38000, 3, 0, 500),
(454, 'svhktncdthc.jpg', '\"Sinh vật học kỳ thú - Những cư dân tí hon của rừng Việt Nam - Bọ Cánh Cứng, Nhện và những người bạn khác\"', 'Ira Semenyuk', 'Dân Trí', '2022-04-12', '20.5x28.5 cm', 144, '', 165000, 3, 0, 500),
(455, 'bynnggtcg.jpg', 'Bé yêu ngoan ngoãn giỏi giang – Trồng cây gây rừng', 'Studio Afra', 'Dân Trí', '2022-04-12', '24x17 cm', 28, '', 38000, 3, 0, 500),
(456, 'bynngghcsc.jpg', 'Bé yêu ngoan ngoãn giỏi giang – Học cách sẻ chia', 'Studio Afra', 'Dân Trí', '2022-04-12', '24x17 cm', 28, '', 38000, 3, 0, 500),
(457, 'bynnggcas.jpg', 'Bé yêu ngoan ngoãn giỏi giang – Cùng ăn sinh nhật', 'Studio Afra', 'Dân Trí', '2022-04-12', '24x17 cm', 28, '', 38000, 3, 0, 500),
(458, 'mctv.jpg', 'Mê cung Thư viện', 'Sei Toaza', 'Hà Nội', '2022-04-12', '13x18 cm', 518, '\"Năm năm trước, cha của Okutsuki Soushi, pháp sư vĩ đại của Thành phố Thư viện Alexandria, đã bị giết hại dã man trong mê cung ngay trước mắt con trai mình. Sau sự kiện này, Soushi đã bị sang chấn tâm lý, mất đi ký ức và khả năng sử dụng phép thuật. Năm năm sau, ngay trong ngày đầu tiên trở lại Alexandria, cậu đã gặp “High Daylight Walker” Arteria và bị cô ta biến thành ma cà rồng. Kể từ đó, cậu cùng Arteria dấn thân vào Mê cung Thư viện hòng tìm ra kẻ thù đang lẩn trốn, để có thể thoát khỏi nỗi khổ tâm giày vò suốt năm năm, cũng là để hoàn thành ước mơ của mình. Hãy nhớ lấy điều này: bạn phải tìm ra kẻ thù giết cha đang lẩn trốn trong bóng đen của chấn thương tâm lý. Bạn phải lấy lại phép thuật đã mất, phải giành lại danh dự đã bị đánh cắp. Bạn phải làm tất cả những điều đó cùng Arteria, Chân tổ Ma cà rồng. Tác phẩm đầu tay của Sei Toaza, cũng là tác phẩm tiêu biểu đã lọt vào vòng ba giải thưởng dành cho tác giả Light Novel mới lần thứ 10 do MF Bunko J tổ chức.\"', 168000, 3, 0, 500),
(459, 'bynnggcmom.jpg', 'Bé yêu ngoan ngoãn giỏi giang – Chăm mẹ ốm mệt', 'Studio Afra', 'Dân Trí', '2022-04-12', '17x24 cm', 28, '', 38000, 3, 0, 500),
(460, 'bynnggvsct.jpg', 'Bé yêu ngoan ngoãn giỏi giang – Vệ sinh cơ thể', 'Studio Afra', 'Dân Trí', '2022-04-12', '24x17 cm', 28, '', 38000, 3, 0, 500),
(461, 'bdtxc.jpg', 'Bố đã từng xa con', 'Chandra Ghosh Ippen', 'Dân Trí', '2022-07-11', '20x20 cm', 32, '', 55000, 3, 0, 500),
(462, 'nxcc.jpg', 'Ngày xưa của con', 'Huỳnh Mai Liên', 'Hội nhà văn', '2022-04-26', '15x21cm', 92, '\"“...Ngày xưa của con giống như một cuốn nhật kí bằng thơ; ghi chép vội vã những câu nói ngây thơ của con , trong nhà, dọc đường đi, những cuộc đối thoại của mẹ- con bên vai nhau, kề má nhau, rủ rỉ suốt ngày không chán và mãi vẫn ngạc nhiên. Đôi từ còn chưa chau truốt nhưng trong sáng ngây thơ như rót mật vào tim. Bất cứ bộ đôi mẹ - con nào cũng có thể cùng nhau đọc lên những bài thơ đó như chuyện tình yêu của mình. Những hình ảnh rung động tận trái tim: “Mẹ nâng thật khẽ Bàn tay trắng xinh Đặt trong tay mình Như bông hoa nhỏ”\"', 68000, 3, 0, 500),
(463, 'tmptnbcb15tt.jpg', 'Tô màu phát triển não bộ cho bé 1-5 tuổi Tập 6', 'Phạm Ngọc Điệp minh họa', 'Dân Trí', '2022-09-09', '18.5x26cm', 18, 'SÁCH TÔ MÀU PHÁT TRIỂN NÃO BỘ', 16000, 3, 0, 500),
(464, 'ngbtttt.jpg', 'NEVER GET BORED - TÍ TA TÍ TOÁY', 'Nhiều tác giả', 'Thế Giới', '2022-03-25', '19x24cm', 128, '\"Liều \"\"vitamin vui vẻ\"\" dành cho bạn nhỏ tiểu học và bất cứ ai đam mê tí toáy 2 cuốn sách rực rỡ này tập hợp hơn 200 trò chơi sáng tạo chẳng tốn đồng nào từ những vật dụng em có thể tìm thấy ngay trong nhà hoặc ngoài thiên nhiên. Giải mật mã chơi rối bóng ngâm cứu sao chụp ảnh bầu trời làm tranh từ lá rơi xây khách sạn bọ… những trò vui hấp dẫn vừa kích thích óc sáng tạo vừa giúp em xua tan mọi buồn chán. Sách cũng bày nhiều tuyệt chiêu sáng tạo nghệ thuật ngoài trời để em thêm gần gũi với thiên nhiên và các mẹo tái sử dụng đồ vật để em bảo vệ môi trường bằng những hành động thiết thực!\"', 155000, 3, 0, 500),
(465, 'bdnd.jpg', 'Băng đảng Nửa đêm', 'David Walliams', 'Hội nhà văn', '2020-08-11', '14 x 20.5 cm', 444, 'Tác phẩm hài hước siêu hấp dẫn mới nhất của nhà văn thiếu nhi Anh ăn khách David Walliams.', 135000, 3, 0, 500),
(466, 'ptttcxcdlc.jpg', 'Phát triển trí tuệ cảm xúc - Con được là chính mình!', 'Jayneen Sanders', 'Dân Trí', '2020-08-24', '18x24 cm', 40, '\"Bộ sách thiết thực này là kết hợp giữa những minh họa trực quan cao độ và chủ đề giáo dục trọng yếu. Tất các cuốn sách trong bộ đều có Phần câu hỏi thảo luận để hỗ trợ phụ huynh khơi gợi và dẫn dắt những cuộc trò chuyện với trẻ về cảm xúc, nỗi lo lắng, thất bại, sự tử tế, bảo vệ thân thể, bình đẳng giới và đa dạng giới,... Bộ sách là công cụ giúp trẻ nói lên tiếng nói của mình và khuyến khích trẻ tham gia chủ động, tích cực vào việc học hỏi.\"', 50000, 3, 0, 500),
(467, 'hdcetvs.jpg', 'Hỏi đáp cùng em- Thật vậy sao?', 'Valentin Verthé', 'Thế Giới', '2020-06-22', '14x20.5 cm', 112, '\"3 cuốn tiếp theo trong series Hỏi đáp cùng em trứ danh của NXB Larrouse, nhà xuất bản sách kiến thức thiếu nhi hàng đầu nước Pháp.\"', 219000, 3, 0, 500),
(468, 'hdcellcchvs.jpg', 'Hỏi đáp cùng em - Lại là các câu hỏi vì sao', 'Isabelle Fougère', 'Thế Giới', '2020-06-22', '14 x 20.5 cm', 112, '\"3 cuốn tiếp theo trong series Hỏi đáp cùng em trứ danh của NXB Larrouse, nhà xuất bản sách kiến thức thiếu nhi hàng đầu nước Pháp.\"', 219000, 3, 0, 500),
(469, 'ptttcxcxccm.jpg', 'Phát triển trí tuệ cảm xúc- Cảm xúc của con màu gì?', 'Jayneen Sanders', 'Dân Trí', '2020-08-24', '18x24 cm', 40, 'PHÁT TRIỂN TRÍ TUỆ CẢM XÚC - hành trang tâm lý vững vàng cho con.', 50000, 3, 0, 500),
(470, 'hdcevvhdtn.jpg', 'Hỏi đáp cùng em -  Vạn vật hoạt động thế nào?', 'Sophie De Mullenheim', 'Thế Giới', '2020-06-22', '14x20.5 cm', 112, '\"3 cuốn tiếp theo trong series Hỏi đáp cùng em trứ danh của NXB Larrouse, nhà xuất bản sách kiến thức thiếu nhi hàng đầu nước Pháp.\"', 219000, 3, 0, 500),
(471, 'ptkntdpbl5n.jpg', 'Phát triển kỹ năng tư duy phản biện – Lớp 5 nâng cao', 'NXB Evan-Moor', 'Dân Trí', '2020-07-23', '20x26 cm', 144, 'Nhã Nam thiếu nhi | SÁCH TƯƠNG TÁC CHƠI VÀ HỌC', 119000, 3, 0, 500),
(472, 'ptkntdpbl5.jpg', 'Phát triển kỹ năng tư duy phản biện – Lớp 5', 'NXB Evan-Moor', 'Dân Trí', '2020-07-23', '20x26 cm', 144, 'Nhã Nam thiếu nhi | SÁCH TƯƠNG TÁC CHƠI VÀ HỌC', 119000, 3, 0, 500),
(473, 'xstrrmnnnm.jpg', 'Xưởng sáng tạo rộn ràng- Mỗi ngày nắn nót một bức tranh', 'Sam Smith viết lời Michael Hill - Sharon Cooper thiết kế', 'Dân Trí', '2020-08-07', '18x23cm', 368, 'Ngập tràn các hoạt động sáng tạo cho bạn nhỏ 3+.', 169000, 3, 0, 500),
(474, 'ptkntdpbl4.jpg', 'Phát triển kỹ năng tư duy phản biện – Lớp 4', 'NXB Evan-Moor', 'Dân Trí', '2020-07-23', '20x26 cm', 144, 'Nhã Nam thiếu nhi | SÁCH TƯƠNG TÁC CHƠI VÀ HỌC', 119000, 3, 0, 500),
(526, 'mcb-cdhn.jpg', 'Mèo chiến binh - Con đường hiểm nguy', 'Erin Hunter', 'Hội nhà văn', '2023-09-19', '14 x 20.5cm', 405, '\"Con đường hiểm nguy là tập thứ năm trong bộ Mèo chiến binh (2003-2004) của tác giả Erin Hunter. Bộ truyện giành được nhiều phản hồi tích cực, được dịch ra hơn 20 thứ tiếng và có lực lượng người hâm mộ hùng hậu trên khắp thế giới\"', 159000, 4, 2, 498),
(527, 'ttnllchmv.jpg', 'Trái tim người lớn là con hàu mang vỏ', 'Nini (Vương Mạn Nghê)', 'Hà Nội', '2023-09-11', '15x21 cm', 312, '\"Tập truyện đầu tay này của tôi tập hợp những ghi chép rải rạc về tình yêu và ước mơ, những trải nghiệm tự chữa lành sau vụn vỡ, những tâm sự về số phận và hy vọng.\"', 190000, 4, 2, 496),
(528, 'ltdt.jpg', 'Lý triều dị truyện', 'Phan Cuồng', 'Hội nhà văn', '2023-09-20', '15x24 cm', 475, '\"Nước Đại Việt triều Lý đời vua Lý Anh Tông xảy ra loạn Thân Lợi. Thân Lợi là một phù thủy cao tay có tài “mê tâm thuật”, có thể làm người ta u mê tinh thần để dễ sai khiến. Với pháp lực bẩm sinh hiếm thấy cộng thêm quá trình tu tập, Thân Lợi trở thành giáo chủ của Xương Cuồng giáo, một tà giáo thờ thần Xương Cuồng, thâu tập những kẻ chuyên luyện tà năng bằng các cách thức man rợ. Nhưng tham vọng của Thân Lợi không dừng ở đó, hắn muốn chính mình trở thành thần Xương Cuồng, để sở hữu quyền năng vô biên. Kẻ nào muốn luyện thành phép này phải tột bậc kỳ công cùng may mắn mới hội đủ các yếu tố. Thân Lợi đã chuẩn bị nhiều năm, và gần như đã có tất cả...\"', 168000, 4, 1, 498),
(529, 'tddl.jpg', 'Tàn đèn dầu lạc', 'Nguyễn Tuân', 'Hội nhà văn', '2023-10-13', '14.5 x 20.5cm', 130, 'được xem là tập tiếp theo của cuốn', 75000, 4, 1, 500),
(530, 'nddl-vndt.jpg', 'Ngọn đèn dầu lạc - Việt Nam danh tác', 'Nguyễn Tuân', 'Hội nhà văn', '2023-09-20', '14.5 x 20.5cm', 126, '\" là tập phóng sự về việc hút thuốc phiện ở Việt Nam hồi đầu thế kỷ 20. Hút thuốc phiện dưới con mắt của Nguyễn Tuân vừa độc hại như một thứ gây nghiện, tàn phá sức khỏe của kẻ hút và làm khốn đốn gia đình, xã hội. Nhưng đồng thời hút thuộc phiện cũng được Nguyễn Tuân mô tả như một thú chơi của giới nghệ sĩ, trí thức, đem đến những cảm xúc thăng hoa trong sáng tạo và công việc.\"', 75000, 4, 0, 500),
(531, 'bhlmts-mmoca.jpg', 'Bất hạnh là một tài sản - Một mình ở Châu Âu', 'Phan Việt', 'Hội nhà văn', '2023-09-27', '14 x 20.5cm', 343, '', 129000, 4, 0, 500),
(532, 'qdoncvn.jpg', 'Qua đêm ở nhà các vua Nguyễn', 'Nguyễn Ngọc Tiến', 'Hội nhà văn', '2023-09-21', '14 x 20.5cm', 318, '\"cuốn sách tập hợp các bài viết thể hiện quan điểm, suy ngẫm của tác giả Nguyễn Ngọc Tiến về lịch sử, văn hóa, xã hội Việt Nam trong quá khứ cũng như trong hiện tại. \"', 120000, 4, 0, 500),
(533, 'ch-httt.jpg', 'Cá hồi – Hành trình tỉnh thức', 'Tâm Bùi', 'Phụ nữ', '2023-09-20', '14 x 20.5cm', 255, '\"Cuốn sách CÁ HỒI của Tâm Bùi kể về hành trình thay đổi suy nghĩ, lối sống sau khi giác ngộ được những lý lẽ của đạo Phật (thông qua các khóa tu tập tại làng Mai và sự giảng đạo của thiền sư Thích Nhất Hạnh).\"', 99000, 4, 2, 500),
(534, 'cmpvdqp.jpg', 'Có một phố vừa đi qua phố', 'Đinh Vũ Hoàng Nguyên', 'Hội nhà văn', '2023-09-19', '14 x 20.5cm', 247, '', 88000, 4, 0, 500),
(535, 'bncc.jpg', '\"Bố ngồi cùng con, nhé!\"', 'Phạm Gia Hiền', 'Phụ nữ', '2023-09-21', '14 x 20.5cm', 251, 'Một ghi chép đầy tình yêu thương về hành trình làm bố của nhà báo sắc sảo Phạm Gia Hiền.', 120000, 4, 0, 500),
(536, 'dndt.jpg', 'Đại Nam dị truyện', 'Phan Cuồng', 'Hội nhà văn', '2023-09-20', '15x24 cm', 392, '\"Năm Cảnh Hưng thứ bốn mươi ba, huyện Cốc Dương, trấn Sơn Tây, đêm rằm tháng Bảy. Một gã phù thủy đang lập trận thu nạp âm binh giữa bãi chôn người. Phạm Đình Quyết, dòng dõi của một gia đình chín đời làm nghề khâm liệm đã vô tình chứng kiến cảnh tượng kinh dị này. Từ đây, hắn bắt đầu bước chân vào một thế giới chưa từng biết. Hắn dần dần khám phá ra bí mật của gia đình mình. Và thân phận thực sự của hắn, một Lạc Vu Điện Súy của Trấn Quốc Hội, nơi tập hợp những phù thủy cao tay, những nhà huyền thuật xuất sắc đang âm thầm bảo vệ Đông Kinh trước sự tấn công của giáo phái Hàng Long tà đạo từ ngoại bang.\"', 139000, 4, 0, 500),
(537, 'dtnvh.jpg', 'Đám trẻ nhiễu văn hóa', 'Ngọc (Bi) Nguyễn', 'Hội nhà văn', '2022-06-29', '14 x 20.5 cm', 272, '\"Sinh ra ở Moscow bởi bố mẹ người Việt Nam nhưng lại tin rằng mình có phần nào đó là người Xô viết chuyển về Hà Nội khi lên 3 và vào học trường Quốc tế Pháp dưới sự ủng hộ của ông bà 15 tuổi rời Việt Nam sang Mỹ để học tại một trường nội trú ở tiểu bang Connecticut câu hỏi mà Ngọc Nguyễn cũng như những đứa trẻ nhiễu văn hóa khác cảm thấy khó trả lời nhất là \"\"Bạn đến từ đâu?”. Vượt lên trên một cuốn nhật ký cá nhân\"', 119000, 4, 1, 500),
(538, 'ntv-vndt.jpg', 'Nắng trong vườn - Việt Nam Danh Tác', 'Thạch Lam', 'Hội nhà văn', '2023-03-24', '14.5 x 20.5cm', 170, '\"\"\"KHI TÔI QUAY LẠI NHÌN CHỒNG NÀNG tôi thấy rõ cái lãnh đạm của người đàn ông ấy... Nàng có sung sướng không? Nàng có còn nhớ đến tôi không? Ngậm ngùi tôi nghĩ đến cuộc ái ân ngắn ngủi...trong mấy tháng hè: cái tình yêu  biết đâu chẳng vẫn còn để lại trong lòng nàng một vẻ rực rỡ như ánh nắng trong vườn.\"\"\"', 52000, 4, 0, 500),
(539, 'tdnovntpt.jpg', 'Trường dạy nghề ở Việt Nam thời Pháp thuộc (1898-1945)', 'Trần Thị Phương Hoa', 'Thế Giới', '2023-06-29', '15.5x24 cm', 324, '\"Ở Việt Nam giai đoạn trung đại, nghề nghiệp gắn liền với gia đình, làng xã, địa phương. Mỗi vùng đất có một đặc sản nghề riêng mà tiếng tăm vẫn được truyền đến ngày nay nhờ được lưu truyền trong ca dao cổ. Việc truyền nghề được coi là việc riêng của dòng họ hay địa phương, thậm chí nghề được giữ gìn như bí quyết riêng của gia đình hay dòng họ, ngăn cấm truyền dạy cho người ngoài...\"', 200000, 4, 0, 500),
(540, 'gdm-vndt.jpg', 'Gió đầu mùa - Việt Nam Danh Tác', 'Thạch Lam', 'Hội nhà văn', '2023-03-24', '14.5 x 20.5cm', 179, '\"“… qua một đêm mưa rào, trời bỗng đổi ra gió bấc, rồi cái lạnh ở đâu đến làm cho người ta tưởng đang ở giữa mùa  đông rét mướt. Sơn tung chăn tỉnh dậy, nhưng không bước xuống giường ngay như mọi khi, còn ngồi thu tay vào  trong bọc, bên cạnh đứa em bé vẫn nắm tay ngủ kỹ. Chị Sơn và mẹ Sơn đã trở dậy, đang ngồi quạt hỏa lò để pha nước chè uống. Sơn nhận thấy mọi người đã mặc áo rét cả rồi.”\"', 58000, 4, 0, 500),
(541, 'ht.jpg', 'HÓA THÂN', 'Franz Kafka', 'Hội nhà văn', '2023-07-19', '14 x 20.5cm', 126, '\"\"\" Một sáng tỉnh giấc sau những giấc mơ xáo động Gregor Samsa nằm trên giường nhận thấy mình đã biến thành một con côn trùng khổng lồ. Anh nằm ngửa trên cái lưng rắn như thể được bọc giáp sắt và khi dợm nhấc đầu lên anh nhìn thấy bụng mình khum tròn nâu bóng phân chia làm nhiều đốt cong cứng đờ tấm chăn bong đắp trên bụng đã bị xô lệch gần tuột hẳn. Chân anh nhiều ra mảnh khảnh đến thảm hại so với phần còn lại của thân hình to đùng vung vẩy bất lực trước mắt anh.\"\"\"', 54000, 4, 0, 500),
(542, 'tslbnlktkv.jpg', 'Tại sao lời bạn nói lại khiến tôi không vui', 'Park Jae Yeon', 'Phụ nữ', '2023-07-21', '14 x 20.5cm', 470, '\"Bản tính của con người được thể hiện thông qua cách chúng ta đối thoại với người khác. Trong bất kỳ trường hợp nào, chúng ta đều có thể lựa chọn thái độ khi trò chuyện. Thông qua thái độ ấy, ta có thể tự mình xây dựng đồng thời cũng có thể tự tay phá hủy các mối quan hệ và phẩm cách bản thân.\"', 179000, 4, 0, 500),
(543, 'tnpd.jpg', 'Tục ngữ phong dao', 'Ôn Như Nguyễn Văn Ngọc', 'Hội nhà văn', '2023-08-16', '15.5x24 cm', 539, '\"Việc biên soạn, sưu tầm các bài ca dao, tục ngữ in thành sách được ghi nhận sớm nhất ở Việt Nam từ khoảng cuối thế kỷ 17. Tuy nhiên điều đáng tiếc là các sách này chỉ sưu tầm được một số lượng bài rất hạn chế, khiến cho nhiều bài ca dao, tục ngữ có nguy cơ bị mai một, thất tán.\"', 198000, 4, 1, 500),
(544, 'ttctdpr.jpg', 'Thần tượng của tôi dính phốt rồi', 'Usamirin', 'Hà Nội', '2023-07-31', '14 x 20.5cm', 141, '\"Không lối thoát không nơi nương tựa với Akari \"\"thần tượng\"\" là lý do em hít thở mỗi ngày là \"\"xương sống\"\" của em. Nhưng thần tượng của em dính \"\"phốt\"\" rồi! Ngọn lửa thị phi ngày càng lan rộng. Thế giới của em từng phần vụn vỡ. Phải làm sao để cứu chính mình? \"', 116000, 4, 0, 500),
(545, 'tn-kccccnpntc.jpg', 'Tao nhã - Khí chất cần có của người phụ nữ thành công', 'Hiểu Tuyết', 'Phụ nữ', '2023-09-08', '14 x 20.5cm', 442, '\"Nhiều năm trước, một cô gái đã tiêu toàn bộ tiền tiết kiệm để đến với Tuần lễ Thời trang Paris, bảy, tám ngày liền ngồi tàu điện ngầm đến các show diễn khác nhau, thường phải đứng cả ngày, lúc nóng lúc lạnh đến nỗi phát sốt. \"', 180000, 4, 0, 500),
(546, 'mlnhdynhg.jpg', '\"Muốn làm nữ hoàng, đừng yêu như hầu gái\"', 'Blog của May', 'Dân Trí', '2019-12-04', '14x20.5 cm', 200, '\"Khi nàng biết cách làm một người đàn bà thực sự, ấy là khi nàng xứng được yêu.\"', 72000, 4, 0, 500),
(547, 'btcmnynm.jpg', 'Bài thơ của một người yêu nước mình', 'Trần Vàng Sao', 'Hội nhà văn', '2020-12-31', '14 x 20.5 cm', 210, '\"\"\"Thơ của Trần Vàng Sao chính là cuộc đời ông. [...] Thơ ông hiện ra như chính áo quần ông tóc tai ông hơi thở ông ánh mắt ông giọng nói ông cảm giác ông mồ hôi ông đau đớn ông giận dữ ông giày vò ông tuyệt vọng ông khát vọng ông... và nhịp đập trái tim ông là thứ kỳ diệu nhất gắn kết toàn bộ những gì thuộc về ông để vang lên thành thi ca. Bởi thế thơ ông chân thực và mãnh liệt như máu chảy trong huyết quản ông.\"', 130000, 4, 0, 500),
(548, 'cd.jpg', 'Chùa Đàn', 'Nguyễn Tuân', 'Hội nhà văn', '2022-05-18', '\"14,5 x 20,5 cm \"', 126, '\"“Sau một cái tử biệt, giờ ta phải tính đến một nỗi sinh li khác. Đối với đàn, hát, từ bây giờ ta nguyện làm một người điếc một người cô đơn một người phản bội. Và trên vong linh Bá Nhỡ, ta thề độc là không bao giờ cầm đến một cái chén nào của cuộc đời này.”\"', 60000, 4, 0, 500),
(549, 'm-m.jpg', 'Mama - Mẹ', 'Hélène Delforge Quentin Greban', 'Hội nhà văn', '2019-04-19', '24 x30cm', 68, 'MẸ là ai?', 108000, 4, 0, 500),
(550, 'tbqtona.jpg', 'Tôi bỏ quên tôi ở nước Anh (TB 2019)', 'Minh Thi', 'Hội nhà văn', '2019-04-28', '\"14 x 20,5 \"', 255, '\" của Minh Thi, như một-truyện-tình, mơ màng nhưng thật sống động, của một du học sinh đối với nước Anh, xứ sở dù chia tay nhưng đã nằm trọn trong trái tim cô. Ở đó, bạn sẽ được thưởng ngoạn các nghệ sĩ trổ tài ngay trên các đường phố tấp nập của London, lướt qua các quán rượu để nghe tiếng chuyện trò rôm rả và tiếng chạm cốc leng keng vào giờ tan tầm, hay đôi khi dạo chơi thong thả qua những con phố nép mình giữa hai hàng tường đá rêu phong và vùng thôn quê xanh mơ của thành phố Edinburgh cổ kính. Bạn cũng sẽ biết người Anh nghĩ gì, muốn gì, và cần phải cẩn trọng như thế nào để không bị lố khi nói chuyện với họ. Bằng một lối viết dung dị nhưng lạ lẫm, đan cài cả du ký, hồi ký,  khảo cứu văn hóa và không quên những cẩm nang nho nhỏ về du lịch, Minh Thi không chỉ kể với chúng ta câu chuyện của mình ở nước Anh, mà còn dày công tìm hiểu văn hóa Anh, hiểu thói quen, sở thích của người Anh, để rồi đất nước này hiện lên qua con mắt cô nhiều lúc chân thực đến gai người. Đọc \"', 90000, 4, 0, 500),
(551, 'cngt.jpg', 'Cái nồi gì thế?', 'Hoàng Nhật', 'Hội nhà văn', '2019-05-14', '14 x 20.5cm', 236, '\"“Gã đồng nghiệp đưa hẳn cho Zozo năm trăm mười lăm ngàn, không quên nói vọng theo sau lưng anh: ‘Tôi nể ông thật đấy. Vẫn nhớ ngày kỷ niệm yêu nhau sau bảy năm trời, thế mà lại quên mặc quần khi ra đường!’\"', 88000, 4, 0, 500),
(552, 'cucvndcbkddhhk.jpg', 'California Universities & colleges và những điều cần biết khi đi du học Hoa Kỳ', 'Đỗ Hữu Tâm', 'Thế Giới', '2019-04-04', '14x20.5 cm', 262, '\"“… Nhưng, ở một bình diện quan trọng hơn, thì Dân Trí được nâng cao cũng là nền tảng giúp bảo đảm sự Công bằng trong xã hội và tinh thần Dân chủ trong chính trị nhằm mở rộng hơn nữa cánh cửa Tự do của tư duy. Dân trí được nâng cao thì cũng phong phú hoá đời sống người dân về khía cạnh Văn hoá và Nhân văn, giúp thăng hoa con người một cách cân bằng hơn.\"', 85000, 4, 0, 500),
(553, 'cntoxt.jpg', 'Chuyện người Tây ở xứ ta', 'Nhiều tác giả', 'Thế Giới', '2019-02-19', '14 x 20.5cm', 267, '', 88000, 4, 0, 500),
(554, 'ptcmns.jpg', 'Phép tính của một nho sĩ', 'Trần Vũ', 'Hội nhà văn', '2019-02-28', '\"14 x 20,5cm\"', 223, '\"Nhắc đến thành tựu truyện ngắn đương đại mà không kể đến Trần Vũ là một thiếu sót lớn. Đặc trưng của tác giả là những câu chữ hoặc đau đớn đến tan nát, hoặc táo bạo, lạnh lùng đến sắc rợn; các thủ pháp lạ hóa, biến đổi hiện thực, huyền ảo được tận dụng tối đa để khai phá mối tương quan giữa lịch sử, hiện thực, bạo lực và tình dục. Văn của Trần Vũ khước từ sự lưng chừng, mơ hồ, luôn đẩy sức căng đến những góc cạnh cực đoan nhất và tìm thấy con người hoặc ở nơi sâu thẳm, hoặc chốn man rợ khốn cùng.\"', 86000, 4, 0, 500),
(555, 'qtdchtnm.jpg', 'Quá trẻ để chết : Hành trình nước Mỹ ( TB 2019)', 'Đinh Hằng', 'Hội nhà văn', '2019-03-15', '14 x 20.5 cm', 217, '\"Ngay cả những cánh bồ công anh đang nương theo cơn gió của mình cũng có hành trình riêng của chúng. Tớ hay đằng ấy, mỗ người trong chúng a đều có một con đường. Số phận đặt  chúng ta lên con đường đó, nhưng đi đến đâu làm được gì là việc của mỗi người. Đây chưa phải là điểm dừng của đằng ấy đâu. Hãy đi theo cơn gió của mình đi.\"', 79000, 4, 0, 500),
(556, 'snktkm.jpg', 'Sông ngân khi tỏ khi mờ', 'Nguyễn Quang Riệu', 'Thế Giới', '2019-05-31', '14 x 20.5cm', 184, '\"Trong cuốn sách này, Giáo sư Nguyễn Quang Riệu, nhà khoa học danh tiếng, nhà vật lý thiên văn có đóng góp đáng kể trong lĩnh vực vật lý thiên văn vô tuyến của thế giới trong những năm 1970, đã giúp các bạn đọc trẻ có được vốn hiểu biết cơ bản về vũ trụ: những người cổ đại, từ Ai Cập, Babylon, Hy Lạp đến Trung Hoa có quan niệm thế nào về vũ trụ, vũ trụ ẩn hiện trong văn hóa dân gian Việt Nam ra sao, rồi cũng vũ trụ ấy được nhìn từ phương diện khoa học: nguồn gốc và sự hình thành vũ trụ, trong đó có dải Ngân hà và hệ Mặt Trời, nơi chúng ta đang sống…\"', 77000, 4, 0, 500),
(557, 'hnbspp-dt.jpg', 'Hà nội băm sáu phố phường - Danh tác', 'Thạch Lam', 'Hội nhà văn', '2019-04-04', '14x20.5 cm', 124, '\"“Có ai buổi trưa vắng hay buổi đêm khuya, đi qua các nhà cô đào, và các chị em thanh lâu, thấy họ ăn cái quà ấy một \"', 50000, 4, 0, 500),
(558, 'nktrx.jpg', '\"Ngoài kia, trời rất xanh\"', 'Trần Thị Cúc Phương', 'Hội nhà văn', '2019-01-02', '14x20.5 cm', 255, '\"Ung thư là hành trình khắc nghiệt đối với bất kỳ ai. Tác cuốn sách này không còn nữa, nhưng những trang viết chị để lại về những ngày tháng cuối cùng của đời mình đã lưu lại hình ảnh chị theo một cách đẹp nhất và con người nhất. Với chị ung thư không chỉ là chuyện chữa bệnh, đó là hành trình nhận thức bản thân mãnh liệt, để giữa lúc vật vã vì nỗi đau đớn và niềm khát sống vẫn biết làm đẹp cho bản thân, biết cảm thông, biết gói ghém cuộc đời mình và gửi yêu thương cho những người ở lại.\"', 88000, 4, 22, 500),
(559, 'cdkm.jpg', 'Chân đi không mỏi ( TB 2019)', 'Đinh Hằng', 'Hội nhà văn', '2019-04-25', '14 x 20.5cm', 283, 'Đinh Hằng của cuốn sách mới này vẫn là Đinh Hằng của', 98000, 4, 0, 500),
(560, 'dcdc-hhvvxvmd.jpg', 'Để con được chích - Hiểu hết về vắc xin và miễn dịch', 'BS. Vân Hương', 'Thế Giới', '2019-06-28', '14 x 20.5 cm', 296, '\"Bạn có phân vân trong việc đưa con đi tiêm chủng? Bạn có lo ngại về thông tin vắc xin MMR (sởi-rubella-quai bị) gây hội chứng tự kỷ? Và thủy ngân, cùng nhôm có thể được truyền vào cơ thể của trẻ cùng các mũi vắc xin? Con của bạn có phải là một trong hàng nghìn đứa trẻ mắc sởi vào mùa xuân 2019? Hay bé đã may mắn không mắc bệnh? Và hệ miễn dịch của trẻ, cùng của chính chúng ta thực ra hoạt động như thế nào?\"', 108000, 4, 0, 500),
(561, 'vn.jpg', 'Về nhà (TB 2019)', 'Phan Việt', 'Hội nhà văn', '2019-07-19', '\"14 x 20,5 \"', 399, '\"Bắt đầu từ những bước chân bỡ ngỡ, háo hức nhưng cũng đơn côi, cô độc trong \"', 109000, 4, 0, 500),
(562, 'lrtg.jpg', 'Ly rượu trần gian', 'Phan Vũ', 'Hội nhà văn', '2019-07-16', '15x24 cm', 144, '\"Lần đầu tiên những trang viết ngắn của Phan Vũ được tập hợp lại để ra mắt bạn đọc. Những khắc họa chân dung cũng như những ghi chép ngắn gọn về đời sống của ông cho thấy một Phan Vũ thật khác, không chỉ là một nhà thơ, họa sĩ mà còn là một cây bút văn xuôi giàu năng lượng. Như một điều hiển nhiên, ông dành nhiều tình cảm cho Hà Nội, ông kể lại nhiều chuyện buồn vui với thành phố này, và cả câu chuyện đằng sau bài thơ đã làm làm nên cái tên Phan Vũ.\"', 70000, 4, 0, 500),
(563, 'tkvn.jpg', 'Thảm kịch vĩ nhân', 'Hoàng Minh Tường', 'Hội nhà văn', '2019-11-20', '14 x 20.5 cm', 400, '\"Gần 600 năm trước, khi cuộc chiến chống ngoại bang kết thúc, cũng là lúc cuộc chiến phe cánh trong nội bộ triều đình nhà Lê mở ra. Trong cơn khủng hoảng đó, Nguyễn Trãi trở thành nạn nhân hứng chịu tấn thảm kịch oan khiên nhất, dã man nhất lịch sử nước Việt, mang tên \"', 117000, 4, 0, 500),
(564, 'ndtt.jpg', 'Người đưa thư tình', 'Nguyễn Hoàng Vũ', 'Hội nhà văn', '2019-11-29', '14x20.5 cm', 188, '\" chính là những mảnh vụn cuộc sống qua góc nhìn của tuổi trẻ. Mà tuổi trẻ, ấy là tuổi của những đổ vỡ và làm lại, tuổi của khát vọng và ảo tưởng, của sự nhâng nháo bất cần, của những tiếng thở dài và niềm thiết tha…\"', 79000, 4, 0, 500),
(565, 'vnsl.jpg', 'Việt Nam Sử Lược', 'Trần Trọng Kim', 'Văn học', '2018-12-27', '17 x 25 cm', 531, '-TRẦN TRỌNG KIM', 129000, 4, 0, 500),
(566, 'ktxp307.jpg', 'Ký túc xá phòng 307', 'Zihua Nguyễn', 'Hội nhà văn', '2019-11-29', '14x 20.5cm', 176, '\"“Thời sinh viên, trong tôi, ý nghĩ trở thành vĩ nhân luôn thường trực.\"', 69000, 4, 3, 500),
(567, 'mvsvnntdt.jpg', 'Mua vé số vào ngày nào thì dễ trúng?', 'Rob Eastaway', 'Thế Giới', '2018-11-30', '\"14 x 20,5 cm\"', 268, '\"Bạn lại vừa phải trải qua một ngày thứ Hai điển hình… Buổi sáng bạn quên đun nước pha cà phê trước khi đánh răng, bạn ra khỏi nhà muộn hơn 5 phút so với mọi ngày và ôi thôi – kẹt xe! – Bạn đến công ty muộn mất 30 phút. Sau một ngày làm việc mệt mỏi, bạn tìm cách xả xì trét cho mình bằng cách đi shopping, khi ra về bạn bỗng ngước lên và bắt gặp một khuôn mặt hoàn toàn lạ lẫm nhưng lại đáng yêu nhất từng thấy trong đời đang đi ngược chiều. Sau một phút choáng váng, bạn chợt nhận ra là mình phải làm quen với “người ta” bằng mọi giá, khổ nỗi “người ta” đã ở rất xa theo hướng ngược lại của thang cuốn. Bạn hộc tốc chạy đuổi theo, nhưng vô ích, chẳng thấy đâu nữa rồi. Bạn về nhà, định bụng tắm nước nóng cho thoải mái, thế nhưng không tài nào điều chỉnh cho nước vòi sen có nhiệt độ dễ chịu được cả, chỉ có thể là bỏng rát hoặc lạnh toát.\"', 95000, 4, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `description`, `Image`) VALUES
(1, 'Nước ngoài', 'Mô tả cho danh mục 1', 'vhnn.jpg'),
(2, 'Tham khảo', 'Mt', 'tk.jpg'),
(3, 'Thiếu nhi', '[value-3]', 'tt.jpg'),
(4, 'Việt Nam', '[value-3]', 'vhvn.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('admin','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `user_type`) VALUES
(1, '1', '1@1', '$2y$10$skbZpVqknS815ybGmcoXFuBVy6KuyTnAt2ETBwk6IGmBRb0fzhNmq', 'customer'),
(3, '2@2', '2@2', '$2y$10$4oZCCR0BIFL4ZLmvTgXOgeb84OhaBUrhaqz1iXz8cD/rmV1fMyssK', 'customer'),
(4, 'newthenameuser@gmail.com', 'newthenameuser@gmail.com', '$2y$10$g2byfsM.DYLXHcX.jX/f6.Moq2qqqethiqhGV33wLqzYHJ1Oi/usy', 'admin'),
(5, 'newthena', 'newthenameuser@gmail.com1', '$2y$10$weXb5G2ANoEP57AbvNnJie10DedKQe5vreYOqeIjdY9Oe3lT8joBa', 'customer'),
(6, 'newthenameuser@gmail.com2', 'newthenameuser@gmail.com2', '$2y$10$eFybX4iccP/oBVLsa096H.nViNdauoSgLsuJ.hZs2.Exf7SLETuN.', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
