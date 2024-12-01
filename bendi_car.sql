-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2024 pada 14.10
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bendi_car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `tahun` year(4) DEFAULT NULL,
  `nomor_polisi` varchar(15) NOT NULL,
  `status` enum('tersedia','dipinjam','servis') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merk`, `model`, `tahun`, `nomor_polisi`, `status`) VALUES
(7, 'Toyota', 'Avanza', '2020', 'B1234XYZ', 'tersedia'),
(8, 'Honda', 'Civic', '2022', 'D5678ABC', 'tersedia'),
(9, 'Mitsubishi', 'Pajero', '2021', 'F9876QWE', 'tersedia'),
(10, 'Honda', 'Brio', '2021', 'S1078BE', 'tersedia'),
(11, 'Chery', 'Tiggo7pro', '2023', 'TO88RUT', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tanggal_bergabung` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telepon`, `email`, `tanggal_bergabung`) VALUES
(NULL, 'Adi Nugroho Santoso', 'Jl. Merpati No. 5, Jakarta', '081234567890', 'adi.nugroho@gmial.com', '2024-01-01'),
(NULL, 'Budi Santoso', 'Jl. Kenari No. 12, Bandung', '082345678901', 'budi.santoso@gmial.com', '2024-02-15'),
(NULL, 'Citra Dewi', 'Jl. Cemara No. 8, Surabaya', '083456789012', 'citra.dewi@gmial.com', '2024-03-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tanggal_bayar` datetime NOT NULL,
  `jumlah_bayar` decimal(10,2) NOT NULL,
  `metode_bayar` enum('tunai','transfer','kartu') DEFAULT 'tunai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_transaksi`, `tanggal_bayar`, `jumlah_bayar`, `metode_bayar`) VALUES
(1, 1, '2024-02-01 12:00:00', 1500000.00, 'transfer'),
(2, 2, '2024-04-10 10:00:00', 2500000.00, 'kartu'),
(3, 2, '2024-01-09 04:00:00', 5000000.00, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `tanggal_pinjam` datetime DEFAULT NULL,
  `tanggal_kembali` datetime DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `status_transaksi` enum('diproses','selesai','dibatalkan') DEFAULT 'diproses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_mobil`, `tanggal_pinjam`, `tanggal_kembali`, `total_harga`, `status_transaksi`) VALUES
(NULL, 1, 1, '2023-04-01 10:00:00', '2023-04-05 10:00:00', 1500000.00, 'selesai'),
(NULL, 2, 2, '2023-04-10 08:00:00', '2023-04-15 08:00:00', 2500000.00, 'selesai'),
(NULL, 3, 3, '2023-05-01 09:00:00', NULL, NULL, 'diproses');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`),
  ADD UNIQUE KEY `nomor_polisi` (`nomor_polisi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
