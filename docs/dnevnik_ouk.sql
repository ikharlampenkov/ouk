-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: db.hosting.risp.ru:3606
-- Время создания: Июн 04 2013 г., 14:23
-- Версия сервера: 5.0.67
-- Версия PHP: 5.2.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dnevnik_ouk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `banner_place`
--

DROP TABLE IF EXISTS `banner_place`;
CREATE TABLE IF NOT EXISTS `banner_place` (
  `banner_id` int(10) unsigned NOT NULL,
  `bplace_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`banner_id`,`bplace_id`),
  KEY `fk_banner_place_banner1` (`banner_id`),
  KEY `bplace_id` (`bplace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bplace`
--

DROP TABLE IF EXISTS `bplace`;
CREATE TABLE IF NOT EXISTS `bplace` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `change_time` int(10) unsigned NOT NULL default '5',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `bplace`
--

INSERT INTO `bplace` (`id`, `title`, `width`, `height`, `change_time`) VALUES
(1, 'Главная', 900, 260, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `code` varchar(50) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `title`, `code`, `date_create`) VALUES
(1, 'Кемерово', 'kemerovo', '2013-05-31'),
(2, 'Мариинск', 'mariinsk', '2013-05-31'),
(3, 'Новокузнецк', 'novokuznets', '2013-06-02');

-- --------------------------------------------------------

--
-- Структура таблицы `content_page`
--

DROP TABLE IF EXISTS `content_page`;
CREATE TABLE IF NOT EXISTS `content_page` (
  `link_id` int(10) unsigned default NULL,
  `page_title` varchar(255) NOT NULL COMMENT 'английское название для системы',
  `parent_page` varchar(255) default NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext,
  PRIMARY KEY  (`page_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content_page`
--

INSERT INTO `content_page` (`link_id`, `page_title`, `parent_page`, `title`, `content`) VALUES
(76, 'about', NULL, 'О СРО', 'аывпывп');
INSERT INTO `content_page` (`link_id`, `page_title`, `parent_page`, `title`, `content`) VALUES
(75, 'active', NULL, 'Реестр участников', '<hr />\r\n<table border=\\"1\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(255, 255, 255); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"color:#ff0033\\"><strong><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">п/п</span></span></strong></span></p>\r\n			</td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(255, 255, 255); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"color:#ff0033\\"><strong><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Наименование УК</span></span></strong></span></p>\r\n			</td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(255, 255, 255); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"color:#ff0033\\"><strong><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Реквизиты</span></span></strong></span></p>\r\n			</td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(255, 255, 255); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"color:#ff0033\\"><strong><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Протокол</span></span></strong></span></p>\r\n			</td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(255, 255, 255); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"color:#ff0033\\"><strong><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Примечание</span></span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">1.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания Краснобродское Жилищно-коммунальное хозяйство &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074202002874&nbsp;<br />\r\n			652641, Кемеровская обл., юридический адрес:652641, Кемеровская обл., пос. Краснобродский, ул. Краснобродская, 29.<br />\r\n			почтовый адрес:&nbsp;652641, Кемеровская обл., пос. Краснобродский, ул. Жданова, 41.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс:&nbsp;&nbsp; (384)52-7-91-37</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Грамакова Людмила Тарасовна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 1 от 05.06.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">2.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;Жилищный Коммунальный Сервис&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074202002863&nbsp;<br />\r\n			юридический адрес:&nbsp;652641, Кемеровская обл., пос. Краснобродский, ул. Краснобродская, 29;&nbsp;<br />\r\n			почтовый адрес:&nbsp;652641, Кемеровская обл., пос. Краснобродский, ул. Жданова, 41;&nbsp;тел./факс:&nbsp;&nbsp; (384)52-7-91-37;&nbsp;</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Грамакова Людмила Тарасовна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 1 от 05.06.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">3.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;ЖКХ Суховский &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1072224022067&nbsp;<br />\r\n			юридический адрес:&nbsp;650517, Кемеровский р-н, п. Металлплощадка, ул. Парковая, 24;&nbsp;<br />\r\n			тел./факс:&nbsp;&nbsp; 8(3842) 34-62-9,&nbsp; &nbsp;8(3842) 74-31-50;<br />\r\n			Интернет сайт: <a href=\\"http://suhovskiy.ru/\\">http://suhovskiy.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Осипова Наталья Ивановна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 3 от 26.06.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">4.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1084212000520&nbsp;<br />\r\n			юридический адрес:&nbsp;652507, Кемеровская обл., г. Ленинск-Кузнецкий, пр-т. Ленина, 45;&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38456) 3-23-84;&nbsp;</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Соколова Оксана Николаевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 4 от 05.07.12г.</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">5.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;Жилищное Хозяйство &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074223005834&nbsp;<br />\r\n			юридический адрес:&nbsp;653004, Кемеровская обл., г.Прокопьевск, ул.Шишкина, 21.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3846) 69-54-36.<br />\r\n			Интернет сайт: <a href=\\"http://oooukgh.ru/\\">http://oooukgh.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">И.о. генерального директора:&nbsp;Путилова Ирина Даниловна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 4 от 05.07.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">6.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;Управдом &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1104223001662&nbsp;<br />\r\n			юридический адрес:&nbsp;653000, Кемеровская обл., г.Прокопьевск, ул.Кирпичная, 3.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3846) 69-54-36<br />\r\n			Интернет сайт: <a href=\\"http://uprdom.ru/\\">http://uprdom.ru/</a><br />\r\n			Генеральный директор:&nbsp;Гончаренко Людмила Федоровна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 4 от 05.07.12г.</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">7.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОАО &quot;Управление единого заказчика жилищно-коммунальных услуг города Ленинска-Кузнецкого&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074212002358<br />\r\n			юридический адрес:&nbsp;652500, Кемеровская обл., г.Ленинск-Кузнецкий, ул.Земцова, 1.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38456) 5-13-97<br />\r\n			Интернет сайт: <a href=\\"http://www.uez-lk.ru/\\">http://www.uez-lk.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Пацель Лидия Ивановна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 5 от 12.07.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">8.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Таштагольская управляющая компания &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074228000483<br />\r\n			юридический адрес:&nbsp;652992, Кемеровская обл., г.Таштагол, ул.Поспелова, 20;&nbsp;<br />\r\n			почтовый адрес:652992, Кемеровская обл., г.Таштагол, ул.Геологическая, 73.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38473) 3-48-80<br />\r\n			Интернет сайт: <a href=\\"http://www.oootyk.narod.ru/\\">http://www.oootyk.narod.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Малыгин Сергей Сергеевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 6 от 23.07.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">9.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая жилищная компания &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114253003457&nbsp;<br />\r\n			юридический адрес:&nbsp;654054, Кемеровская обл., г. Новокузнецк, ул. Новоселов, 35.<br />\r\n			почтовый адрес:654054, Кемеровская обл., г. Новокузнецк, ул. Новоселов, 38, а/я 669.<br />\r\n			тел./факс:&nbsp;8 (3843) 61-72-75<br />\r\n			Интернет сайт: <a href=\\"http://www.ooo-uzhk.ru/\\">http://www.ooo-uzhk.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Камнева Елена Николаевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 6 от 23.07.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">10.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая жилищная компания &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1054218000980&nbsp;<br />\r\n			юридический адрес:&nbsp;654054, Кемеровская обл., г.Новокузнецк, ул.Новоселов, 38;&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3843) 61-72-75<br />\r\n			Интернет сайт: <a href=\\"http://www.ooo-uzhk.ru/\\">http://www.ooo-uzhk.ru/</a><br />\r\n			Исполнительный директор:&nbsp;Камнева Елена Николаевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 6 от 23.07.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">11.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания жилищно-коммунальный сервис&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1094250000547&nbsp;<br />\r\n			юридический адрес:&nbsp;652420, Кемеровская обл., г. Березовский, пр. Шахтеров, 10 а.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38445) 5-76-06;<br />\r\n			Директор:&nbsp;Абатуров Дмитрий Александрович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 7 от 27.07.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">12.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Калининский - Сервис &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074213000245&nbsp;<br />\r\n			юридический адрес:&nbsp;652161, Кемеровская обл., Мариинский р-н, п. Калининский, ул. Студенческая, 5&quot;а&quot;.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38443) 3-12-68;&nbsp;<br />\r\n			Директор:&nbsp;Карпов Александр Борисович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 8 от 17.08.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">13.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО УК &quot;Город&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1104246000517&nbsp;<br />\r\n			юридический адрес:&nbsp;652401, Кемеровская обл., г.Тайга, пр-т Кирова, 48 а.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38448) 2-40-13/ 2-16-72<br />\r\n			Интернет сайт: <a href=\\"http://тайга-жкх.рф/\\">http://тайга-жкх.рф/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Горбань Владимир Владиславович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 9 от 31.08.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">14.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;УК Жилищник&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114246000857&nbsp;<br />\r\n			юридический адрес:&nbsp;652470, Кемеровская обл., г. Анжеро-Судженск, ул.Пушкина, 11.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38453) 6-46-18<br />\r\n			Интернет сайт: <a href=\\"http://anupr.narod.ru/\\">http://anupr.narod.ru/</a><br />\r\n			Генеральный директор:&nbsp;Лановикин Николай Валерьевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 9 от 31.08.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">15.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">МУП &quot;ЖКХ&quot;Беловский район &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1124202000460&nbsp;<br />\r\n			юридический адрес:&nbsp;652667, Кемеровская обл., Беловский район, с.Вишневка, ул.Заимка, 1;&nbsp;<br />\r\n			почтовый адрес:652600, Кемеровская обл., г.Белово, ул.Кемеровская, 1;&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38452) 6-10-25;&nbsp;<br />\r\n			Директор:&nbsp;Тужилкин Николай Михайлович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 10 от 07.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">16.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Чебулинская УК &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1124213000108<br />\r\n			юридический адрес:&nbsp;652270, Кемеровская обл., Чебулинский район, пгт. Верх-Чебула, ул. Октябрьская, 35 а.<br />\r\n			Интернет сайт: <a href=\\"http://v-chebula-uk.fo.ru/\\">http://v-chebula-uk.fo.ru</a>&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38444) 2-14-69<br />\r\n			Директор:&nbsp;Мартынова Хафиза Ягфаровна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">17.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Единый центр жилищно-коммунальных услуг &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;108421300058&nbsp;<br />\r\n			юридический адрес:&nbsp;652150, Кемеровская обл., г. Мариинск, ул. К. Маркса, 28 п.2.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38443) 5-29-90<br />\r\n			Интернет сайт: <a href=\\"http://ecjku.ru/\\">http://ecjku.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Колесникова Светлана Дмитриевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">18.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания ЖКХ №1 &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1034205018165<br />\r\n			юридический адрес:&nbsp;650021, Кемеровская обл., г.Кемерово, ул.Красноармейская, 3а.<br />\r\n			тел./факс:&nbsp;8 (3842) 37-48-24<br />\r\n			Интернет сайт: <a href=\\"http://укжкх1.рф/\\">http://укжкх1.рф/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор:&nbsp;Гулый Роман Сергеевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">19.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Комфорт-1&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1094220002425&nbsp;<br />\r\n			юридический адрес:&nbsp;654027, Кемеровская обл., г. Новокузнецк, ул. Лазо, 6.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3843) 72-19-42&nbsp;<br />\r\n			Генеральный директор:&nbsp;Чуева Татьяна Николаевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">20.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;УК &quot;Жилищник &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ГРН:&nbsp;1074218001714&nbsp;<br />\r\n			юридический адрес:&nbsp;654011, Кемеровская обл., г. Новокузнецк, ул. Запсибовцев, 31.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3843) 61-08-04<br />\r\n			Директор:&nbsp;Баженова Нина Ивановна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">21.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;УК Кузнецкие инженерные сети &quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114253002600&nbsp;<br />\r\n			юридический адрес:&nbsp;654034, Кемеровская обл., г.Новокузнецк, пер.Шестакова, 1.<br />\r\n			тел./факс:&nbsp;8 (3843) 37-77-71/ 37-77-86<br />\r\n			Интернет сайт: <a href=\\"http://uk-kis.ru/\\">http://uk-kis.ru/</a>&nbsp;<br />\r\n			Генеральный директор:&nbsp;Энгель Светлана Петровна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">22.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Квартал на Левом&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114217010819<br />\r\n			юридический адрес:&nbsp;654007, Кемеровская обл., г. Новокузнецк, ул. Орджоникидзе, 38 а&nbsp;<br />\r\n			почтовый адрес:654005, Кемеровская обл., г. Новокузнецк, ул. Ноградская, 5 а.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3843) 73-95-77/ 45-54-49<br />\r\n			Генеральный директор:&nbsp;Коровин Павел Иванович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">23.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Молодежный&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1034205004151&nbsp;<br />\r\n			юридический адрес:&nbsp;650070, Кемеровская обл., г. Кемерово, пр. Молодежный, 2 а.<br />\r\n			тел./факс:&nbsp;8 (3842) 37-80-23/ 56-84-1<br />\r\n			Интернет сайт: <a href=\\"http://ук-молодежный.рф/\\">http://ук-молодежный.рф/</a><br />\r\n			Генеральный директор:&nbsp;Уланов Михаил Иванович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">24.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;Ленинградский&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1094205019380&nbsp;<br />\r\n			юридический адрес:&nbsp;650003, Кемеровская обл., г. Кемерово, б-р. Строителей, 46/1.<br />\r\n			тел./факс:&nbsp;8 (3842) 76-25-15 / 73-38-15<br />\r\n			Интернет сайт:<a href=\\"http://ук-ленинградский.рф/\\">http://ук-ленинградский.рф/</a><br />\r\n			Директор:&nbsp;Кошкин Вячеслав Николаевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 12 от 27.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">25.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;РЭУ-1&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;10542050881391&nbsp;<br />\r\n			юридический адрес:&nbsp;650056, Кемеровская обл., г. Кемерово, ул. Ворошилова, 1 а.<br />\r\n			тел./факс:&nbsp;8 (3842) 51-56-11 / 51-47-10<br />\r\n			Интернет сайт: <a href=\\"http://ук-рэу1.рф/\\">http://ук-рэу1.рф/</a>&nbsp;<br />\r\n			Директор:&nbsp;Шевченко Николай Петрович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 12 от 27.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">26.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;Город&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1084205008711&nbsp;<br />\r\n			юридический адрес:&nbsp;650070, Кемеровская обл., г. Кемерово, пер. Щегловский, 12.<br />\r\n			тел./факс:&nbsp;8 (3842) 38-83-69<br />\r\n			Директор:&nbsp;Опешко Сергей Иванович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 12 от 27.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">27.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Ремонтно-эксплуатационное управление-7&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1104205014726&nbsp;<br />\r\n			юридический адрес:&nbsp;650000, Кемеровская обл., г. Кемерово, ул. Весенняя, 18.<br />\r\n			тел./факс:&nbsp;8 (3842) 36-61-57/ 36-54-47<br />\r\n			Интернет сайт: <a href=\\"http://рэу7.рф/\\">http://рэу7.рф/</a><br />\r\n			Директор:&nbsp;Голубин Сергей Иванович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 13 от 08.10.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">28.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;Радуга&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1064205118163&nbsp;<br />\r\n			юридический адрес:&nbsp;650044, Кемеровская обл., г. Кемерово, ул. Нахимова, 34 а.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3842) 64-13-50/ 64-31-41<br />\r\n			Интернет сайт: <a href=\\"http://www.uk-raduga.ru/\\">http://www.uk-raduga.ru</a><br />\r\n			Генеральный директор:&nbsp;Клименко Виктор Александрович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 14 от 12.10.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">29.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">МП &quot;Управление единого заказчика жилищно-коммунальных услуг&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1024200722292&nbsp;<br />\r\n			юридический адрес:&nbsp;650070, Кемеровская обл., г. Кемерово, ул. Тухачесвкого, 25;&nbsp;<br />\r\n			почтовый адрес:&nbsp;650024, Кемеровская обл., г. Кемерово, ул. Глинки, 13.<br />\r\n			тел./факс:&nbsp;8 (3842) 38-59-44<br />\r\n			Директор:&nbsp;Игошин Виталий Владимирович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 14 от 12.10.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">30.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО&quot;РЭУ-21&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1074205021472&nbsp;<br />\r\n			юридический адрес:&nbsp;650099, Кемеровская обл., г. Кемерово, ул. Дзержинского, 18.<br />\r\n			тел./факс:&nbsp;8 (3842) 75-41-93/ 36-12-63<br />\r\n			Интернет сайт: <a href=\\"http://рэу21.рф/\\">http://рэу21.рф/</a>&nbsp;<br />\r\n			Директор:&nbsp;Чижова Юлия Викторовна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 15 от 19.10.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">31.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО Управляющая компания &quot;Жилищный трест Кировского района &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114205039035&nbsp;<br />\r\n			юридический адрес:&nbsp;650001, Кемеровская обл., г. Кемерово, ул. Потемкина, 5;&nbsp;<br />\r\n			почтовый адрес:&nbsp;650001, Кемеровская обл., г. Кемерово, ул. 40 лет Октября, д. 9б.<br />\r\n			Интернет сайт: <a href=\\"http://kirtrest.ru/\\">http://kirtrest.ru/</a><br />\r\n			тел./факс:&nbsp;8 (3842) 61-94-00<br />\r\n			Директор:&nbsp;Гениятов Вячеслав Листальевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 16 от 02.11.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">32.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1124246000163&nbsp;<br />\r\n			юридический адрес:&nbsp;652100, Кемеровская обл., &nbsp;пгт. ЯЯ, ул. Ленина, д. 8 а.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (3842) 61-94-00<br />\r\n			Директор:&nbsp;Доброновский Виктор Владимирович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 16 от 02.11.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">33.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Управляющая компания Анжерская&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114246001066<br />\r\n			юридический адрес:&nbsp;652470, Кемеровская область, г. Анжеро-Судженск, ул. Перовской, 27<br />\r\n			тел./факс:&nbsp;8 (38453) 6-96-29<br />\r\n			Интернет сайт: <a href=\\"http://a-uk.ru/\\">http://a-uk.ru/</a><br />\r\n			Генеральный директор:&nbsp;Ружицкий Данил Васильевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 17 от 16.11.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">34.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;МАСТЕР-СЕРВИС&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1104222000222&nbsp;<br />\r\n			юридический адрес:&nbsp;652709, Кемеровская область, г. Калтан, ул. Дзержинского, 13.&nbsp;<br />\r\n			почтовый адрес: 652709, Кемеровская область, г. Калтан, ул. Дзержинского, 42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; тел./факс:&nbsp;8 (38472) 3-34-80, 3-07-96<br />\r\n			Директор: Юрьев Николай Геннадьевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 18 от 23.11.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">35.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Зодчий&quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1064202002048&nbsp;<br />\r\n			юридический адрес:&nbsp;652617, Кемеровская область, г. Белово, п.г.т. Грамотеино, ул. Колмогоровская, 22.<br />\r\n			тел./факс:&nbsp;8 (38452) 6-71-18<br />\r\n			Интернет сайт: <a href=\\"http://xn--42-jlclgg6a3e.xn--p1ai/\\">http://зодчий42.рф</a>&nbsp;<br />\r\n			Директор: Береснев Валерий Васильевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 18 от 23.11.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">36.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Жилсервис&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН: 1094202001959&nbsp;<br />\r\n			юридический адрес:&nbsp;652642, Кемеровская область, г. Белово, п.г.т. Бачатский, ул. Комсомольская, 10.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38452) 7-09-72, 7-23-07<br />\r\n			Интернет сайт: <a href=\\"http://zhilservis.com/\\">http://zhilservis.com/</a><br />\r\n			Директор: Смараков Сергей Владимирович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 19 от 14.12.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">37.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;БеловоСтройГарант&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН: 1094202000970&nbsp;<br />\r\n			юридический адрес:&nbsp;652600, Кемеровская область, г. Белово, ул. Большевистская, 19.&nbsp;<br />\r\n			почтовый адрес:&nbsp;652645, Кемеровская область, г. Белово, ул. Киевская, 39.<br />\r\n			тел./факс:&nbsp;8 (38452) 3-39-09<br />\r\n			Интернет сайт: <a href=\\"http://belovo-sg.narod.ru/\\">http://belovo-sg.narod.ru/</a><br />\r\n			Директор: Рыжов Александр Владимирович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 20 от 21.12.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">38.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО РЭУ &laquo;Бытовик&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1034212008126&nbsp;<br />\r\n			юридический адрес:&nbsp;652560, Кемеровская область, г. Полысаево, ул. Читинская, 54.&nbsp;<br />\r\n			почтовый адрес:&nbsp;652560, Кемеровская область, г. Полысаево, ул. Жукова, 4.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38456) 2-54-67<br />\r\n			Интернет сайт: <a href=\\"http://www.bitovik42.narod.ru/\\">http://www.bitovik42.narod.ru/</a><br />\r\n			Директор: Балан Ирина Григорьевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 21 от 16.01.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">39.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;Жилсервис&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1094202001827&nbsp;<br />\r\n			юридический адрес:&nbsp;652600, Кемеровская область, г. Белово, ул. М. Горького, 48.&nbsp;<br />\r\n			почтовый адрес:&nbsp;652616, Кемеровская область, г. Белово, ул. Доватора, 8.&nbsp;<br />\r\n			тел./факс:&nbsp;8 (38452) 3-48-60<br />\r\n			Интернет сайт: <a href=\\"http://jilservice-belovo.region42.com/\\">http://jilservice-belovo.region42.com/</a><br />\r\n			Директор: Шкаленко Максим Николаевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 21 от 16.01.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">40.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;УК &laquo;РЭУ 1&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 10844211001676<br />\r\n			юридический адрес: 652705, Кемеровская область, г. Киселевск, ул. 50 лет Октября, 17.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс: 8 (38464) 7-65-26</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Шипулин Андрей Анатольевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 22 от 15.03.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">41.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;УК &laquo;Домашний Уют&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1094211000234<br />\r\n			юридический адрес: 652700, Кемеровская область, г. Киселевск, ул. Коммунальная, 5.<br />\r\n			почтовый адрес: 652729, Кемеровская область, г. Киселевск, ул. Большевистская, 2.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс: 8 (38464) 7-23-89</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Васильев Вадим Викторович </span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 22 от 15.03.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">42.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;Сибирь&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1114202000880<br />\r\n			юридический адрес: 652640, Кемеровская область, пгт. Краснобродский, ул. Гагарина, 1.<br />\r\n			почтовый адрес: 652640, Кемеровская область, пгт. Краснобродский, ул. Краснобродская, 29.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Интернет сайт: <a href=\\"http://sibir-krbk.ru/\\">http://sibir-krbk.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс: 8 (38452) 7-94-85</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Юдина Елена Игнатьевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 23 от 29.03.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">43.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;Аргиллит&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1054211004836<br />\r\n			юридический адрес: 652723, Кемеровская область, г. Киселевск, ул. 50 лет Города, 37</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс: 8 (38464) 5-39-10</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Интернет сайт: <a href=\\"http://uk-argillit.ru/\\">http://uk-argillit.ru</a>/</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Генеральный директор: Бархатова Елена Валерьевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 24 от 03.04.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">44.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ГП КО ЖКХ</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1074205003916<br />\r\n			юридический адрес: 650070, Кемеровская область, г. Кемерово, ул. Заузелкова, 2.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс: 8 (3842) 31-21-46</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Интернет сайт: <a href=\\"http://www.gkh-ko.ru/\\">http://www.gkh-ko.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">И.о. генерального директора: Прозоров Сергей Сергеевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 24 от 03.04.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">45.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;Белком ЖКХ&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1074202001048<br />\r\n			юридический адрес: 652612, Кемеровская область, г. Белово, ул. Октябрьская, 63-137.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел./факс: 8 (38452) 2-69-62</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Интернет сайт: <a href=\\"http://belkomgkh.ru/\\">http://belkomgkh.ru/</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Воробьёв Евгений Александрович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 25 от 12.04.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">46.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;ДоКоР&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1054205184758<br />\r\n			юридический адрес: 650056, г. Кемерово, ул. Марковцева, 10 оф. 1.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел. 8(384-2) 49-02-82</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Интернет сайт: <a href=\\"http://www.ooodokor.ru\\">www.ooodokor.ru</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Арестов Евгений Александрович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 26 от 26.04.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">47.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;Лесная поляна&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1074250001891<br />\r\n			юридический адрес: 650071, г. Кемерово, ж.р. Лесная поляна, ул. Молодежная, 1.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел. 8(384-2) 34-58-45</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Интернет сайт: <a href=\\"http://ук-лесная.рф\\">http://ук-лесная.рф</a></span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Батюченко Олег Олегович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 26 от 26.04.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">48.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;ЭСУТ&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1044204000609<br />\r\n			юридический адрес: 652780, Кемеровская область, г. Гурьевск, ул. Ленина, 5</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел. 8(384-63)5-05-97</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Директор: Несов Игорь Борисович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 26 от 26.04.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">49.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &laquo;Группа Компаний Мегаполис&raquo;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН 1124205012546</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">юридический адрес:650903, г. Кемерово, ж.р. Кедровка, пер. Стахановский, 1.</span></span><br />\r\n			<span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">тел. 8(384-2)69-23-85<br />\r\n			Генеральный директор: Галеев Александр Валерьевич</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 27 от 24.05.13г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n');
INSERT INTO `content_page` (`link_id`, `page_title`, `parent_page`, `title`, `content`) VALUES
(86, 'dokument', NULL, 'Документы', '<div id=\\"accordion\\">\r\n<h3><a href=\\"#\\">Свидетельства</a></h3>\r\n\r\n<div>\r\n<p style=\\"text-align:center\\"><img alt=\\"\\" src=\\"/ckfinder/userfiles/images/%D0%A1%D0%B2%D0%B8%D0%B4%D0%B5%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%203-1.gif\\" style=\\"height:1131px; width:800px\\" /><br />\r\n<img alt=\\"\\" src=\\"/ckfinder/userfiles/images/%D0%A1%D0%B2%D0%B8%D0%B4%D0%B5%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%20%D0%98%D0%9D%D0%9D-1.gif\\" style=\\"height:1131px; width:800px\\" /><br />\r\n<img alt=\\"\\" src=\\"/ckfinder/userfiles/images/%D0%A1%D0%B2%D0%B8%D0%B4%D0%B5%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%201-1.gif\\" style=\\"height:1131px; width:800px\\" /><br />\r\n<img alt=\\"\\" src=\\"/ckfinder/userfiles/images/%D0%A1%D0%B2%D0%B8%D0%B4%D0%B5%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE%202-1.gif\\" style=\\"height:1131px; width:800px\\" /></p>\r\n</div>\r\n\r\n<h3><a href=\\"#\\">Устав</a></h3>\r\n\r\n<div>\r\n<p style=\\"text-align:center\\"><img alt=\\"\\" src=\\"/ckfinder/userfiles/images/1-1.gif\\" style=\\"height:1131px; width:800px\\" /></p>\r\n</div>\r\n\r\n<h3><a href=\\"#\\">Стандарты и правила</a></h3>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h3><a href=\\"#\\">Положение о Дисциплинарном комитете</a></h3>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h3><a href=\\"#\\">Положение о Контрольном комитете</a></h3>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h3><a href=\\"#\\">Положение о компенсационном фонде</a></h3>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h3><a href=\\"#\\">Положение о Совете</a></h3>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n'),
(83, 'excluded', NULL, 'Реестр исключенных', '<table align=\\"center\\" border=\\"1\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\"><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><span style=\\"color:rgb(255, 0, 51)\\"><strong>п/п</strong></span></span></span></td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\"><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><span style=\\"color:rgb(255, 0, 51)\\"><strong>Наименование УК</strong></span></span></span></td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\"><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><span style=\\"color:rgb(255, 0, 51)\\"><strong>Реквизиты</strong></span></span></span></td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\"><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><span style=\\"color:rgb(255, 0, 51)\\"><strong>Протокол</strong></span></span></span></td>\r\n			<td style=\\"background-color:rgb(204, 204, 204); border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\"><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><span style=\\"color:rgb(255, 0, 51)\\"><strong>Замечание</strong></span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">1.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО &quot;Городская жилищно-эксплуатационная компания &quot;&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1114205038199<br />\r\n			юридический адрес:&nbsp;650000, Кемеровская обл., г.Кемерово, ул.Калинина, 1;&nbsp;<br />\r\n			Генеральный директор:&nbsp;Курков Андрей Владимирович</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 2 от 13.06.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">Исключен</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">2.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ООО УК &quot;Мегаполис&quot;</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">ОГРН:&nbsp;1094205012330&nbsp;<br />\r\n			юридический адрес:&nbsp;650903, Кемеровская обл., г.Кемерово, ж.р. Кедровка, пер.Стахановский, 1.<br />\r\n			тел./факс:&nbsp;8 (3842) 69-23-82<br />\r\n			Исполнительный директор:&nbsp;Дессерт Елена Яковлевна</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">№ 11 от 21.09.12г.</span></span></p>\r\n			</td>\r\n			<td style=\\"border-color:rgb(204, 204, 204); text-align:center; vertical-align:middle\\">\r\n			<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">исключен</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(84, 'osam', NULL, 'О саморегулировании', '<hr />\r\n<p style=\\"text-align:center\\"><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><span style=\\"color:rgb(255, 0, 51)\\"><strong>О саморегулировании в ЖКХ</strong></span></span></span></p>\r\n\r\n<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Отрасль управления многоквартирными домами развивается динамично, количество частных управляющих организаций, осуществляющих деятельность по управлению многоквартирными домами &ndash; превысило 15 тысяч. При этом около 80 процентов многоквартирных домов фактически управляется именно управляющими организациями (непосредственно или по договору с ТСЖ). В то же время регулирование в этой сфере явно недостаточное: отсутствуют правила и требования к профессиональной деятельности, не разработаны стандарты качества работ и услуг по управлению многоквартирными домами, фактически отсутствует ответственность участников рынка (в том числе финансовая). Все это приводит к злоупотреблениям, недобросовестной конкуренции и некачественными услугами, что непосредственно затрагивает граждан.</span></span></p>\r\n\r\n<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Чтобы навести порядок в отрасли, необходимо выработать порядок и условия допуска на рынок и это возможно либо в форме государственного регулирования (лицензирование), либо в форме саморегулирования.</span></span></p>\r\n\r\n<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Основным преимуществом саморегулирования перед другими способами является солидарная и коллективная ответственность членов ( в форме компенсационного фонда), что позволяет гарантировать реальную финансовую ответственность и компенсацию вреда в случае оказания некачественных услуг.</span></span></p>\r\n\r\n<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><strong>Саморегулирование &ndash; </strong>самостоятельная и инициативная деятельность, которая осуществляется субъектами предпринимательской или профессиональной деятельности и содержанием которой являются разработка и установление стандартов и правил указанной деятельности, а также контроль за соблюдением требований указанных стандартов и правил.</span></span></p>\r\n\r\n<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><strong>Саморегулируемая организация &ndash; </strong>некоммерческая организация, созданная в целях саморегулирования, основанная на членстве, объединяющая субъектов предпринимательской деятельности исходя из единства отрасли производства товаров (работ, услуг) либо объединяющая субъектов профессиональной деятельности определенного вида.</span></span></p>\r\n\r\n<p><span style=\\"font-size:14px\\"><span style=\\"font-family:arial,helvetica,sans-serif\\"><strong>Стандарты и правила саморегулируемой организации &ndash; </strong>требования к осуществлению предпринимательской и (или) профессиональной деятельности, обязательные для выполнения всеми членами саморегулируемой организации.</span></span></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n'),
(88, 'praktika', NULL, 'Судебная практика', ''),
(73, 'press-center', NULL, 'Пресс-центр', ''),
(83, 'raskritie_info', NULL, 'Раскрытие информации', ''),
(74, 'reestr', NULL, 'Реестр УК', ''),
(77, 'spravochnie_materiali', NULL, 'Справочные материалы', '<div id=\\"accordion\\">\r\n<h3>Section 1</h3>\r\n\r\n<div>\r\n<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>\r\n</div>\r\n\r\n<h3>Section 2</h3>\r\n\r\n<div>\r\n<p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna.</p>\r\n</div>\r\n\r\n<h3>Section 3</h3>\r\n\r\n<div>\r\n<p>Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</p>\r\n\r\n<ul>\r\n	<li>List item one</li>\r\n	<li>List item two</li>\r\n	<li>List item three</li>\r\n</ul>\r\n</div>\r\n\r\n<h3>Section 4</h3>\r\n\r\n<div>\r\n<p>Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est.</p>\r\n\r\n<p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n</div>\r\n</div>\r\n'),
(85, 'structura', NULL, 'Структура органов управления ', ''),
(89, 'vopros-otvet', NULL, 'Вопрос-ответ', ''),
(87, 'zakonodatelstvo', NULL, 'Законодательство', '');

-- --------------------------------------------------------

--
-- Структура таблицы `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `link_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned default NULL,
  `title` varchar(255) NOT NULL,
  `short_text` text,
  `full_text` longtext NOT NULL,
  `file` varchar(255) default NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `link_id` (`link_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `document_folder`
--

DROP TABLE IF EXISTS `document_folder`;
CREATE TABLE IF NOT EXISTS `document_folder` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `link_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned default NULL,
  `title` varchar(255) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `link_id` (`link_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `document_search`
--

DROP TABLE IF EXISTS `document_search`;
CREATE TABLE IF NOT EXISTS `document_search` (
  `id` int(10) unsigned NOT NULL,
  `search_text` text NOT NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `search_text` (`search_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `menu_handler`
--

DROP TABLE IF EXISTS `menu_handler`;
CREATE TABLE IF NOT EXISTS `menu_handler` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `menu_handler`
--

INSERT INTO `menu_handler` (`id`, `title`, `controller`) VALUES
(1, 'Контент', 'Contentpage'),
(2, 'Документы', 'Document'),
(3, 'Новости', 'News'),
(4, 'Обращения', 'Vote'),
(6, 'Календарь', 'Calendar');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned default NULL,
  `handler_id` int(10) unsigned NOT NULL,
  `is_visible` tinyint(1) NOT NULL default '1',
  `sort_order` int(11) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `title`, `link`, `parent_id`, `handler_id`, `is_visible`, `sort_order`) VALUES
(35, 'Главная страница', 'main_page', NULL, 1, 0, 1),
(71, 'Общая информация', 'obaya_inomaiya', 59, 1, 0, 1),
(72, 'О СРО', 'o_sro', NULL, 1, 1, 1),
(73, 'Пресс-центр', 'peen', NULL, 1, 1, 4),
(74, 'Реестр УК', 'ree_uk', NULL, 1, 1, 2),
(75, 'Реестр участников', 'deyvie', 74, 1, 1, 1),
(76, 'Информация по УК', 'rakie_inomaii', NULL, 1, 1, 5),
(77, 'Справочные материалы', 'spavone_maeial', NULL, 1, 1, 3),
(78, 'Новости', 'news', 73, 3, 1, 1),
(79, 'Мониторинг СМИ', 'smi', 73, 3, 1, 2),
(80, 'Статьи и комментарии', 'sai_i_kommenaii', 73, 3, 1, 3),
(81, 'Фото и видео', 'foo_i_videomaeial', 73, 3, 1, 5),
(82, 'События и мероприятия', 'sobiya_i_meopiyaiya', 73, 3, 1, 5),
(83, 'Реестр исключенных', 'iklenne', 74, 1, 1, 1),
(84, 'О саморегулировании', 'o_amoegliovanii', 72, 1, 1, 1),
(85, 'Структура органов управления', 'ska_oganov_pavleniya', 72, 1, 1, 2),
(86, 'Документы', 'dokmen', 72, 1, 1, 3),
(87, 'Законодательство', 'zakonodaelvo', 77, 1, 1, 1),
(88, 'Судебная практика', 'sdebnaya_pakika', 77, 1, 1, 1),
(89, 'Вопрос-ответ', 'vopoove', 77, 1, 1, 1),
(90, 'Новости УК', 'novoi_uk', 76, 3, 1, 1),
(91, 'Работа УК', 'raboa_uk', 76, 3, 1, 1),
(92, 'Рейтинг УК', 'reying_uk', 76, 3, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_menu`
--

DROP TABLE IF EXISTS `menu_menu`;
CREATE TABLE IF NOT EXISTS `menu_menu` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `menu_menu`
--

INSERT INTO `menu_menu` (`id`, `title`, `code`) VALUES
(16, 'Верхнее меню', 'verhnee_menu'),
(17, 'Нижнее меню', 'nijnee_menu');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_menu_item`
--

DROP TABLE IF EXISTS `menu_menu_item`;
CREATE TABLE IF NOT EXISTS `menu_menu_item` (
  `menu_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`menu_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_menu_item`
--

INSERT INTO `menu_menu_item` (`menu_id`, `item_id`) VALUES
(16, 71),
(16, 72),
(16, 73),
(16, 74),
(16, 75),
(16, 76),
(16, 77),
(16, 78),
(16, 79),
(16, 80),
(16, 81),
(16, 82),
(16, 83),
(16, 84),
(16, 85),
(16, 86),
(16, 87),
(16, 88),
(16, 89),
(16, 90),
(16, 91),
(16, 92);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) NOT NULL auto_increment,
  `link_id` bigint(20) NOT NULL,
  `date_public` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) default NULL,
  `short_text` longtext,
  `full_text` longtext,
  `date_create` date NOT NULL,
  `category_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `link_id`, `date_public`, `title`, `file`, `short_text`, `full_text`, `date_create`, `category_id`) VALUES
(7, 60, '2013-04-07 00:00:00', 'Проверка', NULL, 'Проверка сайта', '', '2013-04-07', 3),
(8, 60, '2013-04-13 00:00:00', 'Событие', NULL, 'о опр опропро рпопро', '<p>рп орпорпопрп</p>\r\n', '2013-04-13', 2),
(10, 78, '2013-04-11 00:00:00', 'Медведев подписал распоряжение, которое направлено против резких скачков платы за услуги ЖКХ', 'img_30-05-2013-17-36-09.jpg', 'Премьер-министр РФ Дмитрий Медведев подписал распоряжение, которым продлил до июля возможность для властей субъектов Российской Федерации принять решение о порядке оплаты потребителями коммунальной услуги по отоплению.', '<p>Премьер-министр РФ Дмитрий Медведев подписал распоряжение, которым продлил до июля возможность для властей субъектов Российской Федерации принять решение о порядке оплаты потребителями коммунальной услуги по отоплению.</p>\r\n\r\n<p>Как сообщает пресс-служба правительства, документ подготовлен Федеральной службой по тарифам в целях недопущения резкого и необоснованного роста платы граждан за коммунальные услуги в 2013 году.</p>\r\n\r\n<p>Органы государственной власти субъектов Российской Федерации были наделены правом принять до 15 сентября 2012 года одно из следующих решений:</p>\r\n\r\n<ul>\r\n	<li>установить порядок оплаты потребителями коммунальной услуги по отоплению равномерно за все расчетные месяцы календарного года;</li>\r\n	<li>установить порядок расчета размера платы за коммунальную услугу по отоплению, предусмотренный правилами, действовавшими по состоянию на 30 июня 2012 г.</li>\r\n</ul>\r\n\r\n<p>&quot;Подписанным Постановлением предусматривается продлить срок принятия указанных решений до 1 июля 2013 г. Также в документе предусмотрена возможность пересмотра нормативов потребления коммунальных услуг с 1 января 2013 года, что дает возможность перерасчета завышенных платежей граждан за коммунальные услуги, уже начисленных ранее&quot;, - сообщает пресс-служба правительства.</p>\r\n', '2013-05-30', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `news_category`
--

DROP TABLE IF EXISTS `news_category`;
CREATE TABLE IF NOT EXISTS `news_category` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `news_category`
--

INSERT INTO `news_category` (`id`, `title`, `date_create`) VALUES
(2, 'События', '2013-04-13'),
(3, 'Информация', '2013-04-13');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `link_id` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `link_id` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE IF NOT EXISTS `phone` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `post_index` varchar(255) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phone`
--

INSERT INTO `phone` (`id`, `address`, `phone`, `post_index`, `date_create`) VALUES
(1, '652432,  Кемеровская область, Кемеровский район, <br>поселок Разведчик, ул. Васюхичева д. 31</br>', '601-723', '', '2012-06-05');

-- --------------------------------------------------------

--
-- Структура таблицы `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `link_id` int(10) unsigned default NULL,
  `city_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `ogrn` varchar(255) NOT NULL,
  `registered_address` varchar(255) NOT NULL,
  `postal_address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `link_id` (`link_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `register`
--

INSERT INTO `register` (`id`, `link_id`, `city_id`, `title`, `ogrn`, `registered_address`, `postal_address`, `phone`, `director`, `date_create`) VALUES
(1, 74, 1, 'ООО "Молодежный"', '1034205004151', '650070, Кемеровская обл., г. Кемерово, пр. Молодежный, 2а', '650070, Кемеровская обл., г. Кемерово, пр. Молодежный, 2а', '8 (3842) 37-80-23/ 56-84-1', 'Уланов Михаил Иванович', '2013-06-02'),
(2, 74, 1, 'ООО "Управляющая компания "Ленинградский"', '1094205019380', '650003, Кемеровская обл., г. Кемерово, б-р. Строителей, 46/1', '650003, Кемеровская обл., г. Кемерово, б-р. Строителей, 46/1', '8 (3842) 76-25-15 / 73-38-15', 'Кошкин Вячеслав Николаевич', '2013-06-02'),
(3, 74, 1, 'ООО "Управляющая компания "РЭУ-1"', '10542050881391', '650056, Кемеровская обл., г. Кемерово, ул. Ворошилова, 1а', '650056, Кемеровская обл., г. Кемерово, ул. Ворошилова, 1а', '8 (3842) 51-56-11 / 51-47-10', 'Шевченко Николай Петрович', '2013-06-02'),
(4, 74, 3, 'ООО "Комфорт-1"', '1094220002425', '654027, Кемеровская обл., г. Новокузнецк, ул. Лазо, 6', '654027, Кемеровская обл., г. Новокузнецк, ул. Лазо, 6', '8 (3843) 72-19-42', 'Чуева Татьяна Николаевна', '2013-06-02');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_acl_role`
--

DROP TABLE IF EXISTS `tm_acl_role`;
CREATE TABLE IF NOT EXISTS `tm_acl_role` (
  `tm_user_role_id` int(10) unsigned NOT NULL,
  `tm_user_resource_id` int(10) unsigned NOT NULL,
  `is_allow` tinyint(1) NOT NULL default '0',
  `privileges` varchar(255) NOT NULL,
  PRIMARY KEY  (`tm_user_role_id`,`tm_user_resource_id`),
  KEY `tm_user_resource_id` (`tm_user_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tm_acl_role`
--

INSERT INTO `tm_acl_role` (`tm_user_role_id`, `tm_user_resource_id`, `is_allow`, `privileges`) VALUES
(1, 1, 1, 'show'),
(1, 2, 1, 'show'),
(1, 3, 1, 'show'),
(1, 4, 1, 'show'),
(1, 5, 1, 'show'),
(1, 6, 1, 'show'),
(1, 7, 1, 'show'),
(1, 8, 1, 'show'),
(1, 15, 1, 'show,show-attribute-hash,show-attribute-type,show-resource,show-role'),
(1, 19, 1, 'show'),
(1, 20, 1, 'show'),
(1, 21, 1, 'show'),
(1, 22, 1, 'show'),
(1, 23, 1, 'show'),
(1, 24, 1, 'show'),
(1, 25, 1, 'show'),
(1, 59, 1, 'show'),
(1, 67, 1, 'show'),
(1, 68, 1, 'show'),
(1, 69, 1, 'show'),
(1, 70, 1, 'show'),
(1, 71, 1, 'show'),
(1, 72, 1, 'show'),
(1, 97, 1, 'show'),
(1, 98, 1, 'show'),
(1, 99, 1, 'show'),
(5, 1, 1, 'show'),
(5, 2, 1, 'show'),
(5, 3, 1, 'show'),
(5, 4, 1, 'show'),
(5, 5, 0, 'show'),
(5, 6, 0, 'show'),
(5, 7, 0, 'show'),
(5, 8, 0, 'show'),
(5, 15, 0, 'show'),
(5, 19, 0, 'show'),
(5, 20, 0, 'show'),
(5, 21, 0, 'show'),
(5, 22, 0, 'show'),
(5, 23, 0, 'show'),
(5, 24, 0, 'show'),
(5, 25, 0, 'show'),
(5, 59, 0, 'show'),
(5, 67, 0, 'show'),
(5, 68, 0, 'show'),
(5, 69, 0, 'show'),
(5, 70, 0, 'show'),
(5, 71, 0, 'show'),
(5, 72, 0, 'show'),
(5, 97, 0, 'show'),
(5, 98, 0, 'show'),
(5, 99, 0, 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_task_attribute_type`
--

DROP TABLE IF EXISTS `tm_task_attribute_type`;
CREATE TABLE IF NOT EXISTS `tm_task_attribute_type` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `tm_task_attribute_type`
--

INSERT INTO `tm_task_attribute_type` (`id`, `title`, `handler`, `description`) VALUES
(1, 'Строка', 'TM_Attribute_AttributeType', 'Любое строковое значение'),
(2, 'Текст', 'TM_Attribute_AttributeTypeText', 'Многострочный  текст'),
(3, 'Список', 'TM_Attribute_AttributeTypeList', 'Список из возможных вариантов'),
(4, 'Дата', 'TM_Attribute_AttributeTypeDate', ''),
(5, 'Список пользователей', 'TM_Attribute_AttributeTypeUserList', 'Список пользователей'),
(6, 'Условие с активным пользователем', 'TM_Attribute_AttributeTypeActiveUser', 'Условие с активным пользователем'),
(7, 'Список пользователей с активным пользователем', 'TM_Attribute_AttributeTypeActiveUserList', 'Список пользователей с активным пользователем');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user`
--

DROP TABLE IF EXISTS `tm_user`;
CREATE TABLE IF NOT EXISTS `tm_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  KEY `fk_tm_user_tm_user_role1` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `tm_user`
--

INSERT INTO `tm_user` (`id`, `login`, `password`, `role_id`, `date_create`) VALUES
(1, 'admin', '123', 1, '2011-11-16 16:26:00');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_attribute`
--

DROP TABLE IF EXISTS `tm_user_attribute`;
CREATE TABLE IF NOT EXISTS `tm_user_attribute` (
  `user_id` int(10) unsigned NOT NULL,
  `attribute_key` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `attribute_value` text NOT NULL,
  `is_fill` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`attribute_key`),
  KEY `fk_tm_task_attribute_tm_task1` (`user_id`),
  KEY `fk_tm_document_attribute_tm_document_attribute_type1` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tm_user_attribute`
--

INSERT INTO `tm_user_attribute` (`user_id`, `attribute_key`, `type_id`, `attribute_value`, `is_fill`) VALUES
(1, 'name', 1, 'Администратор', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_attribute_type`
--

DROP TABLE IF EXISTS `tm_user_attribute_type`;
CREATE TABLE IF NOT EXISTS `tm_user_attribute_type` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tm_user_attribute_type`
--

INSERT INTO `tm_user_attribute_type` (`id`, `title`, `handler`, `description`) VALUES
(1, 'Строка', 'TM_Attribute_AttributeType', 'Любое строковое значение'),
(2, 'Текст', 'TM_Attribute_AttributeTypeText', 'Многострочный  текст'),
(3, 'Список', 'TM_Attribute_AttributeTypeList', 'Список из возможных вариантов');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_hash`
--

DROP TABLE IF EXISTS `tm_user_hash`;
CREATE TABLE IF NOT EXISTS `tm_user_hash` (
  `user_id` int(10) unsigned default NULL,
  `attribute_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `list_value` text,
  PRIMARY KEY  (`attribute_key`),
  KEY `fk_tm_document_hash_tm_task_attribute_type1` (`type_id`),
  KEY `fk_tm_document_hash_tm_task1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tm_user_hash`
--

INSERT INTO `tm_user_hash` (`user_id`, `attribute_key`, `title`, `type_id`, `list_value`) VALUES
(NULL, 'name', 'Имя', 1, ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_profile`
--

DROP TABLE IF EXISTS `tm_user_profile`;
CREATE TABLE IF NOT EXISTS `tm_user_profile` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `profile_key` varchar(255) NOT NULL,
  `profile_value` text NOT NULL,
  PRIMARY KEY  (`user_id`,`profile_key`),
  KEY `fk_tm_user_profile_tm_user1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_resource`
--

DROP TABLE IF EXISTS `tm_user_resource`;
CREATE TABLE IF NOT EXISTS `tm_user_resource` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(45) default NULL,
  `rtitle` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Дамп данных таблицы `tm_user_resource`
--

INSERT INTO `tm_user_resource` (`id`, `title`, `rtitle`) VALUES
(1, 'login', 'Вход'),
(2, 'login/index', 'Вход'),
(3, 'login/logout', 'Выход'),
(4, 'index/index', 'Главная'),
(5, 'user', 'Пользователи'),
(6, 'user/add', ''),
(7, 'user/edit', 'Пользователи/Редактировать'),
(8, 'user/delete', ''),
(15, 'user/index', 'Пользователи'),
(19, 'user/addRole', 'Пользователи/Добавить роль'),
(20, 'user/editRole', ''),
(21, 'user/deleteRole', ''),
(22, 'user/addResource', ''),
(23, 'user/editResource', ''),
(24, 'user/deleteResource', ''),
(25, 'user/fillResource', ''),
(59, 'user/showRoleAcl', ''),
(67, 'user/addAttributeType', ''),
(68, 'user/editAttributeType', ''),
(69, 'user/deleteAttributeType', ''),
(70, 'user/addAttributeHash', ''),
(71, 'user/editAttributeHash', ''),
(72, 'user/deleteAttributeHash', ''),
(97, 'user/viewAttributeType', 'Пользователи/Показать типы атрибутов'),
(98, 'user/viewResource', 'Пользователи/Показать ресурсы'),
(99, 'user/viewHash', 'Пользователи/Показать список атрибутов');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_role`
--

DROP TABLE IF EXISTS `tm_user_role`;
CREATE TABLE IF NOT EXISTS `tm_user_role` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(32) NOT NULL,
  `rtitle` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `tm_user_role`
--

INSERT INTO `tm_user_role` (`id`, `title`, `rtitle`) VALUES
(1, 'admin', 'Администратор'),
(5, 'guest', 'Гость');

-- --------------------------------------------------------

--
-- Структура таблицы `vote_email`
--

DROP TABLE IF EXISTS `vote_email`;
CREATE TABLE IF NOT EXISTS `vote_email` (
  `link_id` int(10) unsigned NOT NULL,
  `val` varchar(255) NOT NULL,
  PRIMARY KEY  (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `banner_place`
--
ALTER TABLE `banner_place`
  ADD CONSTRAINT `banner_place_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banner_place_ibfk_2` FOREIGN KEY (`bplace_id`) REFERENCES `bplace` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`),
  ADD CONSTRAINT `document_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `document_folder` (`id`);

--
-- Ограничения внешнего ключа таблицы `document_folder`
--
ALTER TABLE `document_folder`
  ADD CONSTRAINT `document_folder_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`),
  ADD CONSTRAINT `document_folder_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `document_folder` (`id`);

--
-- Ограничения внешнего ключа таблицы `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tm_acl_role`
--
ALTER TABLE `tm_acl_role`
  ADD CONSTRAINT `tm_acl_role_ibfk_1` FOREIGN KEY (`tm_user_role_id`) REFERENCES `tm_user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tm_acl_role_ibfk_2` FOREIGN KEY (`tm_user_resource_id`) REFERENCES `tm_user_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tm_user`
--
ALTER TABLE `tm_user`
  ADD CONSTRAINT `tm_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tm_user_role` (`id`);

--
-- Ограничения внешнего ключа таблицы `tm_user_attribute`
--
ALTER TABLE `tm_user_attribute`
  ADD CONSTRAINT `tm_user_attribute_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tm_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tm_user_attribute_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `tm_user_attribute_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tm_user_hash`
--
ALTER TABLE `tm_user_hash`
  ADD CONSTRAINT `tm_user_hash_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tm_user_attribute_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
