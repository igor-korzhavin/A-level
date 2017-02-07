-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 28 2017 г., 17:23
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `login_admin`
--

CREATE TABLE IF NOT EXISTS `login_admin` (
  `id` bigint(20) unsigned NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `login_admin`
--

INSERT INTO `login_admin` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `min_article` text,
  `full_article` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `author`, `min_article`, `full_article`, `create_time`, `update_time`) VALUES
(8, '#1', '                             Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam beatae cupiditate doloremque eligendi, est inventore modi odit provident recusandae veritatis.                        ', '                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda culpa dignissimos dolores doloribus facilis illum, mollitia nam nisi nulla odio optio perspiciatis similique vitae, voluptas. Dolorum earum eligendi eveniet incidunt numquam rem sunt unde? Ad alias animi deserunt, doloribus eveniet ex id libero, non odit recusandae suscipit temporibus tenetur veniam. Ab asperiores aut consectetur corporis, ducimus eaque laborum nostrum, nulla, odit officia omnis pariatur placeat praesentium provident quis recusandae reprehenderit suscipit voluptatum. Aut corporis, expedita obcaecati officia qui veniam voluptate? Adipisci commodi consequatur illo labore magnam obcaecati, officiis quis quos sed veritatis. Quia quis recusandae repellendus reprehenderit suscipit tempora voluptatibus! Accusamus amet blanditiis culpa cum ex explicabo harum illo, in magni molestias necessitatibus nesciunt nostrum, odit qui sint sunt totam, voluptate. Animi asperiores beatae corporis cupiditate dignissimos ducimus error eveniet inventore ipsam, iste, itaque, iusto laborum natus pariatur provident rem saepe sapiente ullam. Earum et eum id non voluptatibus? At aut beatae consectetur culpa cum deserunt doloribus eaque enim eos eveniet exercitationem explicabo facilis fugiat incidunt iste laudantium maiores nam non numquam obcaecati perferendis praesentium repellendus repudiandae sint soluta veritatis, vitae voluptate! Impedit nisi perspiciatis similique. Dolor, libero ullam! Architecto eos explicabo laboriosam maxime nesciunt nihil obcaecati odit pariatur praesentium reiciendis, repudiandae tenetur totam voluptatum. Exercitationem expedita libero maxime, nam rem repellat voluptatum? Aliquam, amet corporis, dolores ea eum excepturi explicabo fugit iste natus optio quia sequi tempora ullam. Esse et hic laborum repellat vel? A ad aut blanditiis cupiditate dicta distinctio dolor dolores earum error excepturi laborum magnam magni minus, mollitia necessitatibus, odit optio perferendis placeat quaerat quam qui quis reprehenderit temporibus totam veniam veritatis voluptas voluptate voluptates voluptatibus voluptatum! Animi assumenda consectetur, cum, cumque eum explicabo, harum in ipsam mollitia quam quas quo totam! Amet error illum laudantium modi nulla obcaecati ratione voluptas. Adipisci aperiam aut deleniti dolorum eius enim, non provident quo repudiandae, unde veniam voluptate. Ea eligendi esse fugit laboriosam libero quod reiciendis. Accusantium nihil sequi soluta unde vero. Ab adipisci alias consectetur dolor dolorem doloribus, esse fugiat in molestiae nam nulla, officiis optio quibusdam quos ratione repellendus similique tempora vel voluptas voluptatem. Beatae iste itaque nam soluta. Distinctio dolore esse eum harum quod ratione soluta. Delectus ea eos error et facilis ipsum laudantium maiores mollitia natus perspiciatis quae, quasi, repudiandae, sunt ut voluptas. A adipisci alias aperiam architecto aut blanditiis debitis deserunt dicta dignissimos ducimus eligendi eos et ex fugit hic ipsam ipsum maiores modi molestiae perferendis, quam repellat sint, sunt unde ut vero voluptate! Aspernatur autem commodi consectetur consequatur corporis dolor dolorem dolores dolorum esse est expedita fuga harum ipsam, labore magnam magni molestiae natus necessitatibus nisi nostrum nulla obcaecati perferendis praesentium quam quibusdam quidem quis quos repellat repellendus suscipit ut vel vero voluptas. Beatae commodi cumque error eum eveniet expedita explicabo harum incidunt laboriosam laborum libero magni maiores, molestiae nobis non perferendis quasi reiciendis repellendus sapiente sed totam velit vitae voluptates. Distinctio dolores ea eos excepturi in labore molestiae nesciunt nisi ut voluptatibus! Atque cumque illum quasi sint ullam? Deserunt minus, quasi?		        	', '2017-01-28 14:18:07', '2017-01-28 14:19:42'),
(9, '#2', '                             Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam beatae cupiditate doloremque eligendi, est inventore modi odit provident recusandae veritatis.                        ', '                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda culpa dignissimos dolores doloribus facilis illum, mollitia nam nisi nulla odio optio perspiciatis similique vitae, voluptas. Dolorum earum eligendi eveniet incidunt numquam rem sunt unde? Ad alias animi deserunt, doloribus eveniet ex id libero, non odit recusandae suscipit temporibus tenetur veniam. Ab asperiores aut consectetur corporis, ducimus eaque laborum nostrum, nulla, odit officia omnis pariatur placeat praesentium provident quis recusandae reprehenderit suscipit voluptatum. Aut corporis, expedita obcaecati officia qui veniam voluptate? Adipisci commodi consequatur illo labore magnam obcaecati, officiis quis quos sed veritatis. Quia quis recusandae repellendus reprehenderit suscipit tempora voluptatibus! Accusamus amet blanditiis culpa cum ex explicabo harum illo, in magni molestias necessitatibus nesciunt nostrum, odit qui sint sunt totam, voluptate. Animi asperiores beatae corporis cupiditate dignissimos ducimus error eveniet inventore ipsam, iste, itaque, iusto laborum natus pariatur provident rem saepe sapiente ullam. Earum et eum id non voluptatibus? At aut beatae consectetur culpa cum deserunt doloribus eaque enim eos eveniet exercitationem explicabo facilis fugiat incidunt iste laudantium maiores nam non numquam obcaecati perferendis praesentium repellendus repudiandae sint soluta veritatis, vitae voluptate! Impedit nisi perspiciatis similique. Dolor, libero ullam! Architecto eos explicabo laboriosam maxime nesciunt nihil obcaecati odit pariatur praesentium reiciendis, repudiandae tenetur totam voluptatum. Exercitationem expedita libero maxime, nam rem repellat voluptatum? Aliquam, amet corporis, dolores ea eum excepturi explicabo fugit iste natus optio quia sequi tempora ullam. Esse et hic laborum repellat vel? A ad aut blanditiis cupiditate dicta distinctio dolor dolores earum error excepturi laborum magnam magni minus, mollitia necessitatibus, odit optio perferendis placeat quaerat quam qui quis reprehenderit temporibus totam veniam veritatis voluptas voluptate voluptates voluptatibus voluptatum! Animi assumenda consectetur, cum, cumque eum explicabo, harum in ipsam mollitia quam quas quo totam! Amet error illum laudantium modi nulla obcaecati ratione voluptas. Adipisci aperiam aut deleniti dolorum eius enim, non provident quo repudiandae, unde veniam voluptate. Ea eligendi esse fugit laboriosam libero quod reiciendis. Accusantium nihil sequi soluta unde vero. Ab adipisci alias consectetur dolor dolorem doloribus, esse fugiat in molestiae nam nulla, officiis optio quibusdam quos ratione repellendus similique tempora vel voluptas voluptatem. Beatae iste itaque nam soluta. Distinctio dolore esse eum harum quod ratione soluta. Delectus ea eos error et facilis ipsum laudantium maiores mollitia natus perspiciatis quae, quasi, repudiandae, sunt ut voluptas. A adipisci alias aperiam architecto aut blanditiis debitis deserunt dicta dignissimos ducimus eligendi eos et ex fugit hic ipsam ipsum maiores modi molestiae perferendis, quam repellat sint, sunt unde ut vero voluptate! Aspernatur autem commodi consectetur consequatur corporis dolor dolorem dolores dolorum esse est expedita fuga harum ipsam, labore magnam magni molestiae natus necessitatibus nisi nostrum nulla obcaecati perferendis praesentium quam quibusdam quidem quis quos repellat repellendus suscipit ut vel vero voluptas. Beatae commodi cumque error eum eveniet expedita explicabo harum incidunt laboriosam laborum libero magni maiores, molestiae nobis non perferendis quasi reiciendis repellendus sapiente sed totam velit vitae voluptates. Distinctio dolores ea eos excepturi in labore molestiae nesciunt nisi ut voluptatibus! Atque cumque illum quasi sint ullam? Deserunt minus, quasi?		        	', '2017-01-28 14:18:08', '2017-01-28 14:19:37'),
(10, '#3', '                             Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam beatae cupiditate doloremque eligendi, est inventore modi odit provident recusandae veritatis.                        ', '                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda culpa dignissimos dolores doloribus facilis illum, mollitia nam nisi nulla odio optio perspiciatis similique vitae, voluptas. Dolorum earum eligendi eveniet incidunt numquam rem sunt unde? Ad alias animi deserunt, doloribus eveniet ex id libero, non odit recusandae suscipit temporibus tenetur veniam. Ab asperiores aut consectetur corporis, ducimus eaque laborum nostrum, nulla, odit officia omnis pariatur placeat praesentium provident quis recusandae reprehenderit suscipit voluptatum. Aut corporis, expedita obcaecati officia qui veniam voluptate? Adipisci commodi consequatur illo labore magnam obcaecati, officiis quis quos sed veritatis. Quia quis recusandae repellendus reprehenderit suscipit tempora voluptatibus! Accusamus amet blanditiis culpa cum ex explicabo harum illo, in magni molestias necessitatibus nesciunt nostrum, odit qui sint sunt totam, voluptate. Animi asperiores beatae corporis cupiditate dignissimos ducimus error eveniet inventore ipsam, iste, itaque, iusto laborum natus pariatur provident rem saepe sapiente ullam. Earum et eum id non voluptatibus? At aut beatae consectetur culpa cum deserunt doloribus eaque enim eos eveniet exercitationem explicabo facilis fugiat incidunt iste laudantium maiores nam non numquam obcaecati perferendis praesentium repellendus repudiandae sint soluta veritatis, vitae voluptate! Impedit nisi perspiciatis similique. Dolor, libero ullam! Architecto eos explicabo laboriosam maxime nesciunt nihil obcaecati odit pariatur praesentium reiciendis, repudiandae tenetur totam voluptatum. Exercitationem expedita libero maxime, nam rem repellat voluptatum? Aliquam, amet corporis, dolores ea eum excepturi explicabo fugit iste natus optio quia sequi tempora ullam. Esse et hic laborum repellat vel? A ad aut blanditiis cupiditate dicta distinctio dolor dolores earum error excepturi laborum magnam magni minus, mollitia necessitatibus, odit optio perferendis placeat quaerat quam qui quis reprehenderit temporibus totam veniam veritatis voluptas voluptate voluptates voluptatibus voluptatum! Animi assumenda consectetur, cum, cumque eum explicabo, harum in ipsam mollitia quam quas quo totam! Amet error illum laudantium modi nulla obcaecati ratione voluptas. Adipisci aperiam aut deleniti dolorum eius enim, non provident quo repudiandae, unde veniam voluptate. Ea eligendi esse fugit laboriosam libero quod reiciendis. Accusantium nihil sequi soluta unde vero. Ab adipisci alias consectetur dolor dolorem doloribus, esse fugiat in molestiae nam nulla, officiis optio quibusdam quos ratione repellendus similique tempora vel voluptas voluptatem. Beatae iste itaque nam soluta. Distinctio dolore esse eum harum quod ratione soluta. Delectus ea eos error et facilis ipsum laudantium maiores mollitia natus perspiciatis quae, quasi, repudiandae, sunt ut voluptas. A adipisci alias aperiam architecto aut blanditiis debitis deserunt dicta dignissimos ducimus eligendi eos et ex fugit hic ipsam ipsum maiores modi molestiae perferendis, quam repellat sint, sunt unde ut vero voluptate! Aspernatur autem commodi consectetur consequatur corporis dolor dolorem dolores dolorum esse est expedita fuga harum ipsam, labore magnam magni molestiae natus necessitatibus nisi nostrum nulla obcaecati perferendis praesentium quam quibusdam quidem quis quos repellat repellendus suscipit ut vel vero voluptas. Beatae commodi cumque error eum eveniet expedita explicabo harum incidunt laboriosam laborum libero magni maiores, molestiae nobis non perferendis quasi reiciendis repellendus sapiente sed totam velit vitae voluptates. Distinctio dolores ea eos excepturi in labore molestiae nesciunt nisi ut voluptatibus! Atque cumque illum quasi sint ullam? Deserunt minus, quasi?		        	', '2017-01-28 14:18:10', '2017-01-28 14:19:31'),
(11, '#4', '                             Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam beatae cupiditate doloremque eligendi, est inventore modi odit provident recusandae veritatis.                        ', '                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda culpa dignissimos dolores doloribus facilis illum, mollitia nam nisi nulla odio optio perspiciatis similique vitae, voluptas. Dolorum earum eligendi eveniet incidunt numquam rem sunt unde? Ad alias animi deserunt, doloribus eveniet ex id libero, non odit recusandae suscipit temporibus tenetur veniam. Ab asperiores aut consectetur corporis, ducimus eaque laborum nostrum, nulla, odit officia omnis pariatur placeat praesentium provident quis recusandae reprehenderit suscipit voluptatum. Aut corporis, expedita obcaecati officia qui veniam voluptate? Adipisci commodi consequatur illo labore magnam obcaecati, officiis quis quos sed veritatis. Quia quis recusandae repellendus reprehenderit suscipit tempora voluptatibus! Accusamus amet blanditiis culpa cum ex explicabo harum illo, in magni molestias necessitatibus nesciunt nostrum, odit qui sint sunt totam, voluptate. Animi asperiores beatae corporis cupiditate dignissimos ducimus error eveniet inventore ipsam, iste, itaque, iusto laborum natus pariatur provident rem saepe sapiente ullam. Earum et eum id non voluptatibus? At aut beatae consectetur culpa cum deserunt doloribus eaque enim eos eveniet exercitationem explicabo facilis fugiat incidunt iste laudantium maiores nam non numquam obcaecati perferendis praesentium repellendus repudiandae sint soluta veritatis, vitae voluptate! Impedit nisi perspiciatis similique. Dolor, libero ullam! Architecto eos explicabo laboriosam maxime nesciunt nihil obcaecati odit pariatur praesentium reiciendis, repudiandae tenetur totam voluptatum. Exercitationem expedita libero maxime, nam rem repellat voluptatum? Aliquam, amet corporis, dolores ea eum excepturi explicabo fugit iste natus optio quia sequi tempora ullam. Esse et hic laborum repellat vel? A ad aut blanditiis cupiditate dicta distinctio dolor dolores earum error excepturi laborum magnam magni minus, mollitia necessitatibus, odit optio perferendis placeat quaerat quam qui quis reprehenderit temporibus totam veniam veritatis voluptas voluptate voluptates voluptatibus voluptatum! Animi assumenda consectetur, cum, cumque eum explicabo, harum in ipsam mollitia quam quas quo totam! Amet error illum laudantium modi nulla obcaecati ratione voluptas. Adipisci aperiam aut deleniti dolorum eius enim, non provident quo repudiandae, unde veniam voluptate. Ea eligendi esse fugit laboriosam libero quod reiciendis. Accusantium nihil sequi soluta unde vero. Ab adipisci alias consectetur dolor dolorem doloribus, esse fugiat in molestiae nam nulla, officiis optio quibusdam quos ratione repellendus similique tempora vel voluptas voluptatem. Beatae iste itaque nam soluta. Distinctio dolore esse eum harum quod ratione soluta. Delectus ea eos error et facilis ipsum laudantium maiores mollitia natus perspiciatis quae, quasi, repudiandae, sunt ut voluptas. A adipisci alias aperiam architecto aut blanditiis debitis deserunt dicta dignissimos ducimus eligendi eos et ex fugit hic ipsam ipsum maiores modi molestiae perferendis, quam repellat sint, sunt unde ut vero voluptate! Aspernatur autem commodi consectetur consequatur corporis dolor dolorem dolores dolorum esse est expedita fuga harum ipsam, labore magnam magni molestiae natus necessitatibus nisi nostrum nulla obcaecati perferendis praesentium quam quibusdam quidem quis quos repellat repellendus suscipit ut vel vero voluptas. Beatae commodi cumque error eum eveniet expedita explicabo harum incidunt laboriosam laborum libero magni maiores, molestiae nobis non perferendis quasi reiciendis repellendus sapiente sed totam velit vitae voluptates. Distinctio dolores ea eos excepturi in labore molestiae nesciunt nisi ut voluptatibus! Atque cumque illum quasi sint ullam? Deserunt minus, quasi?		        	', '2017-01-28 14:18:12', '2017-01-28 14:19:25');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `login_admin`
--
ALTER TABLE `login_admin`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
