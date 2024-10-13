-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2024 at 04:39 AM
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
-- Database: `prakweb_2024_c_223040008`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` int DEFAULT NULL,
  `sinopsis` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `sinopsis`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Bloomsbury', 1997, 'Harry Potter and the Philosopher\'s Stone adalah novel fantasi yang menceritakan tentang petualangan seorang anak yatim piatu bernama Harry Potter yang menemukan bahwa dirinya adalah seorang penyihir dan pergi ke sekolah sihir Hogwarts.'),
(2, 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', 1954, 'The Lord of the Rings adalah kisah epik tentang perjuangan melawan kejahatan yang dipimpin oleh Sauron, penguasa kegelapan. Sekelompok pahlawan melakukan perjalanan panjang untuk menghancurkan cincin yang memiliki kekuatan besar.'),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960, 'To Kill a Mockingbird adalah novel yang mengisahkan tentang ketidakadilan rasial di Amerika Serikat bagian selatan melalui mata seorang anak kecil bernama Scout Finch.'),
(4, '1984', 'George Orwell', 'Secker & Warburg', 1949, '1984 adalah novel distopia yang menggambarkan kehidupan di bawah rezim totaliter yang mengendalikan setiap aspek kehidupan masyarakat dan memanipulasi kebenaran.'),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', 1925, 'The Great Gatsby mengisahkan tentang kehidupan Jay Gatsby, seorang pria kaya misterius yang menyimpan cinta tak berbalas kepada Daisy Buchanan, di latar belakang era Jazz di Amerika.'),
(6, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', 1813, 'Pride and Prejudice adalah novel klasik tentang cinta dan kehidupan sosial di Inggris pada awal abad ke-19, berfokus pada Elizabeth Bennet dan Mr. Darcy.'),
(7, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', 1851, 'Moby-Dick adalah kisah epik tentang pencarian seorang kapten kapal bernama Ahab untuk membalas dendam terhadap paus putih legendaris yang disebut Moby Dick.'),
(8, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', 1869, 'War and Peace adalah novel epik yang menceritakan kehidupan masyarakat Rusia selama invasi Napoleon di awal abad ke-19.'),
(9, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, 'The Catcher in the Rye menceritakan tentang seorang remaja bernama Holden Caulfield dan pencariannya akan makna hidup di tengah perasaan terasing.'),
(10, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 1937, 'The Hobbit adalah kisah petualangan Bilbo Baggins, seorang hobbit yang terlibat dalam pencarian untuk merebut kembali harta karun yang dijaga oleh naga Smaug.'),
(11, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 2005, 'Laskar Pelangi adalah kisah inspiratif tentang perjuangan sepuluh anak miskin dari Belitung yang memiliki semangat tinggi untuk belajar dan meraih mimpi mereka.'),
(12, 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1980, 'Bumi Manusia adalah novel yang menggambarkan kehidupan pribumi di masa kolonial Belanda, berpusat pada kisah Minke dan cinta pertamanya, Annelies.'),
(13, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', 2009, 'Negeri 5 Menara adalah kisah tentang perjalanan hidup Alif Fikri dan lima temannya di sebuah pesantren, di mana mereka belajar tentang persahabatan, cinta, dan impian.'),
(14, 'Supernova', 'Dewi Lestari', 'Truedee Books', 2001, 'Supernova adalah novel karya Dewi Lestari yang menggabungkan kisah cinta, filsafat, dan sains dalam cerita yang kompleks dan menarik.'),
(15, 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika', 2004, 'Ayat-Ayat Cinta adalah cerita tentang seorang mahasiswa Indonesia yang belajar di Mesir dan mengalami dilema cinta serta pergulatan spiritual.'),
(16, 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', 2009, 'Perahu Kertas adalah novel tentang kisah cinta dua remaja, Keenan dan Kugy, yang berjuang untuk menemukan jati diri mereka dan meraih mimpi.'),
(17, 'Tetralogi Buru: Anak Semua Bangsa', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1980, 'Tetralogi Buru: Anak Semua Bangsa adalah bagian dari seri Tetralogi Buru karya Pramoedya Ananta Toer, yang menggambarkan perjuangan kaum pribumi melawan kolonialisme.'),
(18, 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka Utama', 2002, 'Cantik Itu Luka adalah novel yang menggabungkan unsur-unsur realisme magis untuk menggambarkan sejarah Indonesia dan kehidupan seorang pelacur bernama Dewi Ayu.'),
(19, 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', 2006, 'Sang Pemimpi adalah cerita tentang dua sahabat, Ikal dan Arai, yang bermimpi untuk menjelajahi dunia dan berjuang untuk meraih pendidikan yang lebih baik.'),
(20, 'Pulau Buru: Rumah Kaca', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1988, 'Pulau Buru: Rumah Kaca adalah bagian terakhir dari Tetralogi Buru, yang menceritakan tentang pengawasan ketat terhadap para aktivis oleh pemerintahan kolonial.'),
(21, 'Dilan: Dia adalah Dilanku Tahun 1990', 'Pidi Baiq', 'Pastel Books', 2014, 'Dilan: Dia adalah Dilanku Tahun 1990 adalah novel romantis yang menceritakan tentang kisah cinta antara Dilan, seorang siswa SMA yang terkenal dengan kenakalannya, dan Milea, seorang gadis pindahan yang menjadi pujaan hati Dilan. Kisah ini berlatar belakang di kota Bandung pada tahun 1990.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
