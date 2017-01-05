-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2017 at 02:02 PM
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
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int(11) NOT NULL,
  `id_mapel` int(1) NOT NULL,
  `waktu` datetime NOT NULL,
  `jam` time DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `id_mapel`, `waktu`, `jam`, `tanggal`) VALUES
(2, 2, '2016-12-14 12:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lognilai`
--

CREATE TABLE IF NOT EXISTS `lognilai` (
  `id_log` bigint(20) NOT NULL,
  `nisn` varchar(11) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `bind` int(3) NOT NULL,
  `bing` int(3) NOT NULL,
  `mat` int(3) NOT NULL,
  `bio` int(3) NOT NULL,
  `fis` int(3) NOT NULL,
  `kim` int(3) NOT NULL,
  `sos` int(3) NOT NULL,
  `geo` int(3) NOT NULL,
  `eko` int(3) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lognilai`
--

INSERT INTO `lognilai` (`id_log`, `nisn`, `username`, `bind`, `bing`, `mat`, `bio`, `fis`, `kim`, `sos`, `geo`, `eko`, `id_mapel`) VALUES
(7, '2103141057', 'Novan Andhy Trianto', 98, 98, 98, 98, 98, 98, 98, 98, 98, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` bigint(20) NOT NULL,
  `mapel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `mapel`) VALUES
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
-- Table structure for table `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
  `id_mapel` int(11) DEFAULT NULL,
  `jwb_a` varchar(255) DEFAULT NULL,
  `jwb_b` varchar(255) DEFAULT NULL,
  `jwb_c` varchar(255) DEFAULT NULL,
  `jwb_d` varchar(255) DEFAULT NULL,
  `jwb_e` varchar(255) DEFAULT NULL,
  `kunci` int(11) DEFAULT NULL,
  `soal` longtext,
  `path_gmb` varchar(255) DEFAULT NULL,
  `id_soal` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_mapel`, `jwb_a`, `jwb_b`, `jwb_c`, `jwb_d`, `jwb_e`, `kunci`, `soal`, `path_gmb`, `id_soal`) VALUES
(4, 'vaksin hepatitis B dan interferon alfa', 'insulin manusia dan antibodi monoklonal', 'antibiotika dan hormon pertumbuhan', 'enzim restriksi dan protein sel tunggal', 'asam amino dan vitamin', 2, 'Mendel telah menemukan bahwa sifat-sifat makhluk hidup dapat diturunkan melalui faktor-faktor keturunan. Penemuan ini selanjutnya dikembangkan melalui penelitian-penelitian yang akhirnya menghasilkan fakta bahwa DNA membawa materi genetik. Melalui perkembangan bioteknologi muncullah teknik rekayasa genetika. Dalam bidang kedokteran teknik rekayasa genetika dapat dimanfaatkan untuk menghasilkan ....', '', 1),
(4, 'Mucor mucedo', 'Rhizopus oligosporus', 'Aspergilus oryzae', 'Volvariela volvacea', 'Auricula politrica', 1, 'Tika mengamati jamur dengan ciri-ciri berikut.\r\n1. Miselium berkembang dalam substrat\r\n2. Sporangium tumbuh pada ujung hifa yang muncul tegak dari substrat\r\n3. Termasuk dalam kelompok zygomycotina\r\n4. Bersifat saprofit pada: roti kotoran ternak, dan sisa makanan yang mengandung karbohidrat\r\nJamur tersebut adalah .', '', 2),
(4, 'Membunuh hama tanaman', 'menggemburkan lahan Pertanian', 'menguraikan sampah organik', 'mengikat nitrogen bebas', 'mengubah amoniak menjadi nitrat', 4, 'Bakteri Rhizobium sp bersimbiosis pada akar tanaman kacang-kacangan. Bakteri ini menguntungkan dalam bidang pertanian sebab .', '', 3),
(4, 'memanfaatkan sumber daya alamnya semaksimal mungkin', 'menggunakan alat-alat modern sehingga tidak menimbulkan kerusakan', 'membuat semua hutan menjadi kawasan tertutup', 'menggunakan metode tebang pilih dan tanam kembali', 'melakukan penelitian yang intensif di kawasan hutan tersebut', 4, 'Hutan hujan tropis merupakan habitat yang paling banyak menyimpan keanekaragaman hayati. Jenis hutan ini banyak terdapat di Indonesia. Cara pemanfaatannya agar tetap lestari adalah dengan', '', 4),
(4, 'molusca', 'chephalopoda', 'gastropoda', 'bivalvia', 'Pelecypoda', 1, 'Sekelompoksiswa sedang mengamati cumi-cumi, kerang, dan bekicot. Hewan-hewan tersebut mempunyaipersamaan,yaitu bertubuh lunak sehingga hewan tersebut dimasukkan dalam kelompok ....', '', 5),
(4, 'onkosfer - sistiserkus - cacing pita dewasa', 'sistiserkus - onkosfer - cacing pita dewasa', 'cacing pita muda - onkosfer - sistiserkus - cacing pita dewasa', 'sistiserkus - onkosfer - cacing pita muda - cacing pita dewasa', 'onkosfer - cacing pita muda - sistiserkus - cacing pita dewasa', 1, 'Cacing pita termasuk dalam kelompok Cestoda. Cacing ini bersifat endoparasit dalam saluran pencernaan vertebrata. Urutan dari fase-fase yang dialami cacing tersebut setelah dari telur adalah ...', '', 6),
(4, 'tanaman air yang lain dapat tumbuh dengan pesat pula', 'menumpuknya logam-logam berat di dasar sungai', 'berkurangnya O2 dibawah permukaan air', 'berkurangnya CO2 di bawah permukaan air', 'proses pembusukan berjalan sangat lambat karena tidak ada CO2', 3, 'Eceng gondok merupakan tanaman air yang berperan sebagai produsen pada ekosistem air tawar. Pada kondisi tertentu perturnbuhan tanaman ini menjadi sangat pesat karena adanya limbah dari pupuk tanaman yang terbawa aliran air ke sungai sehingga dapat menyebabkan...', '', 7),
(4, 'menjaga pelestarian hewan dantumbuhan', 'menjaga keseimbangan air di sekitarnya', 'mencegah peremajaan hutan kembali', 'menerapkan aturan hukum bagi pelariggar pemanfaatan hutan', 'melakukan penebangan pohon yang diimbangi dengan penanaman kembali', 2, 'Hutan adalah suatu ekosistem darat yang besar pengaruhnya terhadap kehidupan karena ulah manusia, seperti melakukan penebangan secara liar, membakar hutan sehingga hutan menjadi rusak dan gundul. Upaya yang harus dilakukan untuk menjaga agar hutan menjadi produktif adalah .', '', 8),
(4, 'Memperkuat xilem dan floem.', 'Dapat memperbanyak diri', 'Mengisap air dari dalam tanah', 'Mengandung zat kayu', 'Dapat mengalami perubahan bentuk.', 4, 'Pada tumbuhan dikotil di antara janngan xilem dan floem terdapat kambium. Kambium ini akan membenfuk xilem sekunder dan floem sekunder. Kambium tersusun atas jaringan meristem. Bagaimanakah sifat dari jaringan meristem tersebut?', '', 9),
(4, 'Arteriosklerosis', 'Arteriosklerosis', 'Embolus', 'Trombus', 'Thrombosis', 5, 'Kebiasaan hidup dengan pola makan makanan yang berlemak jenuh dapat menyebabkan terjadinya penyempitan pembuluh darah. Penyakit yang disebabkan oleh adanya endapan lemak dinamakan...', '', 10),
(5, '10', '30', '50', '70', '90', 3, 'Seorang anak berlari menempuh jarak 40 m ke utara, kemudian membelok ke timur 40 m dan ke selatan 10 meter. Besar perpindahan yang dilakukan anak tersebut adalah ... m.', '', 11),
(5, '3,4 mm', '3,5 mm', '3,6 mm', '3,7 mm', '3,9 mm', 5, 'Perhatikan pengukuran ketebalan suatu benda dengan mikrometer sekrup berikut. Maka hasil pengukurannya adalah ....', 'images/5.2.png', 12),
(5, '54 N', '60 N', '66 N', '86 N', '90 N', 1, 'Perhatikan gambar balok berikut! Jika massa balok 6 kg, dan percepatan gravitasi 10 m/s2 10 maka gaya normal yang di alami balok tersebut adalah .', 'images/5.3.png', 13),
(5, '01.05', '2', '02.05', '4', '5', 4, 'Perhatikan gambar di samping! Massa balok masing-masing m1 = 12 kg dan m2 = 8 kg serta massa katrol diabaikan. Jika permukaan bidang licin, dan g = 10 m.s-2, maka percepatan system adalah  m/s2.', 'images/5.4.png', 14),
(5, '1,6p', '2,0p', '2,4p', '2,8p', '3,2p', 5, 'Sebuah benda bergerak melingkar beraturan dengan jari-jari 12 meter. Jika dalam 4 menit benda itu melakukan 32 kali putaran, maka kecepatan linear benda tersebut adalah ... m/s.', '', 15),
(5, '288 m', '144 m', '128 m', '96 m', '48 m', 1, 'Grafik di samping merupakan grafik sebuah benda yang bergerak lurus. Jarak yang ditempuh benda antara 0 sampai dengan 16 s adalah ....', 'images/5.6.png', 16),
(5, 'F = ? . A . R', 'F = ? . A2 . R', 'F = ? . (A . R)?1', 'F = ? . A . (R)?1', 'F = R . (A . ?)?1', 4, 'Sebuah katrol dari benda pejal dengan tali yang dililitkan pada sisi luarnya ditampilkan seperti gambar. Gesekan katrol diabaikan. Jika momen inersia katrol I = A dan tali ditarik dengan gaya tetap F, maka nilai F setara dengan ....', 'images/5.7.png', 17),
(5, '200 Nm-1', '320 Nm-1', '300 Nm-1', '200 Nm-1', '300 Nm-1', 2, 'Dari percobaan menentukan elastisitas karet dengan menggunakan karet ban diperoleh data seperti tabel berikut. Dapat disimpulkan nilai konstanta terbesar adalah percobaan ....', 'images/5.8.png', 18),
(5, '6', '12', '60', '150', '300', 2, 'Untuk meregangkan sebuah pegas sejauh 15 cm diperlukan gaya sebesar 60 N. Energi potensial pegas ketika meregang sejauh 30 cm adalah  J.', '', 19),
(5, '1', '01.02', '01.04', '01.06', '01.08', 1, 'Perhatikan pernyataan berikut: Sebuah jendela kaca, yang memiliki ukuran 200 cm x 100 cm dan tebal 10 mm bersuhu 30OC pada permukaan luarnya. Jika suhu permukaan dalamnya sebesar 20oC dan koe?sien konduksi kaca 10-5 kal/(msK), maka jumlah kalor yang masuk tiap menit melalui jendela itu adalah  kal.', 'images/5.10.png', 20),
(1, 'Bendungan dari bantalan karet dapat membendung sungai.', 'Bendungan dari bantalan karet sangat bermanfaat.', 'Bendungan dari bantalan karet dapat mengalirkan air.', 'Pemanfaatan air melalui bendungan bantalan karet.', 'Bendungan bantalan karet dapat diisi dengan air.', 2, '.Bacalah wacana berikut dengan saksama!\r\nBendungan di Desa Jatirogo ini tidak ada duanya di Indonesia. Tubuh bendungan tersebut\r\ndari bantalan karet berisi air. Karena terbuat dari karet, tinggi permukaannya bisa diatur\r\nsecara fleksibel. Bila terjadi banjir, bantalan karet itu dikempiskan. Dan air bah lancar\r\nmengalir ke laut. Sebaliknya, bila volume air sungai mengecil, tubuh bendungan diisi\r\npenuh, sehingga tingginya mencapai 3 m. Sungai terbendung dan airnya dimanfaatkan\r\nsebagai air minum dan irigasi. Pada saat yang sama, air pasang dari laut akan terhambat\r\ndan tak mencemari sungai yang menjadi sumber utama air tawar masyarakat di sekitar\r\nsungai.\r\nSimpulan isi wacana di atas adalah', '', 21),
(1, 'Soetomo lahir di Desa Ngepeh, Kabupaten Nganjuk, Jawa Timur. Setamat dari ELS di Bangil, ia melanjutkan studinya ke STOVIA di Jakarta. Pada masa kemahasiswaannya itulah ia tampil sebagai penggerak berdirinya Boedi Oetomo.', 'Pada waktu kecil, Soetomo diberi nama Soebroto. Nama itu kemudian diganti menjadi Soetomo untuk melanjutkan sekolah ke STOVIA Jakarta.', 'Soetomo lahir di Desa Ngepah, Kabupaten Nganjuk, Jawa Timur. Setelah besar ia pindah ke Jakarta untuk menggapai cita-citanya menjadi dokter. Ia mendaftarkan diri sebagai mahasiswa STOVIA dan lulus pada tanggal 10 Januari 1903.', 'Dari sejak sekolah ELS di Bangil, Soetomo sudah bercita-cita menjadi dokter. Ia ingin mengabdikan dirinya sebagai dokter dari satu tempat ke tempat lain di Indonesia.', 'Dari sejak sekolah ELS di Bangil, Soetomo sudah bercita-cita menjadi dokter. Ia ingin mengabdikan dirinya sebagai dokter dari satu tempat ke tempat lain di Indonesia.', 1, 'Bacalah teks berikut ini dengan saksama!\r\nSoetomo lahir di Desa Ngepeh, Kabupaten Nganjuk, Jawa Timur, pada tanggal 30 Juli 1888. Pada waktu kecil pemuda itu oleh ayahnya diberi nama Soebroto. Nama itu kemudian diganti menjadi Soetomo ketika dia mengikuti sekolah rendah Belanda (ELS) di Bangil. Setelah tamat dari ELS di Bangil, Soetomo melanjutkan studinya ke Jakarta. Ia masuk sekolah kedokteran Jawa yang bernama STOVIA pada tanggal 10 Januari 1903. Pada masa kemahasiswaannya inilah, ia tampil sebagai penggerak utama berdirinya Boedi Oetomo pada bulan Mei 1908.\r\nPernyataan-pernyataan berikut yang sesuai dengan isi paragraf di atas adalah..', '', 22),
(1, 'Bersama surat ini kami mengundang Saudara untuk menghadiri rapat pada', 'Dengan surat ini kami mengundang Saudara untuk menghadiri rapat pada', 'Kami mengundang Saudara untuk menghadiri rapat pada', 'Kami mengundang Saudara untuk menghadiri rapat', 'Saya mengundang Saudara untuk menghadiri rapat pada', 2, 'Bacalah surat undangan berikut ini!\r\nYth. Saudara Bambang Sukadi\r\nJalan Sidobali 25\r\nKota Gede, Yogyakarta\r\n\r\nhari : Senin\r\ntanggal : 20 Agustus 2004 waktu : pukul 08.30 sampai selesai tempat : ruang sidang SMA Pertiwi\r\nKami mengucapkan terima kasih atas perhatian saudara.\r\nKalimat yang tepat untuk melengkapi bagian pembuka surat di atas adalah ', '', 23),
(1, 'Mengecam kinerja POLRI yang kurang baik.', 'Memberitahukan kepada rakyat agar menggunakan SMS, surat, maupun telepon dalam berkomunikasi dengan presiden.', 'Mengimbau agar POLRI meningkatkan kualitas pelayanan kepada masyarakat dengan penuh tanggung jawab.', 'Menenangkan hati rakyat dengan cara mengadakan komunikasi melalui surat, telepon, maupun SMS.', 'Mendorong masyarakat agar membantu POLRI dalam meningkatkan kualitas pelayanan.', 3, 'Bacalah penggalan pidato di bawah ini dengan saksama!\r\nDalam proses komunikasi saya dengan seluruh rakyat Indonesia, baik melalui surat, telepon, maupun SMS, masih sering dirasakan adanya pelayanan yang kurang baik kepada rakyat. Oleh karena itu, mari kita tingkatkan kualitas pelayanan dengan penuh ketulusan, kasih sayang, dan rasa tanggung jawab.\r\n(Presiden Susilo Bambang Yudhoyono, pada acara HUT ke-59 Bhayangkara)\r\nPenggalan pidato tersebut bertujuan', '', 24),
(1, 'Produksi padi tahun 2005 diperkirakan menurun.', 'Produksi padi tahun 2005 diperkirakan mencapai 53,01 juta ton gabah kering atau turun dua persen dari sebelumnya.', 'Adanya penyebab turunnya produksi padi, yaitu banjir dan kekeringan.', 'Produksi padi tahun 2005 lebih jelek dibandingkan tahun sebelumnya.', 'Produksi padi tahun 2005 turun akibat banjir, kekeringan, dan pergeseran waktu tanam.', 1, 'Bacalah paragraf berikut dengan saksama!\r\nProduksi padi tahun 2005 diperkirakan mencapai 53,01 juta ton gabah kering giling atau turun dua persen dibandingkan dengan produksi tahun sebelumnya. Hal ini disebabkan adanya penurunan luas panen padi sawah akibat bencana banjir dan kekeringan, serta pergeseran waktu tanam pada empat bulan pertama di tahun 2005.\r\nGagasan utama paragraf di atas adalah', '', 25),
(1, 'Kurang pikir kurang siasat, tentu kelak dirimu tersesat.', 'Siapa menggemari silang-sengketa, kelaknya pasti berdukacita.', 'Membuat perkara amatlah mudah, jika terjadi timbullah gundah.', 'Fikir dahulu sebelum berkata, supaya terelak silang-sengketa.', 'Kalau diri kena perkara, turut susah sanak saudara.', 2, 'Mereka selalu saja bermusuhan tidak pernah rukun. Sekarang mereka harus menanggung segala akibat dari perbuatannya.\r\nGurindam yang sesuai dengan ilustrasi di atas adalah.', '', 26),
(1, 'a. (1) dan (2)', 'b. (1) dan (3)', 'c. (1) dan (2)', 'd. (1) dan (5)', 'e. (2) dan (5)', 4, '(1) Dengarkan angin mengusir batang-batang padi.\r\n(2) Sebelum matahari terbenam.\r\n(3) Dengarkan senandung di balik jendela.\r\n(4) Rumah kecil, bukanlah pintu pagarku\r\n(5) Angin datang mengantarkan berita\r\nBerdasarkan puisi tersebut larik yang bermajas sama dintadai dengan nomor ..', '', 27),
(1, 'Bersama ini kami beri tahukan bahwa lamaran Saudara tidak dapat diterima.', 'Sesuai dengan surat Saudara, dengan ini diberitahukan bahwa lamaran Saudara ditolak.', 'Lowongan pekerjaan yang Saudara kehendaki tidak ada dan kebetulan belum dibutuhkan.', 'Berhubungan dengan surat Saudara maka lamaran pekerjaan Saudara kami tolak sementara.', 'Dengan surat ini kami memberitahukan bahwa lowongan jabatan yang yang Saudara inginkan sudah terisi.', 5, 'Bacalah ilustrasi berikut!\r\nSeorang calon pelamar pekerjaan mengajukan sebuah surat lamaran pekerjaan yang ditujukan ke suatu PT yang bergerak di bidang telekomunikasi. Karena lowongan tersebut sudah terisi maka lamaran tersebut terpaksa ditolak.\r\nKalimat penolakan lamaran pekerjaan yang sesuai dengan ilustrasi di atas adalah.', '', 28),
(1, 'Warga komplek membangun gedung pertemuan secara swadaya.', 'Pada saat pasca panen, harga gabah sering melorot. x', 'Setiap bus antarpropinsi harus dalam kondisi laik jalan.', 'Banyak pelajar melakukan kerja sosial untuk mengisi liburan.', 'Para tunawisma di jembatan lama akan ditertibkan.', 2, 'Penulisan kata bergaris bawah berikut ini yang tidak tepat terdapat pada kalimat.', '', 29),
(1, 'Seluruh aparat keamanan melindungi masyarakat.', 'Semua polisi pengayom masyarakat.', 'Setiap abdi masyarakat melindungi masyarakat.', 'Semua polisi harus melindungi masyarakat.', 'Semua aparat keamanan selalu berbuat baik pada masyarakat.', 1, 'Perhatikan silogisme berikut ini! PU = \n\nPK = Polisi adalah aparat keamanan\r\nK = Polisi melindungi masyarakat\r\nPremis umum yang tepat untuk penalaran di atas adalah ', '', 30),
(2, 'A school debate.', 'A school competition.', 'A debate competition.', 'Extracurricular activities.', 'Participants of the debate.', 3, 'ANNOUNCEMENT\r\n\r\nPay attention!\r\nOur school will have a Debate Competition\r\nParticipants : All students in our school\r\nIt will be held from 10th  12th August 2008\r\nPrizes : I Rp. 2.000.000,-\r\nII Rp. 1.500.000,-\r\nIII Rp. 1.000.000,-\r\nPlease join us!\r\n\r\nWhat is the announcement about?', '', 31),
(2, 'is only for students with good English.', 'is in the form of spoken arguments.', 'is in the form of written arguments.', 'will be held after school hours.', 'will run for two days.', 2, 'According to the text the competition ', '', 32),
(2, 'Mangroves grow on dry land', 'Mangroves are tropical marine trees', 'There are many species of mangroves', 'Mangroves roots filter the salt of the sea-water', 'Mangrove roots are attached firmly to the ground', 2, 'Mangrove Trees\r\n\r\nA mangrove is a tropical marine tree or shrub of the genus Rhizhopora. Mangroves have special aerial roots and salt-filtering tap roots that enable them to thrive in brackish water (brackish water is salty, but not as salty as sea water).\r\nThere are several species of mangrove trees found all over the world. Some prefer more salinity, while others like to be very close to a large fresh water source (such as a river). Some prefer areas that are sheltered from waves. Some species have their roots covered with sea water everyday during high tide. Other species grow on dry land, but are still part of the ecosystem.\r\nMangroves need to keep their trunk and leaves above the surface of the water. Yet they also need to be firmly attached to the ground so they are not moved by waves. There are three types of mangrove roots that play an important role for it:\r\n(1) support roots which directly pierce the soil.\r\n(2) level-growing roots which twist upwards and downwards, eith the upward twists emerging on the water surface.\r\n(3) level-growing roots whose downward twist (sub-roots) appear on the water surface.\r\nAny part of a root that appears above the water flows oxygen to the plant under water\r\nsurface. As the soil begins to build up, these roots produce additional roots that become embedded in the soil.\r\n\r\nThe main idea of the text is ', '', 33),
(2, 'need salt to grow.', 'grow on dry land.', 'grow on sheltered areas.', 'get oxygen from water.', 'grow near fresh water sources.', 1, 'We can conclude that most mangrove trees ', '', 34),
(2, 'The roots twist upwards and downwards.', 'The trunk should be above the water surface.', 'The leaves should be above the water surface.', 'The trees should be firmly attached to the ground.', 'The parts of the plant under the water should have enough salt.', 5, 'In order to grow well mangroves require the following, EXCEPT ', '', 35),
(2, 'Wisma Emha.', 'A job vacancy.', 'A senior secretary.', 'An application letter.', 'PT Citra Energy Development.', 2, 'We, a mining consultant company, are looking for \r\n\r\nA SENIOR SECRETARY\r\n\r\nFemale, graduated from a reputable university\r\nMin. 5 years of work experience\r\nGood command of English (oral & written)\r\nComputer literate (min. Word, Excel, Internet)\r\nPlease submit your complete application, resume & recent photograph not more than 10 days after this ads to :\r\nHRD PT CITRA ENERGY DEVELOPMENT\r\nWisma Emha Jln. Wijaya I No. 11A, Kebayoran Baru, Jakarta Selatan 12170\r\nFax no. 021-7207978\r\ne-mail address : mitraenergy@cbn.net.id\r\nonly short listed candidates will be notified\r\n\r\nWhat is the text about?', '', 36),
(2, 'Five years experience.', 'Able to operate a computer.', 'Able to speak and write in English.', 'A graduate from a reputable university.', 'Application letter should be sent ten days after this ads.', 5, 'The following are the requirements asked EXCEPT ', '', 37),
(2, 'Petroleum Products.', 'Crude Oil Products.', 'Petroleum Processing.', 'Processing Petroleum Products.', 'Petroleum Chemical Compositing.', 1, 'Petroleum products, such as gasoline, kerosene, home heating oil, residual fuel oil and lubricating oils, come from one source. Crude oil is found below the earth surface, as well as under large bodies of water, from a few hundred feet below the surface to as deep as 25.000 feet into the earth interior. Crude oil is obtained by drilling a hole through the earth, but sometimes more dry holes are drilled than those producing oil. Pressure at the source, or pumping, forces the crude oil to the surface.\r\nCrude oil wells flows at varying rates, from ten to thousands of barrel per hour. Petroleum products vary greatly in physical appearance: thin, thick, transparent, or opaque. Their chemical compositions are made up of only two elements: carbon and hydrogen, which form compounds called hydrocarbons. Other chemical elements found in the union with the hydrocarbons are few and are classified as impurities. Trace elements are also found, but these are of such minute\r\nquantities that they are disregarded.\r\nThe various petroleum products are refined from the crude oil by heating and condensing the vapors of crude oil. These products are called light oils such as gasoline, kerosene and distillate oil.\r\n\r\nThe best title of the text is ', '', 38),
(2, 'big', 'wide', 'broad', 'plain', 'apparent', 1, ', but these are of such minute quantities. (Paragraph 2)\r\nThe antonym of the underlined word is ', '', 39),
(2, 'the products of crude oil.', 'the elements of crude oil.', 'the impurities of crude oil.', 'the physical appearance of crude oil.', 'the chemical compositions of crude oil.', 4, 'The second paragraph is mainly about', '', 40),
(3, 'Yudi menjadi pandai', 'Yudi rajin belajar', 'Yudi lulus ujian', 'Yudi tidak pandai', 'Yudi tidak rajin belajar', 5, 'Diketahui premis-premis berikut.\r\nJika Yudi rajin belajar maka ia menjadi pandai.\r\nJika Yudi menjadi pandai maka ia lulus ujian.\r\nYudi tidak lulus ujian.\r\nKesimpulan yang sah adalah .', '', 41),
(3, 'Semua makhluk hidup tidak perlu bernafas dan beradaptasi', 'Ada makhluk hidup yang tidak perlu bernafas atau beradaptasi', 'Ada makhluk hidup yang tidak perlu bernafas beradaptasi', 'Semua makhluk tidak hidup perlu bernafas dan beradaptasi', 'Semua makhluk hidup perlu bernafas tetapi tidak perlu beradaptasi', 2, 'Ingkaran dari pernyataan "Semua makhluk hidup perlu bernafas dan beradaptasi."adalah ....', '', 42),
(3, 'p = -1 atau p = 2', 'p = -2 atau p = 2', 'p = -3 atau p = 2', 'p = 2 atau p = 2', 'p = 3 atau p = 2', 3, 'Diketahui (p  1)x2  4px + 5p + 6 = 0. Nilai p agar persamaan kuadrat di atas mempunyai akar-akar yang sama adalah .', '', 43),
(3, 'Rp420,000.00', 'Rp650,000.00', 'Rp700,000.00', 'Rp750,000.00', 'Rp1,000,000.00', 1, 'Pak Toni bekerja dengan perhitungan 4 hari lembur dan 2 hari tidak lembur serta mendapat gaji Rp740.000,00 sedangkan Pak Agus bekerja 2 hari lembur dan 3 hari tidak lembur dengan gaji Rp550.000,00. Jika Pak Edi bekerja dengan perhitungan lembur selama tiga hari , maka gaji yang diterima Pak Edi adalah ....', '', 44),
(3, 'x = 2 dan x = -4', 'x = 2 dan x = -2', 'x = -2 dan x = 4', 'x = -2 dan x = -4', 'x = 8 dan x = -10', 1, 'Lingkaran L = (x + 1)2 + (y  3)2 = 9 memotong garis y = 3. Garis singgung lingkaran yang melalui ttik potong antara lingkaran dan garis tersebut adalah .', '', 45),
(3, 'x3  2x2 + x + 4', 'x3  2x2  x + 4', 'x3  2x2  x  4', 'x3  2x2 + 4', 'x3  2x2  4', 4, 'Suku banyak berderajat 3, jika dibagi (x2  x  6) bersisa (5x  2), jika dibagi (x2  2x  3) bersisa (3x +4). Suku banyak tersebut adalah .', '', 46),
(3, '(x + 3)', '(x - 3)', '(x - 1)', '(2x - 3)', '(2x + 3)', 2, 'Diketahui (x -2) adalah faktor dari f(x) = 2x + ax + 7x + 6. Salah satu faktor lainya adalah ....', '', 47),
(3, '-16', '-19', '-21', '-23', '-25', 2, 'Diketahui g(x) = 5 + 2x, f(x) = 3 + x, dan h(x) = 3x. Bila (g o f o h)1(x) = 5, maka nilai x adalah .', '', 48),
(3, 'Rp15,500.00', 'Rp16,500.00', 'Rp17,500.00', 'Rp18,500.00', 'Rp19,500.00', 3, 'Seorang pedagang es memiliki modal Rp 60.000,00. Ia merencanakan menjual es A dan es B. Es A dibeli dari agen Rp 600,00 per bungkus, sedangkan Es B dibeli dari agen Rp 300,00 per bungkus. Keuntungan yang diperoleh pedagang tersebut adalah Rp 150,00 per bungkus es A dan Rp 100,00 per bungkus es B. Oleh karena keterbatasan tempat, pedagang es tersebut hanya akan menyediakan 150 bungkus es. Besarnya keuntungan maksimum yang bisa diperoleh adalah .', '', 49),
(3, '48', '196', '296', '243', '256', 2, 'Pada saat awal diamati 8 virus jenis tertentu. Setiap 24 jam masing-masing virus membelah diri menjadi dua. Jika setiap 96 jam seperempat dari seluruh virus dibunuh, maka banyaknya virus pada hari ke-6 adalah .', '', 50),
(6, 'Golongan IIIB periode 5', 'Golongan IA, Periode 4', 'Golongan IIIA, Periode 3', 'Golongan VIA, Periode 2', 'Golongan VIIIA, periode 2', 4, 'Unsur Y dalam sistem periodik berada pada ....', '', 51),
(6, 'X2Y2', 'X2Y3', 'XY', 'XY2', 'X2Y', 5, 'Senyawa yang dihasilkan bila kedua unsur tersebut berikatan adalah ....', '', 52),
(6, '1 dan 2', '2 dan 3', '2 dan 4', '3 dan 4', '1 dan 5', 5, 'Dari beberapa unsur berikut yang mengandung:\r\n1. 20 elektron dan 20 netron\r\n2. 10 elektron dan 12 netron\r\n3. 15 proton dan 16 netron\r\n4. 20 netron dan 19 proton\r\n5. 12 proton dan 12 netron\r\nYang memiliki sifat mirip dalam sistem periodik adalah ....', '', 53),
(6, '60 L', '80 L', '120 L', '180 L', '240 L', 3, 'Amonia dapat dibuat melalui reaksi:\r\nN2 (g) + 3H2 (g) ? 2NH3 (g)\r\nJika 60 liter gas nitrogen direaksikan dengan 240 liter gas hidrogen yang diukur pada suhu dan tekanan yang sama maka volume gas amonia yang dihasilkan adalah .', '', 54),
(6, 'Ca(s) + 2C(s)  CaC2(s)', 'CaO(s) + 2C(s)  CaC2(s)', '2CaO(s) + 5C(s)  2CaC2(s) + CO2(g)', 'CaC2(s) + H2O(l)  C2H2(g) + CO2(g)', 'C2H2(s)  2C(s) + H2(g)', 3, 'Karbid (kalsium karbida) adalah padatan putih yang pada umumnya digunakan orang untuk mengelas. Karbit dihasilkan dari pemanasan kalsium oksida dan karbon dalam tanur listrik dengan hasil samping gas karbon dioksida. Persamaan reaksi yang terjadi adalah ....', '', 55),
(6, 'larutan A adalah elektrolit karena mudah larut dalam air', 'larutan A adalah non-elektrolit karena hanya menghasilkan gelembung-gelembung', 'larutan B adalah elektrolit karena tidak menghasilkan gelembung-gelembung', 'larutan A adalah non-elektrolit karena terurai menjadi ion-ion yang menyalakan lampu', 'larutan B adalah elektrolit karena terurai menjadi ion-ion menghasilkan gelembung-gelembung', 5, 'Hasil uji daya hantar listrik terhadap larutan A dan B diperoleh hasil sebagai berikut. Pada larutan A, lampu menyala dan terbentuk gelembung-gelembung gas, pada larutan B lampu tidak menyala dan terbentuk gelembung-gelembung gas. Kesimpulan yang dapat Anda tarik dari data tersebut adalah ....', '', 56),
(6, '1 dan 2', '1 dan 3', '1 dan 4', '2 dan 3', '1 dan 5', 3, 'Berdasarkan pasangan larutan berikut ini : \r\n1. 50 mL CH3COOH 0,2 M dan 50 mL NaOH 0,1 M\r\n2. 50 mL CH3COOH 0,2 M dan 100 mL NaOH 0,1 M\r\n3. 50 mL H2CO3 0,2 M dan 100 mL NH3 (aq) 0,1 M \r\n4. 50 mL HCl 0,1 M dan 50 mL NH3 (aq) 0,2 M \r\n5. 50 mL HCl 0,1 M dan 50 mL NaOH 0,2 M\r\nPasangan-pasangan yang pH-nya tidak akan berubah apabila ditambah sedikit larutan basa kuat atau asam kuat adalah ....', '', 57),
(6, '10-2 mol/L', '10-3 mol/L', '10-4 mol/L', '10-5 mol/L', '10-6 mol/L', 5, 'Jika Ksp PbBr2 adalah 4 x 10-13, maka konsentrasi PbBr2 dalam larutan Pb(NO3)2 0,1 M adalah ....', '', 58),
(6, '1', '2', '3', '4', '5', 3, 'Berikut ini fenomena seari-hari yang menunjukkan sifat koloid :\r\n1. Proses cuci darah\r\n2. Pemberian tawas pada pengolahan air\r\n3. Penyaringan debu pabrik\r\n4. Pembentukan delta di muara sungai\r\n5. Penjernihan air\r\nSifat elektroforesa koloid dapat ditunjukkan dalam contoh kejadian nomor ....', '', 59),
(6, 'substitusi dan eliminasi', 'adisi dan substitusi', 'adisi dan eliminasi', 'substitusi dan adisi', 'eliminasi dan adisi', 2, 'Jenis reaksi pada persamaan reaksi tersebut berturut-turut adalah ....', '', 60),
(7, 'Faktorinternal dan eksternal', 'Faktor lingkungan fisik dan eksternal', 'Faktor peperangan', 'Faktor pengaruh kebudayaan', 'Faktor internal dan inovasi', 1, 'Ada 2 faktor pendorong perubahan sosial yaitu...', '', 61),
(7, 'Perubahan besar', 'Perubahan struktural', 'Perubahan kecil', 'Perubahan dikehendaki', 'Revolusi', 3, 'Perubahan yang terjadi pada unsur-unsur struktur soaial yang tidak mambawa pengaruh langsung disebut...', '', 62),
(7, 'Terciptanya integrasi sosial', 'Lahirnya golongan menengah', 'Lahirnya disintegrasi sosial', 'Berkembangnya kriminalitas', 'Pertumbuhan', 3, 'Perubahan sosial mengakibatkan masalah sosial yang dimulai dengan...', '', 63),
(7, 'Adanya penemuan baru', 'Bertambah dan berkurangnya penduduk', 'Terjadinyaperubahan lingkungan alam', 'Terjadinya perubahan lingkungan sosial', 'Terjadinya pemberontakan masyarakat', 3, 'Dibawah ini merupakan faktor-faktor intern perubahan dalam masyarakat, kecuali...', '', 64),
(7, 'Nilai, sikap dan pola perilaku masyarakat', 'Kebutuhan, asal-usul dan ciri fisik masyarakat', 'Keyakinan, suku bangsa dan adat istiadat', 'Kebutuhan hidup dan pola perilaku', 'Norma dan nilai', 1, 'Perubahan pada lembaga kemasyarakatan akan mempengaruhi sistem sosialnya yang meneliti...', '', 65),
(7, 'revolusi', 'evolusi', 'penemuan baru', 'perubahan dikehendaki', 'perubahan tidak dikehendaki', 2, 'Perubahan sosial yang terjadi secara bertahap dengan waktu relatif lama disebut...', '', 66),
(7, 'Penemuan televisi', 'Penemuan mesin uap', 'Penemuan kereta api', 'Penemuan telepn seluler', 'Penemuan mode pakaian', 2, 'Salah satu jenis penemuan baru yang menjalar dari suatu bidang kebidang yang lain adalah...', '', 67),
(7, 'Kelahiran dan kematian', 'Pertambahan penduduk', 'Revolusi', 'Perubahanlingkungan alam', 'Penemua baru', 4, 'Penyebab perubahan sosial budaya yang datang dari luar masyarakat (ekstern) adalah...', '', 68),
(7, '1 dan 3', '2 dan 3', '2 dan 4', '3 dan 4', '1 dan 2 ', 5, 'Beberapa fenomena dalam masyarakat\r\n1. Sikap masyarakat yang tradisionalis\r\n2. Prasangka terhadap hal-hal yang baru\r\n3. Peperangan yang terjadi antar negara\r\n4. Perubahan lingkungan fisik/geografis\r\nDari contoh diatas yang dapat menghambat perubahan sosial adalah...', '', 69),
(7, 'Demokratisasi', 'Globalisasi', 'Westernisasi', 'Modernisasi', 'Sekularisasi', 4, 'Ketika aceh dilanda bencana alam tsunami, dengan cepat beritanya menyebar keseluruh dunia. Tidak lama berselang empati dari berbagai negarapun disampaikan kepada bangsa Indonesia. Ditinjau dari perkembangan teknologi informasi, maka ilustrasi tersebut menggambarkan dampak positif dari...', '', 70),
(8, 'prinsip persebaran', 'prinsip distribusi', 'prinsip interelasi', 'prinsip deskripsi', 'prinsip korologi', 3, 'Dalam kurun waktu lima tahun terakhir, wilayah pantai Barat Sumatera sudah beberapa kali diguncang gempa tektonik dan dilihat dari struktur geologinya wilayah tersebut berada di zona tumbukan lempeng.\r\nPrinsip geografi yang digunakan untuk mengkaji fenomena tersebut adalah ....', '', 71),
(8, 'konsep pola', 'B. konsep morfologi', 'C. konsep keterjangkauan', 'D. konsep nilai kegunaan', 'E. konsep aglomerasi', 4, 'Pak Seno pengusaha dari Jakarta memiliki lahan 2 ha di kawasan Puncak yang dijadikan sebagai tempat peristirahatan. Sedangkan Pak Dadang memiiiki lahan 1 ha di samping tanah Pak Seno yang ditanami dengan palawija untuk memenuhi kebutuhan hari-hari.\r\nKonsep geografi yang digunakan untuk mengkaji fenomena tersebut adalah ....', '', 72),
(8, 'pendekatan keruangan', 'pendekatan ekologi', 'pendekatan korologi', 'pendekatan kewilayahan', 'pendekatan kompleks wilayah', 2, 'Banjir yang sering terjadi di sekitar pemukiman penduduk di daerah perkotaan akibat semakin dangkal dasar sungai. Pendangkalan sungai terjadi akibat adanya penduduk yang membuang sampah ke sungai.\r\nPendekatan geografi untuk mengkaji hal tersebut adalah ....', '', 73),
(8, 'pematang tengah samudera semakin melebar', 'kawasan Kutub semakin melebar', 'pergeseran magma yang keluar dari gunung api', 'adanya gerakan tanah dengan ekshalasi magma', 'dasar samudera semakin dekat ke permukaan', 1, 'Benua-benua yang ada di permukaan Bumi sampai sekarang masih terus bergerak. Hal itu dibuktikan dengan....', '', 74),
(8, 'terjadinya ledakan yang hebat suatu massa yang besar dan bertenaga tinggi', 'adanya perputaran kabut bola yang panas dan lambat makin lama semakin cepat', 'sebuah kabut dengan inti yang dingin berputar secara cepat dan membeku', 'terjadi gaya tarik menarik antar inti sehingga sebagian terlepas dari inti tersebut', 'adanya gravitasi dari bintang yang meledak di sekeliling Matahari dan membeku', 2, 'Proses pembentukan Tatasurya menurut teori Kabut Kant-Laplace adalah ....', '', 75),
(8, 'bumi sebagai tempat tinggal', 'hubungan manusia dengan lingkungan', 'dimensi ruang dan dimensi historis', 'pendekatan spasial, ekologi, dan regional', 'makna wilayah bagi manusia', 5, 'Elemen yang sama dalam geografi menurut para ahli adalah sebagai berikut, kecuali.', '', 76),
(8, 'lempeng Samudera Hindia-Australia, Pasifik, dan Asia Tenggara', 'lempeng Pasifik, Asia Selatan, dan Lempeng Samudera Hindia-Australia', 'lempeng Pasifik, Papua, dan Australia', 'lempeng China, Pasifik, dan Australia', 'lempeng Sulawesi, Jawa, dan Pasifik', 1, 'Indonesia merupakan hasil pertemuan dari tiga lempeng besar, yaitu.', '', 77),
(8, 'dataran fluvial', 'kipas aluvial', 'erosi tebing', 'longsor lahan', 'dataran nyaris', 4, 'Ciri bentang alam muka bumi pada lereng per-bukitan sebagai akibat proses debris avalance (luncuran batu-batuan) ditunjukkan oleh kenam-pakan .', '', 78),
(8, 'belum ada sinar matahari', 'udara jenuh terlampaui', 'tekanan udara rendah', 'kecepatan angina rendah', 'belum ada angin berembus', 2, 'Proses pembentukan embun selalu terjadi pada malam dan pagi hari, ada kaitannya dengan kondisi cuaca dan iklim, yaitu', '', 79),
(8, 'gurun', 'sabana', 'stepa', 'hutan', 'tundra', 2, 'Tanah luas yang ditumbuhi tumbuh-tumbuhan rumput dan dikelilingi oleh tumbuh-tumbuhan keras (perdu) disebut', '', 80),
(9, 'kebutuhan yang disediakan alam terbatas', 'sumber daya alam yang rusak akibat ulah manusia', 'keterbatasan sumber daya manusia untuk mengolah sumber daya yang ada', 'peningkatan kebutuhan manusia yang jauh lebih cepat', 'kemampuan menyediakan sarana kebutuhan yang terbatas', 2, 'Banjir bandang yang terjadi di beberapa tempat, telah mengakibatkan rusaknya lingkungan. Kerusakan lingkungan ini memerlukan perbaikan yang cukup lama. Kerusakan lingkungan dapat menjadi penyebab kelangkaan karena ....', '', 81),
(9, '1, 2, dan 3', '1, 4, dan 6', '2, 3, dan 5', '3, 5, dan 6', '4, 5, dan 6', 2, 'Dibawah ini adalah masalah ekonomi :\r\n1. barang apa yang akan diproduksi dan berapa jumlahnya\r\n2. tingkat pendapatan masyarakat\r\n3. pertumbuhan penganguran yang semakin tinggi\r\n4. bagaimana memproduksi suatu barang\r\n5. bagaimana membelanjakan uang tersedia agar berguna\r\n6. untuk siapa barang tersebut diproduksi\r\nMasalah ekonomi yang paling mendasar adalah ...', '', 82),
(9, 'tradisional', 'komando', 'Pasar', 'campuran', 'demokrasi ekonomi', 3, 'Kondisi perekonomian di era globalisasi akan ditandai oleh persaingan bebas, lalu lintas dan jasa tanpa hambatan, serta harga terbentuk oleh mekanisme pasar, maka sistem ekonomi yang tepat diterapkan adalah sistem ekonomi ....', '', 83),
(9, 'persaingan sempurna', 'persaingan monopolistik', 'monopoli', 'oligopoli', 'oligopsoni', 1, 'Suatu pasar yang memiliki karakteristik banyak penjual dan pembeli, barang yang diperjualbelikan bersifat homogen, informasi yang diperoleh pelaku ekonomi lengkap, produsen bebas dapat keluar masuk pasar dan harga terbentuk oleh mekanisme permintaan dan penawaran, pasar ini disebut pasar ....', '', 84),
(9, 'sarana badan usaha memperoleh tambahan modal', 'sarana pemerataan pendapatan', 'sarana untuk meningkatkan kapasitas produksi', 'sarana untuk meningkatkan pajak bagi pemerintah', 'salah satu indikator situasi perekonomian negara', 5, 'Meningkatnya volume penjualan atau pembelian saham di pasar modal memberi indikasi bahwa aktivitas bisnis berbagai perusahaan berjalan dengan baik. Hal ini menggambarkan fungsi pasar modal sebagai ....', '', 85),
(9, 'ekonomi mikro', 'ekonomi makro', 'ekonomi pasar', 'ekonomi terapan', 'ekonomi deksriptip', 1, 'Seorang investor merasa perlu mengetahui informasi tentang pergerakan harga saham di Bursa Efek Jakarta, karena naik turunnya harga baginya mempengaruhi investasi yang telah ditanam. Hal tesebut merupakan satu contoh dari ....', '', 86),
(9, 'Rp1.045.000,00', 'Rp950,000.00', 'Rp900,000.00', 'Rp863,636.36', 'Rp747,663.55', 4, 'Pada tahun 2006 yang lalu Pemda DKI Jakarta menyatakan upah minimum sebesar Rp. 950.000,00 sedangkan Indeks Harga Konsumen 110% maka upah nyata sebenarnya diterima para buruh adalah ....', '', 87),
(9, 'Rp500,000.00', 'Rp1,400,000.00', 'Rp1,900,000.00', 'Rp4,500,000.00', 'Rp6,600,000.00', 2, 'Pada saat penghasilan Bu Uswa Rp5.000.000,00 per bulan, dinyatakan fungsi konsumsinya C=1.000.000 + 0,7Y. Berdasarkan fungsi konsumsi tersebut besarnya tabungan Bu Uswa ketika penghasilannya naik menjadi Rp8.000.000,00 per bulan adalah .', '', 88),
(9, '10,000,000', '20,000,000', '100,000,000', '120,000,000', '200,000,000', 2, 'Pada suatu daerah diketahui jumlah uang beredar Rp 200.000.000.000,00, dan kecepatan peredaran uang 20 kali, sedangkan jumlah barang yang beredar adalah 200.000 unit, maka harga yang terbentuk dipasar adalah ....', '', 89),
(9, '1, 2, 3, dan 7', '1, 2, 5, dan 6', '2, 5, 6, dan 7', '3, 4, 5, dan 6', '4, 5, 6, dan 7', 3, 'Pada Bank BNI menyediakan layanan produk perbankan seperti :\r\n1. Kredit dokumenter\r\n2. Deposito berjangka\r\n3. Kredit rekening koran\r\n4. Kredit aksep\r\n5. Sertifikat deposito\r\n6. Tabungan\r\n7. Giro\r\nYang termasuk produk perbankan pada bidang yang pasif adalah ....', '', 90);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` bigint(20) NOT NULL,
  `nisn` varchar(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hak_akses` int(1) DEFAULT '1',
  `username` varchar(255) DEFAULT NULL,
  `jurusan` varchar(3) DEFAULT NULL,
  `status_siswa` int(1) NOT NULL DEFAULT '1',
  `status_ujian` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nisn`, `password`, `hak_akses`, `username`, `jurusan`, `status_siswa`, `status_ujian`) VALUES
(3, '2103141057', 'qwe', 0, 'Novan Andhy Trianto', 'IPA', 1, 0),
(4, '', 'admin', 1, 'admin', '', 0, 0),
(9, '2103141055', 'qwe', 0, 'kevin', 'IPS', 0, 0),
(10, '2103141061', 'qwe', 0, 'Tono', 'IPA', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lognilai`
--
ALTER TABLE `lognilai`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lognilai`
--
ALTER TABLE `lognilai`
  MODIFY `id_log` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
