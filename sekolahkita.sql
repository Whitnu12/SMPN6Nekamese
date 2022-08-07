-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 01:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahkita`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'POST TEST PKB TK, SD, SMP DI TUK SMP 4 PAKEM BERJALAN LANCAR', '2017-01-22 06:18:01', 'Sejak awal  sampai dengan 17 November 2018   secara maraton dilaksanakan pos tes PKB di SMP 4 Pakem.  Pos tes dilaksanakan  setiap hari dengan 2 shiff pagi dan siang, bahkan pada tanggal 14 dan 17 November  dilaksanakan 3 shiff, pagi siang dan sore.', '2020-05-02', '2020-05-02', 'SMP Negeri 6 Nekamese', '08.00 - 11.00 WIB', 'Sejak awal  sampai dengan 17 November 2018   secara maraton dilaksanakan pos tes PKB di SMP 4 Pakem.  Pos tes dilaksanakan  setiap hari dengan 2 shiff pagi dan siang, bahkan pada tanggal 14 dan 17 Nov', 'SMP Negeri 6 Nekamese'),
(2, 'PEMBINAAN PENINGKATAN KAPASITAS ANGGOTA KORPRI SUB UNIT PELAYANAN PENDIDIKAN KECAMATAN PAKEM', '2017-01-22 06:26:33', 'Bertempat di aula SMP Negeri 4 Pakem Kamis, 2 Agustus 2018 dilaksanakan kegiatan pembinaan peningkatan kapasitas anggota KORPRI Sub unit Pelayanan Pendidikan Kecamatan Pakem. Kegiatan ini diikuti oleh guru dan karyawan jenjang TK, SD, SMP/Mts dan tenaga UPT Yandik Kecamatan Pakem. Hadir sebagai nara sumber adalah ketua unit korpri Dinas Pendidikan', '2020-05-02', '2020-05-02', 'SMP Negeri 6 Nekamese', '07.30 - 12.00 WIB', '-Bertempat di aula SMP Negeri 4 Pakem Kamis, 2 Agustus 2018 dilaksanakan kegiatan pembinaan peningkatan kapasitas anggota KORPRI Sub unit Pelayanan Pendidikan Kecamatan Pakem. Kegiatan ini diikuti ole', 'SMP Negeri 6 Nekamese'),
(3, 'KEGIATAN SORE AWAL TAHUN PELAJARAN 2018/2019', '2017-01-22 06:29:49', 'Berikut kami sampaikan agenda kegiatan sore awal tahun pelajaran 2018/2019', '2020-05-02', '2020-05-02', 'SMP Negeri 6 Nekamese', '07.30 - 12.00 WIB', 'KEGIATAN SORE AWAL TAHUN PELAJARAN 2020', 'Muris Studio'),
(4, 'TUJUH SMP DI SLEMAN MELAKSANAKAN TPM ONLINE BERSAMA', '2020-05-02 12:28:14', 'Dalam rangka mempersiapkan siswa siswi kelas 9 menghadapi UN 2019 beberapa sekolah bekerja sama untuk melaksanakan kegiatan Tes Pendalaman Materi (TPM) mata pelajaran yang di UN kan.  TPM ini meliputi mata pelajaran Bahasa Indonesia, Matematika, Bahasa Inggris dan Ilmu Pengetahuan Alam. TPM kali ini bukan hanya sekedar CBT tapi dilaksanakan secara online.', '2020-05-02', '2020-05-02', 'SMP Negeri 6 Nekamese', '08.00 - 11.00 WIB', 'Dalam rangka mempersiapkan siswa siswi kelas 9 menghadapi UN 2019 beberapa sekolah bekerja sama untuk melaksanakan kegiatan Tes Pendalaman Materi (TPM) mata pelajaran yang di UN kan.  TPM ini meliputi', 'SMP Negeri 6 Nekamese'),
(5, 'PENYULUHAN PSIKOLOGI REMAJA SISWA SISWI', '2020-05-02 12:28:41', 'Dalam rangka memperkuat perkembangan pribadi yang baik, dan antisipasi dari segala bentuk penyimpangan, semua siswa SMP N 4 Pakem mengikuti kegiatan penyuluhan perkembangan remaja. Kegiatan ini dilaksanakan Jumat, 7 Desember 2018 bertempat di ruang A1, diikuti oleh semua siswa kelas 7,8 dan 9.', '2020-05-02', '2020-05-02', 'SMP Negeri 6 Nekamese', '08.00 - 11.00 WIB', 'Dalam rangka memperkuat perkembangan pribadi yang baik, dan antisipasi dari segala bentuk penyimpangan, semua siswa SMP N 4 Pakem mengikuti kegiatan penyuluhan perkembangan remaja. Kegiatan ini dilaks', 'SMP Negeri 6 Nekamese');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Kegiatan Pramuka', '2016-09-08 13:00:55', 1, 'SMP Negeri 6 Nekamese', 3, '1445904c89e36f5fd6aa6ab9c3992adc.jpg'),
(3, 'Kegiatan OSIS', '2017-01-21 01:58:16', 1, 'SMP Negeri 6 Nekamese', 3, '047cf01a796131d142a90db9a3dd96ca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '5f8436e2c30570dfe2114f05af5e9215.jpg', 3, 1, 'SMP Negeri 6 Nekamese'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '504cd9e83e047becee6ec32e4af7e534.jpg', 3, 1, 'SMP Negeri 6 Nekamese'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', '83f7e70d0f89f2d8a7695e5f7059418f.jpg', 3, 1, 'SMP Negeri 6 Nekamese'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', 'd884f7fe18efebd07d7725ecf3bf3481.jpg', 1, 1, 'SMP Negeri 6 Nekamese'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', 'f652521a6c283c2df9da808cc4aae1c6.jpg', 1, 1, 'SMP Negeri 6 Nekamese');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'SMP Negeri 6 Nekamese', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'suryaciptainformatika@gmail.com', '085799696924', 1, '1', '2020-09-03 06:07:55', 'dcffbd1ad6ae7b98222701364708adb4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'INFORMASI PERINGATAN HARI PRAMUKA', 'Informasi disampaikan kepada seluruh siswa SMP Negeri 4 Pakem bahwa pada hari Senin 14 Agustus 2020 upacara / apel hari pramuka. Semua siswa memakai pakaian pramuka lengkap dengan segala atributnya. Jam pelaksanaan upacara / apel seperti biasa tiap hari Senin.', '2020-05-02 01:17:30', 'SMP Negeri 6 Nekamese'),
(2, 'INFORMASI PELAKSANAAN UPACARA PERINGATAN HUT RI KE-72', 'Informasi disampaikan kepada seluruh Siswa SMP Negeri 4 Pakem bahwa pada hari Kamis 17 Agustus 2017 upacara dalam rangka HUT RI ke-72. Semua siswa memakai pakaian yang biasa dipakai pada hari senin.  Upacara dimulai pukul 07.00 WIB. Setelah selesai upacara, siswa langsung pulang. Kecuali petugas yang ditunjuk mewakili sekolah di kecamatan.Yang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2020-05-02 01:17:30', 'SMP Negeri 6 Nekamese'),
(3, ' NOV 2017 0 Pengumuman Sekolah INFORMASI UPACARA PERINGATAN HARI PAHLAWAN', 'Informasi disampaikan kepada seluruh Siswa SMP Negeri 4 Pakem bahwa pada hari Jumat 10 Nopember 2017 upacara peringatan Hari Pahlawan. Tidak ada senam pagi. Semua siswa memakai pakaian pramuka.  Upacara dimulai pukul 06.30 WIB. Informasi mohon disebarluaskan. Terimakasih', '2020-05-02 01:17:30', 'SMP Negeri 6 Nekamese');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-04-30 09:24:35', '::1', 'Chrome'),
(932, '2020-04-30 17:03:42', '::1', 'Chrome'),
(933, '2020-04-30 17:17:54', '192.168.43.1', 'Chrome'),
(934, '2020-05-01 18:28:26', '::1', 'Chrome'),
(935, '2020-05-01 21:12:36', '192.168.43.1', 'Chrome'),
(936, '2020-05-02 12:58:12', '192.168.43.22', 'Chrome'),
(937, '2020-05-02 17:19:17', '::1', 'Firefox'),
(938, '2020-05-02 17:41:38', '192.168.43.22', 'Chrome'),
(939, '2020-05-02 18:07:26', '192.168.43.1', 'Chrome'),
(940, '2020-05-03 21:17:35', '::1', 'Chrome'),
(941, '2020-05-04 22:36:09', '::1', 'Chrome'),
(942, '2020-05-05 21:10:13', '::1', 'Chrome'),
(943, '2020-05-05 21:32:53', '192.168.43.1', 'Chrome'),
(944, '2022-08-02 10:14:40', '::1', 'Chrome'),
(945, '2022-08-03 16:19:47', '::1', 'Chrome'),
(946, '2022-08-03 17:17:52', '::1', 'Chrome'),
(947, '2022-08-07 00:31:22', '::1', 'Chrome'),
(948, '2022-08-07 23:47:46', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'SEJUMLAH PESERTA DIDIK SMAN 78 MASUK PTN MELALUI JALUR PRESTASI', '<p>Tahun Pelajaran 2018/2019 Sejumlah Peserta didik SMAN 78 Jakarta di terima di perguruan Tinggi Negeri melalui Jalur prestasi, diantaranya masuk melalui jalur Seleksi Nasional Perguruan tinggi Negeri (SNMPTN) berjumlah 58 siswa.</p>\r\n\r\n<p>Mereka merupakan putra putri terbaik yang memiliki prestasi akademik 40% terbaik di sekolah dan terseleksi melalui jalur raport tanpa test. Kampus yang bakal mereka tempati seperti di UI, ITB, UGM, UNJ dan lain sebagainya.</p>\r\n\r\n<p>Selain melalui jalur SNMPTN ada juga sebanyak 34 siswa dari SMAN 78 Jakarta juga diterima di jalur prestasi dan pemerataan kesempatan Belajar Universitas Indonesia (PPKB Paralel UI) yaitu salah satu jalur penerimaan yang di selenggarakan oleh UI yang menggunakan nilai raport tanpa test untuk siswa-siswi yang berminat melanjutkan pendidikan tingginya di Universitas Indonesia.</p>\r\n\r\n<p>Sedangkan 1 siswa SMAN 78 atas nama Rachmadana Fajri Majid juga merupakan salah satu siswa yang diterima di UI melalui jalur Talent Scouting, yaitu satu jalauryang diselenggarakan oleh kampus UI melalui jalur raport tanpa test untuk program Kleas Internasional.</p>\r\n\r\n<p>Satu hal lagi yang juga patut kita syukuri adalah Beberapa siswa SMAN 78 juga telah diterima di perguruan tinggi luar Negeri seperti Jepang, Kanada, dan belanda, baik melalaui jalur tes maupun beasiswa yang diselenggarakan oleh Pihak Universitas di Luar Negeri.</p>\r\n\r\n<p>Proses seleksi yang harus mereka lewati tidak hanya melalui nilai prestasi akademik tetapi juga prestasi non akademik, Kemampuan bahasa asing yang dibuktikan dengan sertifikat, penulisan Essay dan juga wawancara. Siswa-siswi tidak hanya berkompetisi dengan siswa dari dalam negeri saja tetapi mereka juga harus bersaing dengan pelajar seluruh dunia. Semoga sukses.</p>\r\n', '2020-02-05 09:24:42', 1, 'Pendidikan', 28, '4add43a5d93fc3ba8a81869127e11f99.jpg', 1, 'SMPN 1 Nekamese', 0, 'sejumlah-peserta-didik-sman-78-masuk-ptn-melalui-jalur-prestasi'),
(22, 'UPACARA HARI LAHIR PANCASILA 1 JUNI DI SMAN 78 JAKARTA BERLANGSUNG KHIDMAD', '<p>Hari Sabtu, 1 Juni 2019 bertepatan dengan 27 Ramadhan 1440 H, SMA Negeri 78 Jakarta melaksanakan Upacara hari kelahiran Pancasila bertempat di lapangan sekolah.</p>\r\n\r\n<p>Ada yang menarik dari upacara kali ini karena pertama: bertepatan dengan bulan suci Ramadhan hari yang ke 27 dan beberapa guru maupun karyawan ada yang sudah pulang kampung halaman dalam menyambut hari raya Idul Fitri, kedua : Kepala sekolah meminta agar yang sudah pulang kampung ikut melaksanakan upacara di wilayah masing-masing dengan bergabung ke sekolah atau instansi terdekat.</p>\r\n\r\n<p>Mantap ternyata integritas tetap terjaga, anjuran dari Bapak Kepala Sekolah (Dr. Saryono, M.Si) dilaksanakan dengan penuh amanah terpantau beberapa guru dan karyawan SMAN 78 melaksanakan Upacara hari lahir pancasila di SMAN 6 Jogjakarta, SMAN 1 Gombong-jateng SMAN 2 PLG, SMAN 1 Leuwiliang Bogor, SMAN 1 Simo Boyolali, SMPN 1 Gombong, dan lain sebagainya. Laporan ini didapat dari bukti fisik berupa foto dan surat keterangan melaksanakan upacara yang ditandatangani oleh kepala sekolahnya.</p>\r\n\r\n<p>Mereka disambut dengan senang hati. Salah satu peserta upacara dari SMAN 78 Jakarta ( Ibu Yuliana Guru Kimia) yang upacara di SMAN 1 Simo Boyolali menuturkan &quot; Kami di sambut dengan sangat welcome, senang sekali rasanya&quot;. Di SMAN 78 Jakarta upacara juga berlangsung dengan khidmad, peserta upacara dari unsur pendidik, tenaga kependidikan dan peserta didik.</p>\r\n\r\n<p>Petugas pembina upacara Kepala Sekolah Dr. Saryono, Msi, petugas lainya dari unsur ekskul Paskib, Ekskul PKS dan Paduan Suara dengan menyanykan lagu Garuda pancasila dan Mars SMAN 78 Jakarta. Dalam sambutannya Kepala sekolah mengatakan &quot; Mari bersama-sama kita semua mengimplementasikan Pancasila dalam kehidupan sehari-hari sebagai wujud kecintaan kita pada NKRI dan Pancasila&quot;.</p>\r\n\r\n<p>&quot;Saya Indonesia&quot; peserta upacara menjawab&quot; Saya Pancasila &quot; kalimat penutup pembina upacara hari kelahiran Pancasila dan juga di akhiri dengan tepuk tangan seluruh peseta upacara. Sekian dan terima kasih.</p>\r\n', '2020-02-05 09:24:42', 3, 'Sains', 10, 'a49888c350ee1037ab856b95ac26aa03.jpg', 1, 'SMP Negeri 6 Nekamese', 0, 'upacara-hari-lahir-pancasila-1-juni-di-sman-78-jakarta-berlangsung-khidmad'),
(23, 'PELEPASAN PESERTA DIDIK KELAS XII ANGKATAN KE- 42', '<p>Kegiatan Pelepasan Peserta didik Kelas XII anggkatan KE 42 di laksanakan di Hotel Pullman Jakarta tanggal 13 Mei 2019 dalam suasana Bulan Ramadhan 1440 H.</p>\r\n\r\n<p><br />\r\nMeskipun dilaksanakan pada bulan puasa acara tetap berlangsung kidmad dan lancar. Acara pelepasan ini di hadiri oleh Kepala Suku Dinas Pendidikan Wilayah Jakarta Barat 2 Ibu Urip Asih, M.Pd, Pengawas SMAN 78 Ibu Hj.Nurul Muftahidah,M.Pd, Komite sekolah, Perwakilan Ikatan Alumni Sekolah (IAS), guru purna bhakti, dan orang tua siswa yang sangat berbahagia melihat putra putrinya lulus dari jenjang SMA dengan prestasi yang membanggakan.</p>\r\n\r\n<p>Dalam Sambutannya Kepala SMAN 78 Jakarta Dr. Saryono, M.si Mengatakan bahwa &quot;stakesholder Sekolah harus mampu melayani sepenuh hati untuk mendulang prestasi dan menjaga Prestasi&quot;.</p>\r\n\r\n<p>Tahun ini (Tahun pelajaran 2018/2019) Kita patut bersyukur karena banyak prestasi yang bisa diraih oleh SMAN 78 diantaranya: 87 siswa mendapat nilai 100, rangking 5 besar UN tingkat DKI Jakarta untuk program Ilmu-ilmu Sosial. Acara Pelepasan kelas XII ini Juga dimeriahkan oleh penampilan Ekskul Paduan suara, Tari, Marawis dan solo vokal.</p>\r\n\r\n<p>Ada yang beda dari pelaksanaan pelepasan tahun ini yang biasanya diselenggarakan di lapangan sekolah kali ini dilaksanakan di luar sekolah, tentu kegiatan ini didukung oleh orang tua siswa, komite serta Ikatan Alumni Sekolah.</p>\r\n', '2020-02-05 09:24:42', 5, 'Penelitian', 7, '217410a33b775e40cbdc57e079ce2b4c.jpg', 1, 'SMP Negeri 6 Nekamese', 0, 'pelepasan-peserta-didik-kelas-xii-angkatan-ke--42'),
(25, 'Membangun Mutu Pendidikan Melalui Kemitraan Sekolah', '<p>Lima hari di Malinau memberikan pengalaman yg menorehkan warna dalam hidupku.<br />\r\nTugas yg diberikan Kemendikbud satu persatu aku tunaikan. Hari pertama kunjungan ke SMAN 1 mendapat sambutan yg hangat penuh persahabatan, didahului upacara bendara dan tarian khas 4 budaya: Tidung,Bugis,Dayak Lundayeh,dan Dayak Kenya. Anak2 yg gagah dan cantik, menyajikan hiburan penuh kegembiraan.</p>\r\n\r\n<p>Hari kedua ke SMAN 3 dan hari ketiga ke SMAN 8 hampir sama tetapi tanpa tarian khas etnis Tidung dan Bugis. Namun tidak mengurangi kesemaraan seremonial pagi itu.</p>\r\n\r\n<p>Segenap warga sekolah tumpah di lapangan merasakan kegembiraan. Supervisi thd 2 guru matematika di dua sekolah yg berbeda memberi informasi bahwa pemerintah tidak boleh merasa lelah untuk terus memberi penguatan tentang konsep pembelajaran abad 21 dg dimensi :4C,Literasi dan Character Building.</p>\r\n\r\n<p>Di hari terakhir supervisi guru matemtika barulah saya mendapakan seorang guru muda, energik,suara lantang, menguasai konsep dan melakukan pendekatan pembelajaran yg mencerdaskan, membangun konsep, dg alat bantu yg kreatif, suasana kelas hidup, dan anak2 bahagia mengikuti pelajaran. Panggilan singkat guru muda tsb Pak Tri (30 ) terlihat menerapkan metode 4C, mengajak anak browsing (literasi), dan mengajak siswa bersyukur atas anugrah yg diberikan Tuhan ( membangun karakter ).</p>\r\n\r\n<p>Pemerintah melalui berbagai program harus terus membangun kompetensi profesional guru. Fokus penguatan tetap metode pada metide pembelajaran abad 21. Kurikulum 2013 dg pendekatan pembelajaran abad 21 diharapkan dpt mencerdaskan anak2 Indonesia.</p>\r\n', '2020-02-05 09:24:42', 1, 'Pendidikan', 29, '67b03f7b75700396f6ca684c052c83a9.jpg', 1, 'SMP Negeri 6 Nekamese', 0, 'membangun-mutu-pendidikan-melalui-kemitraan-sekolah'),
(27, 'Kejuaraan Nasional', '<p>Ini berita tentang seorang anak yang meraih medali emas dalam ajang pencak silat</p>\r\n', '2022-08-02 11:58:10', 13, 'Olah Raga', 2, '42f07e212c600921e5260ad6f2385e93.jpg', 1, 'SMP Negeri 6 Nekamese', 0, 'kejuaraan-nasional'),
(28, 'Apa ajaga', '<p>gak tau lagi mau nulis apa</p>\r\n', '2022-08-02 12:08:29', 1, 'Pendidikan', 5, 'e6ca56347d7ec087fae22d53788218b9.jpg', 1, 'SMP Negeri 6 Nekamese', 0, 'apa-ajaga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=949;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
