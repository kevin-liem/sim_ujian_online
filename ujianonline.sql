-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 03:27 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ujianonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_admin`
--

CREATE TABLE IF NOT EXISTS `db_admin` (
  `id_admin` int(11) NOT NULL DEFAULT '0',
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_admin`
--

INSERT INTO `db_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `db_jawaban`
--

CREATE TABLE IF NOT EXISTS `db_jawaban` (
  `id_mapel` int(11) DEFAULT NULL,
  `id_soal` int(10) DEFAULT NULL,
  `id_jawaban` int(10) DEFAULT NULL,
  `jawaban` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_jawaban`
--

INSERT INTO `db_jawaban` (`id_mapel`, `id_soal`, `id_jawaban`, `jawaban`, `id`) VALUES
(4, 1, 1, 'vaksin hepatitis B dan interferon alfa', 1),
(4, 1, 2, 'insulin manusia dan antibodi monoklonal', 2),
(4, 1, 3, 'antibiotika dan hormon pertumbuhan', 3),
(4, 1, 4, 'enzim restriksi dan protein sel tunggal', 4),
(4, 1, 5, 'asam amino dan vitamin', 5),
(4, 2, 1, 'Mucor mucedo', 6),
(4, 2, 2, 'Rhizopus oligosporus', 7),
(4, 2, 3, 'Aspergilus oryzae', 8),
(4, 2, 4, 'Volvariela volvacea', 9),
(4, 2, 5, 'Auricula politrica', 10),
(4, 3, 1, 'Membunuh hama tanaman', 11),
(4, 3, 2, 'menggemburkan lahan Pertanian', 12),
(4, 3, 3, 'menguraikan sampah organik', 13),
(4, 3, 4, 'mengikat nitrogen bebas', 14),
(4, 3, 5, 'mengubah amoniak menjadi nitrat', 15),
(4, 4, 1, 'memanfaatkan sumber daya alamnya semaksimal mungkin', 16),
(4, 4, 2, 'menggunakan alat-alat modern sehingga tidak menimbulkan kerusakan', 17),
(4, 4, 3, 'membuat semua hutan menjadi kawasan tertutup', 18),
(4, 4, 4, 'menggunakan metode tebang pilih dan tanam kembali', 19),
(4, 4, 5, 'melakukan penelitian yang intensif di kawasan hutan tersebut', 20),
(4, 5, 1, 'molusca', 21),
(4, 5, 2, 'chephalopoda', 22),
(4, 5, 3, 'gastropoda', 23),
(4, 5, 4, 'bivalvia', 24),
(4, 5, 5, 'Pelecypoda', 25),
(4, 6, 1, 'onkosfer - sistiserkus - cacing pita dewasa', 26),
(4, 6, 2, 'sistiserkus - onkosfer - cacing pita dewasa', 27),
(4, 6, 3, 'cacing pita muda - onkosfer - sistiserkus - cacing pita dewasa', 28),
(4, 6, 4, 'sistiserkus - onkosfer - cacing pita muda - cacing pita dewasa', 29),
(4, 6, 5, 'onkosfer - cacing pita muda - sistiserkus - cacing pita dewasa', 30),
(4, 7, 1, 'tanaman air yang lain dapat tumbuh dengan pesat pula', 31),
(4, 7, 2, 'menumpuknya logam-logam berat di dasar sungai', 32),
(4, 7, 3, 'berkurangnya O2 dibawah permukaan air', 33),
(4, 7, 4, 'berkurangnya CO2 di bawah permukaan air', 34),
(4, 7, 5, 'proses pembusukan berjalan sangat lambat karena tidak ada CO2', 35),
(4, 8, 1, 'menjaga pelestarian hewan dantumbuhan', 36),
(4, 8, 2, 'menjaga keseimbangan air di sekitarnya', 37),
(4, 8, 3, 'mencegah peremajaan hutan kembali', 38),
(4, 8, 4, 'menerapkan aturan hukum bagi pelariggar pemanfaatan hutan', 39),
(4, 8, 5, 'melakukan penebangan pohon yang diimbangi dengan penanaman kembali', 40),
(4, 9, 1, 'Memperkuat xilem dan floem.', 41),
(4, 9, 2, 'Dapat memperbanyak diri', 42),
(4, 9, 3, 'Mengisap air dari dalam tanah', 43),
(4, 9, 4, 'Mengandung zat kayu', 44),
(4, 9, 5, 'Dapat mengalami perubahan bentuk.', 45),
(4, 10, 1, 'Arteriosklerosis', 46),
(4, 10, 2, 'Arteriosklerosis', 47),
(4, 10, 3, 'Embolus', 48),
(4, 10, 4, 'Trombus', 49),
(4, 10, 5, 'Thrombosis', 50),
(4, 11, 1, 'ujung-ujung saraf di dinding lambung tidak terkontrol', 51),
(4, 11, 2, 'sekresi asam lambung tidak normal dan luka pada dinding lambung', 52),
(4, 11, 3, 'kontraksi otot lambung yang terlalu lama sehingga menimbulkan kejang', 53),
(4, 11, 4, 'sekresi asam lambung menurun dan enzim diproduksi secara berlebihan', 54),
(4, 11, 5, 'pembuluh darah pada submukosa lambung tertekan oleh kontraksi otot yang berlebihan', 55),
(4, 12, 1, 'gagalnya pengangkutan oksigen oleh hemoglobin', 56),
(4, 12, 2, 'melemahnya otot diafragma sehingga meluasnya alveolus ', 57),
(4, 12, 3, 'karena banyaknya gas CO sehingga paru-paru membesar tidak dapat berkontraksi', 58),
(4, 12, 4, 'penyempitan saluran pernapasan karena alergi gas CO', 59),
(4, 12, 5, 'racun gas CO menyebabkan jantung tidak dapat berkontraksi', 60),
(4, 13, 1, 'penyaringan darah di glomerulus', 61),
(4, 13, 2, 'penyerapan kembali pada tubula kontorti distal', 62),
(4, 13, 3, 'pengurnpulan urin primer di tubula kontorti proksimal', 63),
(4, 13, 4, 'penampungan urin di pelvis renalis', 64),
(4, 13, 5, 'penyaluran urin di saluran ureter', 65),
(4, 14, 1, '1', 66),
(4, 14, 2, '2', 67),
(4, 14, 3, '3', 68),
(4, 14, 4, '4', 69),
(4, 14, 5, '5', 70),
(4, 15, 1, 'Ovulasi', 71),
(4, 15, 2, 'kontraksi uterus', 72),
(4, 15, 3, 'sekresi estrogen', 73),
(4, 15, 4, 'sekresi kelenjar susu', 74),
(4, 15, 5, 'pertumbuhan folikel primer', 75),
(4, 16, 1, 'lebih tinggi karena cahaya menghambat pertumbutran', 76),
(4, 16, 2, 'lebih tinggi karena daun tidak melakukan fotosintesis', 77),
(4, 16, 3, 'lebih tinggi karena udara di dalam pot rebih lembab', 78),
(4, 16, 4, 'lebih rendah karena fotosintesis tidak terjadi', 79),
(4, 16, 5, 'lebih rendah karena auksin rusak tanpa cahaya', 80),
(4, 17, 1, '0,14 cm', 81),
(4, 17, 2, '0,18 cm', 82),
(4, 17, 3, '0,17 cm', 83),
(4, 17, 4, '0,24 cm', 84),
(4, 17, 5, '0,88 cm', 85),
(4, 18, 1, 'menempati sisi katalitik enzim pada hemoglobin sehingga tidak dapat berikatan dengan oksigen', 86),
(4, 18, 2, 'menempati sisi yang.bukan enzim pada hemoglobin sehingga tidak dapat berikatan dengan oksigen', 87),
(4, 18, 3, 'merupakan ion logam yang menghambat kerja enzim sitokrom', 88),
(4, 18, 4, 'merupakan ion logam yang menggantikan gugus amina dalam hemoglobin', 89),
(4, 18, 5, 'bersifat asam sehingga akan menaikkan pH dan menghalangi ikatan dengan oksigen', 90),
(4, 19, 1, '8 NADH, 2 FADH2, dan 2 ATP', 91),
(4, 19, 2, '2 NADH dan 2 ATP', 92),
(4, 19, 3, '4 NADH, 1 FADH2 dan 1 ATP', 93),
(4, 19, 4, '2 NADH dan 34 ATP', 94),
(4, 19, 5, '8 NADH dan 2 FADH2', 95),
(4, 20, 1, 'ATP', 96),
(4, 20, 2, 'NADP', 97),
(4, 20, 3, 'Glukosa', 98),
(4, 20, 4, 'Ferodoksin', 99),
(4, 20, 5, 'PGAL', 100),
(4, 21, 1, 'fosfogliseraldehid dan asetil KoA', 101),
(4, 21, 2, 'asetil KoA dan fosfogliseraldehid', 102),
(4, 21, 3, 'asam piruvat dah asetil KoA', 103),
(4, 21, 4, 'asetil KoA dan asam laktat', 104),
(4, 21, 5, 'asam piruvat dan asetil KoA', 105),
(4, 22, 1, 'dapat menyebabkan mutasi', 106),
(4, 22, 2, 'mengandung gula, basa, dan fosfat', 107),
(4, 22, 3, 'mampu mereplikasi dan bertranslasi', 108),
(4, 22, 4, 'dapat menerjemahkan kode genetik', 109),
(4, 22, 5, 'memiliki basa pirimidin dan purin', 110),
(4, 23, 1, 'DNA', 111),
(4, 23, 2, 'tRNA', 112),
(4, 23, 3, 'mRNA', 113),
(4, 23, 4, 'rRNA', 114),
(4, 23, 5, 'rantai sense', 115),
(4, 24, 1, '1 dan 2', 116),
(4, 24, 2, '1 dan 3', 117),
(4, 24, 3, '2 dan 4', 118),
(4, 24, 4, '4 dan 1', 119),
(4, 24, 5, '4 dan 2', 120),
(4, 25, 1, '1 : 1 : 3 : 3', 121),
(4, 25, 2, '1 : 3 : 3 : 1', 122),
(4, 25, 3, '3 : 3 : 1 : 1', 123),
(4, 25, 4, '3 : 1 : 3 : 1', 124),
(4, 25, 5, '3 : 1 : 1 : 3', 125),
(4, 26, 1, 'polimeri', 126),
(4, 26, 2, 'kriptomeri', 127),
(4, 26, 3, 'efek kumulatif', 128),
(4, 26, 4, 'epistasis resesif', 129),
(4, 26, 5, 'epistasis dominant', 130),
(4, 27, 1, '0%', 131),
(4, 27, 2, '12,50%', 132),
(4, 27, 3, '25%', 133),
(4, 27, 4, '50%', 134),
(4, 27, 5, '75%', 135),
(4, 28, 1, 'crossing over dan delesi', 136),
(4, 28, 2, 'delesi dan translokasi', 137),
(4, 28, 3, 'duplikasi dan katenasi', 138),
(4, 28, 4, 'delesi dan duplikasi', 139),
(4, 28, 5, 'katenasi dan delesi', 140),
(4, 29, 1, 'air kaldu yang dipanaskan belum mematikan mikoba', 141),
(4, 29, 2, 'mikroba dalam air kaldu berasal dari udara', 142),
(4, 29, 3, 'udara kotor dapat menyebabkan air kaldu keruh', 143),
(4, 29, 4, 'air kaldu yang terbuka dapat berubah menjadi organisme', 144),
(4, 29, 5, 'mikroba berasal dari air kaldu yang dibiarkan terbuka', 145),
(4, 30, 1, 'Ya, perubahan lingkungan mempengaruhi perubahan cara adaptasi individu', 146),
(4, 30, 2, 'Ya, perubahan lingkungan dapat mempercepat kejadian mutasi.', 147),
(4, 30, 3, 'Ya, fotosintesis plankton tergeser menjadi kemosintesis.', 148),
(4, 30, 4, 'Tidak, perubahan lingkungan tidak mempengaruhi cara adaptasi individu', 149),
(4, 30, 5, 'Tidak, perubahan lingkungan tidak menyebabkan mutasi', 150),
(4, 31, 1, 'kloning transfer inti', 151),
(4, 31, 2, 'tanaman transgenik', 152),
(4, 31, 3, 'kultur jaringan', 153),
(4, 31, 4, 'kloning embrio', 154),
(4, 31, 5, 'hibridoma', 155),
(4, 32, 1, 'sel kanker dan plasmid', 156),
(4, 32, 2, 'sel kanker dan virus', 157),
(4, 32, 3, 'plasmid dan virus', 158),
(4, 32, 4, 'virus dan bakteri', 159),
(4, 32, 5, 'bakteri dan sel kanker', 160),
(4, 33, 1, 'dapat dimasuki vektor', 161),
(4, 33, 2, 'tidak menyebabkan penyakit', 162),
(4, 33, 3, 'mudah didapat di alam', 163),
(4, 33, 4, 'mudah dibiakan dalam medium', 164),
(4, 33, 5, 'memiliki DNA yang lengkap', 165),
(4, 34, 1, 'mempunyai kranium (tulang tengkorak)', 166),
(4, 34, 2, 'mempunyai tulang belakang', 167),
(4, 34, 3, 'alat pencernaan terdiri atas saluran pencernaan dan kelenjar pencernaan', 168),
(4, 34, 4, 'notochord terdapat di daerah ekor saja', 169),
(4, 34, 5, 'mempunyai susunan saraf Pusat', 170),
(4, 35, 1, 'Sphagnum fibriatum (lumut daun)', 171),
(4, 35, 2, 'Marchantia polymorpha (lumut hati)', 172),
(4, 35, 3, 'Cycas revoluta (pakis haji)', 173),
(4, 35, 4, 'Oryza sativa (padi)', 174),
(4, 35, 5, 'Azolla pinnata (paku air)', 175);

-- --------------------------------------------------------

--
-- Table structure for table `db_kunci`
--

CREATE TABLE IF NOT EXISTS `db_kunci` (
  `id_mapel` int(11) DEFAULT NULL,
  `id_soal` int(10) DEFAULT NULL,
  `id_kunci` int(10) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_kunci`
--

INSERT INTO `db_kunci` (`id_mapel`, `id_soal`, `id_kunci`, `id`) VALUES
(4, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_log`
--

CREATE TABLE IF NOT EXISTS `db_log` (
  `id_log` int(11) NOT NULL DEFAULT '0',
  `id_mapel` int(10) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `nilai` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_mapel`
--

CREATE TABLE IF NOT EXISTS `db_mapel` (
  `id_mapel` int(11) NOT NULL DEFAULT '0',
  `mapel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_mapel`
--

INSERT INTO `db_mapel` (`id_mapel`, `mapel`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Bahasa Inggris'),
(3, 'Matematika'),
(4, 'Biologi'),
(5, 'Fisika'),
(6, 'Kimia'),
(7, 'Sosiologi'),
(8, 'Geografi'),
(9, 'Ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `db_soal`
--

CREATE TABLE IF NOT EXISTS `db_soal` (
  `id_mapel` int(11) DEFAULT NULL,
  `id_soal` int(11) NOT NULL,
  `soal` varchar(1200) DEFAULT NULL,
  `path_gmb` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_soal`
--

INSERT INTO `db_soal` (`id_mapel`, `id_soal`, `soal`, `path_gmb`) VALUES
(4, 1, 'Mendel telah menemukan bahwa sifat-sifat makhluk hidup dapat diturunkan melalui faktor-faktor keturunan. Penemuan ini selanjutnya dikembangkan melalui penelitian-penelitian yang akhirnya menghasilkan fakta bahwa DNA membawa materi genetik. Melalui perkembangan bioteknologi muncullah teknik rekayasa genetika. Dalam bidang kedokteran teknik rekayasa genetika dapat dimanfaatkan untuk menghasilkan ....', NULL),
(4, 2, 'Tika mengamati jamur  dengan  ciri-ciri berikut.\r\n1. Miselium berkembang  dalam substrat\r\n2. Sporangium  tumbuh  pada ujung hifa yang muncul tegak dari substrat\r\n3. Termasuk  dalam kelompok zygomycotina\r\n4. Bersifat  saprofit  pada:  roti kotoran  ternak, dan sisa makanan  yang mengandung karbohidrat\r\nJamur tersebut adalah .', NULL),
(4, 3, 'Bakteri Rhizobium sp bersimbiosis pada akar tanaman kacang-kacangan. Bakteri ini menguntungkan dalam bidang pertanian sebab .', NULL),
(4, 4, 'Hutan hujan tropis merupakan habitat yang paling banyak menyimpan keanekaragaman hayati. Jenis hutan ini banyak terdapat di Indonesia. Cara pemanfaatannya agar tetap lestari adalah dengan', NULL),
(4, 5, 'Sekelompok siswa sedang mengamati cumi-cumi, kerang, dan bekicot. Hewan-hewan tersebut mempunyaipersamaan,yaitu bertubuh lunak sehingga hewan tersebut dimasukkan dalam kelompok ....', NULL),
(4, 6, 'Cacing pita termasuk dalam kelompok Cestoda. Cacing ini bersifat endoparasit dalam saluran pencernaan vertebrata. Urutan dari fase-fase yang dialami cacing tersebut setelah dari telur adalah ...', NULL),
(4, 7, 'Eceng gondok merupakan  tanaman air yang berperan sebagai  produsen pada ekosistem  air tawar. Pada kondisi  tertentu  perturnbuhan  tanaman  ini menjadi  sangat pesat  karena adanya limbah dari pupuk tanaman yang  terbawa aliran air ke sungai sehingga dapat menyebabkan...', NULL),
(4, 8, 'Hutan adalah suatu ekosistem darat yang besar pengaruhnya  terhadap kehidupan  karena ulah manusia,  seperti melakukan penebangan secara  liar, membakar  hutan sehingga hutan menjadi  rusak dan gundul. Upaya yang harus dilakukan untuk menjaga agar hutan menjadi produktif adalah .', NULL),
(4, 9, 'Pada tumbuhan  dikotil di antara  janngan  xilem dan  floem  terdapat kambium. Kambium  ini akan membenfuk  xilem sekunder  dan  floem sekunder. Kambium  tersusun atas  jaringan meristem. Bagaimanakah  sifat dari  jaringan meristem  tersebut?', NULL),
(4, 10, 'Kebiasaan  hidup dengan pola makan makanan  yang berlemak  jenuh dapat menyebabkan terjadinya  penyempitan pembuluh darah. Penyakit yang disebabkan  oleh adanya endapan lemak dinamakan...', NULL),
(4, 11, 'Kebiasaan makan yang  tidak  teratur,  jenis makanan  tertenfu, obat-obatan,  dan stres dapat menyebabkan penyakit maag. Gejala maag ditunjukkan  dengan  rasa sakit atau perih dalam lambung. Gangguan ini terjadi karena...', NULL),
(4, 12, 'Gas CO yang masuk ke dalam sistem pemapasan kita dapat menyebabkan kematian Karena .', NULL),
(4, 13, 'Hasil tes urin seseorang ternyata mengandung protein. Hal ini menunjukkan adanya gangguan pada proses ...', NULL),
(4, 14, 'Perhatikan gambar struktur telinga berikut: Bagian dari telinga yang berfungsi untuk memperkuat intensitas getaran ditunjukkan oleh ', NULL),
(4, 15, 'Hormon LH (luteinizing hormon) dalam sistem reproduksi berperan dalam proses ....', NULL),
(4, 16, 'Seorang  siswa melakukan  percobaan  dengan  pertumbuhan  tumbuhan dengan cara menanam  tanaman di dua pot yang berbeda.  Pot A ditutup dengan  plastik hitam, sedangkan pot B ditutup dengan  plastik yang  transparan. Pertumbuhan  tanaman di kedua pot tersebut kemudian  diamati setelah 7 hari ternyata tanaman di pot A adalah ', NULL),
(4, 17, 'Pada percobaan testing pertumbuhan kecambah sejenis kacang, diperoleh data sebagai berikut : Dari data di bawah ini berarti kecepatan tumbuh biji kacang tersebut perhari adalah .......\r\nBiji Panjang kecambah pada hari ke-\r\n 1 2 3 4 5\r\nI. - ; 0,5 ; 0,7 ; 0,8 ; 1,2\r\nII. - ; 0,4 ; 0,5 ; 0,7 ; 1\r\nIII. - ; 0,1 ; 0,2 ; 0,4 ; 0,7\r\nIV. - ; 0,3 ; 0,5 ; 0,6 ; 0,8\r\nV. - ; 0,2 ; 0,3 ; 0,5 ; 0,7', NULL),
(4, 18, 'Sianida merupakan inhibitor kompetitif bagi kerja enzim dalam proses respirasi sel karena.,..', NULL),
(4, 19, 'Respirasi merupakan  proses  pembebasan energi  yang  tersimpan dalam  zat-zat makanan. Pada proses katabolisme  karbohid"rat  terjadi  tiga tahapan  reaksi, yaitu glikolisis,  siklus Krebs dan transpor elektron. Melalui siklus Krebs  akan dihasilkan  ....', NULL),
(4, 20, 'Pada reaksi  terang  terjadi 2 macam aliran elektron,  yaitu elektron  siklik dan non siklik. Pada aliran elektron  siklik akan  terbentuk  .', NULL),
(4, 21, 'Perhatikan  skema  tahapan  respirasi  aerob di dalam otot berikut  ini! Bagian  yang ditunjukkan P dan Q adalah  .,..', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE IF NOT EXISTS `db_user` (
  `id_user` int(11) NOT NULL DEFAULT '0',
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `NIDN` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id_user`, `username`, `password`, `NIDN`) VALUES
(1, 'novan', 'novan', 2103141057);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_admin`
--
ALTER TABLE `db_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `db_jawaban`
--
ALTER TABLE `db_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_kunci`
--
ALTER TABLE `db_kunci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_log`
--
ALTER TABLE `db_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `db_mapel`
--
ALTER TABLE `db_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `db_soal`
--
ALTER TABLE `db_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_jawaban`
--
ALTER TABLE `db_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `db_kunci`
--
ALTER TABLE `db_kunci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
