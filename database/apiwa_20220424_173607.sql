-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2022 pada 11.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_whatszab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_groups`
--

CREATE TABLE `tbl_groups` (
  `id` int(11) NOT NULL,
  `id_group` text NOT NULL,
  `nama_group` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_groups`
--

INSERT INTO `tbl_groups` (`id`, `id_group`, `nama_group`, `created_at`, `updated_at`) VALUES
(1, '6282165561175-1598343953@g.us', 'Cloud Games', '2021-06-03 16:00:00', '2021-06-03 16:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `sender` varchar(255) NOT NULL,
  `status` longtext NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`, `role`) VALUES
(17, 'wifikampoeng', 'wifikampoeng@gmail.com', '$2a$12$y05oLjqeXgP6hRI25dr1g.yf5T0ZBtnSaax4Dl4856jaeZSVRfkmS', '2022-07-16 20:20:04', NULL, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wa`
--

CREATE TABLE `tbl_wa` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `file` text NOT NULL,
  `idwa` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_wa`
--

INSERT INTO `tbl_wa` (`id`, `userid`, `description`, `file`, `idwa`) VALUES
(107, 'wifikampoeng@gmail.com', '', 'whatsapp-session-082187955553.json', '082187955553'),
(108, 'wifikampoeng@gmail.com', 'admin wifikampoeng.my.id', 'whatsapp-session-6282187955553.json', '6282187955553');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_groups`
--
ALTER TABLE `tbl_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD UNIQUE KEY `unique_id` (`id`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD UNIQUE KEY `unique_id` (`id`);

--
-- Indeks untuk tabel `tbl_wa`
--
ALTER TABLE `tbl_wa`
  ADD UNIQUE KEY `unique_id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_groups`
--
ALTER TABLE `tbl_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_wa`
--
ALTER TABLE `tbl_wa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
