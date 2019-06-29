-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Mei 2019 pada 18.42
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbelajar`
--

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

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `provinsi`, `keterangan`) VALUES
(1, 'Surabaya', 'Jawa Timur', 'Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. '),
(2, 'Malang', 'Jawa Timur', 'Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. '),
(3, 'Semarang', 'Jawa Tengah', 'Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. '),
(4, 'Solo', 'Jawa Tengah', 'Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. '),
(5, 'Bandung', 'Jawa Barat', 'Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. '),
(6, 'Tasikmalaya', 'Jawa Barat', 'Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. Lorem Ipsum Dolor Sit Amet. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `asal_sekolah` varchar(45) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `tglahir` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `level` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_lengkap`, `jk`, `alamat`, `username`, `password`, `asal_sekolah`, `hp`, `tglahir`, `agama`, `email`, `level`) VALUES
(5, 'Sofyan Setiawan', 'L', 'Ponorogo', 'sofyan', 'a43ea2f3c29ef3423c48d633d1a1909d', '', '', '', '', '', 'admin'),
(6, 'Junior Dev', 'L', 'Malang', 'juniordev', '43bef2990a29b2f502bdad68c9cedbb2', '', '', '', '', '', 'admin'),
(7, 'Ahmad Dani', 'L', 'Jakarta', 'dewa', '3b31aae2787818ba209950b2edb35e01', '', '', '', '', '', 'user'),
(43, 'adytya', 'laki', 'sumberejo', 'adytya', '64a59464ef894c66aa10b6a2854e47d2', 'upgris', '082322738645', '05-06-1998', 'Islam', 'adytyanbg321@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `msg` text NOT NULL,
  `name` text NOT NULL,
  `posted` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`msg`, `name`, `posted`) VALUES
('yaaa', 'alim', '2016-01-25 14:17:5'),
('ass', 'aku', '2019-05-16 01:24:06'),
('apa bro ?', 'fahri', '2019-05-16 01:25:24'),
('kamu dimana fah ?', 'aku', '2019-05-16 01:25:40'),
('tolong kasih tau yaa', 'fahri', '2019-05-16 01:25:57'),
('kasih tau apa ?', 'aku', '2019-05-16 01:26:06'),
('udahlah anut aja', 'fahri', '2019-05-16 01:26:17'),
('oke broo', 'aku', '2019-05-16 01:26:26'),
('rg', 'aku', '2019-05-16 01:59:07'),
('hay', 'aku', '2019-05-16 02:12:11'),
('hallow', 'sofyan', '2019-05-16 11:15:10'),
('udahlah anut aja', 'sofyan', '2019-05-16 11:16:19'),
('https://youtu.be/8EKHdkQ5aa8', 'sofyan', '2019-05-16 11:18:55'),
('hay', 'dewa', '2019-05-16 14:23:39'),
('d', 'dewa', '2019-05-16 14:23:42'),
('jkaksksak', 'dewa', '2019-05-16 14:24:31'),
('siapa aku ?', 'sofyan', '2019-05-19 20:01:51'),
('masa ?', 'aku', '2019-05-19 20:04:28'),
('oke besuk lagi', 'aku', '2019-05-19 20:04:37'),
('okey', 'adytya', '2019-05-19 21:32:27'),
('night', 'adytya', '2019-05-19 21:32:30');

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
(29, 5, 7, '2017-02-03', 'halo bro', 'lama gak ada kabar?', 'sudah'),
(30, 7, 5, '2017-02-03', 'Re: alhamdulillah', 'kabar baik, sampeyan?', 'sudah'),
(31, 5, 7, '2017-02-03', 'Re: kosku pindah gan', 'sebelah alfamart', 'sudah'),
(32, 7, 5, '2017-02-03', 'Re: alfamart dinoyo?', 'itu ta>', 'sudah'),
(33, 5, 7, '2017-02-03', 'Re: bener', 'mampir o', 'sudah'),
(34, 7, 5, '2017-02-03', 'Re: oke', 'next time', 'sudah'),
(35, 7, 6, '2017-02-03', 'piye sidane', 'aku sek mangan', 'sudah'),
(36, 6, 7, '2017-02-03', 'Re: ngenteni sopo?', 'ngenteni udan', 'sudah'),
(37, 7, 6, '2017-02-03', 'Re: okelah sek', 'enteni gan', 'sudah'),
(38, 7, 5, '2019-05-13', 'as', 'opo\r\n', 'sudah'),
(39, 5, 7, '2019-05-13', 'a', 'iyaa ?', 'sudah'),
(40, 5, 7, '2019-05-13', 'Re: hmhm', 'fhg', 'sudah'),
(41, 6, 5, '2019-05-13', 'b', 'apa bro?', 'sudah'),
(42, 5, 7, '2019-05-14', 'Re: sdsd', 'dvvd', 'sudah'),
(43, 5, 7, '2019-05-15', 'Re: hmhm', 'a', 'sudah'),
(44, 5, 7, '2019-05-15', 'Re: assas', 'daaaaaaaaaaaaaaa', 'sudah'),
(45, 5, 7, '2019-05-15', 'Re: ppppp', 'ppppp', 'sudah'),
(46, 5, 6, '0000-00-00', 'Re: abcd', 'efgh', 'belum'),
(47, 5, 6, '2019-05-15', 'Re: coba', 'coba', 'belum'),
(48, 5, 6, '0000-00-00', 'Re: df', 'df', 'belum'),
(49, 5, 6, '2019-05-15', 'Re: acsasc', 'ascasc', 'belum'),
(50, 5, 7, '0000-00-00', 'Re: 123', '123', 'sudah'),
(51, 5, 7, '0000-00-00', 'Re: aaa', 'aaa', 'sudah'),
(52, 5, 7, '2019-05-15', 'abcasdddd', 'ssssssssddddddddddaaaaaaaa', 'sudah'),
(53, 7, 5, '2019-05-15', 'Re: ss', 'ada apa ya??\r\nsemoga saya tau andan uuaa\r\nkalau gitu\r\nmasaya oams\r\naskkasa', 'sudah'),
(54, 5, 7, '2019-05-15', 'Re: yaya', 'pokoknya aku ituuuuuuuuuuuuuuuuuuuuuuuuusjjjjj jjjjjjjjjjjjjjjjjjjjjjj assssssssssssssss kkkkkkkkkkkkkkkk aaaaaaaaaaaaaaaaaa', 'sudah'),
(55, 5, 7, '2019-05-15', 'Re: yaya', 'pokoknya aku ituuuuuuuuuuuuuuuuuuuuuuuuusjjjjj jjjjjjjjjjjjjjjjjjjjjjj assssssssssssssss kkkkkkkkkkkkkkkk aaaaaaaaaaaaaaaaaallllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'sudah'),
(56, 5, 7, '2019-05-15', 'Re: abcdefg', 'abcdefg', 'sudah'),
(57, 5, 7, '2019-05-15', 'bc', 'abc', 'sudah'),
(58, 7, 5, '2019-05-15', 'alhamdulillah', 'iso brooo alhamdulillah', 'sudah'),
(59, 5, 7, '2019-05-15', 'Re: alhamdulillah broo', 'iya alhamdulillah', 'sudah'),
(60, 7, 5, '2019-05-16', 'Re: abcd', 'abcde', 'sudah'),
(61, 17, 5, '2019-05-19', 'hey', 'apa kabar ?', 'sudah'),
(62, 5, 17, '2019-05-19', 'Re: iya', 'gimana ya ngomongnya\r\n', 'sudah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
