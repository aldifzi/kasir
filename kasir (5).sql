-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 04, 2024 at 11:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ProdukID` int NOT NULL,
  `Namabarang` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `KategoriID` int NOT NULL,
  `Stok` int NOT NULL,
  `Harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ProdukID`, `Namabarang`, `KategoriID`, `Stok`, `Harga`) VALUES
(2, 'Teh', 2, 8771, '1222.00'),
(2007, 'kopi', 2, 1090, '9.00');

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int NOT NULL,
  `ProdukID` int DEFAULT NULL,
  `PelangganID` int NOT NULL,
  `PenjualanID` int NOT NULL,
  `Nota` int NOT NULL,
  `JumlahProduk` int DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `detailpenjualan`
--
DELIMITER $$
CREATE TRIGGER `hitung subtotal` BEFORE INSERT ON `detailpenjualan` FOR EACH ROW BEGIN
    -- Mendapatkan harga produk dari tabel produk
    DECLARE produk_harga DECIMAL(10, 2);
    SELECT harga INTO produk_harga FROM produk WHERE ProdukID = NEW.ProdukID;

    -- Menghitung subtotal berdasarkan harga produk dan jumlah produk
    SET NEW.Subtotal = produk_harga * NEW.JumlahProduk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `total_harga` AFTER INSERT ON `detailpenjualan` FOR EACH ROW BEGIN
    DECLARE total DECIMAL(10,2);
    
    -- Menghitung total harga baru berdasarkan nota yang sama
    SELECT SUM(Subtotal) INTO total
    FROM detailpenjualan
    WHERE Nota = NEW.Nota;
    
    -- Update total harga di tabel penjualan
    UPDATE penjualan
    SET TotalHarga = total
    WHERE Nota = NEW.Nota;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update stok` AFTER INSERT ON `detailpenjualan` FOR EACH ROW BEGIN
    DECLARE jumlah_penjualan INT;
   
    SELECT JumlahProduk INTO jumlah_penjualan FROM detailpenjualan WHERE DetailID = NEW.DetailID;

    UPDATE produk
    SET stok = stok - jumlah_penjualan
    WHERE ProdukID = NEW.ProdukID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update subtotal` BEFORE UPDATE ON `detailpenjualan` FOR EACH ROW BEGIN
    DECLARE harga_produk DECIMAL(10,2);
    
    -- Mengambil harga produk dari tabel produk
    SELECT harga INTO harga_produk
    FROM produk
    WHERE ProdukID = NEW.ProdukID;

    -- Menghitung subtotal
    SET NEW.Subtotal = harga_produk * NEW.JumlahProduk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `KategoriID` int NOT NULL,
  `Namakategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`KategoriID`, `Namakategori`) VALUES
(2, 'minuman'),
(3, 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `Alamat`, `NomorTelepon`) VALUES
(1, 'q', 'p', '091311121123'),
(2, 'al', 'bantul', '089392929281');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int NOT NULL,
  `PelangganID` int NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) DEFAULT NULL,
  `Bayar` decimal(10,2) DEFAULT NULL,
  `Kembali` decimal(10,2) DEFAULT NULL,
  `Nota` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `kembalian` BEFORE UPDATE ON `penjualan` FOR EACH ROW BEGIN
    DECLARE kembalian DECIMAL(10,2);
    
    -- Hitung kembalian
    SET kembalian = NEW.Bayar - NEW.TotalHarga;

    -- Pastikan kembalian tidak negatif
    IF kembalian < 0 THEN
        SET kembalian = 0;
    END IF;

    -- Update nilai kembalian
    SET NEW.kembali = kembalian;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ProdukID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `ProdukID` (`ProdukID`) USING BTREE,
  ADD KEY `PelangganID` (`PelangganID`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `ProdukID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2008;

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `DetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `KategoriID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`KategoriID`) REFERENCES `kategori` (`KategoriID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD CONSTRAINT `detailpenjualan_ibfk_2` FOREIGN KEY (`ProdukID`) REFERENCES `barang` (`ProdukID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `detailpenjualan_ibfk_3` FOREIGN KEY (`PelangganID`) REFERENCES `pelanggan` (`PelangganID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
