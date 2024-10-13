-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2024 at 03:07 AM
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
  `tahun_terbit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Bloomsbury', 1997),
(2, 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', 1954),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960),
(4, '1984', 'George Orwell', 'Secker & Warburg', 1949),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', 1925),
(6, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', 1813),
(7, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', 1851),
(8, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', 1869),
(9, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951),
(10, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 1937),
(11, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 2005),
(12, 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1980),
(13, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', 2009),
(14, 'Supernova', 'Dewi Lestari', 'Truedee Books', 2001),
(15, 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika', 2004),
(16, 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', 2009),
(17, 'Tetralogi Buru: Anak Semua Bangsa', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1980),
(18, 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka Utama', 2002),
(19, 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', 2006),
(20, 'Pulau Buru: Rumah Kaca', 'Pramoedya Ananta Toer', 'Hasta Mitra', 1988);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
