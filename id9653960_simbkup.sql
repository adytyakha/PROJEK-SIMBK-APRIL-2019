-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Jun 2019 pada 06.15
-- Versi server: 10.3.14-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id9653960_simbkup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatters`
--

CREATE TABLE `chatters` (
  `name` text NOT NULL,
  `seen` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chatters`
--

INSERT INTO `chatters` (`name`, `seen`) VALUES
('annisanvtt', '2019-06-17 04:18:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konselor`
--

CREATE TABLE `konselor` (
  `id` int(11) NOT NULL,
  `namalengkap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `aspirasi` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(8) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamatweb` text COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(90) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `judul`, `alamatweb`, `keterangan`) VALUES
(5, 'Menumbuhkan Motivasi Belajar', 'https://drive.google.com/open?id=1lCGTX5noLlWI6czMy8XKp1GgmBdOUCh7', 'Pahami benar materinya dan semoga dapat diaplikasikan dalam kehidupan sehari-hari'),
(6, 'Mencegah Perilaku Boros', 'https://drive.google.com/open?id=1Na0h_CxLNW_AmWjAMQSuWwVsEvKhleNS', 'Pahami benar materinya dan semoga dapat diaplikasikan dalam kehidupan sehari-hari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `asal_sekolah` varchar(45) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `tglahir` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `level` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_lengkap`, `jk`, `alamat`, `username`, `password`, `asal_sekolah`, `hp`, `tglahir`, `agama`, `email`, `level`) VALUES
(56, 'Alif Patriya', 'Perempuan', 'Jl. Brotojoyo No 2 ', 'Alif', '05fdbf0af07caff951157d01b58a54a9', 'UPGRIS', '089630815856', '12/07/1997', 'Islam', 'patriyaalif@gmail.com', 'admin'),
(57, 'Siti nurul hidayah', 'Perempuan', 'Rembang', 'Nurul', '57b59499fb08f8313f332cf724637b4d', 'Smk N 1 rembang', '089668886480', '09/10/1998', 'Islam', 'nuruellzy@gmail.com', 'admin'),
(58, 'Chofalina Ayuningtiyas', 'Perempuan', 'Pemalang', '16110045', 'c687df3c290a830ba67f25f8aef66e54', 'Universitas PGRI Semarang', '083861919094', '04/08/1998', 'Islam', 'chofalina.a@gmail.com', 'admin'),
(60, 'alip', 'Perempuan', 'semarang', 'jelembung', 'e0f573258fdadd5aa8dad2fd346cfb73', 'smk 1 semarang', '089685429872', '13/08/1997', 'Islam', 'nurul.alimah13@gmail.com', 'user'),
(61, 'Fitriana ', 'Perempuan', 'Juwana', '16110054 ', 'e10adc3949ba59abbe56e057f20f883e', 'Upgris', '085288801153 ', '19-02-1998', 'Islam', 'firdafitri52@gmail.com ', 'user'),
(62, 'ANNISA  NOVETA HERDIANA', 'Perempuan', 'villa mutiara pluit blok f6 no 29', 'annisanvtt', '658e8296a70616ee1853eedbb7f50c44', 'SMA N 4 KOTA TANGERANG', '088803933401', '29/11/1998', 'Islam', 'annisanoveta29.an@gmail.com', 'user'),
(63, 'Viraaa aliyyyu', 'Perempuan', 'Jl. Cinde raya barat no.12', 'Shvral', '6e281a3809b9d6fc33454b7af4ceee0f', 'SMA ISLAM 1', '082133189523', '07/06/2019', 'Islam', 'Shaviraalliyyu@gmail.com', 'user'),
(64, 'Muhammad Anang Saputro', 'Laki-laki', 'Desa sendangdawuhan', 'Anangsaputro', 'f37d2ca14b8f9fa2a672645498155be7', 'UPGRIS', '081348379573', '18/12/1997', 'Islam', 'Muhammadanangsaputro@gmail.com', 'user'),
(65, 'Danu aji atmoko', 'Laki-laki', 'pakintelan 1 rt 2 rw 3 gunungpati kota semarang', 'danu', 'fcea920f7412b5da7be0cf42b8c93759', 'Smk N 11 Semarang', '6282264350606', '11/11/1996', 'Islam', 'Danuaji367@gmail.com', 'user'),
(66, 'Maulana Ichsan Kurniawan', 'Laki-laki', 'Jl. Durian 3', '16110051', '46ff61fbc4e94cd9b16b983f8685796a', 'SMA negeri 2 Berau', '081348279572', '15/11/997', 'Islam', 'Ikhsankurniawaan@gmail.com', 'user'),
(67, 'M.purwo widodo', 'Laki-laki', 'Desa kendaldoyong', 'Purwoseno1602', 'ed3ce46dd952a5bcbd2c8ef5728f0d6d', 'Smk N 1 petarukan', '085225631798', '16/02/1999', 'Islam', '087764929784', 'user'),
(68, 'M.purwo widodo', 'Laki-laki', 'Desa kendaldoyong', 'Purwo1602', '496959b7232c3222778972416b0c0fb0', 'Smk N 1 petarukan', '085225631798', '16/02/1999', 'Islam', '087764929784', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `posted` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`name`, `msg`, `posted`) VALUES
('adytya', 'Selamat Menggunakan Aplikasi Ini', '2019-06-14 09:06:28'),
('annisanvtt', 'haii', '2019-06-17 04:17:25'),
('annisanvtt', 'assalamualaikum', '2019-06-17 04:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(10) NOT NULL,
  `id_pengirim` int(10) NOT NULL,
  `id_penerima` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `subyek_pesan` varchar(255) NOT NULL,
  `isi_pesan` longtext NOT NULL,
  `sudah_dibaca` enum('belum','sudah') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_pengirim`, `id_penerima`, `tanggal`, `subyek_pesan`, `isi_pesan`, `sudah_dibaca`) VALUES
(81, 59, 56, '2019-06-16', 'try', 'Bisa bertemu jam berapa?', 'sudah'),
(82, 60, 58, '2019-06-17', 'perkenalan', 'hay bu cho', 'sudah'),
(83, 62, 57, '2019-06-17', 'konseling', 'assalamualaikum buk. boleh saya vcerita cerita bu?', 'belum'),
(84, 64, 56, '2019-06-17', 'Try', 'Kkkkkl', 'belum'),
(85, 64, 56, '2019-06-17', 'Nnn', 'Nnnn', 'belum');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konselor`
--
ALTER TABLE `konselor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `konselor`
--
ALTER TABLE `konselor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
