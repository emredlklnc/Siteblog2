-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Mar 2018, 16:13:14
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mehmetblog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(1) NOT NULL DEFAULT '0',
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_logoisim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_siteurl` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_recaptcha` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_goooglemap` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_in` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_copyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_copylink` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_logoisim`, `ayar_siteurl`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_adres`, `ayar_ilce`, `ayar_il`, `ayar_mesai`, `ayar_recaptcha`, `ayar_goooglemap`, `ayar_analystic`, `ayar_facebook`, `ayar_twitter`, `ayar_youtube`, `ayar_in`, `ayar_google`, `ayar_copyad`, `ayar_copylink`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`) VALUES
(0, 'upload/24267315322142720889', 'M-URGUN', 'http://localhost/Mehmetsite/', 'Mehmet Ürgün', 'Mehmet Ürgün', 'yunus emre dalkılınç,php egitimi,csharp egitimi,kod yazma,yazılım', 'Yunus Emre Dalkılınc', '05314566885', '05314566885', '05314566885', 'emredlklnc@gmail.com', 'Dumlupınar Üniversitesi Dumlupınar Üniversitesi', 'https://www.instagram.com/emredlklnc/', 'Istanbul', '8-5', '2', 'AIzaSyCWRBl9NJCg5gIaWKS93M4P7bFNhg1uGQ8', '2', 'http://www.facebook.com', 'http://www.twitter.com', 'https://www.youtube.com/channel/UCE-tQ2VMHvY945Qc4HmbVZw', 'http://www.linkedin.com', 'http://www.google.com', 'Yunus Emre Dalkılınc', 'https://www.instagram.com/emredlklnc/?hl=tr', 'www.emredlklnc.com', 'emredlklnc@siteadresiniz.com', '1234', '25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeriresim`
--

CREATE TABLE `galeriresim` (
  `resim_id` int(11) NOT NULL,
  `resim_kategori` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `resim_resimyol` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `resim_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `resim_baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `resim_tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeriresim`
--

INSERT INTO `galeriresim` (`resim_id`, `resim_kategori`, `resim_resimyol`, `resim_ad`, `resim_baslik`, `resim_tarih`) VALUES
(10, 'Karikatür', 'upload/resimgaleri/30024275262739527877', 'Rerim1', 'Karikatür', '2018-03-11 18:22:48'),
(11, 'Yazılım', 'upload/resimgaleri/21611305082277427080', 'Rerim2', 'Yazılım', '2018-03-11 18:23:15'),
(12, 'Bilgisayar', 'upload/resimgaleri/21446312163164422619', 'Rerim3', 'Bilgisayar', '2018-03-11 18:23:45'),
(13, 'Web Tasrımı', 'upload/resimgaleri/25007301192380220666', 'Resim4', 'Web', '2018-03-11 18:24:04'),
(14, 'Sosyal Media', 'upload/resimgaleri/25920283422587531347', 'Rerim5', 'Sosyal', '2018-03-11 18:25:41'),
(15, 'Karikatür', 'upload/resimgaleri/27010238393126123991', 'Rerim6', 'Karikatür', '2018-03-11 18:25:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galerivideo`
--

CREATE TABLE `galerivideo` (
  `galvideo_id` int(11) NOT NULL,
  `galvideo_kategori` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `galvideo_embed` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `galvideo_ad` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `galvideo_baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `galvideo_tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galerivideo`
--

INSERT INTO `galerivideo` (`galvideo_id`, `galvideo_kategori`, `galvideo_embed`, `galvideo_ad`, `galvideo_baslik`, `galvideo_tarih`) VALUES
(3, 'emre', 'gTti5ngD5ZQ', 'Örgenci ve hobicileri kullanımına sunulan tek bordan oluşan mini bir bilgisayardır.', 'Rasperry Pi', '2018-03-06 23:26:30'),
(4, 'emre', 'gTti5ngD5ZQ', 'emre', 'emre', '0000-00-00 00:00:00'),
(5, 'emre', 'gTti5ngD5ZQ', 'emre', 'emre', '0000-00-00 00:00:00'),
(6, 'emre', 'gTti5ngD5ZQ', 'emre', 'emre', '0000-00-00 00:00:00'),
(7, 'emre', 'gTti5ngD5ZQ', 'emre', 'emre', '0000-00-00 00:00:00'),
(8, 'emre', 'gTti5ngD5ZQ', 'emre', 'emre', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(1) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_altbaslik` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_resim` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_altbaslik`, `hakkimizda_icerik`, `hakkimizda_resim`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'BİZ KİMİZ', 'merhaba bizim hakkımızda herşeyi ögrenebilirsiniz', 'lualınacakLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis', 'upload/about/28229246832722928585', 'lualınacakLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis', 'lualınacakLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE `hizmetler` (
  `hizmet_id` int(11) NOT NULL,
  `hizmet_kategori` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hizmet_resimyol` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hizmet_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `hizmet_baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `hizmet_tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`hizmet_id`, `hizmet_kategori`, `hizmet_resimyol`, `hizmet_ad`, `hizmet_baslik`, `hizmet_tarih`) VALUES
(11, 'Mobile Development', 'upload/hizmetler/21071290462122026127blog-img-1.jpg', 'sad', 'asdss', '2018-03-05 22:53:15'),
(12, 'Web design', 'upload/hizmetler/23675207302124027157img-2.jpg', 'emre', 'sda', '2018-03-05 23:15:12'),
(13, 'Web design', 'upload/hizmetler/29042270492784327236', 'sad', 'sdaa', '2018-03-08 22:09:03'),
(14, 'Web design', 'upload/hizmetler/23878232643196624746img-1.jpg', 'sada', 'asda', '2018-03-06 01:06:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_zaman` datetime NOT NULL,
  `icerik_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_baslik` varchar(800) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `icerik_zaman`, `icerik_ad`, `icerik_baslik`, `icerik_detay`, `icerik_resimyol`, `icerik_keyword`, `icerik_durum`) VALUES
(20, '2018-03-11 20:34:55', 'd', 'd', 'ssadas', 'upload/blog/21485212762304625278', 'd', '1'),
(21, '2018-03-12 19:10:59', 'd', 'Saksocu kız', 'Bu erkek seks işçilerine halk arasında \"sırtlan\" deniyor ve kızlarla ilişki kurmaları tecavüz değil \"temizlenme\" olarak görülüyor. Bu geleneğin \"tecavüz\"ü meşrulaştırması bir yana, en büyük etkilerinden biri cinsel yolla geçebilen hastalıkların süratle yaygınlaşması.', 'upload/blog/22812237312694523109', 'e', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_zaman` datetime NOT NULL,
  `kullanici_sifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_ad`, `kullanici_adsoyad`, `kullanici_zaman`, `kullanici_sifre`, `kullanici_durum`, `kullanici_yetki`) VALUES
(1, 'mehmet', 'Mehmet Ürgün', '2018-03-05 00:00:00', '7df0dfa193acb4efce96f4052b12ce0d', 1, '5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reklamresim`
--

CREATE TABLE `reklamresim` (
  `reklam_id` int(1) NOT NULL,
  `reklam_ad` varchar(50) NOT NULL,
  `reklam_resimyol` varchar(250) NOT NULL,
  `reklam_alan1` varchar(50) NOT NULL,
  `reklam_alan2` varchar(50) NOT NULL,
  `reklam_alan3` varchar(50) NOT NULL,
  `reklam_alan4` varchar(50) NOT NULL,
  `reklam_alan1deger` varchar(50) NOT NULL,
  `reklam_alan2deger` varchar(50) NOT NULL,
  `reklam_alan3deger` varchar(50) NOT NULL,
  `reklam_alan4deger` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `reklamresim`
--

INSERT INTO `reklamresim` (`reklam_id`, `reklam_ad`, `reklam_resimyol`, `reklam_alan1`, `reklam_alan2`, `reklam_alan3`, `reklam_alan4`, `reklam_alan1deger`, `reklam_alan2deger`, `reklam_alan3deger`, `reklam_alan4deger`) VALUES
(0, 'youtube', 'upload/reklamresim/23637240792774123263', 'eeee', 'eee', 'ee', 'e', '20,0253', '2000', '2000', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `servisler`
--

CREATE TABLE `servisler` (
  `servis_id` int(11) NOT NULL,
  `servis_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `servis_icerik` varchar(900) COLLATE utf8_turkish_ci NOT NULL,
  `servis_icon` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `servisler`
--

INSERT INTO `servisler` (`servis_id`, `servis_baslik`, `servis_icerik`, `servis_icon`) VALUES
(3, 'E-Ticaret', 'Bir birinden benzersiz e-ticaret siteleri.', 'analytics'),
(4, 'Online Pazarlama', 'Verilere kolay ulaşabilirlik ve anında alış veriş ortamı.', 'bookmarks'),
(5, 'Web Tasarımı', 'Bir birinden benzersiz tasarımlar ve yenilik dolu siteler.', 'paper'),
(6, 'Mobile Yazılımlar', 'Her açıdan eşsiz tasarımlar ve cihaz uyumluluğu.', 'speedometer'),
(7, 'Müşteri desteği', 'Müşteriler ile birebir sağlam ve güçlü ilişkiler', 'barcode'),
(8, 'Özelleştirme', 'Kişisel ihtiyaçlara uygun içerikler', 'people');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_link`, `slider_sira`, `slider_durum`) VALUES
(30, 'banner1', 'upload/slider/23809210102248722784', 'e', 0, '1'),
(31, 'banner2', 'upload/slider/24300212482826329106', '', 1, '1'),
(32, 'banner2', 'upload/slider/27017241832782830434', '', 2, '1'),
(33, 'banner3', 'upload/slider/25586309382380724895', 'e', 3, '1'),
(34, 'emre', 'upload/slider/31632246372482528615', 'e', 4, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_adsoyad` varchar(50) NOT NULL,
  `team_resimyol` varchar(250) NOT NULL,
  `team_meslek` varchar(200) NOT NULL,
  `team_t` varchar(300) NOT NULL,
  `team_f` varchar(300) NOT NULL,
  `team_g` varchar(300) NOT NULL,
  `team_in` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `team`
--

INSERT INTO `team` (`team_id`, `team_adsoyad`, `team_resimyol`, `team_meslek`, `team_t`, `team_f`, `team_g`, `team_in`) VALUES
(3, 'Recep Alışkan', 'upload/team/23920314982165230627', 'Otostopçu', 't', 'f', 'g', 'l'),
(4, 'Güzel Kız', 'upload/team/22821228943132027083', 'Striptizci', 't', 'f', 'g', 'l'),
(5, 'Mehmer Seversin', 'upload/team/24965292382459220477', 'Orospu', 't', 'f', 'g', 'l'),
(6, 'Japon', 'upload/team/20265270232917421919', 'Saksocu', 't', 'f', 'g', 'i');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `twit`
--

CREATE TABLE `twit` (
  `twit_id` int(11) NOT NULL,
  `twit_sahibi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `twit_icerik` varchar(140) COLLATE utf8_turkish_ci NOT NULL,
  `twit_zaman` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `twit`
--

INSERT INTO `twit` (`twit_id`, `twit_sahibi`, `twit_icerik`, `twit_zaman`) VALUES
(1, 'Emre Dalkılınç', 'Emre', '2hafta'),
(2, 'Mehmet', 'emre  emre emre emre emre emre emre emre ', '1hafta');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video`
--

CREATE TABLE `video` (
  `video_id` int(1) NOT NULL,
  `video_baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `video_icerik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `video_yazı` varchar(1000) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `video`
--

INSERT INTO `video` (`video_id`, `video_baslik`, `video_icerik`, `video_yazı`) VALUES
(0, 'Raspberry Pi nedir?', 'ZqVhOVeFuA8', 'Raspberry Pi, kredi kartı büyüklüğünde bir bilgisayardır. Fiyatının uygun olması sebebiyle özellikle küçük yaştaki çocukların kullanması ve kodlamayı sevmesi için geliştirilmiştir. Ama tabi ki bu bizlerin de kullanması ve sevmesine engel olmamalı ');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `galeriresim`
--
ALTER TABLE `galeriresim`
  ADD PRIMARY KEY (`resim_id`);

--
-- Tablo için indeksler `galerivideo`
--
ALTER TABLE `galerivideo`
  ADD PRIMARY KEY (`galvideo_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `hizmetler`
--
ALTER TABLE `hizmetler`
  ADD PRIMARY KEY (`hizmet_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `reklamresim`
--
ALTER TABLE `reklamresim`
  ADD PRIMARY KEY (`reklam_id`);

--
-- Tablo için indeksler `servisler`
--
ALTER TABLE `servisler`
  ADD PRIMARY KEY (`servis_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Tablo için indeksler `twit`
--
ALTER TABLE `twit`
  ADD PRIMARY KEY (`twit_id`);

--
-- Tablo için indeksler `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `galeriresim`
--
ALTER TABLE `galeriresim`
  MODIFY `resim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Tablo için AUTO_INCREMENT değeri `galerivideo`
--
ALTER TABLE `galerivideo`
  MODIFY `galvideo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `hizmetler`
--
ALTER TABLE `hizmetler`
  MODIFY `hizmet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `servisler`
--
ALTER TABLE `servisler`
  MODIFY `servis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Tablo için AUTO_INCREMENT değeri `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `twit`
--
ALTER TABLE `twit`
  MODIFY `twit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
