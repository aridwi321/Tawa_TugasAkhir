-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2019 pada 07.55
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tawa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lapak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `id_lapak` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_cus` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gambar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_lapak`, `nama_barang`, `harga_barang`, `id_lapak`, `id_transaksi`, `id_cus`, `created_at`, `updated_at`, `gambar`) VALUES
(1, 'Ladarius Ankunding', 'rr', 200000, 0, 0, 3, '2018-12-12 07:10:56', '2018-12-12 07:10:56', '1544623856.jpg'),
(2, 'Ladarius Ankunding', 'Baju Adat Kalimantan', 20000, 0, 0, 3, '2018-12-12 07:22:46', '2018-12-12 07:22:46', '1544624566.jpg'),
(3, 'Ladarius Ankunding', 'Jawa Tengah', 20000, 0, 0, 3, '2018-12-12 07:24:30', '2018-12-12 07:24:30', '1544624670.jpg'),
(4, 'Ben Koepp', 'Mahodenk', 2000000, 0, 0, 6, '2018-12-12 10:04:43', '2018-12-12 10:04:43', '1544634283.jpg'),
(5, 'Ladarius Ankunding', 'Baju adat sumsel', 50000, 0, 0, 3, '2018-12-12 20:38:52', '2018-12-12 20:38:52', '1544672332.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapak`
--

CREATE TABLE `lapak` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `jenisLapak` int(11) NOT NULL,
  `nama_lapak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lapak`
--

INSERT INTO `lapak` (`id`, `user_id`, `jenisLapak`, `nama_lapak`, `alamat`, `id_barang`, `file`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Dr. Raven Mills V', '80239 Ramona Common Apt. 955\nBednarstad, AK 88140', 1, 'default.jpg', NULL, NULL),
(2, 4, 0, 'kow', 'kobar', 2, '1544672265.jpg', NULL, '2018-12-12 20:37:45'),
(3, 0, 0, 'Ladarius Ankunding', '72473 Torey Squares Suite 907\nSchummton, ND 52211-1458', 3, 'default.jpg', NULL, NULL),
(4, 0, 0, 'Mr. Odell O\'Conner DVM', '29123 Aron Plaza\nRhettborough, RI 75631-1692', 4, 'default.jpg', NULL, NULL),
(5, 0, 0, 'Tia Pollich', '51838 Melyna Route\nGreenholtport, NY 79189', 5, 'default.jpg', NULL, NULL),
(6, 0, 0, 'Ben Koepp', '33106 Stokes Cape Suite 233\nSouth Cristian, NC 94020', 6, 'default.jpg', NULL, NULL),
(7, 0, 0, 'Berry Reichel', '7263 Bode Walks\nNorth Johannfurt, ND 58929', 7, 'default.jpg', NULL, NULL),
(8, 0, 0, 'Prof. Kobe O\'Hara V', '237 Koelpin Garden\nLake Dakotahaven, MD 14160', 8, 'default.jpg', NULL, NULL),
(9, 0, 0, 'Susan Morissette', '43522 Yvonne Mountains Apt. 707\nNorth Orlo, AZ 48916', 9, 'default.jpg', NULL, NULL),
(10, 0, 0, 'Lambert Fadel', '7165 Rice Meadow\nLefflerborough, NM 86021', 10, 'default.jpg', NULL, NULL),
(11, 3, 0, 'bu Heny', 'Kotawaringin Barat', 11, '1544632762.jpg', NULL, '2018-12-12 09:39:22'),
(12, 3, 0, 'Larissa Sawayn', '9144 Ova Mill Apt. 479\nEusebioton, IN 75114', 12, 'default.jpg', NULL, NULL),
(13, 0, 0, 'Fabian Stark', '3458 Tressa Fort\nOnaport, HI 51271-8815', 13, 'default.jpg', NULL, NULL),
(14, 0, 0, 'Dr. Carlie Mante I', '481 Klein Avenue\nEast Maryamland, WV 63654-1161', 14, 'default.jpg', NULL, NULL),
(15, 0, 0, 'Prof. Moises Schulist Sr.', '24712 Littel Walk\nOpalchester, CA 22884', 15, 'default.jpg', NULL, NULL),
(16, 0, 0, 'Verlie Zemlak', '75998 Tabitha Grove Apt. 746\nSpencerton, OH 07279-7460', 16, 'default.jpg', NULL, NULL),
(17, 0, 0, 'Delta Mosciski', '7832 Beahan Springs Suite 915\nBoyerton, DC 80262', 17, 'default.jpg', NULL, NULL),
(18, 0, 0, 'Prof. Davon Skiles', '2733 Gibson Oval\nNew Elmore, VA 36370-4519', 18, 'default.jpg', NULL, NULL),
(19, 0, 0, 'Fae Beahan', '65568 King Glens\nRobertastad, KS 90150-8602', 19, 'default.jpg', NULL, NULL),
(20, 0, 0, 'Greta McDermott', '6556 Carmel Station Suite 455\nNew Taureantown, VT 98825', 20, 'default.jpg', NULL, NULL),
(23, 6, 1, 'Mahodenk', 'kotawringin barat', 0, 'default.jpg', '2018-12-12 09:59:36', '2018-12-12 09:59:36'),
(25, 6, 1, 'Rizky k', 'weewe', 0, 'default.jpg', '2018-12-12 10:01:24', '2018-12-12 10:01:24'),
(26, 6, 1, 'Mahodenk', 'gggggg', 0, 'default.jpg', '2018-12-12 10:07:46', '2018-12-12 10:07:46'),
(27, 7, 2, 'Bu astonugraha', 'pangklan bun', 0, 'default.jpg', '2018-12-12 20:42:41', '2018-12-12 20:42:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_11_09_083610_create_lapak', 1),
(2, '2018_11_09_233635_createbarang', 1),
(3, '2018_11_16_032534_create_model_pemesanans_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rizkygin@gmail.com', '$2y$10$L9xChDWpIlwr.zQfKd.hXeo62wOovEQ1ieZjo.XdJsXdcw7jVhVBG', '2018-12-12 19:05:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(10) UNSIGNED NOT NULL,
  `lapak_id` int(11) NOT NULL,
  `jenispemesanan` enum('tatarias','sewa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `noHP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `lapak_id`, `jenispemesanan`, `tanggal`, `noHP`, `alamat`, `id_cus`, `created_at`, `updated_at`) VALUES
(1, 0, 'tatarias', '2018-12-13', '123456', 'asdsa', 4, '2018-12-12 17:09:46', '2018-12-12 17:09:46'),
(2, 0, 'tatarias', '2018-12-13', '123456', 'asdsa', 4, '2018-12-12 17:11:40', '2018-12-12 17:11:40'),
(3, 0, 'tatarias', '2018-12-13', '123456', 'asdsad', 4, '2018-12-12 17:12:34', '2018-12-12 17:12:34'),
(4, 0, 'tatarias', '2018-12-13', '123456', 'asdsad', 4, '2018-12-12 17:13:00', '2018-12-12 17:13:00'),
(5, 11, 'tatarias', '2018-12-13', '123456', 'asdasda', 4, '2018-12-12 17:50:05', '2018-12-12 17:50:05'),
(6, 0, 'tatarias', '2018-12-13', '123456', 'wdad3', 4, '2018-12-12 18:02:43', '2018-12-12 18:02:43'),
(7, 0, 'tatarias', '2018-12-13', '123456', 'wdad3', 4, '2018-12-12 18:03:57', '2018-12-12 18:03:57'),
(8, 0, 'sewa', '2018-12-13', '123456', 'washington', 4, '2018-12-12 18:10:10', '2018-12-12 18:10:10'),
(9, 0, 'sewa', '2018-12-13', '123456', 'washington', 4, '2018-12-12 18:10:38', '2018-12-12 18:10:38'),
(10, 11, 'tatarias', '2018-12-13', '123456', 'jombor', 4, '2018-12-12 18:12:28', '2018-12-12 18:12:28'),
(11, 4, 'tatarias', '2018-12-13', '123456', 'asdwasd', 4, '2018-12-12 18:13:19', '2018-12-12 18:13:19'),
(12, 4, 'tatarias', '2018-12-13', '123456', 'koko', 4, '2018-12-12 18:14:58', '2018-12-12 18:14:58'),
(13, 3, 'tatarias', '2018-12-13', '082262485557', 'asdwad', 3, '2018-12-12 19:17:56', '2018-12-12 19:17:56'),
(14, 0, 'sewa', '2018-12-15', '123456', 'selokan mataram', 4, '2018-12-12 20:36:42', '2018-12-12 20:36:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `noHP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lapak_id` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `noHP`, `lapak_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 1, 'rizky', 'rizkygin@gmail.com', '1544088697.jpg', '082262485557', 1, NULL, '$2y$10$6FTgCqs7HcSlg74zllV/3ebs.rVPs2QZORIlhtadCYjRmT8d8S0/2', 'm6bR9Kw9YJ4CVdOIgCMOHaUeAnna7M6lb68btpmVI21v8QDlphkoTIpN0qOE', '2018-12-06 00:58:50', '2018-12-06 02:31:37'),
(4, 0, 'afi', 'mesae@gmail.com', 'default.jpg', '123456', 0, NULL, '$2y$10$uAgRUU7EKO1ZuSPHNzehUO44vrgnLqS4MBiyZbIveaBCfhabJV.n.', 'P68TSNHHCVz4UIoH8DecT3BAEZQIwwqq1hs8ALFR1cML1g5xCW5hVXunBM6H', '2018-12-06 16:43:29', '2018-12-12 20:36:42'),
(5, 0, 'test', 'test@example.com', 'default.jpg', '12354', 0, NULL, '$2y$10$YHV2gsZlIR2RiKAh3r8v5e/qRT7cxxtaJnvs4GEAl6dIvIIa0QuYC', '57SO2HSTcDN9btefnkOwKF4nC3QEAyTugXH9VV0z2FYWzUlydtfCzxLp7Z7w', '2018-12-06 16:44:32', '2018-12-06 16:44:32'),
(6, 1, 'Touka-chan', 'kaneki@example.com', 'default.jpg', '215', 0, NULL, '$2y$10$ZZcMjLWXSJbKjc2xR3QjceyAbSta1luE/S5QteVZwXdHlfLlg1ooq', 'R0ReEQJ8Q2zEHHjTH5Qn8Ymy5xecsfWoygCfz6XJ5EcD5KtPDgxdbaLXVNTX', '2018-12-11 07:10:47', '2018-12-12 10:07:46'),
(7, 1, 'kanek', 'jiah@example.com', 'default.jpg', '02855644', 0, NULL, '$2y$10$hIWDDzwf3KmEPZg2xXW/5uA/2s3g7cDhX2/atAPDOg7aBIHE5PDli', 'wZLRYJO02HqAv62fBe8aKBI7dc4p00uH7JygGLygfBIXMevvC56kf3lK4hHu', '2018-12-12 20:41:56', '2018-12-12 20:42:41'),
(8, 0, 'iyin', 'aku@example.com', 'default.jpg', '025888', 0, NULL, '$2y$10$sRSCtmktbWMQtmUXzfQkoeRnNHq4IFtyTVEwMHMKfrGg7WMdO/gM2', 'uFA8nDgiKifEV4EudOzuuiLjoXdZ6LZFw3yvSWn85ZnZJEcP6pjoTrWxB66Y', '2018-12-12 20:47:07', '2018-12-12 20:47:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lapak`
--
ALTER TABLE `lapak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `lapak`
--
ALTER TABLE `lapak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
