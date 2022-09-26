-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2022 at 03:48 PM
-- Server version: 5.7.39-0ubuntu0.18.04.2
-- PHP Version: 7.3.33-4+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(553, 'Dog Dry Food', 'Buy Dog Dry Food in South Africa Online at ePETstore.co.za', 'Shop our full range of Eukanuba, Royal Canin, Vet\'s Choice and Earthborn dry dog food now. Every palate is covered.', '2022-09-22 12:01:33', '2022-09-22 12:01:33'),
(590, 'Cat Toys', 'Buy Cat Toys in South Africa Online at ePETstore.co.za', 'A complementary range of cat scratchers, interactive feeders and toys to entertain your cat 24/7. Buy now.', '2022-09-22 12:01:33', '2022-09-22 12:01:33'),
(635, 'Cat Treats', 'Buy Cat Treats in South Africa Online at ePETstore.co.za', 'Spoil your cat with Iams or Royal Canin pouches, Greenies dental treats and catnip options to make them purr.', '2022-09-22 12:01:33', '2022-09-22 12:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_09_22_043300_create_categories_table', 1),
(5, '2022_09_22_043324_create_products_table', 1),
(6, '2022_09_22_043809_add_product_category_table', 1),
(7, '2022_09_22_045532_create_variants_table', 1),
(8, '2022_09_22_135804_rename_meta_descriton_to_meta_description', 2),
(9, '2022_09_24_060757_create_roles_table', 3),
(10, '2022_09_24_061531_add_role_id_in_users', 3),
(11, '2022_09_24_065053_add_id_number_and_contact_number_in_registration', 4),
(12, '2022_09_25_101548_change_sap_product_code_and_web_poduct_code_in_variants', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(27, 'Royal Canin Babydog Milk for Puppies', 'royal-canin-baby-dog-milk-junior-milk-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(28, 'Royal Canin Mini Adult Dog Food', 'royal-canin-mini-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(29, 'Royal Canin Mini Ageing 12+ Adult Dog Food', 'royal-canin-mini-ageing-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(30, 'Royal Canin Mini Exigent Adult Dog Food', 'royal-canin-mini-exigent-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(31, 'Royal Canin Mini Puppy Food', 'royal-canin-mini-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(32, 'Royal Canin Mini Light Weight Care Dog Food', 'royal-canin-mini-light-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(33, 'Royal Canin Mini Digestive Care Adult Dog Food', 'royal-canin-mini-digestive-care-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(34, 'Royal Canin Mini Mother and Babydog Starter Dog Food', 'royal-canin-mother-babydog-starter-mini-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(35, 'Royal Canin Mini 8+ Adult Dog Food', 'royal-canin-mini-8-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(36, 'Royal Canin Giant Adult Dog Food', 'royal-canin-giant-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(37, 'Royal Canin Giant Junior Food', 'royal-canin-giant-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(38, 'Royal Canin Giant Puppy Food', 'royal-canin-giant-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(39, 'Royal Canin Giant Mother and Babydog Starter Dog Food', 'royal-canin-mother-babydog-starter-giant-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(40, 'Royal Canin Maxi 5+ Adult Dog Food', 'royal-canin-maxi-5-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(41, 'Royal Canin Maxi Adult Dog Food', 'royal-canin-maxi-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(42, 'Royal Canin Maxi Puppy Food', 'royal-canin-maxi-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(43, 'Royal Canin Maxi Light Adult Dog Food', 'royal-canin-maxi-light-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(44, 'Royal Canin Maxi Digestive Care Adult Dog Food', 'royal-canin-maxi-digestive-care-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(45, 'Royal Canin Maxi Mother and Babydog Starter Dog Food', 'royal-canin-mother-babydog-maxi-starter-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(46, 'Royal Canin Medium 7+ Adult Dog Food', 'royal-canin-medium-7-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(47, 'Royal Canin Medium Adult Dog Food', 'royal-canin-medium-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(48, 'Royal Canin Medium Mother and Babydog Starter Dog Food', 'royal-canin-mother-babydog-medium-starter-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(49, 'Royal Canin Medium Digestive Care Dog Food', 'royal-canin-medium-digestive-care-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(50, 'Royal Canin Medium Light Weight Care Adult Dog Food', 'royal-canin-medium-light-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(51, 'Royal Canin Medium Puppy Food', 'royal-canin-medium-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(52, 'Royal Canin Beagle Adult Dog Food', 'royal-canin-beagle-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(53, 'Royal Canin Boxer Adult Dog Food', 'royal-canin-boxer-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(54, 'Royal Canin Junior Boxer Dog Food', 'royal-canin-boxer-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(55, 'Royal Canin Bulldog Adult Dog Food', 'royal-canin-bulldog-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(56, 'Royal Canin Junior Bulldog Dog Food', 'royal-canin-bulldog-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(57, 'Royal Canin Chihuahua Adult Dog Food', 'royal-canin-chihuahua-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(58, 'Royal Canin Junior Chihuahua Dog Food', 'royal-canin-chihuahua-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(59, 'Royal Canin Cocker Adult Dog Food', 'royal-canin-cocker-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(60, 'Royal Canin Junior Cocker Dog Food', 'royal-canin-cocker-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(61, 'Royal Canin Dalmatian Adult Dog Food', 'royal-canin-dalmatian-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(62, 'Royal Canin Junior Dalmatian Dog Food', 'royal-canin-dalmatian-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(63, 'Royal Canin Dachshund Adult Dog Food', 'royal-canin-dachshund-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(64, 'Royal Canin Junior Dachshund Dog Food', 'royal-canin-dachshund-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(65, 'Royal Canin French Bulldog Adult Dog Food', 'royal-canin-french-bulldog-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(66, 'Royal Canin German Shepherd Adult Dog Food', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(67, 'Royal Canin Junior German Shepherd Dog Food', 'royal-canin-german-shepherd-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(68, 'Royal Canin Golden Retriever Adult Dog Food', 'royal-canin-golden-retriever-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(69, 'Royal Canin Junior Golden Retriever Dog Food', 'royal-canin-golden-retriever-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(70, 'Royal Canin Great Dane Adult Dog Food', 'royal-canin-great-dane-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(71, 'Royal Canin Jack Russell Terrier Adult Dog Food', 'royal-canin-jack-russell-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(72, 'Royal Canin Junior Jack Russell Dog Food', 'royal-canin-jack-russell-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(73, 'Royal Canin Labrador Retriever Adult Dog Food', 'royal-canin-labrador-retriever-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(74, 'Royal Canin Junior Labrador Retriever Dog Food', 'royal-canin-labrador-retriever-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(75, 'Royal Canin Miniature Schnauzer Adult Dog Food', 'royal-canin-miniature-schnauzer-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(76, 'Royal Canin Junior Miniature Schnauzer Dog Food', 'royal-canin-miniature-schnauzer-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(77, 'Royal Canin Poodle Adult Dog Food', 'royal-canin-poodle-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(78, 'Royal Canin Junior Poodle Dog Food', 'royal-canin-poodle-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(79, 'Royal Canin Pug Adult Dog Food', 'royal-canin-pug-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(80, 'Royal Canin Junior Pug Dog Food', 'royal-canin-pug-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(81, 'Royal Canin Rottweiler Adult Dog Food', 'royal-canin-rottweiler-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(82, 'Royal Canin Junior Rottweiler Dog Food', 'royal-canin-rottweiler-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(83, 'Royal Canin Shih Tzu Adult Dog Food', 'royal-canin-shi-tzu-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(84, 'Royal Canin Junior Shih Tzu Dog Food', 'royal-canin-shih-tzu-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(85, 'Royal Canin Yorkshire Terrier Adult Dog Food', 'royal-canin-yorshire-terrier-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(86, 'Royal Canin Junior Yorkshire Terrier Dog Food', 'royal-canin-yorkshire-terrier-junior-puppy-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(87, 'Royal Canin Digest Sensitive Adult Wet Cat Food', 'royal-canin-digest-sensitive-adult-wet-cat-food-9-pouch', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(88, 'Royal Canin Instinctive Adult Wet Cat Food +7', 'royal-canin-instinctive-adult-wet-cat-food-7-pouch', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(89, 'Royal Canin Instinctive in Gravy Adult Wet Cat Food', 'royal-canin-instinctive-12-in-adult-wet-cat-food-gravy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(90, 'Royal Canin Intense Beauty Adult Wet Cat Food Pouch', 'royal-canin-intense-beauty-12-adult-wet-cat-food-', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(91, 'Royal Canin Ultra Light 10 Adult Wet Cat Food Pouch', 'royal-canin-ultra-light-10-adult-wet-cat-food-', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(94, 'Royal Canin Instinctive in Jelly Adult Wet Cat Food', 'royal-canin-instinctive-in-adult-wet-cat-food-jelly', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(95, 'Royal Canin Sterilised Adult Wet Cat Food', 'royal-canin-adult-wet-cat-food-sterilised', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(96, 'Royal Canin Ageing +12 Wet Cat Food Pouch', 'royal-canin-ageing-12-adult-wet-cat-food-', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(105, 'Royal Canin X-Small Puppy Food', 'royal-canin-xsmall-junior-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(106, 'Royal Canin X-Small Adult Dog Food', 'royal-canin-xsmall-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(107, 'Royal Canin X-Small Ageing 12+ Dog Food', 'royal-canin-adult-12plus-ageing-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(110, 'Royal Canin Adult Maxi Light Weight Care Dog Food', 'royal-canin-maxi-light-weight-care', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(117, '(Short Expiry) Royal Canin Giant Mother & Babydog Starter Dog Food - 4kg', 'short-expiry-starter-giant', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(118, '(Short Expiry) Royal Canin Great Dane Adult Dog Food', 'royal-canin-great-dane-dog-food-short-expiry', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(119, '(Short Expiry) Royal Canin Junior Chihuahua Dog Food', 'royal-canin-chihuahua-junior-short-expiry', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(121, '(Short Expiry) Royal Canin Digest Sensitive Adult Wet Cat Food', 'short-expiry-digest-sensitive-cat-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(122, '(Short Expiry) Royal Canin Cocker Dog Food', 'short-expiry-cocker-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(123, 'Eukanuba Adult Large Breed Dog Food', 'eukanuba-adult-large-breed-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(124, 'Eukanuba Adult Large Breed Dog Food - Lamb & Rice', 'eukanuba-adult-large-breed-dry-dog-food-lamb-rice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(125, 'Eukanuba Adult Medium Breed Dog Food', 'eukanuba-adult-medium-breed-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(126, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice', 'eukanuba-small-and-medium-adult-lamb-rice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(127, 'Eukanuba Adult Small Breed Dog Food', 'eukanuba-adult-small-breed-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(128, 'Eukanuba Adult Large Breed Weight Control Dog Food ', 'eukanuba-adult-large-breed-weight-control-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(129, 'Eukanuba Adult Small and Medium Breed Weight Control Dog Food', 'eukanuba-adult-small-and-medium-breed-weight-control-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(130, 'Eukanuba Premium Performance Working and Endurance Adult Dog Food ', 'eukanuba-premium-performance-working-and-endurance-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(131, 'Eukanuba Daily Care Sensitive Joints Adult Dog Food', 'eukanuba-daily-care-sensitive-joints-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(132, 'Eukanuba Daily Care Sensitive Skin Adult Dog Food', 'eukanuba-sensitive-skin-daily-care-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(133, 'Eukanuba Senior All Breeds Dog Food - Lamb & Rice', 'eukanuba-senior-all-breeds-dry-dog-food-lamb-rice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(134, 'Eukanuba Senior Large Breed Dog Food', 'eukanuba-senior-large-breed-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(135, 'Eukanuba Senior Medium Breed Dog Food', 'eukanuba-senior-medium-breed-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(136, 'Eukanuba Senior Small Breed Dog Food', 'eukanuba-senior-small-breed-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(137, 'Eukanuba Large Breed Puppy Food', 'eukanuba-large-breed-puppy-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(138, 'Eukanuba Medium Breed Puppy Food', 'eukanuba-medium-breed-puppy-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(139, 'Eukanuba Small Breed Puppy Food', 'eukanuba-small-breed-puppy-dry-dog-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(140, 'Eukanuba Small and Medium Breed Puppy Food - Lamb & Rice', 'eukanuba-small-and-medium-breed-puppy-lamb-and-rice-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(141, 'Eukanuba Dermatosis F.P. Dog Food', 'eukanuba-veterinary-diets-dermatosis-fp-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(142, 'Eukanuba Restricted Calorie Biscuits', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(158, 'Iams Kitten Chicken Wet Cat Food Healthy Pouch', 'iams-healthy-kitten-wet-cat-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(159, 'Iams Mature & Senior Chicken Wet Cat Food Healthy Pouch', 'iams-healthy-mature-senior-wet-cat-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(160, 'Iams Adult Chicken Wet Cat Food Healthy Pouch', 'iams-healthy-adult-wet-cat-food-chicken', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(161, 'Iams Adult Ocean Fish Wet Cat Food Healthy Pouch', 'iams-healthy-adult-wet-cat-food-ocean-fish', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(162, 'Iams Adult Salmon Wet Cat Food Healthy Pouch', 'iams-healthy-adult-wet-cat-food-salmon', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(163, 'Iams Adult Tuna in Jelly Wet Cat Food Healthy Pouch', 'iams-healthy-adult-wet-cat-food-tuna-in-jelly', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(187, 'Royal Canin Hepatic Adult Dog Food', 'royal-canin-hepatic-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(189, 'Royal Canin Gastro Intestinal Moderate Calorie GIM 23 Adult Dog Food', 'royal-canin-gastro-intestinal-moderate-calorie-gim-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(191, 'Royal Canin Gastro Intestinal Low Fat LF 22 Adult Dog Food', 'royal-canin-gastro-intestinal-low-fat-lf-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(192, 'Royal Canin Gastro Intestinal Junior Dog Food', 'royal-canin-gastro-intestinal-junior-dry-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(193, 'Royal Canin Gastro Intestinal Adult Dog Food', 'royal-canin-gastro-intestinal-gi25-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(194, 'Royal Canin Fibre Response Adult Dog Food', 'royal-canin-fibre-response-fr23-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(195, 'Royal Canin Cardiac Adult Dog Food', 'royal-canin-cardiac-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(197, 'Royal Canin Anallergenic Adult Dog Food', 'royal-canin-anallergenic-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(198, 'Royal Canin Diabetic DS37 Adult Dog Food', 'royal-canin-diabetic-ds-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(201, 'Royal Canin Urinary U/C Low Purine Adult Dog Food', 'royal-canin-urinary-uc-low-purine-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(202, 'Royal Canin Hypoallergenic DR 21 Adult Dog Food', 'royal-canin-hypoallergenic-dr21-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(203, 'Royal Canin Hypoallergenic HME 23 Moderate Calorie Adult Dog Food', 'royal-canin-hypoallergenic-hme23-moderate-calorie-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(204, 'Royal Canin Mobility Larger Dogs Adult Dog Food', 'royal-canin-mobility-larger-dogs-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(205, 'Royal Canin Mobility Adult Dog Food', 'royal-canin-mobility-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(206, 'Royal Canin Obesity Management Adult Dog Food', 'royal-canin-obesity-management-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(209, 'Royal Canin Satiety Support Weight Management Adult Dog Food', 'royal-canin-satiety-support-weight-management-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(211, 'Royal Canin Sensitivity Control  Adult Dog Food', 'royal-canin-sensitivity-control-sc21-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(212, 'Royal Canin Skin Care SK 23 Adult Dog Food', 'royal-canin-skin-care-adult-sk23-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(213, 'Royal Canin Skin Care Small Adult Dog Food', 'royal-canin-skin-care-adult-small-sks25-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(214, 'Royal Canin Skin Care Junior Small SKJ 29 Dog Food', 'royal-canin-skin-care-junior-small-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(215, 'Royal Canin Skin Support SS 23 Adult Dog Food', 'royal-canin-skin-support-ss23-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(216, 'Royal Canin Weight Control DS 30 Adult Dog Food', 'royal-canin-weight-control-ds30-adult-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(286, 'Catnip Mice Chew Toys for Cats', 'mcmac-catnip-chew-mice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(287, 'Catnip Chew Ring Toys for Cats', 'petstages-catnip-chew-ring', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(288, 'Laser Fun Toy for Cats', 'petstages-laser-fun', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(289, 'Cheese Chase Toy for Cats', 'petstages-cheese-chase', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(290, 'Orkakat Catnip Infused Mice Toys for Cats', 'mcmac-orka-catnip-infused-mouse', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(291, 'Orkakat Wiggle Worm Toy for Cats', 'mcmac-orka-cat-wiggle-worm', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(292, 'Easy Life Scratch Hammock for Cats', 'petstages-easy-life-scratch-hammock', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(293, 'Green Magic Mighty Mouse Toy for Cats', 'petstages-green-magic-mighty-mouse', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(294, 'Fresh Breath Mint Stick Toy for Cats', 'petstages-fresh-breath-mint-stick', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(295, 'Scratch, Snuggle & Rest Cat Scratcher', 'petstages-scratch-snuggle-rest', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(301, 'Catnip Foil Bag 40G', 'mcmac-catnip-foil-bag-g', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(311, 'Nature\'s Gift Love Bites Cat Treats Seafood or Chicken', 'natures-gift-love-cat-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(339, 'Milko-Pup Milk Replacer/Supplement For Puppies And Dogs', 'kyron-milko-pup-milk-replacersupplement-for-puppies-and-dogs', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(428, 'Iams Adult Fish Multipack Combo Wet Cat Food', 'iams-adult-fish-multipack-pouch', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(450, 'SlimCat Interactive Cat Feeder Ball', 'slimcat-feeder-ball', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(467, 'Royal Canin Renal Adult Dog Food', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(468, 'Royal Canin Dental Small Adult Dog Food ', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(527, 'Vets Choice Large and Giant Breed Puppy Dog Food', 'vets-choice-large-giant-breed-puppy-dry-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(528, 'Vets Choice Large and Giant Breed Adult Dog Food', 'vets-choice-adult-large-breed', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(529, 'Vets Choice All Breeds Adult Superior Dog Food', 'vets-choice-adult-superior-dry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(563, 'Vets Choice All Breeds Adult Lite Dog Food', 'vets-choice-lite-all-breed-dogs', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(583, 'Catit Senses Super Circuit Cat Playstation', 'catit-sense-super-circuit', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(586, 'Kong Buzzies Birds Toys for Cats ', 'kong-buzzies-bird-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(603, 'Scratch & Play 2-Tiered Cat Scratching Post', 'scratch-play-2-tiered-cat-scratching-post', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(614, 'Earthborn Holistic Coastal Catch Adult Dog Food', 'earthborn-holistic-coastal-catch-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(615, 'Earthborn Holistic Primitive Natural Adult Dog Food', 'earthborn-primitive-natural-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(620, 'Solar Flare Cat Scratching Post', 'solar-flare-cat-scratching-post', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(621, 'Catit Elevated Speed Circuit', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(624, 'Moon of Jupiter Cat Scratcher', 'moon-of-jupiter-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(629, 'Catit Illuminated Balls', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(636, 'Kunduchi Catnip Spray', 'kunduchi-catnip-spray', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(638, 'Maxhealth Adult Small Bites Dog Food for Small Dogs', 'maxhealth-small-bites-adult-dog-food-for-small-dogs', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(639, 'Maxhealth Adult Regular Bites for Medium and Large Dogs', 'NULL', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(659, 'Kunduchi Super Grass', 'kunduchi-super-grass-for-cats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(672, 'FroliCat Bolt Cat Laser Toy', 'frolicat-bolt-laser-toy-for-cats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(677, 'Cuddle Toy for Cats', 'petstages-cuddle-toy-for-cats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(683, 'Crunch and Wrestle Fish Cat Toy', 'crunch-and-wrestle-fish-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(685, 'Healthy Centres Cat Treats', 'health-centres-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(699, 'Hemp Heart Cushion with Valerian Cat Toy', 'heart-cushion-valerian-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(702, 'Healthy Bites Hairball Remedy Cat Treats', 'healthy-bites-hairball-remedy-treats-for-cats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(711, 'Refillable Catnip Beaver Cat Toy', 'gigwi-refillable-catnip-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(717, 'V-Playstation for Cats', 'vesper-v-playstation-for-cats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(718, 'V-Box Cat Furniture - Small', 'vesper-vbox-cat-furniture-small', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(741, 'Melody Chaser Cat Toy', 'melody-chaser-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(742, 'Pet Droid Activity Mouse', 'pet-droid-activity-mouse-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(743, 'Go Buggy Catnip Cat Toy', 'go-buggy-catnip=cat=toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(744, 'Purple Purr Pillow Cat Toy and Friend', 'purr-pillow-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(745, 'Easy Life Hammock Cat Scratcher', 'easy-life-hammock-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(752, 'Natura Roll and Ball Cat Toy', 'natura-roll-and-ball-catnip-infused-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(753, 'Natura Feather Wand Cat Toy', 'natura-feather-wand-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(754, 'Natura Mouse Wand Cat Toy', 'natura-mouse-wand-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(755, 'Etna Cat Furniture and Scratcher Ball', 'etna-cat-furniture-and-scratcher-ball', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(756, 'Ararat Cat Furniture', 'ararat-cat-furniture-and-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(770, 'Catit Fireball Motion Activated Illuminating Cat Ball', 'catit-fireball-illuminating-cat-ball-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(776, 'Catit Food Tree for Cats', 'catit-food-tree', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(790, 'Scratch and Lounge Cat Scratcher', 'lounge-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(804, 'Squirrel Catnip Cat Toys', 'gigwi-squirrel-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(808, 'Feather Hider Pet Droid Cat Toy', 'feather-hider-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(819, 'Natura Dumbbell Cat Toys', 'natura-cat-dumbbell-toys', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(862, 'Sheba Wet Cat Treat', 'sheba-wet-cat-treat', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(872, 'Catnip Chaser Cat Toy', 'catnip-chaser-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(879, 'Royal Canin Satiety Small Breed Dog Food', 'royal-canin-satiety-small-dog', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(891, 'TeePee Cat Scratcher', 'teepee-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(892, 'Chaise Cat Scratcher', 'chaise-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(893, 'Catnap and Scratch Bed for Cats', 'catnap-and-scratch-cat-bed', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(916, 'Catit Treat Spinner for Cats', 'catit-treat-spinner', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(925, '(Short Expiry) Vets Choice All Breeds Adult Lite Dog Food', 'short-expiry-vets-choice-lite', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(985, '(Short Expiry) Royal Canin Cardiac Adult Dog Food', 'short-expiry-cardiac-canine', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(988, 'Kitty Crunch Cat Treats', 'kitty-crunch-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1012, 'Silvervine Plush Balls Cat Toy', 'silvervine-balls-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1013, 'Silvervine Stuffed Animal Cat Toy', 'silvervine-stuffed-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1014, 'Silvervine Seagrass Animal Cat Toy', 'silvervine-seagrass-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1015, 'Silvervine Plush Mice Cat Toy', 'silvervine-mice-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1016, 'Silvervine Twitchy Teaser Cat Wand', 'twitchy-teaser-cat-wand', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1017, 'Grumpy Cat Plush Doorknob Hanger Cat Toy', 'plush-doorknob-cat-hanger', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1018, 'Grumpy Cat Hair Ball Cat Toy', 'hair-ball-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1019, 'Fluffy Grumpy Cat Toy ', 'fluffy-grumpy-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1020, 'Grumpy Cat Blind Mouse Cat Toy', 'blind-mouse-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1021, 'Grumpy Cat Annoying Plush Cat Wand Toy', 'annoying-plush-cat-wand', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1022, 'Jolly Moggy Natural Catnip Mini Mice Cat Toys', 'catnip-mini-mice-cat-toys', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1023, 'Jolly Moggy Natural Feather Teaser Cat Wand', 'feather-teaser-cat-wand', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1024, 'Jolly Moggy Cat Tunnel Cat Toy', 'cat-tunnel-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1025, 'Jolly Moggy Cheeky Mouse Cat Toy', 'cheeky-mouse-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1026, 'Jolly Moggy Vibromouse Cat Toy', 'vibromouse-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1027, 'Silvervine Teasin Tail Cat Wand Toy', 'teasing-tail-cat-wand', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1028, 'Grumpy Cat Catfish Cat Wand', 'catfish-cat-wand', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1032, 'Coriander Natural Cat Scratcher', 'coriander-natural-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1033, 'Bamboo Cat Tower Cat Bed', 'cat-tower-cat-bed', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1034, 'Bamboo Cat Pod & Bed', 'cat-pod-and-cat-bed', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1064, 'Pawsecco Wine Gift Set For Dogs & Cats', 'pawsecco-gift-set-dog-cat-wine-treat', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1065, 'Pawsecco Rose Wine For Dogs & Cats', 'pawsecco-wine-dog-cat-treat', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1070, 'Crinkle Catnip Snowman For Cats', 'crinkle-catnip-snowman-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1071, 'Crinkle Catnip Gingerbread For Cats', 'crinkle-catnip-gingerbread-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1072, 'Grumpy Cat Christmas LED Lights Cat Wand', 'christmas-led-lights-cat-wand', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1073, 'Grumpy Reindeer Ball Cat Toy', 'reindeer-ball-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1118, '3-in-1 Catit Circuit Ball with Scratcher Cat Toy', 'circuit-ball-with-scratcher-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1119, '3-in-1 Circuit Ball with Catnip Massager Cat Toy', 'circuit-ball-with-catnip-massager-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1120, '3-in-1 Catit Circuit Ball with Cat Grass Cat Toy', 'circuit-ball-with-cat-grass-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1123, '(Short Expiry) Royal Canin Anallergenic Adult Dog Food', 'short-expiry-anallergenic-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1142, 'Valley View Catnip ', 'valley-view-catnip', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1176, 'Vigo Cat Scratcher', 'vigo-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1177, 'Toronto Cat Scratcher', 'toronto-cat-scratcher', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1183, '(Short Expiry) Royal Canin Skin Care Small Adult Dog Food', 'short-expiry-skin-care-small-dog', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1189, 'Whiskas Trio Crunchy Cat Treats', 'whiskas-trio-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1190, 'Whiskas DentaBites Cat Treats', 'whiskers-denta-bites-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1195, 'Maxhealth Puppy Junior Dog Food', 'maxhealth-puppy-junior-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1209, 'Ultra Dog Weight Control Dog Food', 'ultra-dog-weight-control-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1216, 'SuperWoof Adult Large Breed Dog Food - Chicken & Rice', 'superwoof-large-breed-chicken-and-rice-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1217, 'SuperWoof Adult Small & Medium Breed Dog Food  - Beef & Rice', 'superwoof-adult-small-and-medium-breed-dog-food-beef-and-rice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1218, 'SuperWoof Adult Large Breed Dog Food - Beef & Rice', 'superwoof-adult-large-breed-dog-food-beef-and-rice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1220, 'SuperWoof Adult Small & Medium Breed Dog Food - Turkey & Rice', 'superwoof-adult-small-and-medium-breed-dog-food-turkey-and-rice', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1224, 'Paw Breakers Catnip Cat Treat and Toy', 'paw-breakers-cat-treat-and-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1226, 'Field & Forest Small Breed Puppy Food - Turkey & Duck', 'field-and-forest-small-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1227, 'Field & Forest Large Breed Puppy Food - Turkey & Duck', 'field-and-forest-large-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1228, 'Field & Forest Adult All Breed Dog Food - Game & Lamb', 'field-and-forest-game-and-lamb-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1229, 'Field & Forest Adult All Breed Dog Food - Salmon & Tuna', 'field-and-forest-salmon-and-tuna-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1230, 'Field & Forest Adult All Breed Dog Food - Turkey & Duck', 'field-and-forest-turkey-and-duck-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1247, 'Acana Singles Yorkshire Pork Dog Food', 'acana-singles-pork-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1248, 'Ultra Dog Joint Health Adult Dog Food', 'ultra-dog-joint-health-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1249, 'Ultra Dog Hypo-Allergenic Dog Food', 'ultra-dog-hypo-allergenic-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1250, 'Ultra Dog Premium Adult Large Breed Dog Food', 'ultra-dog-premium-large-breed-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1251, 'Ultra Dog Premium Large Breed Puppy Food', 'ultra-dog-premium-large-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1252, 'Ultra Dog Premium Small & Medium Breed Puppy Food', 'ultra-dog-premium-small-and-medium-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1253, 'Ultra Dog Premium Adult Small & Medium Breed Dog Food', 'ultra-dog-premium-small-and-medium-breed-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1258, 'Nandi Freeze Dried Fish Cat Treats', 'freeze-dried-fish-cat-treat', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1267, 'Acana Free-Run Duck Dog Food', 'acana-singles-duck-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1269, 'Acana Grass-Fed Lamb Dog Food', 'acana-singles-lamb-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1270, 'Acana Prairie Poultry Dog Food', 'acana-classics-poultry-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1271, 'Acana Wild Coast Dog Food', 'acana-classics-wild-coast-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1272, 'Acana Heritage Adult Dog Food ', 'acana-heritage-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1273, 'Acana Heritage Adult Small Breed Dog Food', 'acana-heritage-small-breed-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1274, 'Acana Heritage Adult Large Breed Dog Food', 'acana-heritage-large-breed-dog-fod', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1275, 'Acana Heritage Senior Dog Food', 'acana-heritage-senior-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1276, 'Acana Heritage Large Breed Puppy Food', 'acana-heritage-large-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1277, 'Acana Adult Light And Fit Dog Food', 'acana-heritage-fit-and-light-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1278, 'Acana Regionals Pacifica Dog Food ', 'acana-regionals-pacifica-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1279, 'Acana Wild Prairie Dog Food', 'acana-regionals-wild-prairie-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1298, 'Pawsecco Freeze-Pops For Dogs & Cats ', 'pawsecco-popsicle-pet-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1299, 'Karoo Senior or Overweight All Breed Dog Food', 'montego-karoo-senior-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1300, 'Winter Warmer Cat Toy - 3 Piece', 'winter-warmer-cat-toy-set', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1301, 'Grumpy Cat Plush Reindeer Mouse Cat Toy', 'grumpy-cat-reindeer-mouse-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1304, 'ZaKatz Cat Tunnel Cat Toy', 'zakatz-cat-tunnel-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1305, 'ZaKatz 3-Way Cat Tunnel Cat Toy', 'zakatz-triple-cat-tunnel-cat-toy', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1311, 'Orijen Original Freeze-Dried Cat Treats', 'orijen-original-freeze-dried-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1312, 'Orijen Six Fish Freeze-Dried Cat Treats', 'orijen-fish-freeze-dried-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1313, 'Orijen Freeze-Dried Cat Treats - Wild Boar', 'orijen-wild-boar-freeze-dried-cat-treats', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1314, 'Orijen Freeze-Dried Dog Food - Original', 'orijen-original-freeze-dried-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1315, 'Acana Heritage Puppy & Junior Food', 'acana-junior-and-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1316, 'Acana Heritage Small Breed Puppy Food', 'acana-heritage-small-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1320, 'Acana Heritage Sport And Agility Dog Food', 'acana-sport-and-agility-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1321, 'Acana Singles Dog Food - Pacific Pilchard', 'acana-singles-pacific-pilchard-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1327, 'Karoo Adult All Breed Dog Food', 'montego-karoo-adult-dog-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1328, 'Karoo Small and Medium Breed Puppy Food', 'montego-karoo-small-medium-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1329, 'Karoo Large and Giant Breed Puppy Food', 'montego-karoo-large-giant-breed-puppy-food', '2022-09-22 11:08:18', '2022-09-22 11:08:18'),
(1340, 'Test Product', 'test-product', '2022-09-25 20:30:11', '2022-09-25 20:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 553, 27, NULL, NULL),
(2, 553, 28, NULL, NULL),
(3, 553, 29, NULL, NULL),
(4, 553, 30, NULL, NULL),
(5, 553, 31, NULL, NULL),
(6, 553, 32, NULL, NULL),
(7, 553, 33, NULL, NULL),
(8, 553, 34, NULL, NULL),
(9, 553, 35, NULL, NULL),
(10, 553, 36, NULL, NULL),
(11, 553, 37, NULL, NULL),
(12, 553, 38, NULL, NULL),
(13, 553, 39, NULL, NULL),
(14, 553, 40, NULL, NULL),
(15, 553, 41, NULL, NULL),
(16, 553, 42, NULL, NULL),
(17, 553, 43, NULL, NULL),
(18, 553, 44, NULL, NULL),
(19, 553, 45, NULL, NULL),
(20, 553, 46, NULL, NULL),
(21, 553, 47, NULL, NULL),
(22, 553, 48, NULL, NULL),
(23, 553, 49, NULL, NULL),
(24, 553, 50, NULL, NULL),
(25, 553, 51, NULL, NULL),
(26, 553, 52, NULL, NULL),
(27, 553, 53, NULL, NULL),
(28, 553, 54, NULL, NULL),
(29, 553, 55, NULL, NULL),
(30, 553, 56, NULL, NULL),
(31, 553, 57, NULL, NULL),
(32, 553, 58, NULL, NULL),
(33, 553, 59, NULL, NULL),
(34, 553, 60, NULL, NULL),
(35, 553, 61, NULL, NULL),
(36, 553, 62, NULL, NULL),
(37, 553, 63, NULL, NULL),
(38, 553, 64, NULL, NULL),
(39, 553, 65, NULL, NULL),
(40, 553, 66, NULL, NULL),
(41, 553, 67, NULL, NULL),
(42, 553, 68, NULL, NULL),
(43, 553, 69, NULL, NULL),
(44, 553, 70, NULL, NULL),
(45, 553, 71, NULL, NULL),
(46, 553, 72, NULL, NULL),
(47, 553, 73, NULL, NULL),
(48, 553, 74, NULL, NULL),
(49, 553, 75, NULL, NULL),
(50, 553, 76, NULL, NULL),
(51, 553, 77, NULL, NULL),
(52, 553, 78, NULL, NULL),
(53, 553, 79, NULL, NULL),
(54, 553, 80, NULL, NULL),
(55, 553, 81, NULL, NULL),
(56, 553, 82, NULL, NULL),
(57, 553, 83, NULL, NULL),
(58, 553, 84, NULL, NULL),
(59, 553, 85, NULL, NULL),
(60, 553, 86, NULL, NULL),
(61, 635, 87, NULL, NULL),
(62, 635, 88, NULL, NULL),
(63, 635, 89, NULL, NULL),
(64, 635, 90, NULL, NULL),
(65, 635, 91, NULL, NULL),
(66, 635, 94, NULL, NULL),
(67, 635, 95, NULL, NULL),
(68, 635, 96, NULL, NULL),
(69, 553, 105, NULL, NULL),
(70, 553, 106, NULL, NULL),
(71, 553, 107, NULL, NULL),
(72, 553, 110, NULL, NULL),
(73, 553, 117, NULL, NULL),
(74, 553, 118, NULL, NULL),
(75, 553, 119, NULL, NULL),
(76, 635, 121, NULL, NULL),
(77, 553, 122, NULL, NULL),
(78, 553, 123, NULL, NULL),
(79, 553, 124, NULL, NULL),
(80, 553, 125, NULL, NULL),
(81, 553, 126, NULL, NULL),
(82, 553, 127, NULL, NULL),
(83, 553, 128, NULL, NULL),
(84, 553, 129, NULL, NULL),
(85, 553, 130, NULL, NULL),
(86, 553, 131, NULL, NULL),
(87, 553, 132, NULL, NULL),
(88, 553, 133, NULL, NULL),
(89, 553, 134, NULL, NULL),
(90, 553, 135, NULL, NULL),
(91, 553, 136, NULL, NULL),
(92, 553, 137, NULL, NULL),
(93, 553, 138, NULL, NULL),
(94, 553, 139, NULL, NULL),
(95, 553, 140, NULL, NULL),
(96, 553, 141, NULL, NULL),
(97, 553, 142, NULL, NULL),
(98, 635, 158, NULL, NULL),
(99, 635, 159, NULL, NULL),
(100, 635, 160, NULL, NULL),
(101, 635, 161, NULL, NULL),
(102, 635, 162, NULL, NULL),
(103, 635, 163, NULL, NULL),
(104, 553, 187, NULL, NULL),
(105, 553, 189, NULL, NULL),
(106, 553, 191, NULL, NULL),
(107, 553, 192, NULL, NULL),
(108, 553, 193, NULL, NULL),
(109, 553, 194, NULL, NULL),
(110, 553, 195, NULL, NULL),
(111, 553, 197, NULL, NULL),
(112, 553, 198, NULL, NULL),
(113, 553, 201, NULL, NULL),
(114, 553, 202, NULL, NULL),
(115, 553, 203, NULL, NULL),
(116, 553, 204, NULL, NULL),
(117, 553, 205, NULL, NULL),
(118, 553, 206, NULL, NULL),
(119, 553, 209, NULL, NULL),
(120, 553, 211, NULL, NULL),
(121, 553, 212, NULL, NULL),
(122, 553, 213, NULL, NULL),
(123, 553, 214, NULL, NULL),
(124, 553, 215, NULL, NULL),
(125, 553, 216, NULL, NULL),
(126, 590, 286, NULL, NULL),
(127, 590, 287, NULL, NULL),
(128, 590, 288, NULL, NULL),
(129, 590, 289, NULL, NULL),
(130, 590, 290, NULL, NULL),
(131, 590, 291, NULL, NULL),
(132, 590, 292, NULL, NULL),
(133, 590, 293, NULL, NULL),
(134, 590, 294, NULL, NULL),
(135, 590, 295, NULL, NULL),
(136, 635, 301, NULL, NULL),
(137, 590, 301, NULL, NULL),
(138, 635, 311, NULL, NULL),
(139, 553, 339, NULL, NULL),
(140, 635, 428, NULL, NULL),
(141, 590, 450, NULL, NULL),
(142, 553, 467, NULL, NULL),
(143, 553, 468, NULL, NULL),
(144, 553, 527, NULL, NULL),
(145, 553, 528, NULL, NULL),
(146, 553, 529, NULL, NULL),
(147, 553, 563, NULL, NULL),
(148, 590, 583, NULL, NULL),
(149, 590, 586, NULL, NULL),
(150, 590, 603, NULL, NULL),
(151, 553, 614, NULL, NULL),
(152, 553, 615, NULL, NULL),
(153, 590, 620, NULL, NULL),
(154, 590, 621, NULL, NULL),
(155, 590, 624, NULL, NULL),
(156, 590, 629, NULL, NULL),
(157, 635, 636, NULL, NULL),
(158, 590, 636, NULL, NULL),
(159, 553, 638, NULL, NULL),
(160, 553, 639, NULL, NULL),
(161, 635, 659, NULL, NULL),
(162, 590, 659, NULL, NULL),
(163, 590, 672, NULL, NULL),
(164, 590, 677, NULL, NULL),
(165, 590, 683, NULL, NULL),
(166, 635, 685, NULL, NULL),
(167, 590, 699, NULL, NULL),
(168, 635, 702, NULL, NULL),
(169, 590, 711, NULL, NULL),
(170, 590, 717, NULL, NULL),
(171, 590, 718, NULL, NULL),
(172, 590, 741, NULL, NULL),
(173, 590, 742, NULL, NULL),
(174, 590, 743, NULL, NULL),
(175, 590, 744, NULL, NULL),
(176, 590, 745, NULL, NULL),
(177, 590, 752, NULL, NULL),
(178, 590, 753, NULL, NULL),
(179, 590, 754, NULL, NULL),
(180, 590, 755, NULL, NULL),
(181, 590, 756, NULL, NULL),
(182, 590, 770, NULL, NULL),
(183, 590, 776, NULL, NULL),
(184, 590, 790, NULL, NULL),
(185, 590, 804, NULL, NULL),
(186, 590, 808, NULL, NULL),
(187, 590, 819, NULL, NULL),
(188, 635, 862, NULL, NULL),
(189, 590, 872, NULL, NULL),
(190, 553, 879, NULL, NULL),
(191, 590, 891, NULL, NULL),
(192, 590, 892, NULL, NULL),
(193, 590, 893, NULL, NULL),
(194, 590, 916, NULL, NULL),
(195, 553, 925, NULL, NULL),
(196, 553, 985, NULL, NULL),
(197, 635, 988, NULL, NULL),
(198, 590, 1012, NULL, NULL),
(199, 590, 1013, NULL, NULL),
(200, 590, 1014, NULL, NULL),
(201, 590, 1015, NULL, NULL),
(202, 590, 1016, NULL, NULL),
(203, 590, 1017, NULL, NULL),
(204, 590, 1018, NULL, NULL),
(205, 590, 1019, NULL, NULL),
(206, 590, 1020, NULL, NULL),
(207, 590, 1021, NULL, NULL),
(208, 590, 1022, NULL, NULL),
(209, 590, 1023, NULL, NULL),
(210, 590, 1024, NULL, NULL),
(211, 590, 1025, NULL, NULL),
(212, 590, 1026, NULL, NULL),
(213, 590, 1027, NULL, NULL),
(214, 590, 1028, NULL, NULL),
(215, 590, 1032, NULL, NULL),
(216, 590, 1033, NULL, NULL),
(217, 590, 1034, NULL, NULL),
(218, 635, 1064, NULL, NULL),
(219, 635, 1065, NULL, NULL),
(220, 590, 1070, NULL, NULL),
(221, 590, 1071, NULL, NULL),
(222, 590, 1072, NULL, NULL),
(223, 590, 1073, NULL, NULL),
(224, 590, 1118, NULL, NULL),
(225, 590, 1119, NULL, NULL),
(226, 590, 1120, NULL, NULL),
(227, 553, 1123, NULL, NULL),
(228, 635, 1142, NULL, NULL),
(229, 590, 1176, NULL, NULL),
(230, 590, 1177, NULL, NULL),
(231, 553, 1183, NULL, NULL),
(232, 635, 1189, NULL, NULL),
(233, 635, 1190, NULL, NULL),
(234, 553, 1195, NULL, NULL),
(235, 553, 1209, NULL, NULL),
(236, 553, 1216, NULL, NULL),
(237, 553, 1217, NULL, NULL),
(238, 553, 1218, NULL, NULL),
(239, 553, 1220, NULL, NULL),
(240, 635, 1224, NULL, NULL),
(241, 590, 1224, NULL, NULL),
(242, 553, 1226, NULL, NULL),
(243, 553, 1227, NULL, NULL),
(244, 553, 1228, NULL, NULL),
(245, 553, 1229, NULL, NULL),
(246, 553, 1230, NULL, NULL),
(247, 553, 1247, NULL, NULL),
(248, 553, 1248, NULL, NULL),
(249, 553, 1249, NULL, NULL),
(250, 553, 1250, NULL, NULL),
(251, 553, 1251, NULL, NULL),
(252, 553, 1252, NULL, NULL),
(253, 553, 1253, NULL, NULL),
(254, 635, 1258, NULL, NULL),
(255, 553, 1267, NULL, NULL),
(256, 553, 1269, NULL, NULL),
(257, 553, 1270, NULL, NULL),
(258, 553, 1271, NULL, NULL),
(259, 553, 1272, NULL, NULL),
(260, 553, 1273, NULL, NULL),
(261, 553, 1274, NULL, NULL),
(262, 553, 1275, NULL, NULL),
(263, 553, 1276, NULL, NULL),
(264, 553, 1277, NULL, NULL),
(265, 553, 1278, NULL, NULL),
(266, 553, 1279, NULL, NULL),
(267, 635, 1298, NULL, NULL),
(268, 553, 1299, NULL, NULL),
(269, 590, 1300, NULL, NULL),
(270, 590, 1301, NULL, NULL),
(271, 590, 1304, NULL, NULL),
(272, 590, 1305, NULL, NULL),
(273, 635, 1311, NULL, NULL),
(274, 635, 1312, NULL, NULL),
(275, 635, 1313, NULL, NULL),
(276, 553, 1314, NULL, NULL),
(277, 553, 1315, NULL, NULL),
(278, 553, 1316, NULL, NULL),
(279, 553, 1320, NULL, NULL),
(280, 553, 1321, NULL, NULL),
(281, 553, 1327, NULL, NULL),
(282, 553, 1328, NULL, NULL),
(283, 553, 1329, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `access`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Full system all modules', 'Edit and Delete all fields', NULL, NULL),
(2, 'General User', 'Limited access', 'Limited access', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `id_number`, `contact_number`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', NULL, '$2y$10$WKr3JllcctELJRyRJZQVjOkpbEDxdkuBZXUS8PbkitGCdQHj3aaie', NULL, NULL, '2022-09-26 08:50:56', 1, '9208025743089', '0607735293'),
(4, 'Bestyn', 'Mokonyama', 'mokonyamabmg@gmail.com', NULL, '$2y$10$IfMxR9nxkOSyx1TdKk0GNexoo1aTUJwuGbI/NkMxcxE3FVf.lalYK', NULL, '2022-09-24 08:49:00', '2022-09-24 08:49:00', 2, '9208025743089', '0607735293');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sap_product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `sap_product_code`, `web_product_code`, `product_id`, `created_at`, `updated_at`) VALUES
(231, 'Royal Canin Babydog Milk for Puppies', 'ZROY132000', 'ZRC0279', 27, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(232, 'Royal Canin Mini Adult Dog Food 2 KG', 'ZROY402020', 'ZRC0155', 28, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(233, 'Royal Canin Mini Adult Dog Food 8 KG', 'ZROY402080', 'ZRC0099', 28, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(234, 'Royal Canin Mini Adult Dog Food 800 G', 'ZROY402008', 'ZRC0257', 28, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(235, 'Royal Canin Mini Ageing 12+ Adult Dog Food', 'ZROY408015', 'ZRC0221', 29, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(236, 'Royal Canin Mini Exigent Adult Dog Food 3 KG', 'ZROY407030', 'ZRC0357', 30, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(237, 'Royal Canin Mini Puppy Food 2 KG', 'ZROY401020', 'ZRC0197', 31, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(238, 'Royal Canin Mini Puppy Food 8 KG', 'ZROY401080', 'ZRC0060', 31, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(239, 'Royal Canin Mini Puppy Food 800 G', 'ZROY401008', 'ZRC0256', 31, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(240, 'Royal Canin Mini Light Weight Care Dog Food 3 KG', 'ZROY136030', 'ZRC0358', 32, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(241, 'Royal Canin Mini Digestive Care Adult Dog Food 3 KG', 'ZROY405030', 'ZRC0356', 33, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(242, 'Royal Canin Mini Digestive Care Adult Dog Food 800 G', 'ZROY405008', 'ZRC0228', 33, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(243, 'Royal Canin Mini Mother and Babydog Starter Dog Food 3 KG', 'ZROY400030', 'ZRC0095', 34, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(244, 'Royal Canin Mini Mother and Babydog Starter Dog Food 8.5 KG', 'ZROY400850', 'ZRC0098', 34, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(245, 'Royal Canin Mini 8+ Adult Dog Food 2 KG', 'ZROY406020', 'ZRC0198', 35, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(246, 'Royal Canin Mini 8+ Adult Dog Food 8 KG', 'ZROY406080', 'ZRC0100', 35, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(247, 'Royal Canin Giant Adult Dog Food', 'ZROY433150', 'ZRC0034', 36, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(248, 'Royal Canin Giant Junior Food', 'ZROY432150', 'ZRC0032', 37, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(249, 'Royal Canin Giant Puppy Food 15 KG', 'ZROY431150', 'ZRC0033', 38, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(250, 'Royal Canin Giant Puppy Food 4 KG', 'ZROY431040', 'ZRC0078', 38, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(251, 'Royal Canin Giant Mother and Babydog Starter Dog Food 4 KG', 'ZROY430040', 'zrc0117', 39, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(252, 'Royal Canin Giant Mother and Babydog Starter Dog Food 15 KG', 'ZROY430150', 'zrc0005', 39, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(253, 'Royal Canin Maxi 5+ Adult Dog Food', 'ZROY423150', 'ZRC0031', 40, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(254, 'Royal Canin Maxi Adult Dog Food 4 KG', 'ZROY107040', 'zrc0073', 41, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(255, 'Royal Canin Maxi Adult Dog Food 15 KG', 'ZROY422150', 'zrc0002', 41, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(256, 'Royal Canin Maxi Puppy Food 4 KG', 'ZROY421040', 'ZRC0116', 42, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(257, 'Royal Canin Maxi Puppy Food 15 KG', 'ZROY421150', 'ZRC0030', 42, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(258, 'Royal Canin Maxi Light Adult Dog Food', 'NULL', 'ZRC0295', 43, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(259, 'Royal Canin Maxi Digestive Care Adult Dog Food 10 KG', 'ZROY125100', 'ZRC0355', 44, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(260, 'Royal Canin Maxi Mother and Babydog Starter Dog Food 4 KG', 'ZROY420040', 'ZRC0077', 45, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(261, 'Royal Canin Maxi Mother and Babydog Starter Dog Food 15 KG', 'ZROY420150', 'ZRC0003', 45, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(262, 'Royal Canin Medium 7+ Adult Dog Food 4 KG', 'ZROY413040', 'ZRC0076', 46, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(263, 'Royal Canin Medium 7+ Adult Dog Food 10 KG', 'ZROY413100', 'ZRC0056', 46, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(264, 'Royal Canin Medium Adult Dog Food 4 KG', 'ZROY412040', 'ZRC0114', 47, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(265, 'Royal Canin Medium Adult Dog Food 10 KG', 'ZROY412100', 'ZRC0028', 47, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(266, 'Royal Canin Medium Adult Dog Food 15 KG', 'ZROY412150', 'ZRC0001', 47, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(267, 'Royal Canin Medium Mother and Babydog Starter Dog Food 4 KG', 'ZROY410040', 'ZRC0074', 48, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(268, 'Royal Canin Medium Digestive Care Dog Food 3 KG', 'ZROY428030', 'ZRC0297', 49, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(269, 'Royal Canin Medium Digestive Care Dog Food 15 KG', 'ZROY428150', 'ZRC0343', 49, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(270, 'Royal Canin Medium Digestive Care Dog Food 10 KG', 'ZROY135100', 'ZRC0361', 49, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(271, 'Royal Canin Medium Light Weight Care Adult Dog Food 9 KG', 'ZROY417090', 'ZRC0053', 50, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(272, 'Royal Canin Medium Puppy Food 4 KG', 'ZROY411040', 'ZRC0075', 51, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(273, 'Royal Canin Medium Puppy Food 15 KG', 'ZROY411150', 'ZRC0029', 51, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(274, 'Royal Canin Beagle Adult Dog Food 12 KG', 'ZROY920120', 'ZRC0052', 52, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(275, 'Royal Canin Beagle Adult Dog Food 3 KG', 'ZROY920030', 'ZRC0142', 52, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(276, 'Royal Canin Boxer Adult Dog Food', 'ZROY925120', 'ZRC0047', 53, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(277, 'Royal Canin Junior Boxer Dog Food 3 KG', 'ZROY953030', 'ZRC0136', 54, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(278, 'Royal Canin Junior Boxer Dog Food 12 KG', 'ZROY953120', 'ZRC0020', 54, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(279, 'Royal Canin Bulldog Adult Dog Food 12 KG', 'ZROY921120', 'ZRC0016', 55, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(280, 'Royal Canin Junior Bulldog Dog Food 12 KG', 'ZROY199120', 'zrc0021', 56, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(281, 'Royal Canin Chihuahua Adult Dog Food 1.5 KG', 'ZROY910015', 'ZRC0251', 57, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(282, 'Royal Canin Chihuahua Adult Dog Food 3 KG', 'ZROY910030', 'ZRC0139', 57, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(283, 'Royal Canin Junior Chihuahua Dog Food', 'ZROY902015', 'ZRC0253', 58, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(284, 'Royal Canin Cocker Adult Dog Food 3 KG', 'ZROY918030', 'ZRC0182', 59, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(285, 'Royal Canin Cocker Adult Dog Food 12 KG', 'ZROY918120', 'ZRC0024', 59, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(286, 'Royal Canin Junior Cocker Dog Food', 'ZROY905030', 'ZRC0140', 60, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(287, 'Royal Canin Dalmatian Adult Dog Food', 'ZROY926120', 'ZRC0051', 61, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(288, 'Royal Canin Junior Dalmatian Dog Food', 'NULL', 'ZRC0050', 62, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(289, 'Royal Canin Dachshund Adult Dog Food 7.5 KG', 'ZROY912075', 'ZRC0068', 63, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(290, 'Royal Canin Dachshund Adult Dog Food 1.5 KG', 'ZROY912015', 'ZRC0180', 63, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(291, 'Royal Canin Junior Dachshund Dog Food', 'ZROY904015', 'ZRC0250', 64, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(292, 'Royal Canin French Bulldog Adult Dog Food', 'ZROY917030', 'ZRC0141', 65, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(293, 'Royal Canin German Shepherd Adult Dog Food 11 KG', 'ZROY922110', 'ZRC0361', 66, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(294, 'Royal Canin Junior German Shepherd Dog Food 12 KG', 'ZROY950120', 'ZRC0018', 67, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(295, 'Royal Canin Golden Retriever Adult Dog Food', 'ZROY924120', 'ZRC0025', 68, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(296, 'Royal Canin Junior Golden Retriever Dog Food 12 KG', 'ZROY201120', 'ZRC0022', 69, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(297, 'Royal Canin Great Dane Adult Dog Food', 'ZROY928120', 'ZRC0019', 70, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(298, 'Royal Canin Jack Russell Terrier Adult Dog Food 7.5 KG', 'ZROY919075', 'ZRC0105', 71, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(299, 'Royal Canin Jack Russell Terrier Adult Dog Food 1.5 KG', 'ZROY919015', 'ZRC0255', 71, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(300, 'Royal Canin Jack Russell Terrier Adult Dog Food 3 KG', 'ZROY919030', 'ZRC0186', 71, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(301, 'Royal Canin Junior Jack Russell Dog Food 1.5 KG', 'ZROY908015', 'ZRC0177', 72, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(302, 'Royal Canin Junior Jack Russell Dog Food 3 KG', 'ZROY908030', 'ZRC0084', 72, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(303, 'Royal Canin Labrador Retriever Adult Dog Food', 'ZROY923120', 'ZRC0017', 73, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(304, 'Royal Canin Junior Labrador Retriever Dog Food 3 KG', 'ZROY190030', 'ZRC0083', 74, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(305, 'Royal Canin Junior Labrador Retriever Dog Food 12 KG', 'ZROY951120', 'ZRC0023', 74, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(306, 'Royal Canin Miniature Schnauzer Adult Dog Food 7.5 KG', 'ZROY916075', 'ZRC0108', 75, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(307, 'Royal Canin Miniature Schnauzer Adult Dog Food 3 KG', 'ZROY916030', 'ZRC0181', 75, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(308, 'Royal Canin Junior Miniature Schnauzer Dog Food', 'ZROY907015', 'ZRC0254', 76, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(309, 'Royal Canin Poodle Adult Dog Food 7.5 KG', 'ZROY913075', 'ZRC0104', 77, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(310, 'Royal Canin Poodle Adult Dog Food 1.5 KG', 'ZROY913015', 'ZRC0223', 77, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(311, 'Royal Canin Junior Poodle Dog Food', 'ZROY901030', 'ZRC0184', 78, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(312, 'Royal Canin Pug Adult Dog Food 1.5 KG', 'ZROY915015', 'ZRC0225', 79, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(313, 'Royal Canin Pug Adult Dog Food 3 KG', 'ZROY915030', 'ZRC0185', 79, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(314, 'Royal Canin Junior Pug Dog Food', 'ZROY906015', 'ZRC0227', 80, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(315, 'Royal Canin Rottweiler Adult Dog Food', 'ZROY927120', 'ZRC0048', 81, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(316, 'Royal Canin Junior Rottweiler Dog Food 12 KG', 'ZROY200120', 'ZRC0049', 82, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(317, 'Royal Canin Shih Tzu Adult Dog Food 7.5 KG', 'ZROY914075', 'ZRC0063', 83, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(318, 'Royal Canin Shih Tzu Adult Dog Food 1.5 KG', 'ZROY914015', 'ZRC0226', 83, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(319, 'Royal Canin Junior Shih Tzu Dog Food', 'ZROY903015', 'ZRC0252', 84, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(320, 'Royal Canin Yorkshire Terrier Adult Dog Food 7.5 KG', 'ZROY911075', 'ZRC0062', 85, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(321, 'Royal Canin Yorkshire Terrier Adult Dog Food 1.5 KG', 'ZROY911015', 'ZRC0222', 85, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(322, 'Royal Canin Yorkshire Terrier Adult Dog Food 3 KG', 'ZROY911030', 'ZRC0132', 85, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(323, 'Royal Canin Yorkshire Terrier Adult Dog Food 500 G', 'ZROY165005', 'ZRC0230', 85, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(324, 'Royal Canin Junior Yorkshire Terrier Dog Food 1.5 KG', 'ZROY900015', 'ZRC0224', 86, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(325, 'Royal Canin Junior Yorkshire Terrier Dog Food 500 G', 'ZROY900005', 'ZRC0231', 86, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(326, 'Royal Canin Digest Sensitive Adult Wet Cat Food Single Pouch', 'ZROY820010S', 'ZRC0276', 87, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(327, 'Royal Canin Digest Sensitive Adult Wet Cat Food Box of 12 Pouches', 'ZROY820010', 'ZRC0338', 87, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(328, 'Royal Canin Instinctive Adult Wet Cat Food +7 Single Pouch', 'ZROY820007S', 'ZRC0247', 88, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(329, 'Royal Canin Instinctive Adult Wet Cat Food +7 Box of 12 Pouches', 'ZROY820007', 'ZRC0336', 88, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(330, 'Royal Canin Instinctive in Gravy Adult Wet Cat Food Single Pouch', 'ZROY820003S', 'ZRC0273', 89, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(331, 'Royal Canin Instinctive in Gravy Adult Wet Cat Food Box of 12 Pouches', 'ZROY820003', 'ZRC0332', 89, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(332, 'Royal Canin Intense Beauty Adult Wet Cat Food Pouch Single Pouch', 'ZROY820006S', 'ZRC0272', 90, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(333, 'Royal Canin Intense Beauty Adult Wet Cat Food Pouch Box of 12 Pouches', 'ZROY820006', 'ZRC0335', 90, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(334, 'Royal Canin Ultra Light 10 Adult Wet Cat Food Pouch Single Pouch', 'ZROY820005S', 'ZRC0275', 91, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(335, 'Royal Canin Ultra Light 10 Adult Wet Cat Food Pouch Box of 12 Pouches', 'ZROY820005', 'ZRC0334', 91, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(336, 'Royal Canin Instinctive in Jelly Adult Wet Cat Food Single Pouch', 'ZROY820004S', 'ZRC0246', 94, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(337, 'Royal Canin Instinctive in Jelly Adult Wet Cat Food Box of 12 Pouches', 'ZROY820004', 'ZRC0333', 94, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(338, 'Royal Canin Sterilised Adult Wet Cat Food Single Pouch', 'ZROY480037s', 'ZRC0281', 95, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(339, 'Royal Canin Sterilised Adult Wet Cat Food Box of 12 Pouches', 'ZROY820012', 'ZRC0339', 95, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(340, 'Royal Canin Ageing +12 Wet Cat Food Pouch Single Pouch', 'ZROY820009S', 'ZRC0274', 96, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(341, 'Royal Canin Ageing +12 Wet Cat Food Pouch Box of 12 Pouches', 'ZROY820009', 'ZRC0337', 96, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(342, 'Royal Canin X-Small Puppy Food', 'ZROY931015', 'ZRC0287', 105, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(343, 'Royal Canin X-Small Adult Dog Food', 'ZROY932015', 'ZRC0288', 106, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(344, 'Royal Canin X-Small Ageing 12+ Dog Food', 'ZROY720015', 'ZRC0290', 107, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(345, 'Royal Canin Adult Maxi Light Weight Care Dog Food 10 KG', 'ZROY137100', 'ZRC0354', 110, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(346, '(Short Expiry) Royal Canin Giant Mother & Babydog Starter Dog Food - 4kg', 'NULL', NULL, 117, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(347, '(Short Expiry) Royal Canin Great Dane Adult Dog Food', 'NULL', 'ZRC0019', 118, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(348, '(Short Expiry) Royal Canin Junior Chihuahua Dog Food', 'NULL', NULL, 119, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(349, '(Short Expiry) Royal Canin Digest Sensitive Adult Wet Cat Food Single Pouch', 'NULL', 'ZRC0276', 121, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(350, '(Short Expiry) Royal Canin Cocker Dog Food 12 KG', 'NULL', 'ZRC0024', 122, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(351, 'Eukanuba Adult Large Breed Dog Food 9 KG', 'NULL', '229900', 123, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(352, 'Eukanuba Adult Large Breed Dog Food 15 KG', 'NULL', '229916', 123, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(353, 'Eukanuba Adult Large Breed Dog Food - Lamb & Rice 15 KG', 'NULL', '278915', 124, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(354, 'Eukanuba Adult Large Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '278903', 124, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(355, 'Eukanuba Adult Medium Breed Dog Food 3 KG', 'NULL', '145479', 125, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(356, 'Eukanuba Adult Medium Breed Dog Food 9 KG', 'NULL', '145900', 125, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(357, 'Eukanuba Adult Medium Breed Dog Food 15 KG', 'NULL', '145916', 125, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(358, 'Eukanuba Adult Medium Breed Dog Food 1 KG', 'NULL', '145901', 125, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(359, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 12 KG', 'NULL', '147912', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(360, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '147903', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(361, 'Eukanuba Adult Small Breed Dog Food 1 KG', 'NULL', '201289', 127, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(362, 'Eukanuba Adult Small Breed Dog Food 3 KG', 'NULL', '201479', 127, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(363, 'Eukanuba Adult Small Breed Dog Food 9 KG', 'NULL', '201900', 127, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(364, 'Eukanuba Adult Small Breed Dog Food 15 KG', 'NULL', '201916', 127, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(365, 'Eukanuba Adult Large Breed Weight Control Dog Food ', 'NULL', '271916', 128, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(366, 'Eukanuba Adult Small and Medium Breed Weight Control Dog Food 3 KG', 'NULL', '203103', 129, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(367, 'Eukanuba Adult Small and Medium Breed Weight Control Dog Food 15 KG', 'NULL', '203115', 129, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(368, 'Eukanuba Premium Performance Working and Endurance Adult Dog Food  15 KG', 'NULL', '135916', 130, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(369, 'Eukanuba Premium Performance Working and Endurance Adult Dog Food  9 KG', 'NULL', '135909', 130, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(370, 'Eukanuba Daily Care Sensitive Joints Adult Dog Food 1 KG', 'NULL', '406201', 131, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(371, 'Eukanuba Daily Care Sensitive Joints Adult Dog Food 12.5 KG', 'NULL', '402942', 131, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(372, 'Eukanuba Daily Care Sensitive Skin Adult Dog Food 2.3 KG', 'NULL', '404221', 132, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(373, 'Eukanuba Daily Care Sensitive Skin Adult Dog Food 12 KG', 'NULL', '400942', 132, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(374, 'Eukanuba Senior All Breeds Dog Food - Lamb & Rice 3 KG', 'NULL', '272030', 133, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(375, 'Eukanuba Senior All Breeds Dog Food - Lamb & Rice 14 KG', 'NULL', '272140', 133, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(376, 'Eukanuba Senior Large Breed Dog Food', 'NULL', '274916', 134, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(377, 'Eukanuba Senior Medium Breed Dog Food 3 KG', 'NULL', '273003', 135, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(378, 'Eukanuba Senior Medium Breed Dog Food 15 KG', 'NULL', '273015', 135, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(379, 'Eukanuba Senior Small Breed Dog Food', 'NULL', '272003', 136, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(380, 'Eukanuba Large Breed Puppy Food 3 KG', 'NULL', '202479', 137, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(381, 'Eukanuba Large Breed Puppy Food 9 KG', 'NULL', '202900', 137, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(382, 'Eukanuba Large Breed Puppy Food 15 KG', 'NULL', '202916', 137, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(383, 'Eukanuba Medium Breed Puppy Food 1 KG', 'NULL', '206289', 138, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(384, 'Eukanuba Medium Breed Puppy Food 3 KG', 'NULL', '206479', 138, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(385, 'Eukanuba Medium Breed Puppy Food 9 KG', 'NULL', '206900', 138, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(386, 'Eukanuba Medium Breed Puppy Food 15 KG', 'NULL', '206916', 138, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(387, 'Eukanuba Small Breed Puppy Food 7.5 KG', 'NULL', '148755', 139, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(388, 'Eukanuba Small Breed Puppy Food 1 KG', 'NULL', '148289', 139, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(389, 'Eukanuba Small Breed Puppy Food 3 KG', 'NULL', '148479', 139, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(390, 'Eukanuba Small Breed Puppy Food 15 KG', 'NULL', '148915', 139, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(391, 'Eukanuba Small and Medium Breed Puppy Food - Lamb & Rice 3 KG', 'NULL', '147103', 140, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(392, 'Eukanuba Small and Medium Breed Puppy Food - Lamb & Rice 12 KG', 'NULL', '147112', 140, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(393, 'Eukanuba Small and Medium Breed Puppy Food - Lamb & Rice 1 KG', 'NULL', '147101', 140, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(394, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 1 KG', 'NULL', '147289', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(395, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 12 KG', 'NULL', '147912', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(396, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '147903', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(397, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 1 KG', 'NULL', '147289', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(398, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 12 KG', 'NULL', '147912', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(399, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '147903', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(400, 'Eukanuba Dermatosis F.P. Dog Food 5 KG', 'NULL', '121957', 141, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(401, 'Eukanuba Dermatosis F.P. Dog Food 12 KG', 'NULL', '121912', 141, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(402, 'Eukanuba Dermatosis F.P. Dog Food 1 KG', 'NULL', '121901', 141, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(403, 'Eukanuba Restricted Calorie Biscuits', 'NULL', '356241', 142, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(404, 'Iams Kitten Chicken Wet Cat Food Healthy Pouch Multi Pack', 'NULL', '326400', 158, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(405, 'Iams Kitten Chicken Wet Cat Food Healthy Pouch 1 Pack', 'NULL', '326100', 158, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(406, 'Iams Mature & Senior Chicken Wet Cat Food Healthy Pouch 1 Pack', 'NULL', '328100', 159, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(407, 'Iams Adult Chicken Wet Cat Food Healthy Pouch', 'NULL', '356100', 160, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(408, 'Iams Adult Ocean Fish Wet Cat Food Healthy Pouch', 'NULL', '366100', 161, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(409, 'Iams Adult Salmon Wet Cat Food Healthy Pouch', 'NULL', '376100', 162, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(410, 'Iams Adult Tuna in Jelly Wet Cat Food Healthy Pouch', 'NULL', '386100', 163, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(411, 'Royal Canin Hepatic Adult Dog Food 12 KG', 'NULL', 'zrc0014', 187, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(412, 'Royal Canin Hepatic Adult Dog Food 1.5 KG', 'NULL', 'zrc0174', 187, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(413, 'Royal Canin Gastro Intestinal Moderate Calorie GIM 23 Adult Dog Food 7.5 KG', 'NULL', 'ZRC0103', 189, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(414, 'Royal Canin Gastro Intestinal Moderate Calorie GIM 23 Adult Dog Food 2 KG', 'NULL', 'ZRC0151', 189, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(415, 'Royal Canin Gastro Intestinal Moderate Calorie GIM 23 Adult Dog Food 14 KG', 'NULL', 'ZRC0011', 189, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(416, 'Royal Canin Gastro Intestinal Low Fat LF 22 Adult Dog Food 1.5 KG', 'NULL', 'ZRC0176', 191, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(417, 'Royal Canin Gastro Intestinal Low Fat LF 22 Adult Dog Food 12 KG', 'NULL', 'ZRC0044', 191, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(418, 'Royal Canin Gastro Intestinal Junior Dog Food 2.5 KG', 'NULL', 'ZRC0187', 192, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(419, 'Royal Canin Gastro Intestinal Junior Dog Food 1 KG', 'NULL', 'ZRC0283', 192, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(420, 'Royal Canin Gastro Intestinal Junior Dog Food 10 KG', 'NULL', 'ZRC0054', 192, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(421, 'Royal Canin Gastro Intestinal Adult Dog Food 7.5 KG', 'NULL', 'ZRC0101', 193, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(422, 'Royal Canin Gastro Intestinal Adult Dog Food 2 KG', 'NULL', 'ZRC0148', 193, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(423, 'Royal Canin Gastro Intestinal Adult Dog Food 14 KG', 'NULL', 'ZRC0037', 193, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(424, 'Royal Canin Fibre Response Adult Dog Food 7.5 KG', 'NULL', 'ZRC0102', 194, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(425, 'Royal Canin Fibre Response Adult Dog Food 2 KG', 'NULL', 'ZRC0194', 194, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(426, 'Royal Canin Fibre Response Adult Dog Food 14 KG', 'NULL', 'ZRC0040', 194, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(427, 'Royal Canin Cardiac Adult Dog Food 2 KG', 'NULL', 'zrc0147', 195, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(428, 'Royal Canin Anallergenic Adult Dog Food 3 KG', 'NULL', 'zrc0134', 197, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(429, 'Royal Canin Anallergenic Adult Dog Food 8 KG', 'NULL', 'zrc0282', 197, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(430, 'Royal Canin Diabetic DS37 Adult Dog Food 1.5 KG', 'NULL', 'ZRC0216', 198, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(431, 'Royal Canin Diabetic DS37 Adult Dog Food 12 KG', 'NULL', 'ZRC0015', 198, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(432, 'Royal Canin Diabetic DS37 Adult Dog Food 7 KG', 'NULL', 'ZRC0067', 198, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(433, 'Royal Canin Urinary U/C Low Purine Adult Dog Food 7.5 KG', 'NULL', 'ZRC0061', 201, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(434, 'Royal Canin Urinary U/C Low Purine Adult Dog Food 2 KG', 'NULL', 'ZRC0195', 201, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(435, 'Royal Canin Urinary U/C Low Purine Adult Dog Food 14 KG', 'NULL', 'ZRC0012', 201, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(436, 'Royal Canin Hypoallergenic DR 21 Adult Dog Food 2 KG', 'NULL', 'zrc0191', 202, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(437, 'Royal Canin Hypoallergenic DR 21 Adult Dog Food 14 KG', 'NULL', 'zrc0007', 202, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(438, 'Royal Canin Hypoallergenic DR 21 Adult Dog Food 7 KG', 'NULL', 'zrc0064', 202, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(439, 'Royal Canin Hypoallergenic HME 23 Moderate Calorie Adult Dog Food 1.5 KG', 'NULL', 'ZRC0220', 203, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(440, 'Royal Canin Hypoallergenic HME 23 Moderate Calorie Adult Dog Food 14 KG', 'NULL', 'ZRC0041', 203, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(441, 'Royal Canin Hypoallergenic HME 23 Moderate Calorie Adult Dog Food 7 KG', 'NULL', 'ZRC0066', 203, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(442, 'Royal Canin Mobility Larger Dogs Adult Dog Food 14 KG', 'NULL', 'ZRC0008', 204, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(443, 'Royal Canin Mobility Larger Dogs Adult Dog Food 6 KG', 'NULL', 'ZRC0070', 204, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(444, 'Royal Canin Mobility Adult Dog Food 7 KG', 'NULL', 'ZRC0106', 205, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(445, 'Royal Canin Obesity Management Adult Dog Food 1.5 KG', 'NULL', 'ZRC0218', 206, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(446, 'Royal Canin Obesity Management Adult Dog Food 6 KG', 'NULL', 'ZRC0069', 206, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(447, 'Royal Canin Obesity Management Adult Dog Food 13 KG', 'NULL', 'ZRC0285', 206, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(448, 'Royal Canin Satiety Support Weight Management Adult Dog Food 1.5 KG', 'NULL', 'zrc0213', 209, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(449, 'Royal Canin Satiety Support Weight Management Adult Dog Food 12 KG', 'NULL', 'zrc0043', 209, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(450, 'Royal Canin Sensitivity Control  Adult Dog Food 1.5 KG', 'NULL', 'ZRC0175', 211, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(451, 'Royal Canin Sensitivity Control  Adult Dog Food 14 KG', 'NULL', 'ZRC0038', 211, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(452, 'Royal Canin Sensitivity Control  Adult Dog Food 7 KG', 'NULL', 'ZRC0107', 211, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(453, 'Royal Canin Skin Care SK 23 Adult Dog Food 2 KG', 'NULL', 'ZRC0153', 212, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(454, 'Royal Canin Skin Care SK 23 Adult Dog Food 12 KG', 'NULL', 'ZRC0045', 212, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(455, 'Royal Canin Skin Care Small Adult Dog Food 2 KG', 'NULL', 'ZRC0154', 213, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(456, 'Royal Canin Skin Care Small Adult Dog Food 4 KG', 'NULL', 'ZRC0072', 213, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(457, 'Royal Canin Skin Care Junior Small SKJ 29 Dog Food 2 KG', 'NULL', 'ZRC0152', 214, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(458, 'Royal Canin Skin Support SS 23 Adult Dog Food 2 KG', 'NULL', 'ZRC0193', 215, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(459, 'Royal Canin Skin Support SS 23 Adult Dog Food 7 KG', 'NULL', 'ZRC0109', 215, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(460, 'Royal Canin Weight Control DS 30 Adult Dog Food 14 KG', 'NULL', 'ZRC0039', 216, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(461, 'Catnip Mice Chew Toys for Cats', 'NULL', 'ZMM0025', 286, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(462, 'Catnip Chew Ring Toys for Cats', 'NULL', 'ZMM0026', 287, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(463, 'Laser Fun Toy for Cats', 'NULL', 'ZMM0027', 288, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(464, 'Cheese Chase Toy for Cats', 'NULL', 'ZMM0030', 289, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(465, 'Orkakat Catnip Infused Mice Toys for Cats', 'NULL', 'ZMM0032', 290, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(466, 'Orkakat Wiggle Worm Toy for Cats', 'NULL', 'ZMM0034', 291, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(467, 'Easy Life Scratch Hammock for Cats', 'NULL', 'ZMM0035', 292, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(468, 'Green Magic Mighty Mouse Toy for Cats', 'NULL', 'ZMM0039', 293, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(469, 'Fresh Breath Mint Stick Toy for Cats', 'NULL', 'ZMM0041', 294, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(470, 'Scratch, Snuggle & Rest Cat Scratcher', 'NULL', 'ZMM0042', 295, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(471, 'Catnip Foil Bag 40G', 'NULL', 'ZMM0002', 301, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(472, 'Nature\'s Gift Love Bites Cat Treats Seafood or Chicken Seafood', 'NULL', NULL, 311, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(473, 'Nature\'s Gift Love Bites Cat Treats Seafood or Chicken Chicken', 'NULL', NULL, 311, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(474, 'Milko-Pup Milk Replacer/Supplement For Puppies And Dogs', 'NULL', 'ZKY0040', 339, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(475, 'Iams Adult Fish Multipack Combo Wet Cat Food', 'NULL', '346400', 428, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(476, 'SlimCat Interactive Cat Feeder Ball Green', 'NULL', 'THU0030', 450, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(477, 'SlimCat Interactive Cat Feeder Ball Blue', 'NULL', 'ZGS0003', 450, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(478, 'SlimCat Interactive Cat Feeder Ball Pink', 'NULL', 'THU0031', 450, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(479, 'SlimCat Interactive Cat Feeder Ball Orange', 'NULL', 'ZGS0005', 450, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(480, 'Royal Canin Renal Adult Dog Food 2 KG', 'NULL', 'ZRC0192', 467, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(481, 'Royal Canin Renal Adult Dog Food 7 KG', 'NULL', 'ZRC0065', 467, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(482, 'Royal Canin Dental Small Adult Dog Food ', 'NULL', 'ZRC0150', 468, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(483, 'Vets Choice Large and Giant Breed Puppy Dog Food 1.8 KG', 'NULL', 'ZVC0006', 527, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(484, 'Vets Choice Large and Giant Breed Puppy Dog Food 8 KG', 'NULL', 'ZVC0008', 527, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(485, 'Vets Choice Large and Giant Breed Puppy Dog Food 20 KG', 'NULL', 'ZVC0007', 527, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(486, 'Vets Choice Large and Giant Breed Adult Dog Food 8 KG', 'NULL', 'ZVC0005', 528, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(487, 'Vets Choice Large and Giant Breed Adult Dog Food 20 KG', 'NULL', 'ZVC0004', 528, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(488, 'Vets Choice All Breeds Adult Superior Dog Food 8 KG', 'NULL', 'ZVC0020', 529, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(489, 'Vets Choice All Breeds Adult Superior Dog Food 20 KG', 'NULL', 'ZVC0019', 529, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(490, 'Vets Choice All Breeds Adult Lite Dog Food 1.8 KG', 'NULL', 'ZVC0009', 563, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(491, 'Vets Choice All Breeds Adult Lite Dog Food 8 KG', 'NULL', 'ZVC0011', 563, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(492, 'Vets Choice All Breeds Adult Lite Dog Food 20 KG', 'NULL', 'ZVC0010', 563, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(493, 'Catit Senses Super Circuit Cat Playstation', 'NULL', 'ZHG0012 ', 583, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(494, 'Kong Buzzies Birds Toys for Cats  Pink', 'NULL', 'ZMA0057 ', 586, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(495, 'Kong Buzzies Birds Toys for Cats  Green', 'NULL', 'ZMA0081 ', 586, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(496, 'Kong Buzzies Birds Toys for Cats  Blue', 'NULL', 'ZMA0082 ', 586, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(497, 'Scratch & Play 2-Tiered Cat Scratching Post', 'NULL', 'ZMA0069', 603, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(498, 'Earthborn Holistic Coastal Catch Adult Dog Food 2.5 KG', 'NULL', 'ZEB0003', 614, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(499, 'Earthborn Holistic Coastal Catch Adult Dog Food 12 KG', 'NULL', 'ZEB0004', 614, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(500, 'Earthborn Holistic Primitive Natural Adult Dog Food 2.5 KG', 'NULL', 'ZEB0001', 615, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(501, 'Earthborn Holistic Primitive Natural Adult Dog Food 12 KG', 'NULL', 'ZEB0002', 615, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(502, 'Solar Flare Cat Scratching Post', 'NULL', 'ZCP0005', 620, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(503, 'Catit Elevated Speed Circuit', 'NULL', 'ZHG0004', 621, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(504, 'Moon of Jupiter Cat Scratcher', 'NULL', 'ZCP0006', 624, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(505, 'Catit Illuminated Balls', 'NULL', 'ZHG0005', 629, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(506, 'Kunduchi Catnip Spray', 'NULL', 'ZRZ0045', 636, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(507, 'Maxhealth Adult Small Bites Dog Food for Small Dogs 2 KG', 'NULL', 'ZMX0002', 638, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(508, 'Maxhealth Adult Small Bites Dog Food for Small Dogs 15 KG', 'NULL', 'ZMX0004', 638, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(509, 'Maxhealth Adult Small Bites Dog Food for Small Dogs 6 KG', 'NULL', 'ZMX0003', 638, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(510, 'Maxhealth Adult Regular Bites for Medium and Large Dogs 15 KG', 'NULL', 'ZMX0006', 639, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(511, 'Maxhealth Adult Regular Bites for Medium and Large Dogs 6 KG', 'NULL', 'ZMX0005', 639, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(512, 'Kunduchi Super Grass', 'NULL', 'ZRZ0046', 659, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(513, 'FroliCat Bolt Cat Laser Toy', 'NULL', 'THU0004', 672, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(514, 'Cuddle Toy for Cats', 'NULL', 'ZMM0094', 677, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(515, 'Crunch and Wrestle Fish Cat Toy', 'NULL', 'ZMM0095', 683, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(516, 'Healthy Centres Cat Treats Salmon', 'NULL', 'ZMA0172', 685, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(517, 'Hemp Heart Cushion with Valerian Cat Toy Blue', 'NULL', 'ZCB0008', 699, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(518, 'Hemp Heart Cushion with Valerian Cat Toy Coral', 'NULL', 'ZCB0006', 699, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(519, 'Hemp Heart Cushion with Valerian Cat Toy Brown', 'NULL', 'ZCB0007', 699, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(520, 'Healthy Bites Hairball Remedy Cat Treats', 'NULL', 'ZMA0113', 702, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(521, 'Refillable Catnip Beaver Cat Toy Beaver', 'NULL', 'ZMM0288', 711, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(522, 'V-Playstation for Cats', 'NULL', 'ZHG0010', 717, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(523, 'V-Box Cat Furniture - Small', 'NULL', 'ZHG0011', 718, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(524, 'Melody Chaser Cat Toy Cricket', 'NULL', 'ZMM0293', 741, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(525, 'Melody Chaser Cat Toy Owl', 'NULL', 'ZMM0290', 741, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(526, 'Melody Chaser Cat Toy Racoon', 'NULL', 'ZMM0291', 741, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(527, 'Melody Chaser Cat Toy Mouse', 'NULL', 'ZMM0612', 741, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(528, 'Pet Droid Activity Mouse', 'NULL', 'ZMM0121', 742, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(529, 'Go Buggy Catnip Cat Toy', 'NULL', 'ZMM0117', 743, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(530, 'Purple Purr Pillow Cat Toy and Friend', 'NULL', 'ZMM0116', 744, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(531, 'Easy Life Hammock Cat Scratcher', 'NULL', 'ZMM0115', 745, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(532, 'Natura Roll and Ball Cat Toy', 'NULL', 'ZVA0007', 752, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(533, 'Natura Feather Wand Cat Toy', 'NULL', 'ZVA0006', 753, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(534, 'Natura Mouse Wand Cat Toy', 'NULL', 'ZVA0008', 754, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(535, 'Etna Cat Furniture and Scratcher Ball', 'NULL', 'ZVA0005', 755, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(536, 'Ararat Cat Furniture', 'NULL', 'ZVA0004', 756, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(537, 'Catit Fireball Motion Activated Illuminating Cat Ball', 'NULL', 'ZHG0015', 770, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(538, 'Catit Food Tree for Cats', 'NULL', 'ZHG0019', 776, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(539, 'Scratch and Lounge Cat Scratcher', 'NULL', 'ZMM0125', 790, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(540, 'Squirrel Catnip Cat Toys Squirrel', 'NULL', 'ZMM0319', 804, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(541, 'Feather Hider Pet Droid Cat Toy', 'NULL', 'ZMM0317', 808, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(542, 'Natura Dumbbell Cat Toys', 'NULL', 'ZVA0012', 819, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(543, 'Sheba Wet Cat Treat Tuna with Prawn Single', 'NULL', 'ZMRS0022', 862, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(544, 'Sheba Wet Cat Treat Tuna with Prawn Box of 24', 'NULL', 'ZMRS0025', 862, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(545, 'Sheba Wet Cat Treat Tuna with Salmon Single', 'NULL', 'ZMRS0023', 862, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(546, 'Sheba Wet Cat Treat Tuna with Salmon Box of 24', 'NULL', 'ZMRS0026', 862, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(547, 'Sheba Wet Cat Treat Succulent Chicken Breast Single', 'NULL', 'ZMRS0021', 862, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(548, 'Sheba Wet Cat Treat Succulent Chicken Breast Box of 24', 'NULL', 'ZMRS0024', 862, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(549, 'Catnip Chaser Cat Toy', 'NULL', 'ZMM0144', 872, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(550, 'Royal Canin Satiety Small Breed Dog Food 1.5 KG', 'NULL', 'ZRC0346', 879, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(551, 'Royal Canin Satiety Small Breed Dog Food 3 KG', 'NULL', 'ZRC0347', 879, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(552, 'TeePee Cat Scratcher', 'NULL', 'ZMM0294', 891, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(553, 'Chaise Cat Scratcher', 'NULL', 'ZMM0295', 892, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(554, 'Catnap and Scratch Bed for Cats', 'NULL', 'ZMM0296', 893, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(555, 'Catit Treat Spinner for Cats', 'NULL', 'ZHG0029', 916, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(556, '(Short Expiry) Vets Choice All Breeds Adult Lite Dog Food', 'NULL', NULL, 925, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(557, '(Short Expiry) Royal Canin Cardiac Adult Dog Food 2 KG', 'NULL', 'ZRC0147', 985, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(558, 'Kitty Crunch Cat Treats Seafood', 'NULL', 'ZMM0484', 988, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(559, 'Kitty Crunch Cat Treats Chicken', 'NULL', 'ZMM0479', 988, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(560, 'Kitty Crunch Cat Treats Salmon', 'NULL', 'ZMM0483', 988, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(561, 'Kitty Crunch Cat Treats Tuna', 'NULL', 'ZMM0482', 988, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(562, 'Kitty Crunch Cat Treats Lamb', 'NULL', 'ZMM0481', 988, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(563, 'Kitty Crunch Cat Treats Beef', 'NULL', 'ZMM0480', 988, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(564, 'Silvervine Plush Balls Cat Toy', 'NULL', 'ZMM0670', 1012, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(565, 'Silvervine Stuffed Animal Cat Toy', 'NULL', 'ZMM0671', 1013, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(566, 'Silvervine Seagrass Animal Cat Toy', 'NULL', 'ZMM0672', 1014, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(567, 'Silvervine Plush Mice Cat Toy', 'NULL', 'ZMM0673', 1015, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(568, 'Silvervine Twitchy Teaser Cat Wand', 'NULL', 'ZMM0674', 1016, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(569, 'Grumpy Cat Plush Doorknob Hanger Cat Toy', 'NULL', 'ZMM0680', 1017, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(570, 'Grumpy Cat Hair Ball Cat Toy', 'NULL', 'ZMM0681', 1018, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(571, 'Fluffy Grumpy Cat Toy ', 'NULL', 'ZMM0682', 1019, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(572, 'Grumpy Cat Blind Mouse Cat Toy', 'NULL', 'ZMM0683', 1020, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(573, 'Grumpy Cat Annoying Plush Cat Wand Toy', 'NULL', 'ZMM0684', 1021, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(574, 'Jolly Moggy Natural Catnip Mini Mice Cat Toys', 'NULL', 'ZMM0675', 1022, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(575, 'Jolly Moggy Natural Feather Teaser Cat Wand', 'NULL', 'ZMM0676', 1023, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(576, 'Jolly Moggy Cat Tunnel Cat Toy', 'NULL', 'ZMM0677', 1024, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(577, 'Jolly Moggy Cheeky Mouse Cat Toy', 'NULL', 'ZMM0678', 1025, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(578, 'Jolly Moggy Vibromouse Cat Toy', 'NULL', 'ZMM0679', 1026, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(579, 'Silvervine Teasin’ Tail Cat Wand Toy', 'NULL', 'ZMM0687', 1027, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(580, 'Grumpy Cat Catfish Cat Wand', 'NULL', 'ZMM0686', 1028, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(581, 'Coriander Natural Cat Scratcher', 'NULL', 'ZMM0690', 1032, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(582, 'Bamboo Cat Tower Cat Bed', 'NULL', 'ZMM0691', 1033, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(583, 'Bamboo Cat Pod & Bed', 'NULL', 'ZMM0692', 1034, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(584, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 1 KG', 'NULL', '147289', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(585, 'Pawsecco Wine Gift Set For Dogs & Cats', 'NULL', 'ZNT0007', 1064, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(586, 'Pawsecco Rose Wine For Dogs & Cats', 'NULL', 'ZNT0006', 1065, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(587, 'Crinkle Catnip Snowman For Cats', 'NULL', 'ZMM0725', 1070, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(588, 'Crinkle Catnip Gingerbread For Cats', 'NULL', 'ZMM0726', 1071, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(589, 'Grumpy Cat Christmas LED Lights Cat Wand', 'NULL', 'ZMM0731', 1072, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(590, 'Grumpy Reindeer Ball Cat Toy', 'NULL', 'ZMM0732', 1073, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(591, '3-in-1 Catit Circuit Ball with Scratcher Cat Toy', 'NULL', 'ZHG0033', 1118, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(592, '3-in-1 Circuit Ball with Catnip Massager Cat Toy', 'NULL', 'ZHG0034', 1119, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(593, '3-in-1 Catit Circuit Ball with Cat Grass Cat Toy', 'NULL', 'ZHG0035', 1120, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(594, '(Short Expiry) Royal Canin Anallergenic Adult Dog Food 3 KG', 'NULL', 'ZRC0134', 1123, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(595, 'Valley View Catnip ', 'NULL', 'ZVVE001', 1142, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(596, 'Vigo Cat Scratcher', 'NULL', 'ZMM0749', 1176, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(597, 'Toronto Cat Scratcher', 'NULL', 'ZMM0750', 1177, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(598, '(Short Expiry) Royal Canin Skin Care Small Adult Dog Food 2 KG', 'NULL', 'ZRC0154', 1183, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(599, 'Whiskas Trio Crunchy Cat Treats Seafood', 'NULL', 'ZMRS0033', 1189, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(600, 'Whiskas Trio Crunchy Cat Treats Poultry', 'NULL', 'ZMRS0031', 1189, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(601, 'Whiskas DentaBites Cat Treats Chicken', 'NULL', 'ZMRS0027', 1190, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(602, 'Whiskas DentaBites Cat Treats Salmon', 'NULL', 'ZMRS0029', 1190, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(603, 'Maxhealth Puppy Junior Dog Food 15 KG', 'NULL', 'ZMX0009', 1195, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(604, 'Maxhealth Puppy Junior Dog Food 6 KG', 'NULL', 'ZMX0001', 1195, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(605, 'Ultra Dog Weight Control Dog Food 3 KG', 'NULL', 'ZLAK006', 1209, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(606, 'Ultra Dog Weight Control Dog Food 12 KG', 'NULL', 'ZLAK007', 1209, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(607, 'SuperWoof Adult Large Breed Dog Food - Chicken & Rice', 'NULL', 'ZLAK002', 1216, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(608, 'SuperWoof Adult Small & Medium Breed Dog Food  - Beef & Rice', 'NULL', 'ZLAK005', 1217, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(609, 'SuperWoof Adult Large Breed Dog Food - Beef & Rice', 'NULL', 'ZLAK001', 1218, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(610, 'SuperWoof Adult Small & Medium Breed Dog Food - Turkey & Rice 3 KG', 'NULL', 'ZLAK003', 1220, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(611, 'SuperWoof Adult Small & Medium Breed Dog Food - Turkey & Rice 12 KG', 'NULL', 'ZLAK004', 1220, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(612, 'Paw Breakers Catnip Cat Treat and Toy Original', 'NULL', 'ZPAC018', 1224, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(613, 'Paw Breakers Catnip Cat Treat and Toy Royal', 'NULL', 'ZPAC019', 1224, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(614, 'Field & Forest Small Breed Puppy Food - Turkey & Duck 2 KG', 'NULL', 'ZMON010', 1226, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(615, 'Field & Forest Large Breed Puppy Food - Turkey & Duck 12 KG', 'NULL', 'ZMON013', 1227, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(616, 'Field & Forest Small Breed Puppy Food - Turkey & Duck 7 KG', 'NULL', 'ZMON011', 1226, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(617, 'Field & Forest Large Breed Puppy Food - Turkey & Duck 7 KG', 'NULL', 'ZMON012', 1227, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(618, 'Field & Forest Adult All Breed Dog Food - Game & Lamb 2 KG', 'NULL', 'ZMON001', 1228, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(619, 'Field & Forest Adult All Breed Dog Food - Salmon & Tuna 2 KG', 'NULL', 'ZMON004', 1229, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(620, 'Field & Forest Adult All Breed Dog Food - Game & Lamb 12 KG', 'NULL', 'ZMON003', 1228, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(621, 'Field & Forest Adult All Breed Dog Food - Game & Lamb 7 KG', 'NULL', 'ZMON002', 1228, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(622, 'Field & Forest Adult All Breed Dog Food - Salmon & Tuna 12 KG', 'NULL', 'ZMON006', 1229, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(623, 'Field & Forest Adult All Breed Dog Food - Salmon & Tuna 7 KG', 'NULL', 'ZMON005', 1229, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(624, 'Field & Forest Adult All Breed Dog Food - Turkey & Duck 2 KG', 'NULL', 'ZMON007', 1230, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(625, 'Field & Forest Adult All Breed Dog Food - Turkey & Duck 12 KG', 'NULL', 'ZMON009', 1230, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(626, 'Field & Forest Adult All Breed Dog Food - Turkey & Duck 7 KG', 'NULL', 'ZMON008', 1230, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(627, 'Acana Singles Yorkshire Pork Dog Food 11.4 KG', 'NULL', 'ZACA046', 1247, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(628, 'Ultra Dog Joint Health Adult Dog Food 3 KG', 'NULL', 'ZLAK015', 1248, '2022-09-25 08:17:40', '2022-09-25 08:17:40');
INSERT INTO `variants` (`id`, `name`, `sap_product_code`, `web_product_code`, `product_id`, `created_at`, `updated_at`) VALUES
(629, 'Ultra Dog Hypo-Allergenic Dog Food 3 KG', 'NULL', 'ZLAK013', 1249, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(630, 'Ultra Dog Joint Health Adult Dog Food 12 KG', 'NULL', 'ZLAK016', 1248, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(632, 'Ultra Dog Premium Adult Large Breed Dog Food', 'NULL', 'ZLAK019', 1250, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(633, 'Ultra Dog Premium Large Breed Puppy Food 8 KG', 'NULL', 'ZLAK020', 1251, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(634, 'Ultra Dog Premium Large Breed Puppy Food 20 KG', 'NULL', 'ZLAK021', 1251, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(635, 'Ultra Dog Premium Small & Medium Breed Puppy Food 3 KG', 'NULL', 'ZLAK026', 1252, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(636, 'Ultra Dog Premium Small & Medium Breed Puppy Food 8 KG', 'NULL', 'ZLAK027', 1252, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(637, 'Ultra Dog Premium Adult Small & Medium Breed Dog Food 3 KG', 'NULL', 'ZLAK024', 1253, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(638, 'Ultra Dog Premium Adult Small & Medium Breed Dog Food 8 KG', 'NULL', 'ZLAK025', 1253, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(639, 'Nandi Freeze Dried Fish Cat Treats', 'NULL', 'ZNA0004', 1258, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(640, 'Acana Free-Run Duck Dog Food 6 KG', 'NULL', 'ZACA051', 1267, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(641, 'Acana Free-Run Duck Dog Food 11.4 KG', 'NULL', 'ZACA050', 1267, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(642, 'Acana Grass-Fed Lamb Dog Food 2 KG', 'NULL', 'ZACA044', 1269, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(643, 'Acana Grass-Fed Lamb Dog Food 6 KG', 'NULL', 'ZACA043', 1269, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(644, 'Acana Grass-Fed Lamb Dog Food 11.4 KG', 'NULL', 'ZACA042', 1269, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(645, 'Acana Grass-Fed Lamb Dog Food 17 KG', 'NULL', 'ZACA041', 1269, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(646, 'Acana Prairie Poultry Dog Food 6 KG', 'NULL', 'ZACA003', 1270, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(647, 'Acana Prairie Poultry Dog Food 11.4 KG', 'NULL', 'ZACA002', 1270, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(648, 'Acana Prairie Poultry Dog Food 17 KG', 'NULL', 'ZACA001', 1270, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(649, 'Acana Wild Coast Dog Food 6 KG', 'NULL', 'ZACA008', 1271, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(650, 'Acana Wild Coast Dog Food 11.4 KG', 'ZKD372', 'ZACA007', 1271, '2022-09-25 08:17:40', '2022-09-26 06:37:01'),
(651, 'Acana Wild Coast Dog Food 17 KG', 'ZK463E7', 'ZACA006', 1271, '2022-09-25 08:17:40', '2022-09-26 06:36:22'),
(652, 'Acana Heritage Adult Dog Food  11.4 KG', 'NULL', 'ZACA012', 1272, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(653, 'Acana Heritage Adult Dog Food  17 KG', 'NULL', 'ZACA011', 1272, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(654, 'Acana Heritage Adult Small Breed Dog Food 2 KG', 'NULL', 'ZACA017', 1273, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(655, 'Acana Heritage Adult Small Breed Dog Food 6 KG', 'NULL', 'ZACA016', 1273, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(656, 'Acana Heritage Adult Large Breed Dog Food 11.4 KG', 'NULL', 'ZACA020', 1274, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(657, 'Acana Heritage Adult Large Breed Dog Food 17 KG', 'NULL', 'ZACA019', 1274, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(658, 'Acana Heritage Senior Dog Food 11.4 KG', 'NULL', 'ZACA021', 1275, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(659, 'Acana Heritage Large Breed Puppy Food 11.4 KG', 'NULL', 'ZACA032', 1276, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(660, 'Acana Heritage Large Breed Puppy Food 17 KG', 'NULL', 'ZACA031', 1276, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(661, 'Acana Adult Light And Fit Dog Food 6 KG', 'NULL', 'ZACA026', 1277, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(662, 'Acana Adult Light And Fit Dog Food 11.4 KG', 'NULL', 'ZACA025', 1277, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(663, 'Acana Regionals Pacifica Dog Food  6 KG', 'NULL', 'ZACA069', 1278, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(664, 'Acana Regionals Pacifica Dog Food  11.4 KG', 'NULL', 'ZACA068', 1278, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(665, 'Acana Wild Prairie Dog Food 11.4 KG', 'NULL', 'ZACA064', 1279, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(666, 'Pawsecco Freeze-Pops For Dogs & Cats ', 'NULL', 'ZNT0008', 1298, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(667, 'Karoo Senior or Overweight All Breed Dog Food 8 KG', 'NULL', 'ZMON031', 1299, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(668, 'Karoo Senior or Overweight All Breed Dog Food 20 KG', 'NULL', 'ZMON032', 1299, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(669, 'Karoo Senior or Overweight All Breed Dog Food 1.75 KG', 'NULL', 'ZMON030', 1299, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(670, 'Winter Warmer Cat Toy - 3 Piece', 'NULL', 'ZMM0771', 1300, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(671, 'Grumpy Cat Plush Reindeer Mouse Cat Toy', 'NULL', 'ZMM0773', 1301, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(672, 'ZaKatz Cat Tunnel Cat Toy', 'NULL', 'ZCB0011', 1304, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(673, 'ZaKatz 3-Way Cat Tunnel Cat Toy', 'NULL', 'ZCB0012', 1305, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(674, 'Orijen Original Freeze-Dried Cat Treats', 'NULL', 'ZORI032', 1311, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(675, 'Orijen Six Fish Freeze-Dried Cat Treats', 'NULL', 'ZORI034', 1312, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(676, 'Orijen Freeze-Dried Cat Treats - Wild Boar', 'NULL', 'ZORI033', 1313, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(677, 'Orijen Freeze-Dried Dog Food - Original 170 G', 'NULL', 'ZORI036', 1314, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(678, 'Orijen Freeze-Dried Dog Food - Original 454 G', 'NULL', 'ZORI035', 1314, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(679, 'Acana Heritage Puppy & Junior Food 6 KG', 'NULL', 'ZACA035', 1315, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(680, 'Acana Heritage Puppy & Junior Food 11.4 KG', 'NULL', 'ZACA034', 1315, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(681, 'Acana Heritage Small Breed Puppy Food 2 KG', 'NULL', 'ZACA039', 1316, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(682, 'Acana Heritage Small Breed Puppy Food 6 KG', 'NULL', 'ZACA038', 1316, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(683, 'Acana Heritage Small Breed Puppy Food 340 G', 'NULL', 'ZACA040', 1316, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(684, 'Acana Heritage Sport And Agility Dog Food 17 KG', 'NULL', 'ZACA029', 1320, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(685, 'Acana Singles Dog Food - Pacific Pilchard 2 KG', 'NULL', 'ZACA056', 1321, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(686, 'Acana Singles Dog Food - Pacific Pilchard 6 KG', 'NULL', 'ZACA055', 1321, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(687, 'Acana Singles Dog Food - Pacific Pilchard 340 G', 'NULL', 'ZACA057', 1321, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(688, 'Acana Singles Dog Food - Pacific Pilchard 11.4 KG', 'NULL', 'ZACA054', 1321, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(689, 'Karoo Adult All Breed Dog Food 8 KG', 'NULL', 'ZMON024', 1327, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(690, 'Karoo Adult All Breed Dog Food 20 KG', 'NULL', 'ZMON025', 1327, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(691, 'Karoo Adult All Breed Dog Food 1.75 KG', 'NULL', 'ZMON023', 1327, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(692, 'Karoo Small and Medium Breed Puppy Food 8 KG', 'NULL', 'ZMON027', 1328, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(693, 'Karoo Small and Medium Breed Puppy Food 1.75 KG', 'NULL', 'ZMON026', 1328, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(694, 'Karoo Large and Giant Breed Puppy Food 8 KG', 'NULL', 'ZMON028', 1329, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(695, 'Karoo Large and Giant Breed Puppy Food 20 KG', 'NULL', 'ZMON029', 1329, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(696, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 12 KG', 'NULL', '147912', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(697, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '147903', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(698, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 1 KG', 'NULL', '147289', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(699, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 12 KG', 'NULL', '147912', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(700, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '147903', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(701, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 1 KG', 'NULL', '147289', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(702, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 12 KG', 'NULL', '147912', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(703, 'Eukanuba Adult Small and Medium Breed Dog Food - Lamb & Rice 3 KG', 'NULL', '147903', 126, '2022-09-25 08:17:40', '2022-09-25 08:17:40'),
(713, 'Test Product', NULL, NULL, 1340, '2022-09-25 20:30:11', '2022-09-25 20:30:11'),
(716, 'Acana Wild Coast Dog Food 20 Kg', 'ZHD836', 'ZK8392', 1271, '2022-09-26 07:37:07', '2022-09-26 07:37:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_category_id_foreign` (`category_id`),
  ADD KEY `product_category_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1341;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=717;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
