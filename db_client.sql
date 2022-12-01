-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2022 a las 23:56:57
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_client`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'saludo', 'hey mi gente bella', '2022-12-01 22:01:35', '2022-12-01 22:01:35'),
(3, 'saludo 2', 'hey mi gente bella 2', '2022-12-01 22:16:03', '2022-12-01 22:16:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_01_120528_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyAuthApp', '5948e38e5211950ce601182851d22d97f422fcbd0801a26495dd7adf2b50ed8c', '[\"*\"]', NULL, NULL, '2022-12-01 21:42:25', '2022-12-01 21:42:25'),
(2, 'App\\Models\\User', 3, 'MyAuthApp', '54595e2871a233aae69963d16b2d7802047f6cbcc3ca4807ba19d97f369daa5a', '[\"*\"]', NULL, NULL, '2022-12-01 21:53:16', '2022-12-01 21:53:16'),
(3, 'App\\Models\\User', 5, 'MyAuthApp', '21a897a6be90dd743d0abf8b43b60cd56fd21b1919eee3c40d2ccd7b7c4df5a8', '[\"*\"]', NULL, NULL, '2022-12-01 21:56:37', '2022-12-01 21:56:37'),
(4, 'App\\Models\\User', 5, 'MyAuthApp', 'a3dce5aa33727ecb893cdde8b89c1972aba0153320c600e22de55bce0f106630', '[\"*\"]', '2022-12-01 22:16:40', NULL, '2022-12-01 21:57:10', '2022-12-01 22:16:40'),
(5, 'App\\Models\\User', 6, 'MyAuthApp', 'fd8e23d0ecde8985a34513e4cd085759c5bbf56785977e788cc0dac370b354da', '[\"*\"]', NULL, NULL, '2022-12-01 22:33:09', '2022-12-01 22:33:09'),
(6, 'App\\Models\\User', 6, 'MyAuthApp', 'c45b84f68216786d838897dd1deb2cd5ebe88dc22eb3bf61e4db28d5002d72e0', '[\"*\"]', NULL, NULL, '2022-12-01 22:33:55', '2022-12-01 22:33:55'),
(7, 'App\\Models\\User', 5, 'MyAuthApp', '4f867714edea12ff3e685c8f14de46bbef058741488e898aa5076a219269f117', '[\"*\"]', NULL, NULL, '2022-12-02 01:31:48', '2022-12-02 01:31:48'),
(8, 'App\\Models\\User', 5, 'MyAuthApp', '8ec8e19de6039b5ee877a7d9cb58f3f50e758a09937769156cceb9274fd2a9f2', '[\"*\"]', NULL, NULL, '2022-12-02 01:36:14', '2022-12-02 01:36:14'),
(9, 'App\\Models\\User', 5, 'MyAuthApp', '27c63e3d9efdd5f938b9c8b0620498438b4991d0807d79d44ddc2ada84372004', '[\"*\"]', NULL, NULL, '2022-12-02 01:38:01', '2022-12-02 01:38:01'),
(10, 'App\\Models\\User', 5, 'MyAuthApp', '6811412b67cafc6835e391fc37dba3fc2beffd491b67f921f3589274e2b74104', '[\"*\"]', NULL, NULL, '2022-12-02 01:46:22', '2022-12-02 01:46:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yess', 'yes@gmail.com', NULL, '$2y$10$WfNH/bddphmoUTiGb8bUq.paoITBn1Li3zeBlrIGII74nBMD/loh.', NULL, '2022-12-01 21:42:25', '2022-12-01 21:42:25'),
(3, 'yess2', 'yes2@gmail.com', NULL, '$2y$10$JSjef7luDV9Xuoe68q5.0.eqmC/Gl3ClEVsUbXFL4A5I0WvxAsCCi', NULL, '2022-12-01 21:53:16', '2022-12-01 21:53:16'),
(5, 'yess6', 'yes6@gmail.com', NULL, '$2y$10$7TRjNGHiAuhxQuYxmVZiyOtBUSTBcZWRSBJXRwA8VwuW0U3kGf9Jm', NULL, '2022-12-01 21:56:37', '2022-12-01 21:56:37'),
(6, 'yess7', 'yes7@gmail.com', NULL, '$2y$10$VL3iQfq8wTcKtg35b6PG0u3tHu7.yfjRsvIg1KBfNtOQ5tjIg.l96', NULL, '2022-12-01 22:33:09', '2022-12-01 22:33:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
