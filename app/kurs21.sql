-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 01 2023 г., 16:53
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kurs2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket` int(11) NOT NULL,
  `core` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cpu`
--

INSERT INTO `cpu` (`id`, `name`, `socket`, `core`, `price`) VALUES
(1, 'CPU1', 1170, '2', '2348Руб.'),
(2, 'CPU2', 1166, '3', '2351Руб.');

-- --------------------------------------------------------

--
-- Структура таблицы `gpu2`
--

CREATE TABLE `gpu2` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Interface` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gpu_memory` int(11) NOT NULL,
  `price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gpu2`
--

INSERT INTO `gpu2` (`id`, `name`, `Interface`, `gpu_memory`, `price`) VALUES
(1, 'GTX970', 'PCI-E 3.0', 2, '56789Руб.'),
(2, 'AMD560', 'PCI-E 2.0', 6, '3456Руб');

-- --------------------------------------------------------

--
-- Структура таблицы `motherboard`
--

CREATE TABLE `motherboard` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket` int(11) NOT NULL,
  `chipset` int(11) NOT NULL,
  `price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory_type_ram` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Interface` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `motherboard`
--

INSERT INTO `motherboard` (`id`, `name`, `socket`, `chipset`, `price`, `memory_type_ram`, `Interface`) VALUES
(1, 'Mother1', 1170, 4, '5678Руб.', 'DDR3', 'PCI-E 3.0'),
(2, 'Mother2', 1166, 7, '3456Руб', 'DDR4', 'Yes');

-- --------------------------------------------------------

--
-- Структура таблицы `ram2`
--

CREATE TABLE `ram2` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory_type_ram` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campacity` int(11) NOT NULL,
  `price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ram2`
--

INSERT INTO `ram2` (`id`, `name`, `memory_type_ram`, `campacity`, `price`) VALUES
(1, 'RAM1', 'DDR3', 2, '5674Руб.'),
(2, 'RAM2', 'DDR4', 4, '7890Руб.');

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `id_sale` int(11) NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `socket` (`socket`);

--
-- Индексы таблицы `gpu2`
--
ALTER TABLE `gpu2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Interface` (`Interface`);

--
-- Индексы таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socket` (`socket`),
  ADD KEY `memory_type_ram` (`memory_type_ram`);

--
-- Индексы таблицы `ram2`
--
ALTER TABLE `ram2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memory_type_ram` (`memory_type_ram`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sale`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gpu2`
--
ALTER TABLE `gpu2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `ram2`
--
ALTER TABLE `ram2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD CONSTRAINT `motherboard_ibfk_1` FOREIGN KEY (`socket`) REFERENCES `cpu` (`socket`),
  ADD CONSTRAINT `motherboard_ibfk_4` FOREIGN KEY (`memory_type_ram`) REFERENCES `ram2` (`memory_type_ram`);

--
-- Ограничения внешнего ключа таблицы `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `cpu` (`id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`id_product`) REFERENCES `gpu2` (`id`),
  ADD CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`id_product`) REFERENCES `ram2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
