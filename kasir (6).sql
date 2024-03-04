-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 04, 2024 at 03:34 PM
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
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1709553382);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1709553320, 1709553320),
('/admin/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/admin/default/*', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/default/index', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/menu/*', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/menu/create', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/menu/index', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/menu/update', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/menu/view', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/*', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/create', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/index', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/update', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/permission/view', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/role/*', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/role/assign', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/role/create', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/role/delete', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/role/index', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/role/remove', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/role/update', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/role/view', 2, NULL, NULL, NULL, 1709553317, 1709553317),
('/admin/route/*', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/route/assign', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/route/create', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/route/index', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/route/remove', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/rule/*', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/rule/create', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/rule/index', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/rule/update', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/rule/view', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/admin/user/activate', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/delete', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/index', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/login', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/logout', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/signup', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/admin/user/view', 2, NULL, NULL, NULL, 1709553318, 1709553318),
('/barang/*', 2, NULL, NULL, NULL, 1709553582, 1709553582),
('/barang/create', 2, NULL, NULL, NULL, 1709553582, 1709553582),
('/barang/delete', 2, NULL, NULL, NULL, 1709553582, 1709553582),
('/barang/index', 2, NULL, NULL, NULL, 1709553581, 1709553581),
('/barang/update', 2, NULL, NULL, NULL, 1709553582, 1709553582),
('/barang/view', 2, NULL, NULL, NULL, 1709553582, 1709553582),
('/debug/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/default/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/default/index', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/default/view', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/user/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/detailpenjualan/*', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/detailpenjualan/create', 2, NULL, NULL, NULL, 1709564029, 1709564029),
('/detailpenjualan/delete', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/detailpenjualan/index', 2, NULL, NULL, NULL, 1709564029, 1709564029),
('/detailpenjualan/update', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/detailpenjualan/view', 2, NULL, NULL, NULL, 1709564029, 1709564029),
('/gii/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/gii/default/*', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/gii/default/action', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/gii/default/diff', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/gii/default/index', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/gii/default/preview', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/gii/default/view', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/kategori/*', 2, NULL, NULL, NULL, 1709563287, 1709563287),
('/kategori/create', 2, NULL, NULL, NULL, 1709563287, 1709563287),
('/kategori/delete', 2, NULL, NULL, NULL, 1709563287, 1709563287),
('/kategori/index', 2, NULL, NULL, NULL, 1709563287, 1709563287),
('/kategori/update', 2, NULL, NULL, NULL, 1709563287, 1709563287),
('/kategori/view', 2, NULL, NULL, NULL, 1709563287, 1709563287),
('/pelanggan/*', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/pelanggan/create', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/pelanggan/delete', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/pelanggan/index', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/pelanggan/update', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/pelanggan/view', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/penjualan/*', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/penjualan/create', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/penjualan/delete', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/penjualan/index', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/penjualan/update', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/penjualan/view', 2, NULL, NULL, NULL, 1709564030, 1709564030),
('/site/*', 2, NULL, NULL, NULL, 1709553320, 1709553320),
('/site/about', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/site/captcha', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/site/contact', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/site/error', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/site/index', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/site/login', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/site/logout', 2, NULL, NULL, NULL, 1709553319, 1709553319),
('/user/*', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/admin/*', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/block', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/create', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/delete', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/index', 2, NULL, NULL, NULL, 1709553314, 1709553314),
('/user/admin/info', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/switch', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/update', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1709553315, 1709553315),
('/user/profile/*', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/profile/index', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/profile/show', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/recovery/*', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/recovery/request', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/registration/*', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/registration/connect', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/registration/register', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/registration/resend', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/security/*', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/security/auth', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/security/login', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/security/logout', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/*', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/account', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/delete', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/networks', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('/user/settings/profile', 2, NULL, NULL, NULL, 1709553316, 1709553316),
('admin', 1, NULL, NULL, NULL, 1709553304, 1709553304);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/get-users'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/get-users'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/barang/*'),
('admin', '/barang/create'),
('admin', '/barang/delete'),
('admin', '/barang/index'),
('admin', '/barang/update'),
('admin', '/barang/view'),
('admin', '/detailpenjualan/*'),
('admin', '/detailpenjualan/create'),
('admin', '/detailpenjualan/delete'),
('admin', '/detailpenjualan/index'),
('admin', '/detailpenjualan/update'),
('admin', '/detailpenjualan/view'),
('admin', '/gii/*'),
('admin', '/gii/default/*'),
('admin', '/gii/default/action'),
('admin', '/gii/default/diff'),
('admin', '/gii/default/index'),
('admin', '/gii/default/preview'),
('admin', '/gii/default/view'),
('admin', '/kategori/*'),
('admin', '/kategori/create'),
('admin', '/kategori/delete'),
('admin', '/kategori/index'),
('admin', '/kategori/update'),
('admin', '/kategori/view'),
('admin', '/pelanggan/*'),
('admin', '/pelanggan/create'),
('admin', '/pelanggan/delete'),
('admin', '/pelanggan/index'),
('admin', '/pelanggan/update'),
('admin', '/pelanggan/view'),
('admin', '/penjualan/*'),
('admin', '/penjualan/create'),
('admin', '/penjualan/delete'),
('admin', '/penjualan/index'),
('admin', '/penjualan/update'),
('admin', '/penjualan/view'),
('admin', '/site/*'),
('admin', '/site/about'),
('admin', '/site/captcha'),
('admin', '/site/contact'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout'),
('admin', '/user/*'),
('admin', '/user/admin/*'),
('admin', '/user/admin/assignments'),
('admin', '/user/admin/block'),
('admin', '/user/admin/confirm'),
('admin', '/user/admin/create'),
('admin', '/user/admin/delete'),
('admin', '/user/admin/index'),
('admin', '/user/admin/info'),
('admin', '/user/admin/resend-password'),
('admin', '/user/admin/switch'),
('admin', '/user/admin/update'),
('admin', '/user/admin/update-profile'),
('admin', '/user/profile/*'),
('admin', '/user/profile/index'),
('admin', '/user/profile/show'),
('admin', '/user/recovery/*'),
('admin', '/user/recovery/request'),
('admin', '/user/recovery/reset'),
('admin', '/user/registration/*'),
('admin', '/user/registration/confirm'),
('admin', '/user/registration/connect'),
('admin', '/user/registration/register'),
('admin', '/user/registration/resend'),
('admin', '/user/security/*'),
('admin', '/user/security/auth'),
('admin', '/user/security/login'),
('admin', '/user/security/logout'),
('admin', '/user/settings/*'),
('admin', '/user/settings/account'),
('admin', '/user/settings/confirm'),
('admin', '/user/settings/delete'),
('admin', '/user/settings/disconnect'),
('admin', '/user/settings/networks'),
('admin', '/user/settings/profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `BarangID` int NOT NULL,
  `Namabarang` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `KategoriID` int NOT NULL,
  `Stok` int NOT NULL,
  `Harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`BarangID`, `Namabarang`, `KategoriID`, `Stok`, `Harga`) VALUES
(2, 'Teh', 2, 8771, '1222.00'),
(2007, 'kopi', 2, 1090, '9.00');

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int NOT NULL,
  `BarangID` int DEFAULT NULL,
  `PelangganID` int NOT NULL,
  `PenjualanID` int NOT NULL,
  `Nota` int NOT NULL,
  `JumlahBarang` int DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Triggers `detailpenjualan`
--
DELIMITER $$
CREATE TRIGGER `hitung subtotal` BEFORE INSERT ON `detailpenjualan` FOR EACH ROW BEGIN
    -- Mendapatkan harga produk dari tabel produk
    DECLARE produk_harga DECIMAL(10, 2);
    SELECT Harga INTO produk_harga FROM barang WHERE BarangID = NEW.BarangID;

    -- Menghitung subtotal berdasarkan harga produk dan jumlah produk
    SET NEW.Subtotal = produk_harga * NEW.JumlahBarang;
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
   
    SELECT JumlahBarang INTO jumlah_penjualan FROM detailpenjualan WHERE DetailID = NEW.DetailID;

    UPDATE barang
    SET Stok = Stok - jumlah_penjualan
    WHERE BarangID = NEW.BarangID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update subtotal` BEFORE UPDATE ON `detailpenjualan` FOR EACH ROW BEGIN
    DECLARE harga_produk DECIMAL(10,2);
    
    -- Mengambil harga produk dari tabel produk
    SELECT Harga INTO harga_produk
    FROM barrang
    WHERE BarangID = NEW.BarangID;

    -- Menghitung subtotal
    SET NEW.Subtotal = harga_produk * NEW.JumlahBarang;
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
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1709551497),
('m140209_132017_init', 1709551500),
('m140403_174025_create_account_table', 1709551501),
('m140504_113157_update_tables', 1709551503),
('m140504_130429_create_token_table', 1709551503),
('m140506_102106_rbac_init', 1709551542),
('m140830_171933_fix_ip_field', 1709551504),
('m140830_172703_change_account_table_name', 1709551504),
('m141222_110026_update_ip_field', 1709551504),
('m141222_135246_alter_username_length', 1709551505),
('m150614_103145_update_social_account_table', 1709551506),
('m150623_212711_fix_username_notnull', 1709551506),
('m151218_234654_add_timezone_to_profile', 1709551506),
('m160929_103127_add_last_login_at_to_user_table', 1709551506),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1709551542),
('m180523_151638_rbac_updates_indexes_without_prefix', 1709551543),
('m200409_110543_rbac_update_mssql_trigger', 1709551543);

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
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `PelangganID`, `TanggalPenjualan`, `TotalHarga`, `Bayar`, `Kembali`, `Nota`) VALUES
(40, 1, '2024-02-28', NULL, NULL, NULL, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb3_unicode_ci,
  `timezone` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `code` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int NOT NULL,
  `code` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` int NOT NULL,
  `type` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'MCK0-AJoQxxlwcitDubCCPnQ9B8sRv64', 1709551512, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `confirmed_at` int DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `blocked_at` int DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `flags` int NOT NULL DEFAULT '0',
  `last_login_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'user@gmail.com', '$2y$10$FA.zWaffGRHdbUz9fJymjeti9/cb00.0FWQR5cWf4NIjlN5wqg8F.', '6hfb7icst9W19HxPvjnwKPnhfiCq9rDL', NULL, NULL, NULL, '127.0.0.1', 1709551512, 1709551512, 0, 1709553276);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`BarangID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `ProdukID` (`BarangID`) USING BTREE,
  ADD KEY `PelangganID` (`PelangganID`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

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
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `BarangID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2008;

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
  MODIFY `PenjualanID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`KategoriID`) REFERENCES `kategori` (`KategoriID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD CONSTRAINT `detailpenjualan_ibfk_2` FOREIGN KEY (`BarangID`) REFERENCES `barang` (`BarangID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `detailpenjualan_ibfk_3` FOREIGN KEY (`PelangganID`) REFERENCES `pelanggan` (`PelangganID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
