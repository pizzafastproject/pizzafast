-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 10 2023 г., 02:52
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `PizzaFast`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `pizzaid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `ingredients` text NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`pizzaid`, `name`, `price`, `ingredients`, `picture`) VALUES
(1, 'Пепперони', 490, 'салями пепперони, моцарелла, томаты, томатный соус', 'pepperoni.jpg'),
(2, 'Прошутто фунги', 490, 'ветчина прошутто, шампиньоны, моцарелла, томаты, томатный соус', 'prosciutto funghi.jpg'),
(3, 'Четыре сыра', 390, 'моцарелла, пармезан, сливочный сыр, голландский сыр, орегано', 'four cheese.webp'),
(4, 'Четыре сезона', 490, 'ветчина, шампиньоны, салями пепперони, бекон, салями чоризо, моцарелла', 'four seasons.jpeg');
(5, 'Ассорти', 550, 'колбаса салями, помидоры, болгарский перец, сыр моцарелла, куриное филе, маслины', 'assortii.jpg'),
(6, 'Барбекю', 490, 'сливочный соус, сыр моцарелла, грибы шампиньоны, лук красный, бекон, курица, помидоры, соус барбекю, укроп, пармезан', 'barbq.jpg'), 'meat.jpg');
(7, 'Карбонара', 490, 'бекон, сыр моцарелла, томатный соус, красный лук, специи (черный молотый перец)', 'Karbonara.jpg'),
(8, 'Маргарита', 450, 'соус Нео (томаты консервированные, лук репчатый, специи, масло оливковое, масло растительное, базилик свежий), сыр моцарелла, томаты', 'marg.jpg'),
(9, 'Вегетарианская', 450, 'соус Нео (томаты консервированные, лук репчатый, специи, масло оливковое, масло растительное, базилик свежий), брокколи, шампиньоны, маслины, моцарелла', 'veg.jpg'),
(10, 'Мясная', 550, 'соус Нео (томаты консервированные, лук репчатый, специи, масло оливковое, масло растительное, базилик свежий), маринованная свинина, бекон, красный лук, шампиньоны, сыр Моцарелла, укроп', 'meat.jpg');
(11, 'Морская', 550, 'осьминог, мидии, кальмар, креветки, моцарелла, корнишоны , соус карри', 'more.jpg'),
(12, 'Ранч', 490, 'куриное филе, бекон, томаты, соус томатный, моцарелла, базилик', 'ranch.jpg'),
(13, 'Оливия', 450, 'салями, лук , оливки, томатный соус, моцарелла, перец зелёный', 'olivia.jpg'),
(14, 'Оливия плюс', 510, 'салями, фарш, лук , оливки, томатный соус, моцарелла, перец зелёный, перец красный', 'oliviaplus.jpg'),
(15, 'Гавайская', 490, 'ветчина, куриное филе, ананас, пармезан, моцарелла, соус сливочный', 'gavai.jpg'),
(16, 'Охотничья', 450, 'охотничьи колбаски, моцарелла, пармезан, оливки, базилик, соус томатный', 'oxot.jpg'),
(17, 'Сырная черри', 510, 'Моцарелла, сливочный сыр, голландский сыр, помидоры черри гриль, ветчина, шампиньоны', 'cheesecherry.jpg'),
(18, 'Марго', 450, 'Моцарелла, пармезан, сливочный сыр, голландский сыр, томаты, базилик, сливочный соус', 'margo.jpg'),
(19, 'Голден', 510, 'моцарелла, голландский сыр, ветчина, охотничьи колбаски, перец зелёный, бекон, шампиньоны, соус сливочный, соус томатный', 'golden.jpg');
COMMIT;
-- --------------------------------------------------------

--
-- Структура таблицы `coordinates`
--

CREATE TABLE `coordinates` (
  `id` int NOT NULL,
  `latitude` double NOT NULL,
  `longtitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `dateofbirth` date NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `balance` decimal(19,2) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`pizzaid`);

--
-- Индексы таблицы `coordinates`
--
ALTER TABLE `coordinates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `pizzaid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `coordinates`
--
ALTER TABLE `coordinates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
