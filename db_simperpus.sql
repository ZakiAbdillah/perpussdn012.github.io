-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 08:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_dataanggota`
--

CREATE TABLE `t_dataanggota` (
  `id_anggota` int(5) NOT NULL,
  `no_anggota` varchar(9) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jns_klmn` varchar(9) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `pkrjaan` varchar(15) NOT NULL,
  `denda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_dataanggota`
--

INSERT INTO `t_dataanggota` (`id_anggota`, `no_anggota`, `nama_anggota`, `tempat_lahir`, `tanggal_lahir`, `jns_klmn`, `alamat`, `telp`, `nik`, `pkrjaan`, `denda`) VALUES
(10, '10260723', 'Akbar', 'BPP', '2023-07-01', 'Laki-laki', 'JL', '0876432256', '778766554342', 'Nganggur', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `t_datapengguna`
--

CREATE TABLE `t_datapengguna` (
  `id_pengguna` int(5) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_datapengguna`
--

INSERT INTO `t_datapengguna` (`id_pengguna`, `nama_pengguna`, `level`, `nip`, `username`, `password`) VALUES
(1, 'Bryant Alim Amrullah', 1, '197201242000031004', 'Kapus', 'Kapus'),
(2, 'Admin Perpustakaan', 2, '197201242000031000', 'Admin', 'Admin'),
(3, 'Aldo Martino Gonzales', 2, '3326165608060003', 'Aldo01', '3326165608060003');

-- --------------------------------------------------------

--
-- Table structure for table `t_datapengunjung`
--

CREATE TABLE `t_datapengunjung` (
  `id_pgnjng` int(5) NOT NULL,
  `nama_pgnjng` varchar(50) NOT NULL,
  `pkrjaan` varchar(15) NOT NULL,
  `kprluan` text NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_datapengunjung`
--

INSERT INTO `t_datapengunjung` (`id_pgnjng`, `nama_pgnjng`, `pkrjaan`, `kprluan`, `tgl`) VALUES
(26, 'Zaki', 'Murid', 'Melihat', '2023-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `t_datapustaka`
--

CREATE TABLE `t_datapustaka` (
  `id_dp` int(5) NOT NULL,
  `judul_dp` varchar(150) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` int(4) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `klasifikasi` varchar(10) NOT NULL,
  `jumlah` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_datapustaka`
--

INSERT INTO `t_datapustaka` (`id_dp`, `judul_dp`, `kategori`, `pengarang`, `penerbit`, `tahun`, `isbn`, `klasifikasi`, `jumlah`) VALUES
(10, 'Membaca', 'Bahasa', 'Akbar', 'Dimas', 2010, '12345', 'Novel', 200);

-- --------------------------------------------------------

--
-- Table structure for table `t_peminjaman`
--

CREATE TABLE `t_peminjaman` (
  `id_pmnjmn` int(5) NOT NULL,
  `nomor_pmnjmn` varchar(5) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `id_dp` int(5) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `tgl_pjm` date NOT NULL,
  `tgl_kmbl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_peminjaman`
--

INSERT INTO `t_peminjaman` (`id_pmnjmn`, `nomor_pmnjmn`, `id_anggota`, `id_dp`, `id_pengguna`, `tgl_pjm`, `tgl_kmbl`) VALUES
(14, '22913', 10, 10, 2, '2023-07-26', '2023-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengembalian`
--

CREATE TABLE `t_pengembalian` (
  `id_pgmbln` int(5) NOT NULL,
  `nomor_pgmbln` varchar(5) NOT NULL,
  `id_pmnjmn` int(5) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `id_dp` int(5) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `ktrlmbtn` int(5) NOT NULL,
  `tgl_kmbl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pengembalian`
--

INSERT INTO `t_pengembalian` (`id_pgmbln`, `nomor_pgmbln`, `id_pmnjmn`, `id_anggota`, `id_dp`, `id_pengguna`, `ktrlmbtn`, `tgl_kmbl`) VALUES
(14, '43014', 14, 10, 10, 2, 0, '2023-07-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_dataanggota`
--
ALTER TABLE `t_dataanggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `t_datapengguna`
--
ALTER TABLE `t_datapengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `t_datapengunjung`
--
ALTER TABLE `t_datapengunjung`
  ADD PRIMARY KEY (`id_pgnjng`);

--
-- Indexes for table `t_datapustaka`
--
ALTER TABLE `t_datapustaka`
  ADD PRIMARY KEY (`id_dp`);

--
-- Indexes for table `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD PRIMARY KEY (`id_pmnjmn`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_dp` (`id_dp`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  ADD PRIMARY KEY (`id_pgmbln`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_dp` (`id_dp`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_pmnjmn` (`id_pmnjmn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_dataanggota`
--
ALTER TABLE `t_dataanggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_datapengguna`
--
ALTER TABLE `t_datapengguna`
  MODIFY `id_pengguna` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_datapengunjung`
--
ALTER TABLE `t_datapengunjung`
  MODIFY `id_pgnjng` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_datapustaka`
--
ALTER TABLE `t_datapustaka`
  MODIFY `id_dp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  MODIFY `id_pmnjmn` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  MODIFY `id_pgmbln` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD CONSTRAINT `t_peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `t_dataanggota` (`id_anggota`),
  ADD CONSTRAINT `t_peminjaman_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `t_datapengguna` (`id_pengguna`),
  ADD CONSTRAINT `t_peminjaman_ibfk_4` FOREIGN KEY (`id_dp`) REFERENCES `t_datapustaka` (`id_dp`);

--
-- Constraints for table `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  ADD CONSTRAINT `t_pengembalian_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `t_datapengguna` (`id_pengguna`),
  ADD CONSTRAINT `t_pengembalian_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `t_dataanggota` (`id_anggota`),
  ADD CONSTRAINT `t_pengembalian_ibfk_3` FOREIGN KEY (`id_dp`) REFERENCES `t_datapustaka` (`id_dp`),
  ADD CONSTRAINT `t_pengembalian_ibfk_4` FOREIGN KEY (`id_pmnjmn`) REFERENCES `t_peminjaman` (`id_pmnjmn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
