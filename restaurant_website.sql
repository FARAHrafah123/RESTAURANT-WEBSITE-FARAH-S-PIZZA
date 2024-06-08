-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 08 juin 2024 à 16:09
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant_website`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(50) NOT NULL,
  `client_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_phone`, `client_email`) VALUES
(9, 'Clinet 1', '02020202020', 'client1@gmail.com'),
(10, 'Client 10', '0638383933', 'client10@gmail.com'),
(11, 'Client 11', '06242556272', 'client11@yahoo.fr'),
(13, 'Client 12', '030303030202', 'client1133@gmail.com'),
(14, 'Client 12', '030303030', 'client14@gmail.com'),
(16, 'Client 14', '0203203203', 'client14@gmail.com'),
(17, 'Client 17', '0737373822', 'client17@gmail.com'),
(18, 'Client 12', '02920320', 'client12@yahoo.fr'),
(19, 'Test', '1034304300', 'test@gmail.com'),
(20, 'farah rafah', '0766666666', 'farah_rahali@hotmail.fr'),
(21, 'farah rafah', '0766666666', 'farah_rahali@hotmail.fr'),
(22, 'FARAH', '0766666666', 'Kaoutarfaiqi@gmail.com'),
(23, 'farah rafah', '0766666666', 'farah_rahali@hotmail.fr'),
(24, 'farah', '07662396763', 'farah_rahali@hotmail.fr'),
(25, 'farah rafah', '0766666666', 'farah_rahali@hotmail.fr'),
(26, 'farah rafah', '0766666666', 'farah_rahali@hotmail.fr'),
(27, 'farah rafah', '0766666666', 'farah_rahali@hotmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `image_id` int(2) NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `image_gallery`
--

INSERT INTO `image_gallery` (`image_id`, `image_name`, `image`) VALUES
(1, 'Moroccan Tajine', '58146_Moroccan Chicken Tagine.jpeg'),
(2, 'Italian Pasta', 'img_1.jpg'),
(3, 'Cook', 'img_2.jpg'),
(4, 'Pizza', 'img_3.jpg'),
(5, 'Burger', 'burger.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `in_order`
--

CREATE TABLE `in_order` (
  `id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `menu_id` int(5) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `in_order`
--

INSERT INTO `in_order` (`id`, `order_id`, `menu_id`, `quantity`) VALUES
(8, 10, 16, 1),
(9, 11, 12, 1),
(10, 11, 16, 1),
(11, 12, 11, 1),
(12, 12, 12, 1),
(13, 12, 16, 1),
(14, 13, 2, 1),
(15, 13, 11, 1),
(16, 14, 3, 1),
(17, 14, 9, 1),
(18, 14, 16, 1),
(19, 15, 8, 1),
(20, 15, 9, 1),
(21, 15, 11, 1),
(22, 16, 9, 1),
(23, 16, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(5) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_description` varchar(255) NOT NULL,
  `menu_price` decimal(6,2) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `category_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_description`, `menu_price`, `menu_image`, `category_id`) VALUES
(1, 'Moroccan Couscous', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', '14.00', '88737_couscous_meat.jpg', 8),
(2, 'Beef Hamburger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '3.80', 'burger.jpeg', 1),
(3, 'Ice Cream', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '7.50', 'summer-dessert-sweet-ice-cream.jpg', 2),
(5, 'Coffee', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '10.00', 'coffee.jpeg', 3),
(6, 'Ice Tea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '3.20', '76643_ice_tea.jpg', 3),
(7, 'Bucatini', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '20.00', 'macaroni.jpeg', 4),
(8, 'Cannelloni', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '10.00', 'cooked_pasta.jpeg', 4),
(9, 'Margherita', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '24.00', 'pizza.jpeg', 5),
(11, 'Moroccan Tajine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '20.00', '58146_Moroccan Chicken Tagine.jpeg', 8),
(12, 'Moroccan Bissara', 'Bissara is a traditional Moroccan dish made from dried split fava beans (also known as broad beans) that are cooked and blended into a smooth and flavorful soup.', '10.00', '61959_Bissara.jpg', 8),
(16, 'Couscous', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', '20.00', '76635_57738_w1024h768c1cx256cy192.jpg', 8);

-- --------------------------------------------------------

--
-- Structure de la table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `menu_categories`
--

INSERT INTO `menu_categories` (`category_id`, `category_name`) VALUES
(1, 'burgers'),
(2, 'desserts'),
(3, 'drinks'),
(4, 'pasta'),
(5, 'pizzas'),
(6, 'salads'),
(8, 'Traditional Food');

-- --------------------------------------------------------

--
-- Structure de la table `placed_orders`
--

CREATE TABLE `placed_orders` (
  `order_id` int(5) NOT NULL,
  `order_time` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `placed_orders`
--

INSERT INTO `placed_orders` (`order_id`, `order_time`, `client_id`, `delivery_address`, `delivered`, `canceled`, `cancellation_reason`) VALUES
(7, '2020-06-22 12:01:00', 9, 'Bloc A Nr 80000 Hay ElAgadir', 0, 1, 'Sorry! I changed my mind!'),
(8, '2020-06-23 06:07:00', 10, 'Chengdu, China', 0, 1, ''),
(9, '2020-06-24 16:40:00', 11, 'Hay El Houda Agadir', 1, 0, NULL),
(10, '2023-07-01 04:02:00', 16, 'Bloc A', 0, 0, NULL),
(11, '2023-10-30 20:09:00', 18, 'Test testst asds', 0, 0, NULL),
(12, '2023-10-30 21:46:00', 19, 'tests sd', 0, 0, NULL),
(13, '2024-05-29 00:37:00', 21, 'elhadad tanger', 0, 0, NULL),
(14, '2024-05-30 16:33:00', 23, 'elhadad tanger', 0, 0, NULL),
(15, '2024-05-30 16:46:00', 25, 'elhadad tanger', 0, 0, NULL),
(16, '2024-06-04 11:53:00', 27, 'elhadad tanger', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `selected_time` datetime NOT NULL,
  `nbr_guests` int(2) NOT NULL,
  `table_id` int(3) NOT NULL,
  `liberated` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `date_created`, `client_id`, `selected_time`, `nbr_guests`, `table_id`, `liberated`, `canceled`, `cancellation_reason`) VALUES
(1, '2020-07-18 09:07:00', 13, '2020-07-30 09:07:00', 0, 1, 0, 0, NULL),
(2, '2020-07-18 09:11:00', 14, '2020-07-29 13:00:00', 4, 1, 0, 0, NULL),
(3, '2023-07-01 04:01:00', 15, '2023-07-02 05:00:00', 2, 1, 0, 0, NULL),
(4, '2023-10-30 20:03:00', 17, '2023-11-08 20:03:00', 1, 1, 0, 0, NULL),
(5, '2024-05-29 00:34:00', 20, '2024-05-31 06:39:00', 2, 1, 0, 0, NULL),
(6, '2024-05-30 16:32:00', 22, '2024-06-04 20:12:00', 4, 1, 0, 0, NULL),
(7, '2024-05-30 16:45:00', 24, '2024-06-06 20:00:00', 2, 1, 0, 0, NULL),
(8, '2024-06-04 11:52:00', 26, '2024-06-27 11:52:00', 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `table_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tables`
--

INSERT INTO `tables` (`table_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `full_name`, `password`) VALUES
(1, 'admin_user', 'user_admin@gmail.com', 'User Admin', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

-- --------------------------------------------------------

--
-- Structure de la table `website_settings`
--

CREATE TABLE `website_settings` (
  `option_id` int(5) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `website_settings`
--

INSERT INTO `website_settings` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'restaurant_name', 'FARAH\'S PIZZA'),
(2, 'restaurant_email', 'farahrahali9876@gmail.com'),
(3, 'admin_email', 'admin123@gmail.com'),
(4, 'restaurant_phonenumber', '212664284799'),
(5, 'restaurant_address', 'HOMAT ELHADDAD RUE 14 N°35,TANGIER,MOROCCO');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Index pour la table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- Index pour la table `in_order`
--
ALTER TABLE `in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu` (`menu_id`),
  ADD KEY `fk_order` (`order_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `FK_menu_category_id` (`category_id`);

--
-- Index pour la table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_client` (`client_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `image_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `in_order`
--
ALTER TABLE `in_order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `placed_orders`
--
ALTER TABLE `placed_orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `option_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `in_order`
--
ALTER TABLE `in_order`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`menu_id`),
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `placed_orders` (`order_id`);

--
-- Contraintes pour la table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `FK_menu_category_id` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`category_id`);

--
-- Contraintes pour la table `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
