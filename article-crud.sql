-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 04:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `article-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(3, 'updated Title 3', 'Repellat maiores iusto eveniet praesentium quod blanditiis a. Quod quas quod quas. Et et omnis est dolorem. Dignissimos in aut facere sed velit. Dolorum nostrum et dolorem sequi.', '2020-12-11 03:58:11', '2020-12-11 07:33:59'),
(4, 'updated Title', 'Updated Body', '2020-12-11 03:58:11', '2020-12-11 04:55:23'),
(5, 'Velit reprehenderit consequatur animi.', 'Eum doloribus sequi et vero quo dolor. Id eos accusamus ut non expedita esse. In expedita optio aut omnis nam laudantium. Ipsum sit fugiat voluptatibus qui architecto recusandae aliquam. Sed vel et eveniet ex vero et error.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(7, 'Est minus officiis laboriosam sunt.', 'Consequatur sed vero aliquid eligendi minus et omnis rerum. Sapiente magnam architecto eius ad nihil repellendus. Dolore animi eum nisi consequatur architecto autem nam.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(8, 'Nesciunt in iure eius id.', 'Et repellat iure aut est dolorum molestiae placeat. Ullam quae dolor voluptas vero est commodi. Numquam dicta est et laudantium. Est nesciunt beatae vel dolor dicta mollitia. Veniam eos illum sint repellendus accusantium. Harum dicta et aut magni.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(9, 'Error fugit fugiat excepturi qui.', 'Occaecati voluptatum assumenda voluptates explicabo temporibus. Tempora commodi velit hic beatae. Placeat aspernatur et debitis sapiente rerum at sed excepturi. Aliquam corporis dolorem ut perferendis.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(10, 'Sit quas asperiores at.', 'Praesentium quia aut aliquid. Alias sapiente aut recusandae. Placeat eveniet consectetur ratione ut. Earum pariatur expedita aliquid vel facere. Ut blanditiis et voluptas quos. Quod et doloribus omnis dolorem.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(11, 'Quo voluptatem voluptatibus consequuntur ipsum.', 'Esse et id magni amet sunt. Sapiente qui culpa unde eligendi eligendi. Et quia sit magnam assumenda et labore non. Adipisci eum voluptatem error non sit voluptas exercitationem sit.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(12, 'Officiis veritatis aut et.', 'Quisquam et impedit esse qui sit aut. Optio enim tenetur sed quasi quidem. In ab qui ratione. Sunt quos quisquam qui qui. Ut optio amet nobis repellendus. Ut ab maiores fugit magni dolorem fuga.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(13, 'Amet illo quo quisquam vero maxime.', 'Et voluptates molestias aliquam labore beatae. Dolores voluptates quia quia aut amet earum sint. Ut ut voluptatum iste quis et id ea.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(14, 'Ea et asperiores mollitia est sunt.', 'Et exercitationem amet aut ea optio architecto velit. Optio nihil dolor nesciunt. Exercitationem ab possimus est sit. Nulla suscipit rerum cumque rerum id dolorem et iure.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(15, 'Quis nam sint quia voluptatem eos odio minus non.', 'Veritatis nemo nostrum fugiat modi voluptas aut. Non ea deleniti tempora quos possimus. Accusantium omnis est doloribus doloremque neque.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(16, 'Debitis dolorem et aut consequatur.', 'Rem voluptas error numquam qui aperiam enim et sit. Aliquid dolores est quisquam amet sint. Deleniti non dolorem debitis consequatur neque.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(17, 'Dolor quia molestiae labore commodi.', 'Et amet quasi quisquam non commodi hic laudantium. Quisquam aperiam adipisci quia. Consequuntur cumque velit et amet quia quo. Hic est quae ipsam porro. Ut repudiandae ut ut autem quis. Ullam ut earum non fugiat debitis repellat consectetur.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(18, 'Vel illum asperiores aliquam architecto.', 'Repellendus rerum optio assumenda quia minima dolores. Laudantium ab quis rerum in iste dicta tenetur.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(19, 'Ad cum quia nostrum doloribus unde.(Updated)', 'Ipsam similique facere rem fugiat voluptatem temporibus amet fuga. Asperiores corrupti quisquam enim rem quisquam consequatur laborum. Velit incidunt veritatis quia quia. Nesciunt maxime deleniti nihil.', '2020-12-11 03:58:11', '2020-12-11 08:26:40'),
(20, 'Laboriosam fuga magni fugiat ut et debitis.', 'Voluptatem in voluptatem tempore itaque aut et doloribus. Suscipit dolor est error explicabo. Quis consectetur corrupti omnis repudiandae neque. Velit cumque sunt voluptatem velit et.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(21, 'Odit dolores possimus itaque in.', 'Qui accusamus dicta molestias aut alias animi cupiditate. Aut vero et molestiae quia quia aliquam dolorem non. Provident officiis veritatis nihil sunt. Et omnis praesentium porro quia nesciunt.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(22, 'Totam tempora at odio laborum.', 'Deserunt excepturi ut aut voluptatum est porro. Error ad aspernatur odio amet reprehenderit est qui nemo. Reiciendis fuga provident deleniti excepturi.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(23, 'Officia id tempore voluptatum quas.', 'Sunt veniam nam natus nostrum qui. Quia nulla nisi sequi sed laboriosam aperiam fugiat. Qui architecto est dignissimos vel repellat deserunt repudiandae. Qui nobis hic et et assumenda.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(24, 'Perspiciatis distinctio labore ut.', 'Laboriosam et quo quis. In enim voluptas beatae ratione nesciunt occaecati autem.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(25, 'Molestiae est pariatur excepturi repellat eaque.', 'Placeat voluptas dolorem cum dolor aut quisquam. Non velit autem magni facilis velit ducimus. Et cum commodi nihil. Beatae voluptas sunt libero facere reprehenderit mollitia est commodi. Sapiente sed qui porro enim.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(26, 'Omnis cupiditate neque delectus assumenda.', 'Delectus quibusdam inventore consequatur facilis rem. Et molestias amet officia eius sed. In non dicta dolorum alias at quia.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(27, 'Numquam quo sit neque.', 'Praesentium exercitationem non eligendi. Ducimus aspernatur iste quia aperiam officiis voluptatem debitis. A rerum non expedita saepe. Alias sint nobis accusantium rerum. Impedit id quasi ut et. Aliquid voluptatibus ut quaerat velit.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(28, 'Consequatur natus sunt voluptates sapiente omnis.', 'Voluptas tenetur inventore occaecati est quo. Velit possimus porro assumenda voluptatem voluptate voluptas neque id. Non accusamus ab dignissimos impedit odio. Sapiente magni et id et.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(29, 'Ratione illo dolore dolores maiores.', 'Alias quis occaecati quo est. Provident rem ullam voluptate animi quo omnis dicta. Qui architecto omnis itaque dolorem necessitatibus. Alias velit dolores hic. Rerum voluptatem alias et itaque nihil. Sed deserunt aut at ab repudiandae quia.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(30, 'Illo dolor possimus omnis sint quis.', 'Dolorem odit quo aut. Earum corporis possimus voluptas quis. Mollitia non voluptas maiores aspernatur. Cumque aut qui et tempora est.', '2020-12-11 03:58:11', '2020-12-11 03:58:11'),
(32, 'this is title updated', 'this is body', '2020-12-11 07:07:17', '2020-12-11 07:07:55'),
(33, 'new title', 'new body', '2020-12-11 07:20:52', '2020-12-11 07:20:52'),
(34, 'New article', 'body', '2020-12-11 07:42:28', '2020-12-11 07:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_11_095121_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
