-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 10 2020 г., 13:35
-- Версия сервера: 10.4.13-MariaDB
-- Версия PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `order_row` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `order_row`) VALUES
(1, 'Женщинам', 10),
(2, 'Мужчинам', 9),
(3, 'Детям', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `core_articles`
--

CREATE TABLE `core_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `core_articles`
--

INSERT INTO `core_articles` (`id`, `title`, `description`, `photo`) VALUES
(1, 'ДЖИНСОВЫЕ<br>\r\nКУРТКИ', '<i>NEW ARRIVAL</i>', 'img/menu_photo/article1.jpg'),
(2, '', ' <i>каждый сезон мы<br>\r\n подготавливаем для Вас<br>\r\n исключительно лучшую<br>\r\n модную одежду. Следите за<br>\r\n нашими новостями</i>', ''),
(3, NULL, NULL, 'img/menu_photo/article3.jpg'),
(4, 'ЭЛЕГАНТНАЯ ОБУВЬ', '<i>БОТИНКИ КРОССОВКИ</i>', ''),
(5, 'ДЖИНСЫ', '<i>от 3200 руб.</i>', 'img/menu_photo/article2.jpg'),
(6, '', '<i>Самые низкие цены в<br>\r\nв Саратове.<br>\r\nНашли дешевле?Вернем<br>\r\nразницу</i>', ''),
(7, NULL, '', 'img/menu_photo/5.jpg'),
(8, NULL, 'АКСЕССУАРЫ', NULL),
(9, 'СПОРТИВНАЯ<br>ОДЕЖДА', '<i>от 590 руб</i>', 'img/menu_photo/run.jpg'),
(10, 'ДЕТСКАЯ ОДЕЖДА', '<i>NEW ARRIVAL</i>', 'img/menu_photo/article4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `core_goods`
--

CREATE TABLE `core_goods` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `articul` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_new` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `core_goods`
--

INSERT INTO `core_goods` (`id`, `title`, `price`, `articul`, `description`, `photo`, `category_id`, `type_id`, `is_new`) VALUES
(1, 'Куртка синия\r\n', 5400, 4567, 'Куртка для фанатов Терминатора из натуральной кожи', 'img/catalog/1.jpg', 3, 1, 0),
(2, 'Кожаная куртка', 22500, 4557, 'Классная куртка для байкеров', 'img/catalog/6.jpg', 2, 1, 1),
(3, 'Куртка с карманами', 9200, 4597, 'Ваш ребенок будет  счастлив', 'img/catalog/3.png', 3, 1, 0),
(4, 'Куртка с капюшоном', 6100, 5555, 'Последние новости из мира моды ', 'img/catalog/2.jpg', 3, 1, 0),
(5, 'Куртка Casual', 8800, 5757, 'Предназначена для любителей понтов', 'img/catalog/5.jpg', 2, 1, 0),
(6, 'Стильная кожаная куртка', 12800, 3569, 'Для мажорных хлопчиков', 'img/catalog/4.jpg', 2, 1, 0),
(7, 'Кеды casual', 5900, 1234, 'Стиль на грани фантастики', 'img/catalog/9.jpg', 1, 3, 1),
(8, 'Кеды всепогодные', 9200, 4321, 'В таких кедах можно лазить по лесу, горам и болотам!!!', 'img/catalog/10.jpg', 3, 3, 0),
(9, 'Кеды серые', 2900, 3978, 'Кеды к которых выросла вся Саратовская область', 'img/catalog/7.jpg', 1, 3, 0),
(10, 'Кеды черные', 4500, 3443, 'Для любителей готического лука', 'img/catalog/8.jpg', 1, 3, 1),
(11, 'Джинсы', 4800, 1212, 'Лимитированная серия - классика', 'img/catalog/11.jpg', 2, 2, 0),
(12, 'Джинсы голубые', 4200, 1155, 'Для фанатов сериала \"Друзья\"', 'img/catalog/12.jpg', 2, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_users`
--

CREATE TABLE `core_users` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `itemtypes`
--

CREATE TABLE `itemtypes` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `itemtypes`
--

INSERT INTO `itemtypes` (`id`, `title`) VALUES
(1, 'Куртки'),
(2, 'Джинсы'),
(3, 'Обувь');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `core_articles`
--
ALTER TABLE `core_articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `core_goods`
--
ALTER TABLE `core_goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `core_users`
--
ALTER TABLE `core_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `itemtypes`
--
ALTER TABLE `itemtypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `core_articles`
--
ALTER TABLE `core_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `core_goods`
--
ALTER TABLE `core_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `core_users`
--
ALTER TABLE `core_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `itemtypes`
--
ALTER TABLE `itemtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
