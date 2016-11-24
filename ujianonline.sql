-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 11:51 PM
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
-- Table structure for table `db_log`
--

CREATE TABLE IF NOT EXISTS `db_log` (
  `id_log` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_log`
--

INSERT INTO `db_log` (`id_log`, `id_mapel`, `id_user`, `nilai`) VALUES
(1, 4, 1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `db_mapel`
--

CREATE TABLE IF NOT EXISTS `db_mapel` (
  `id_mapel` int(11) NOT NULL,
  `mapel` varchar(20) NOT NULL
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
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `soal` varchar(413) DEFAULT NULL,
  `path_gmb` varchar(30) DEFAULT NULL,
  `jwb_A` varchar(56) DEFAULT NULL,
  `jwb_B` varchar(68) DEFAULT NULL,
  `jwb_C` varchar(62) DEFAULT NULL,
  `jwb_D` varchar(62) DEFAULT NULL,
  `jwb_E` varchar(69) DEFAULT NULL,
  `kunci` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_soal`
--

INSERT INTO `db_soal` (`id_mapel`, `id_soal`, `soal`, `path_gmb`, `jwb_A`, `jwb_B`, `jwb_C`, `jwb_D`, `jwb_E`, `kunci`) VALUES
(4, 1, 'Mendel telah menemukan bahwa sifat-sifat makhluk hidup dapat diturunkan melalui faktor-faktor keturunan. Penemuan ini selanjutnya dikembangkan melalui penelitian-penelitian yang akhirnya menghasilkan fakta bahwa DNA membawa materi genetik. Melalui perkembangan bioteknologi muncullah teknik rekayasa genetika. Dalam bidang kedokteran teknik rekayasa genetika dapat dimanfaatkan untuk menghasilkan ....', NULL, 'vaksin  hepatitis  B dan  interferon alfa', 'insulin manusia dan antibodi monoklonal', 'antibiotika  dan hormon  pertumbuhan', 'enzim restriksi dan protein sel tunggal', 'asam amino dan vitamin', 2),
(4, 2, 'Tika mengamati jamur  dengan  ciri-ciri berikut.\r\n1. Miselium berkembang  dalam substrat\r\n2. Sporangium  tumbuh  pada ujung hifa yang muncul tegak dari substrat\r\n3. Termasuk  dalam kelompok zygomycotina\r\n4. Bersifat  saprofit  pada:  roti kotoran  ternak, dan sisa makanan  yang mengandung karbohidrat\r\nJamur tersebut adalah .', NULL, 'Mucor mucedo', 'Rhizopus oligosporus', 'Aspergilus oryzae', 'Volvariela volvacea', 'Auricula politrica', NULL),
(4, 3, 'Bakteri Rhizobium sp bersimbiosis pada akar tanaman kacang-kacangan. Bakteri ini menguntungkan dalam bidang pertanian sebab .', NULL, 'Membunuh hama tanaman', 'menggemburkan  lahan Pertanian', 'menguraikan  sampah organik', 'mengikat nitrogen bebas', 'mengubah amoniak menjadi nitrat', NULL),
(4, 4, 'Hutan hujan tropis merupakan habitat yang paling banyak menyimpan keanekaragaman hayati. Jenis hutan ini banyak terdapat di Indonesia. Cara pemanfaatannya agar tetap lestari adalah dengan', NULL, 'memanfaatkan  sumber daya alamnya semaksimal mungkin', 'menggunakan alat-alat modern  sehingga  tidak menimbulkan  kerusakan', 'membuat  semua hutan menjadi  kawasan tertutup', 'menggunakan metode  tebang  pilih dan tanam kembali', 'melakukan penelitian yang  intensif di kawasan hutan tersebut', NULL),
(4, 5, 'Sekelompoksiswa sedang mengamati cumi-cumi, kerang, dan bekicot. Hewan-hewan tersebut mempunyaipersamaan,yaitu bertubuh lunak sehingga hewan tersebut dimasukkan dalam kelompok ....', NULL, 'molusca', 'chephalopoda', 'gastropoda', 'bivalvia', 'Pelecypoda', NULL),
(4, 6, 'Cacing pita termasuk dalam kelompok Cestoda. Cacing ini bersifat endoparasit dalam saluran pencernaan vertebrata. Urutan dari fase-fase yang dialami cacing tersebut setelah dari telur adalah ...', NULL, 'onkosfer - sistiserkus - cacing pita dewasa', 'sistiserkus  - onkosfer - cacing pita dewasa', 'cacing pita muda - onkosfer - sistiserkus - cacing pita dewasa', 'sistiserkus - onkosfer - cacing pita muda - cacing pita dewasa', 'onkosfer - cacing pita muda - sistiserkus - cacing pita dewasa', NULL),
(4, 7, 'Eceng gondok merupakan  tanaman air yang berperan sebagai  produsen pada ekosistem  air tawar. Pada kondisi  tertentu  perturnbuhan  tanaman  ini menjadi  sangat pesat  karena adanya limbah dari pupuk tanaman yang  terbawa aliran air ke sungai sehingga dapat menyebabkan...', NULL, 'tanaman  air yang  lain dapat  tumbuh  dengan pesat pula', 'menumpuknya  logam-logam berat di dasar sungai', 'berkurangnya O2 dibawah permukaan air', 'berkurangnya  CO2 di bawah  permukaan air', 'proses pembusukan berjalan  sangat  lambat karena tidak ada CO2', NULL),
(4, 8, 'Hutan adalah suatu ekosistem darat yang besar pengaruhnya  terhadap kehidupan  karena ulah manusia,  seperti melakukan penebangan secara  liar, membakar  hutan sehingga hutan menjadi  rusak dan gundul. Upaya yang harus dilakukan untuk menjaga agar hutan menjadi produktif adalah .', NULL, 'menjaga pelestarian hewan dantumbuhan', 'menjaga keseimbangan air di sekitarnya', 'mencegah  peremajaan  hutan kembali', 'menerapkan aturan  hukum bagi pelariggar pemanfaatan hutan', 'melakukan penebangan  pohon yang diimbangi  dengan penanaman  kembali', NULL),
(4, 9, 'Pada tumbuhan  dikotil di antara  janngan  xilem dan  floem  terdapat kambium. Kambium  ini akan membenfuk  xilem sekunder  dan  floem sekunder. Kambium  tersusun atas  jaringan meristem. Bagaimanakah  sifat dari  jaringan meristem  tersebut?', NULL, 'Memperkuat  xilem dan  floem.', 'Dapat memperbanyak  diri', 'Mengisap  air dari dalam tanah', 'Mengandung zat kayu', 'Dapat mengalami perubahan bentuk.', NULL),
(4, 10, 'Kebiasaan  hidup dengan pola makan makanan  yang berlemak  jenuh dapat menyebabkan terjadinya  penyempitan pembuluh darah. Penyakit yang disebabkan  oleh adanya endapan lemak dinamakan...', NULL, 'Arteriosklerosis', 'Arteriosklerosis', 'Embolus', 'Trombus', 'Thrombosis', NULL),
(5, 11, 'Seorang anak berlari menempuh jarak 40 m ke utara, kemudian membelok ke timur 40 m dan ke selatan 10 meter. Besar perpindahan yang dilakukan anak tersebut adalah ... m.', NULL, '10', '30', '50', '70', '90', 3),
(5, 12, 'Perhatikan pengukuran ketebalan suatu benda dengan mikrometer sekrup berikut. Maka hasil pengukurannya adalah ....', NULL, '3,4 mm', '3,5 mm', '3,6 mm', '3,7 mm', '3,9 mm', 5),
(5, 13, 'Perhatikan gambar balok berikut! Jika massa balok 6 kg, dan percepatan gravitasi 10 m/s2 10 maka gaya normal yang di alami balok tersebut adalah .', NULL, '54 N', '60 N', '66 N', '86 N', '90 N', 1),
(5, 14, 'Perhatikan gambar di samping! Massa balok masing-masing m1 = 12 kg dan m2 = 8 kg serta massa katrol diabaikan. Jika permukaan bidang licin, dan g = 10 m.s-2, maka percepatan system adalah  m/s2.', NULL, '1,5', '2', '2,5', '4', '5', 4),
(5, 15, 'Sebuah benda bergerak melingkar beraturan dengan jari-jari 12 meter. Jika dalam 4 menit benda itu melakukan 32 kali putaran, maka kecepatan linear benda tersebut adalah ... m/s.', NULL, '1,6p', '2,0p', '2,4p', '2,8p', '3,2p', 5),
(5, 16, 'Grafik di samping merupakan grafik sebuah benda yang bergerak lurus. Jarak yang ditempuh benda antara 0 sampai dengan 16 s adalah ....', NULL, '288 m', '144 m', '128 m', '96 m', '48 m', 1),
(5, 17, 'Sebuah katrol dari benda pejal dengan tali yang dililitkan pada sisi luarnya ditampilkan seperti gambar. Gesekan katrol diabaikan. Jika momen inersia katrol I = A dan tali ditarik dengan gaya tetap F, maka nilai F setara dengan ....', NULL, 'F = ? . A . R', 'F = ? . A2 . R', 'F = ? . (A . R)?1', 'F = ? . A . (R)?1', 'F = R . (A . ?)?1', 4),
(5, 18, 'Dari percobaan menentukan elastisitas karet dengan menggunakan karet ban diperoleh data seperti tabel berikut. Dapat disimpulkan nilai konstanta terbesar adalah percobaan ....', NULL, '200 Nm-1', '320 Nm-1', '300 Nm-1', '200 Nm-1', '300 Nm-1', 2),
(5, 19, 'Untuk meregangkan sebuah pegas sejauh 15 cm diperlukan gaya sebesar 60 N. Energi potensial pegas ketika meregang sejauh 30 cm adalah  J.', NULL, '6', '12', '60', '150', '300', 2),
(5, 20, 'Perhatikan pernyataan berikut: Sebuah jendela kaca, yang memiliki ukuran 200 cm x 100 cm dan tebal 10 mm bersuhu 30OC pada permukaan luarnya. Jika suhu permukaan dalamnya sebesar 20oC dan koe?sien konduksi kaca 10-5 kal/(msK), maka jumlah kalor yang masuk tiap menit melalui jendela itu adalah  kal.', NULL, '1', '1,2', '1,4', '1,6', '1,8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE IF NOT EXISTS `db_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(5) NOT NULL,
  `password` varchar(5) NOT NULL,
  `NIDN` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id_user`, `username`, `password`, `NIDN`, `status`) VALUES
(1, 'novan', 'novan', 2103141057, 2),
(2, 'admin', 'admin', NULL, 1);

--
-- Indexes for dumped tables
--

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
