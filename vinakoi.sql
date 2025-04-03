-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 10:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.28

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
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1743672323),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1743672323;', 1743672323),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1743669741),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1743669741;', 1743669741);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `short_desc` text NOT NULL,
  `description` text NOT NULL,
  `banner` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `slug`, `title`, `view`, `short_desc`, `description`, `banner`, `created_at`, `updated_at`) VALUES
(1, 1, 'toi-thu-phu-ca-koi-o-nhat-ban', 'Tới thủ phủ cá koi ở Nhật Bản', 0, '<p>&nbsp;Nhật Bản không chỉ nổi tiếng với văn hóa đặc sắc mà còn là quê hương của những chú cá koi tuyệt đẹp. Thủ phủ cá koi, nằm ở thành phố Niigata, là điểm đến lý tưởng cho những ai yêu thích loài cá này.&nbsp;</p><p><br></p>', '<h3>Khám Phá Vẻ Đẹp Từ Cá Koi</h3><p>Nhật Bản không chỉ nổi tiếng với văn hóa đặc sắc mà còn là quê hương của những chú cá koi tuyệt đẹp. Thủ phủ cá koi, nằm ở thành phố Niigata, là điểm đến lý tưởng cho những ai yêu thích loài cá này.</p><h3>Lịch Sử và Ý Nghĩa</h3><p>Cá koi đã được nuôi dưỡng ở Nhật Bản từ hàng thế kỷ trước, mang trong mình nhiều ý nghĩa biểu tượng như sự kiên nhẫn và tinh thần vượt khó. Ở Niigata, bạn sẽ tìm thấy nhiều trang trại cá koi lớn, nơi các nghệ nhân tận tâm chăm sóc và nuôi dưỡng những chú cá với màu sắc và hình dáng độc đáo.</p><h3>Trải Nghiệm Đặc Biệt</h3><p>Khi đến đây, du khách có cơ hội tham gia vào các tour tham quan trang trại, tìm hiểu quy trình chăm sóc cá, và thậm chí có thể thử sức trong việc nuôi cá koi. Bên cạnh đó, các lễ hội diễn ra quanh năm cũng là dịp để bạn chiêm ngưỡng những mẫu cá đẹp nhất và thưởng thức các món ăn đặc sản địa phương.</p><h3>Kết Luận</h3><p>Thủ phủ cá koi ở Nhật Bản không chỉ là nơi để chiêm ngưỡng vẻ đẹp của loài cá này mà còn là một trải nghiệm văn hóa phong phú. Nếu bạn yêu thích thiên nhiên và muốn tìm hiểu sâu hơn về văn hóa Nhật Bản, đây chắc chắn là điểm đến không thể bỏ qua.</p><p><br></p><p><br></p>', '01JQV9400PAK75NKKHRGJBTV3E.png', '2025-04-02 12:55:18', '2025-04-02 12:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `min_price` decimal(10,2) NOT NULL,
  `max_price` decimal(10,2) NOT NULL,
  `short_desc` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_latest` tinyint(1) NOT NULL DEFAULT 0,
  `is_discounted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buy_many` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `min_price`, `max_price`, `short_desc`, `description`, `image`, `is_featured`, `is_latest`, `is_discounted`, `created_at`, `updated_at`, `buy_many`) VALUES
(1, 1, 'Hikari Gold', 'hikari-gold', 150000.00, 2282000.00, '<p>Hikari Gold là một chế độ ăn uống hàng ngày tăng cường màu sắc được phát triển để mang lại tốc độ tăng trưởng được cải thiện, hình thức vượt trội và màu sắc tự nhiên tuyệt vời.</p><p><strong>Hạt size M&nbsp;</strong></p><ul><li>Hikari Gold – 2370 – 2kg</li><li>Hikari Gold – 2342 – 500g</li><li>Hikari Gold – 2382 – 5kg</li></ul><p><strong>Hạt size L</strong></p><ul><li>Hikari Gold – 2482 – 5kg</li><li>Hikari Gold – 2489 – 10kg</li></ul>', '<p>Sản phẩm Hikari Gold giúp tăng màu hiệu quả, mang lại vẻ đẹp tự nhiên và màu sắc thực của cá Koi</p><p>Một sản phẩm cân bằng dinh dưỡng nhằm duy trì năng lượng của cá nuôi hồ, đồng thời giúp cá tăng trưởng nhanh và hạn chế tích mỡ gây ảnh hưởng đến sức khỏe của cá.</p><p>Ba kích thước hạt dạng nổi phù hợp để cung cấp dinh dưỡng cho tất cả các dòng cá có kích cỡ khách nhau, đồng thời làm giảm nguy cơ tạo váng hoặc đục trong nước</p><p>LÝ TƯỞNG CHO: Cá Koi con và cá vàng lớn khi muống tăng trưởng nhanh và cải thiện thân hình</p><p><strong>Lưu ý:</strong> Hikari Gold ® chứa hàm lượng thành phần tự nhiên cao hơn nên có thể gây ra một chút thay đổi về màu sắc giữa các lô sản xuất. Hãy yên tâm vì các tiêu chuẩn chất lượng khắt khe của chúng tôi, mỗi gói đều đáp ứng các thông số dinh dưỡng vượt trội của chúng tôi.</p><h2>Lượng thức ăn cho một lần</h2><p>Thường xuyên theo dõi nhiệt độ nước của bạn và điều chỉnh số lượng cũng như tần suất cho ăn dựa trên nhiệt độ này, tình trạng nước, số lượng và kích cỡ của cá cũng như mức độ hoạt động của chúng. Tránh cho ăn quá nhiều và luôn loại bỏ thức ăn thừa còn sót lại sau thời gian cho ăn.</p><ul><li>Ở nhiệt độ 20-30°C (68-86°F) – Cho ăn 2 đến 4 lần mỗi ngày, lượng cá của bạn sẽ tiêu thụ hoàn toàn trong vòng 5 phút.</li><li>Ở nhiệt độ 15-20°C (59-68°F) – Cho ăn không quá hai lần mỗi ngày, lượng cá của bạn sẽ tiêu thụ hoàn toàn trong vòng 5 phút. Để có kết quả tốt nhất, hãy cố gắng cho ăn vào thời điểm ấm hơn trong ngày.</li><li>Đối với 11-15°C (52-59°F) – Chúng tôi khuyên bạn nên sử dụng Công thức mầm lúa mì Hikari ® Excel ® hoặc Hikari ® .</li><li>Dưới 11°C (52°F) – Chúng tôi khuyên bạn nên sử dụng Công thức mầm lúa mì Hikari ®, được thiết kế đặc biệt để tiêu hóa ở nhiệt độ thấp.</li></ul><p><br></p>', '01JQV81QXFPP03K7PK7912P8Q6.png', 1, 1, 1, '2025-04-02 12:36:35', '2025-04-02 12:38:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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
(5, 'Chim', '2025-04-02 12:15:44', '2025-04-02 12:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `short_desc` text NOT NULL,
  `description` text NOT NULL,
  `banner` varchar(255) NOT NULL,
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
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0QRfoFKH06GLePySGnrTnuPxRXeRY4BLWuKTJ39E', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2RYVW1tYU1pYmVwNndoSGhkQWxyZWNEMUV1bnVrTVA3VDk1dTNDeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743669532),
('EodR0FqS0dmEqGczILL48FW1SOnoc0dQQ2EKMf8I', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaVVpb2Y2ZGZ6SDVCQ1VKYm1LY3dadWxLZDEwQTUwTHFoY3NtZjdQTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYmxvZy90b2ktdGh1LXBodS1jYS1rb2ktby1uaGF0LWJhbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQva1N6YjdMaHdnTmk4Q2hVdUhkM3hlTE9QZFR3bFNGeDhVSnE0RGtZZWg2RlJvdDZkNWhtMiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1743676123);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_fields`)),
  `avatar_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
