-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2025 at 12:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinakoi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_02_190744_add_custom_fields_to_users_table', 2),
(5, '2025_04_02_190745_add_avatar_url_to_users_table', 2),
(6, '2025_04_02_191330_create_product_categories_table', 3),
(7, '2025_04_02_191745_create_products_table', 4),
(8, '2025_04_02_194142_create_services_table', 5),
(9, '2025_04_02_194310_create_post_categories_table', 6),
(10, '2025_04_02_194451_create_news_table', 7),
(11, '2025_04_02_200741_add_buy_many_to_products_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int UNSIGNED NOT NULL DEFAULT '0',
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `slug`, `title`, `view`, `short_desc`, `description`, `banner`, `created_at`, `updated_at`) VALUES
(1, 1, 'toi-thu-phu-ca-koi-o-nhat-ban', 'Tới thủ phủ cá koi ở Nhật Bản', 0, '<p>&nbsp;Nhật Bản không chỉ nổi tiếng với văn hóa đặc sắc mà còn là quê hương của những chú cá koi tuyệt đẹp. Thủ phủ cá koi, nằm ở thành phố Niigata, là điểm đến lý tưởng cho những ai yêu thích loài cá này.&nbsp;</p><p><br></p>', '<h3>Khám Phá Vẻ Đẹp Từ Cá Koi</h3><p>Nhật Bản không chỉ nổi tiếng với văn hóa đặc sắc mà còn là quê hương của những chú cá koi tuyệt đẹp. Thủ phủ cá koi, nằm ở thành phố Niigata, là điểm đến lý tưởng cho những ai yêu thích loài cá này.</p><h3>Lịch Sử và Ý Nghĩa</h3><p>Cá koi đã được nuôi dưỡng ở Nhật Bản từ hàng thế kỷ trước, mang trong mình nhiều ý nghĩa biểu tượng như sự kiên nhẫn và tinh thần vượt khó. Ở Niigata, bạn sẽ tìm thấy nhiều trang trại cá koi lớn, nơi các nghệ nhân tận tâm chăm sóc và nuôi dưỡng những chú cá với màu sắc và hình dáng độc đáo.</p><h3>Trải Nghiệm Đặc Biệt</h3><p>Khi đến đây, du khách có cơ hội tham gia vào các tour tham quan trang trại, tìm hiểu quy trình chăm sóc cá, và thậm chí có thể thử sức trong việc nuôi cá koi. Bên cạnh đó, các lễ hội diễn ra quanh năm cũng là dịp để bạn chiêm ngưỡng những mẫu cá đẹp nhất và thưởng thức các món ăn đặc sản địa phương.</p><h3>Kết Luận</h3><p>Thủ phủ cá koi ở Nhật Bản không chỉ là nơi để chiêm ngưỡng vẻ đẹp của loài cá này mà còn là một trải nghiệm văn hóa phong phú. Nếu bạn yêu thích thiên nhiên và muốn tìm hiểu sâu hơn về văn hóa Nhật Bản, đây chắc chắn là điểm đến không thể bỏ qua.</p><p><br></p><p><br></p>', '01JQV9400PAK75NKKHRGJBTV3E.png', '2025-04-02 12:55:18', '2025-04-02 12:55:18'),
(2, 1, 'toi-thu-phu-ca-koi-o-nh', 'Tôi Thủ Phù Cá Koi Ở Hàn Quốc', 100, '<p>&nbsp;Nhật Bản không chỉ nổi tiếng với văn hóa...&nbsp;</p>', '<p>Khám Phá Vẻ Đẹp Từ Cá Koi</p><p>Nhật Bản không chỉ nổi tiếng với văn hóa...</p>', '01JQY7R297F1GA45Z2KHR987WP.jpg', '2025-04-03 16:29:02', '2025-04-03 16:29:31'),
(3, 1, 'huong-dan-chon-ca-koi-chat-luong', 'Hướng Dẫn Chọn Cá Koi Chất Lượng', 0, '<p>&nbsp;Cách lựa chọn cá koi đẹp và khỏe mạnh...&nbsp;</p>', '<p>&nbsp;Cách lựa chọn cá koi đẹp và khỏe mạnh...&nbsp;</p>', '01JQY7T2KTGVWTEEK0PW5ZJ4AB.jpg', '2025-04-03 16:30:07', '2025-04-03 16:30:07'),
(4, 1, 'cac-loai-ca-koi-pho-bien', 'Các Loại Cá Koi Phổ Biến', 0, '<p>&nbsp;Giới thiệu các giống cá koi phổ biến trên thị trường...&nbsp;</p>', '<p>&nbsp;Giới thiệu các giống cá koi phổ biến trên thị trường...&nbsp;</p>', '01JQY7V604MNRY0E72A10TGAAD.jpg', '2025-04-03 16:30:44', '2025-04-03 16:30:44'),
(5, 1, 'cham-soc-ca-koi-trong-ho', 'Chăm Sóc Cá Koi Trong Hồ', 20, '<p>&nbsp;Những lưu ý quan trọng khi chăm sóc cá koi...&nbsp;</p>', '<p>&nbsp;Những lưu ý quan trọng khi chăm sóc cá koi...&nbsp;</p>', '01JQY7WFT3P1W0YEXK6CMSYWJ2.jpg', '2025-04-03 16:31:27', '2025-04-03 16:31:27'),
(6, 1, 'ca-koi-va-van-hoa-nhat-ban', 'Cá Koi Và Văn Hóa Nhật Bản', 200, '<p>&nbsp;Cá koi có ý nghĩa sâu sắc trong văn hóa Nhật Bản...&nbsp;</p>', '<p>&nbsp;Cá koi có ý nghĩa sâu sắc trong văn hóa Nhật Bản...&nbsp;</p>', '01JQY7XWJJH2SEXDZ7ZSTCW3S3.jpg', '2025-04-03 16:32:12', '2025-04-03 16:32:12'),
(7, 1, 'ca-koi-bieu-tuong-cua-su-binh-an', 'Cá Koi: Biểu Tượng Của Sự Bình An', 20, '<p>&nbsp;Cá koi mang trong mình thông điệp về sự bình an và thịnh vượng...&nbsp;</p>', '<p>&nbsp;Cá koi mang trong mình thông điệp về sự bình an và thịnh vượng...&nbsp;</p>', '01JQY7Z7A0Y612JA4Y7EKTXHNZ.webp', '2025-04-03 16:32:56', '2025-04-03 16:32:56'),
(8, 1, 'cach-thiet-ke-ho-ca-koi', 'Cách Thiết Kế Hồ Cá Koi', 400, '<p>&nbsp;Hướng dẫn thiết kế hồ cá koi đẹp và phù hợp...&nbsp;</p>', '<p>&nbsp;Hướng dẫn thiết kế hồ cá koi đẹp và phù hợp...&nbsp;</p>', '01JQY80FFS03YT47JAWCH4MP8R.webp', '2025-04-03 16:33:37', '2025-04-03 16:33:37'),
(9, 1, 'ca-koi-va-thu-choi-ca-canh', 'Cá Koi Và Thú Chơi Cá Cảnh', 25, '<p>&nbsp;Cá koi được xem là một phần không thể thiếu trong thú chơi cá cảnh...&nbsp;</p>', '<p>&nbsp;Cá koi được xem là một phần không thể thiếu trong thú chơi cá cảnh...&nbsp;</p>', '01JQY81Y3CVFXHRDTZ17ZZH0ND.jpg', '2025-04-03 16:34:25', '2025-04-03 16:34:25'),
(10, 1, 'nuoi-ca-koi-trong-mua-dong', 'Nuôi Cá Koi Trong Mùa Đông', 25, '<p>&nbsp;Cách chăm sóc cá koi trong mùa đông để giữ cho chúng khỏe mạnh...&nbsp;</p>', '<p>&nbsp;Cách chăm sóc cá koi trong mùa đông để giữ cho chúng khỏe mạnh...&nbsp;</p>', '01JQY836D5CN38KB6W6Y0NW66P.jpg', '2025-04-03 16:35:06', '2025-04-03 16:35:06'),
(11, 1, 'cach-cho-ca-an', 'Cách cho cá ăn', 50, '<p>Cách cho cá ăn ...</p>', '<p>Cách cho cá ăn ...</p>', '01JQY84Z0VDZEV0N05SRRBVVP0.webp', '2025-04-03 16:36:04', '2025-04-03 16:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cá koi', '2025-04-02 12:53:27', '2025-04-02 12:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_price` decimal(10,2) NOT NULL,
  `max_price` decimal(10,2) NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_latest` tinyint(1) NOT NULL DEFAULT '0',
  `is_discounted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buy_many` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `min_price`, `max_price`, `short_desc`, `description`, `image`, `is_featured`, `is_latest`, `is_discounted`, `created_at`, `updated_at`, `buy_many`) VALUES
(1, 6, 'Hikari Gold', 'hikari-gold', '150000.00', '2282000.00', '<p>Hikari Gold là một chế độ ăn uống hàng ngày tăng cường màu sắc được phát triển để mang lại tốc độ tăng trưởng được cải thiện, hình thức vượt trội và màu sắc tự nhiên tuyệt vời.</p><p><strong>Hạt size M&nbsp;</strong></p><ul><li>Hikari Gold – 2370 – 2kg</li><li>Hikari Gold – 2342 – 500g</li><li>Hikari Gold – 2382 – 5kg</li></ul><p><strong>Hạt size L</strong></p><ul><li>Hikari Gold – 2482 – 5kg</li><li>Hikari Gold – 2489 – 10kg</li></ul>', '<p>Sản phẩm Hikari Gold giúp tăng màu hiệu quả, mang lại vẻ đẹp tự nhiên và màu sắc thực của cá Koi</p><p>Một sản phẩm cân bằng dinh dưỡng nhằm duy trì năng lượng của cá nuôi hồ, đồng thời giúp cá tăng trưởng nhanh và hạn chế tích mỡ gây ảnh hưởng đến sức khỏe của cá.</p><p>Ba kích thước hạt dạng nổi phù hợp để cung cấp dinh dưỡng cho tất cả các dòng cá có kích cỡ khách nhau, đồng thời làm giảm nguy cơ tạo váng hoặc đục trong nước</p><p>LÝ TƯỞNG CHO: Cá Koi con và cá vàng lớn khi muống tăng trưởng nhanh và cải thiện thân hình</p><p><strong>Lưu ý:</strong> Hikari Gold ® chứa hàm lượng thành phần tự nhiên cao hơn nên có thể gây ra một chút thay đổi về màu sắc giữa các lô sản xuất. Hãy yên tâm vì các tiêu chuẩn chất lượng khắt khe của chúng tôi, mỗi gói đều đáp ứng các thông số dinh dưỡng vượt trội của chúng tôi.</p><h2>Lượng thức ăn cho một lần</h2><p>Thường xuyên theo dõi nhiệt độ nước của bạn và điều chỉnh số lượng cũng như tần suất cho ăn dựa trên nhiệt độ này, tình trạng nước, số lượng và kích cỡ của cá cũng như mức độ hoạt động của chúng. Tránh cho ăn quá nhiều và luôn loại bỏ thức ăn thừa còn sót lại sau thời gian cho ăn.</p><ul><li>Ở nhiệt độ 20-30°C (68-86°F) – Cho ăn 2 đến 4 lần mỗi ngày, lượng cá của bạn sẽ tiêu thụ hoàn toàn trong vòng 5 phút.</li><li>Ở nhiệt độ 15-20°C (59-68°F) – Cho ăn không quá hai lần mỗi ngày, lượng cá của bạn sẽ tiêu thụ hoàn toàn trong vòng 5 phút. Để có kết quả tốt nhất, hãy cố gắng cho ăn vào thời điểm ấm hơn trong ngày.</li><li>Đối với 11-15°C (52-59°F) – Chúng tôi khuyên bạn nên sử dụng Công thức mầm lúa mì Hikari ® Excel ® hoặc Hikari ® .</li><li>Dưới 11°C (52°F) – Chúng tôi khuyên bạn nên sử dụng Công thức mầm lúa mì Hikari ®, được thiết kế đặc biệt để tiêu hóa ở nhiệt độ thấp.</li></ul><p><br></p>', '01JQV81QXFPP03K7PK7912P8Q6.png', 1, 1, 1, '2025-04-02 12:36:35', '2025-04-02 12:38:14', 1),
(3, 1, 'Ca Coi Royal', 'ca-coi-royal', '100000.00', '200000.00', '<p>&nbsp;Cá koi Royal có màu sắc đẹp, phù hợp với các hồ cá cao cấp.&nbsp;</p>', '<p><strong>&nbsp;Cá koi Royal là loài cá có màu sắc rực rỡ, dễ nuôi và thích hợp với môi trường nước sạch.&nbsp;</strong></p>', '01JQY5T1DK7PM2XMH9Z9VHMHHS.jpg', 1, 1, 1, '2025-04-03 15:55:09', '2025-04-03 16:12:47', 0),
(4, 1, 'Ca Coi Golden', 'ca-coi-golden', '200000.00', '300000.00', '<p>&nbsp;Cá koi Golden nổi bật với lớp vảy vàng óng ánh.&nbsp;</p>', '<p>&nbsp;Cá koi Golden mang đến vẻ đẹp lấp lánh, là sự lựa chọn lý tưởng cho hồ cá của bạn.&nbsp;</p>', '01JQY5YHWGSXNCA02VPT3P2S51.webp', 1, 1, 0, '2025-04-03 15:57:37', '2025-04-03 16:14:15', 0),
(5, 1, ' Ca Coi Sanke', 'ca-coi-sanke', '230000.00', '500000.00', '<p>&nbsp;Cá koi Sanke với sắc đỏ, trắng và đen nổi bật.&nbsp;</p>', '<p>&nbsp;Cá koi Sanke là loài cá có màu sắc đặc trưng với sự kết hợp hoàn hảo giữa ba màu sắc đỏ, trắng và đen.&nbsp;</p>', '01JQY60TFK92R77B4B0A7B8QVW.webp', 0, 1, 0, '2025-04-03 15:58:51', '2025-04-03 16:14:37', 0),
(6, 1, 'Ca Coi Showa', 'ca-coi-showa', '300000.00', '800000.00', '<p>&nbsp;Cá koi Showa với màu sắc đen, đỏ nổi bật.&nbsp;</p>', '<p>&nbsp;Cá koi Showa có một vẻ ngoài ấn tượng, với sự kết hợp hoàn hảo giữa sắc đen và đỏ.&nbsp;</p>', '01JQY635VE60TEQ9A990BPYXKM.jpg', 0, 0, 0, '2025-04-03 16:00:09', '2025-04-03 16:14:50', 1),
(7, 6, 'Thức ăn Koi Royal', 'thuc-an-koi-royal', '200000.00', '100000.00', '<p>&nbsp;Thức ăn chất lượng cao cho cá koi, giúp tăng trưởng nhanh và màu sắc đẹp.&nbsp;</p>', '<p>Thức ăn Koi Royal là loại thức ăn chuyên biệt giúp cá koi phát triển khỏe mạnh, màu sắc rực rỡ và nâng cao sức khỏe tổng thể.&nbsp;</p>', '01JQY67J8MYSMMSCYFH4586AKV.jpg', 1, 0, 0, '2025-04-03 16:02:32', '2025-04-03 16:17:15', 0),
(8, 6, 'Thức ăn Koi Golden', 'thuc-an-koi-golden', '350000.00', '1200000.00', '<p>&nbsp;Thức ăn cho cá koi màu vàng đặc trưng, giúp tăng trưởng và phát triển mạnh mẽ.&nbsp;</p>', '<p>Thức ăn Koi Golden là sự lựa chọn lý tưởng giúp cá koi có lớp vảy vàng óng ánh, tăng cường sức khỏe và phát triển đồng đều.</p>', '01JQY69W9ZTYKX43S2W0SF2VC5.jpg', 0, 1, 0, '2025-04-03 16:03:48', '2025-04-03 16:17:31', 0),
(9, 6, 'Thức ăn Koi Protein Cao', 'thuc-an-koi-protein-cao', '600000.00', '1800000.00', '<p>&nbsp;Cung cấp lượng protein cao, giúp cá koi phát triển cơ bắp.&nbsp;</p>', '<p>Thức ăn chứa lượng protein cao, giúp cá koi tăng trưởng mạnh mẽ, phát triển cơ bắp và duy trì sức khỏe tốt.</p>', '01JQY6C5F05JYEN93FNF1RP26R.jpg', 0, 0, 1, '2025-04-03 16:05:03', '2025-04-03 16:17:46', 1),
(10, 6, 'Thức ăn Koi Màu Sắc', 'thuc-an-koi-mau-sac', '260000.00', '900000.00', '<p>&nbsp;Thức ăn giúp cá koi có màu sắc rực rỡ và sáng đẹp.&nbsp;</p>', '<p>Thức ăn Koi Màu Sắc bổ sung các chất phụ gia giúp cải thiện màu sắc tự nhiên của cá koi, mang lại vẻ ngoài sống động và hấp dẫn.</p>', '01JQY6EF2MCFBWXG3DRCEKXRJM.jpg', 0, 1, 0, '2025-04-03 16:06:18', '2025-04-03 16:18:00', 1),
(11, 6, 'Thức ăn Koi Mùa Đông', 'thuc-an-koi-mua-dong', '125000.00', '300000.00', '<p>&nbsp;Thức ăn nhẹ cho cá koi trong mùa đông, giúp bảo vệ sức khỏe.&nbsp;</p>', '<p>&nbsp;Thức ăn Koi Mùa Đông giúp giảm protein và dầu mỡ, phù hợp với cá koi trong mùa đông, khi cá ít vận động hơn và cần ít năng lượng hơn.</p>', '01JQY6GCE4B18WE1HRZXJTPKQR.jpg', 0, 0, 1, '2025-04-03 16:07:21', '2025-04-03 16:16:22', 0),
(12, 7, 'Thức ăn Koi Thực Phẩm Tự Nhiên', 'thuc-an-koi-thuc-pham-tu-nhien', '200000.00', '1400000.00', '<p>&nbsp;Thức ăn tự nhiên như giun, tôm, rau quả giúp bổ sung dinh dưỡng tự nhiên cho cá koi.&nbsp;</p>', '<p>&nbsp;Thức ăn Koi Thực Phẩm Tự Nhiên bổ sung các thực phẩm tự nhiên, giúp cá koi có chế độ ăn phong phú, giúp tăng trưởng tốt và tăng cường hệ miễn dịch.&nbsp;</p>', '01JQY77ZAR6KE4HK2ZFP6JF2VT.jpg', 1, 1, 1, '2025-04-03 16:20:14', '2025-04-03 16:20:14', 1),
(13, 7, 'Thức ăn Koi Dễ Tiêu Hóa', 'thuc-an-koi-de-tieu-hoa', '180000.00', '3000000.00', '<p>&nbsp;Thức ăn dễ tiêu hóa, giúp cá koi hấp thụ tốt các chất dinh dưỡng.&nbsp;</p>', '<p>&nbsp;Thức ăn dễ tiêu hóa, giúp cá koi hấp thụ tốt các chất dinh dưỡng.&nbsp;</p>', '01JQY7A7FA0BSFQ9FH1PVJKRFQ.jpg', 1, 0, 0, '2025-04-03 16:21:28', '2025-04-03 16:21:28', 0),
(14, 7, 'Thức ăn Koi Premium', 'thuc-an-koi-premium', '250000.00', '400000.00', '<p>&nbsp;Thức ăn cao cấp dành cho cá koi, giúp phát triển toàn diện.&nbsp;</p>', '<p>&nbsp;Thức ăn cao cấp dành cho cá koi, giúp phát triển toàn diện.&nbsp;</p>', '01JQY7BXN66XRRDRFY5F6S6MQQ.jpg', 0, 0, 1, '2025-04-03 16:22:24', '2025-04-03 16:22:24', 0),
(15, 7, 'Thức ăn Koi Cho Hồ Lớn', 'thuc-an-koi-cho-ho-lon', '125000.00', '300000.00', '<p>&nbsp;Thức ăn dành riêng cho cá koi nuôi trong hồ lớn, giúp cá phát triển khỏe mạnh.&nbsp;</p>', '<p>&nbsp;Thức ăn dành riêng cho cá koi nuôi trong hồ lớn, giúp cá phát triển khỏe mạnh.&nbsp;</p>', '01JQY7DHG0KM8VCGVVSERBD28W.jpg', 0, 1, 0, '2025-04-03 16:23:17', '2025-04-03 16:23:17', 0),
(16, 7, 'Thức ăn Koi Mới Lớn', 'thuc-an-koi-moi-lon', '500000.00', '30000000.00', '<p>&nbsp;Thức ăn cho cá koi mới lớn, giúp phát triển nhanh chóng và đều đặn.&nbsp;</p>', '<p>&nbsp;Thức ăn cho cá koi mới lớn, giúp phát triển nhanh chóng và đều đặn.&nbsp;</p>', '01JQY7F1H10V53M3GTGM1QPRZ5.jpg', 0, 0, 1, '2025-04-03 16:24:06', '2025-04-03 16:24:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cá Koi ', '2025-04-02 12:15:35', '2025-04-02 12:15:35'),
(2, 'Cá vàng ', '2025-04-02 12:15:38', '2025-04-02 12:15:38'),
(3, 'Cá nhiệt đới ', '2025-04-02 12:15:41', '2025-04-02 12:15:41'),
(4, 'Bò sát ', '2025-04-02 12:15:43', '2025-04-02 12:15:43'),
(5, 'Chim', '2025-04-02 12:15:44', '2025-04-02 12:15:44'),
(6, 'Thức ăn Cho cá Koi', '2025-04-03 14:25:21', '2025-04-03 14:25:21'),
(7, 'Thức ăn Cho cá cảnh', '2025-04-03 14:25:34', '2025-04-03 14:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int UNSIGNED NOT NULL DEFAULT '0',
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `slug`, `title`, `view`, `short_desc`, `description`, `banner`, `created_at`, `updated_at`) VALUES
(1, 'dich-vu-cham-soc-ca-canh-cao-cap', 'Dịch vụ Chăm sóc Cá Cảnh Cao Cấp', 1, 'Dịch vụ chăm sóc cá cảnh hàng đầu với các giải pháp tối ưu.', 'Dịch vụ chăm sóc cá cảnh chuyên nghiệp, bao gồm kiểm tra sức khỏe cá định kỳ, bảo trì hồ cá, cung cấp thức ăn dinh dưỡng, và thay nước hồ đúng cách. Chúng tôi cam kết mang đến môi trường sống lý tưởng cho cá của bạn.', '01JQXDKHT352SGGRW4ZXPZB89X.jpg', '2025-04-03 08:52:11', '2025-04-03 08:54:16'),
(2, 'dich-vu-thuc-an-cho-ca-cao-cap', 'Dịch Vụ Thức Ăn Cho Cá Cao Cấp', 2, 'Thức ăn cao cấp cho cá đảm bảo sức khỏe và sự phát triển.', 'Thức ăn cao cấp cho cá đảm bảo sức khỏe và sự phát triển.\', \'Chúng tôi cung cấp thức ăn cho cá được chế biến từ nguyên liệu tự nhiên, không chứa chất bảo quản. Thức ăn của chúng tôi bổ sung đầy đủ các chất dinh dưỡng thiết yếu giúp cá phát triển khỏe mạnh và bền lâu.', '01JQXDT9TQ2M9AJB01ZK8A62A6.jpg', '2025-04-03 08:55:52', '2025-04-03 08:55:52'),
(3, 'thiet-ke-ho-ca-canh', 'Thiết Kế Hồ Cá Cảnh', 3, 'Dịch vụ thiết kế hồ cá đẹp mắt, phong thủy.', 'Chúng tôi thiết kế các loại hồ cá cảnh phù hợp với không gian sống và yêu cầu phong thủy. Hồ cá được tạo ra không chỉ đẹp mắt mà còn đảm bảo sự hài hòa và cân đối cho không gian xung quanh.', '01JQXDWC64D90K8PTMYZ8TAN6V.jpg', '2025-04-03 08:57:00', '2025-04-03 08:57:00'),
(4, 've-sinh-ho-ca', 'Vệ Sinh Hồ Cá', 4, 'Vệ sinh và bảo dưỡng hồ cá định kỳ, sạch sẽ.', 'Dịch vụ vệ sinh hồ cá bao gồm thay nước, làm sạch các bộ lọc, kiểm tra hệ thống lọc và vệ sinh các bề mặt trong hồ. Điều này giúp duy trì môi trường sống trong lành cho cá và giảm nguy cơ bệnh tật.', '01JQXDYTVAN6KBA68N9CNHPP8T.jpg', '2025-04-03 08:58:20', '2025-04-03 08:58:20'),
(5, 'dich-vu-thuy-sinh', 'Dịch Vụ Thủy Sinh', 5, 'Cung cấp các giải pháp thủy sinh cho hồ cá cảnh.', 'Chúng tôi cung cấp dịch vụ thiết kế hệ thống thủy sinh cho hồ cá cảnh. Hệ thống thủy sinh tạo ra môi trường sống tự nhiên cho cá, giúp hồ cá trở nên sinh động và có vẻ đẹp tự nhiên nhất.', '01JQXE111P3KD68X8EMEZMCR1T.jpg', '2025-04-03 08:59:32', '2025-04-03 08:59:32'),
(6, 'tu-van-ho-ca-canh', 'Tư Vấn Hồ Cá Cảnh', 6, 'Chuyên gia tư vấn thiết kế và chăm sóc hồ cá.', 'Dịch vụ tư vấn của chúng tôi giúp bạn lựa chọn loại cá phù hợp, thiết kế hồ cá, và hướng dẫn chăm sóc cá hiệu quả. Chúng tôi hỗ trợ bạn tạo ra một không gian sống hoàn hảo cho cá của bạn.', '01JQXE3ERW4H2S2GGRQJ25TDKD.webp', '2025-04-03 09:00:52', '2025-04-03 09:00:52'),
(7, 'dich-vu-cham-soc-ca-koi', 'Dịch Vụ Chăm Sóc Cá Koi', 7, 'Chăm sóc cá Koi cao cấp với dịch vụ chuyên nghiệp.', 'Cá Koi cần được chăm sóc đặc biệt để phát triển khỏe mạnh. Chúng tôi cung cấp dịch vụ chăm sóc cá Koi với việc thay nước định kỳ, kiểm tra sức khỏe cá, và tư vấn chế độ ăn uống hợp lý cho cá Koi.', '01JQXE5B99AZMYTQ77W3XK4SE2.jpg', '2025-04-03 09:01:54', '2025-04-03 09:01:54'),
(8, 'lap-dat-ho-ca-tu-dong', 'Lắp Đặt Hồ Cá Tự Động', 8, 'Hệ thống hồ cá tự động tiết kiệm thời gian và công sức.', 'Chúng tôi cung cấp hệ thống hồ cá tự động, bao gồm các bộ lọc, máy bơm nước và hệ thống chiếu sáng tự động, giúp duy trì môi trường sống cho cá mà không cần phải chăm sóc thủ công mỗi ngày.', '01JQXE797SSBS4C92RTBXWBZCX.jpg', '2025-04-03 09:02:57', '2025-04-03 09:02:57'),
(9, 'cham-soc-ca-canh-mini', 'Chăm Sóc Cá Cảnh Mini', 9, 'Dịch vụ chăm sóc cá cảnh mini cho không gian nhỏ.', 'Chúng tôi cung cấp các gói dịch vụ chăm sóc cho hồ cá nhỏ, phù hợp với những không gian sống hạn chế như căn hộ hoặc văn phòng. Hồ cá mini vẫn đầy đủ các chức năng và có thể tạo không gian sống tuyệt vời cho cá.', '01JQXEA88C8AK93XTSBFSRVPWT.jpeg', '2025-04-03 09:04:35', '2025-04-03 09:04:35'),
(10, 'dich-vu-tai-tao-ho-ca', 'Dịch Vụ Tái Tạo Hồ Cá', 10, 'Dịch vụ tái tạo và nâng cấp hồ cá cũ.', 'Dịch vụ tái tạo hồ cá cũ giúp làm mới diện mạo hồ cá của bạn, bao gồm thay thế các bộ lọc cũ, cải thiện hệ thống chiếu sáng và làm mới các yếu tố trang trí, mang đến không gian sống mới mẻ cho cá.', '01JQXEE2ACPCC8098B14M2CKMP.jpg', '2025-04-03 09:06:40', '2025-04-03 09:06:40'),
(11, 'dich-vu-cham-soc-ca-koi-tai-nha', 'Chăm Sóc Cá Koi Tại Nhà', 11, 'Chăm sóc cá Koi ngay tại nhà khách hàng.', 'Chúng tôi cung cấp dịch vụ chăm sóc cá Koi ngay tại nhà khách hàng, bao gồm thay nước, vệ sinh hồ, và kiểm tra sức khỏe cá. Điều này giúp bạn tiết kiệm thời gian mà vẫn đảm bảo cá Koi luôn khỏe mạnh.', '01JQXEWK9JYK6ATC78SKF2T4XR.jpg', '2025-04-03 09:14:36', '2025-04-03 09:14:36'),
(12, 'dich-vu-thu-cao-cap-cho-ca', 'Dịch Vụ Thú Cao Cấp Cho Cá', 12, 'Thức ăn và đồ dùng cho cá cao cấp', 'Chúng tôi cung cấp các sản phẩm chăm sóc cá cao cấp, bao gồm thức ăn, thuốc, và các phụ kiện như máy lọc, bộ tạo oxy, và hệ thống chiếu sáng cho hồ cá, giúp cá của bạn khỏe mạnh và sống lâu.', '01JQXEYNQ424MZ7EDNQSF4N4F2.webp', '2025-04-03 09:15:44', '2025-04-03 09:15:44'),
(13, 'cai-tao-ho-ca-canh', 'Cải Tạo Hồ Cá Cảnh', 13, 'Cải tạo lại hồ cá cảnh cũ với thiết kế mới.', 'Chúng tôi cung cấp dịch vụ cải tạo hồ cá cảnh cũ, thay đổi các yếu tố thiết kế và cải thiện chất lượng nước để tạo ra một không gian sống mới cho cá.', '01JQXF179ZB4H2S1TCFKB2ZZ1D.jpg', '2025-04-03 09:17:07', '2025-04-03 09:17:07'),
(14, 'dich-vu-cham-soc-ca-nuoi', 'Dịch Vụ Chăm Sóc Cá Nuôi', 14, 'Dịch vụ chăm sóc cho các loại cá nuôi trong gia đình.', 'Dịch vụ chăm sóc cá nuôi tại nhà giúp bạn duy trì sức khỏe và sự phát triển của cá, bao gồm cung cấp thức ăn, thay nước và vệ sinh hồ định kỳ.', '01JQXF35MVA4QGPQCBG2J8SNQ6.jpg', '2025-04-03 09:18:11', '2025-04-03 09:18:11'),
(15, 'dien-tu-ho-ca', 'Điện Tử Hồ Cá', 15, 'Cung cấp các thiết bị điện tử cho hồ cá.', 'Chúng tôi cung cấp các thiết bị điện tử hiện đại cho hồ cá, bao gồm hệ thống lọc nước tự động, máy bơm oxy, và đèn chiếu sáng tiết kiệm năng lượng giúp duy trì môi trường sống tốt cho cá.', '01JQXF590XDXC4YRPN1SM4VKXF.webp', '2025-04-03 09:19:20', '2025-04-03 09:19:20'),
(16, 'ho-ca-nho', 'Hồ Cá Nhỏ', 16, 'Hồ cá nhỏ cho không gian hạn chế.', 'Chúng tôi thiết kế các hồ cá nhỏ gọn, thích hợp với không gian hạn chế như căn hộ hoặc văn phòng, giúp bạn tạo ra một không gian sống tuyệt vời cho cá mà không chiếm quá nhiều diện tích.', '01JQXF6XEKQ992KQJNX4HXFBT1.jpg', '2025-04-03 09:20:14', '2025-04-03 09:20:14'),
(17, 'ho-ca-dai', 'Hồ Cá Dài', 17, 'Thiết kế hồ cá dài cho không gian rộng lớn.', 'Chúng tôi thiết kế các hồ cá dài, phù hợp với không gian rộng lớn, giúp cá có đủ không gian để bơi lội, tạo môi trường sống tự nhiên và đẹp mắt.', '01JQXFAZF07G37Z1R6DNBG1EX0.jfif', '2025-04-03 09:22:27', '2025-04-03 09:22:27'),
(18, 'ho-ca-cao-cap', 'Hồ Cá Cao Cấp', 18, 'Hồ cá cao cấp cho không gian sang trọng.', 'Dịch vụ thiết kế hồ cá cao cấp với các tính năng đặc biệt như hệ thống lọc nước tự động, chiếu sáng chuyên dụng và các phụ kiện cao cấp, giúp mang lại vẻ đẹp sang trọng cho không gian sống của bạn.', '01JQXFEJKKBCY6H4EV7WKRZEMD.webp', '2025-04-03 09:24:25', '2025-04-03 09:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KCtK8VAG4icUekIwzVq7pDFxKRUpFZhP2Mc4rE1C', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlA1RWk2Z0dVTUdXTDNXVER0dzJoV3JvMUlERmNWbjRkZmtXWFRDayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743728288);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `custom_fields`, `avatar_url`) VALUES
(1, 'tranlehuyhoang@gmail.com', 'tranlehuyhoang@gmail.com', NULL, '$2y$12$G4hx5NNwSYXbb2kGPLQxx.mUTrIQZPO/KI6/ofBlncr2xBr06soOW', NULL, '2025-03-28 01:16:28', '2025-03-28 01:16:28', NULL, NULL),
(2, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$/kSzb7LhwgNi8ChUuHd3xeLOPdTwlSFx8UJq4DkYeh6FRot6d5hm2', NULL, '2025-03-28 08:17:04', '2025-04-03 08:41:05', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_name_unique` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
