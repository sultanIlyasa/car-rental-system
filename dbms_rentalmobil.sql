-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2022 pada 15.50
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_rentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` int(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merk`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(1, 'Honda', 'Mobilio', '2021', 'B 2021 AG', 500000, 'Tersedia'),
(2, 'Honda', 'Jazz', '2021', 'B 2021 DN', 250000, 'Keluar'),
(3, 'Daihatsu', 'Xenia', '2021', 'B 2020 IA', 250000, 'Tersedia'),
(7, 'Daihatsu', 'City', '2019', 'B 2020 FM', 259900, 'Tersedia'),
(9, 'Toyota', 'Yaris', '2017', 'B 1544 JA', 600000, 'Tersedia'),
(10, 'Mitsubishi', 'Xpander', '2020', 'B 7777 MW', 799500, 'Tersedia'),
(11, 'Wuling', 'Almaz', '2020', 'B 1212 HU', 399000, 'Tersedia'),
(12, 'Chevrolet', 'Camaro', '2019', 'B 3434 CE', 350000, 'Tersedia'),
(13, 'Toyota', 'Supra', '2021', 'F1234BC', 5000000, 'Tersedia'),
(14, 'Honda', 'Civic', '2022', 'B 1234 EF', 500000, 'Keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(3, 'Agung', '327507', 'Jl. Bekasi, RT 02 RW 04, Kel. Bekasi, Kec. Bekasi, Bekasi', '0857', 'agungg@gmail.com'),
(4, 'Ahmad', '140810210018', 'Jl. garuda, RT 10 RW 14, Kel. cibadk, Kec. tansa, bogor', '081295496753', 'ahmad@gmail.com'),
(5, 'Agung', '140810210026', 'Jl. bambang, RT 10 RW 14, Kel. pamungkas, Kec. eka putra, Depok', '081234567781', 'augn12@gmail.com'),
(6, 'Agung', '12', 'Jl. ojojjojrw, RT 10 RW 12, Kel. olwk, Kec. rwrw, wrwrw', '08', 'wrwrw@gmail.com'),
(7, 'sultan', '14082100128', 'Jl. elang, RT 10 RW 14, Kel. chai, Kec. air, Bekasi', '08129583724', 'sultanali@gmail.com'),
(8, 'Ali Eka Yudiansyah', '99', 'Jl. in dulu aja, RT 10 RW 14, Kel. Marcopolo, Kec. snsv, Depok', '08123456789', 'aliekayudiansyah@gmail.com'),
(9, 'Ramadhan Eka Ali', '100', 'Jl. in pasti bisa, RT 10 RW 14, Kel. Semangat, Kec. Projek, Bekasi', '08123456892', 'ramadhanekaali@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date NOT NULL,
  `tgl_kembali` varchar(20) NOT NULL,
  `lama` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`) VALUES
(18, 'Ramadhan Eka Ali', 'B 1234 EF', '500000', '2022-12-21', '2022-12-23', '2', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `hak_akses`) VALUES
(1, 'Karyawan', 'staff', 'staff', 'Staff'),
(2, 'Guntur Eka', 'agung', '1234', 'Admin'),
(3, 'Luthfi Ramadhan', 'luthfi', '1234', 'Admin'),
(4, 'Sultan Ali', 'sultin', '1234', 'Admin'),
(7, 'Karyawan2', 'staff2', 'staff2', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `id_mobil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
