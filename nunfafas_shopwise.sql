-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 08:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nunfafas_shopwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '7UcjD4feKXymKLr60lBj1wShh1EsyuiI', 1, '2021-05-03 02:01:13', '2021-05-03 02:01:13', '2021-05-03 02:01:13'),
(2, 1, 'QzJAXlvGpo4tx37tMxpoXY6fOamqFolp', 1, '2021-07-02 20:17:18', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(3, 1, 'tenKNEKgNNpixls9zjhWiP7yEQh7y42z', 1, '2021-07-02 20:21:11', '2021-07-02 20:21:11', '2021-07-02 20:21:11'),
(4, 1, 'AEWRmiHmQC91TrsxcGlZCRMuCihlHbJd', 1, '2021-07-02 20:47:01', '2021-07-02 20:47:01', '2021-07-02 20:47:01'),
(5, 1, 'qmDtNslvquK6wmvIWg3MRUQLa3gWa0Pz', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(6, 2, 'k59NU496MfzgTZQLhOgmSAY4fTUGjIT5', 1, '2021-12-12 07:57:59', '2021-12-12 07:57:59', '2021-12-12 07:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 02:57:28', '2021-12-11 02:57:28'),
(2, 1, 'product', '{\"_token\":\"VYGiIsIKYffqKENgs1a8jXN0ihLuPSHc26HGj5Au\",\"name\":\"Samsung Smart TV\",\"slug\":\"samsung-smart-tv\",\"slug_id\":\"534\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"products\\/31.jpg\",\"products\\/0001.jpg\"],\"variation_default_id\":\"73\",\"attribute_sets\":[\"1\",\"2\"],\"related_products\":null,\"cross_sale_products\":\"10,5,12,22\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"5\",\"9\"],\"brand_id\":\"7\",\"product_collections\":[\"3\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Iphone\\\"},{\\\"value\\\":\\\"Printer\\\"},{\\\"value\\\":\\\"Office\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 31, 'Samsung Smart TV', 'primary', '2021-12-11 03:01:50', '2021-12-11 03:01:50'),
(3, 1, 'product', '{\"_token\":\"VYGiIsIKYffqKENgs1a8jXN0ihLuPSHc26HGj5Au\",\"name\":\"Samsung Smart TV\",\"slug\":\"samsung-smart-tv\",\"slug_id\":\"534\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.<\\/p>\",\"content\":\"<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains\\u2019 signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.<\\/p><p>- Casual unisex fit<\\/p><p>- 64% polyester, 36% polyurethane<\\/p><p>- Water column pressure: 4000 mm<\\/p><p>- Model is 187cm tall and wearing a size S \\/ M<\\/p><p>- Unisex fit<\\/p><p>- Drawstring hood with built-in cap<\\/p><p>- Front placket with snap buttons<\\/p><p>- Ventilation under armpit<\\/p><p>- Adjustable cuffs<\\/p><p>- Double welted front pockets<\\/p><p>- Adjustable elastic string at hempen<\\/p><p>- Ultrasonically welded seams<\\/p><p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.<\\/p>\",\"images\":[null,\"products\\/31.jpg\",\"products\\/0001.jpg\"],\"variation_default_id\":\"73\",\"attribute_sets\":[\"1\",\"2\"],\"related_products\":null,\"cross_sale_products\":\"10,5,12,22\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"5\",\"9\"],\"brand_id\":\"7\",\"product_collections\":[\"3\"],\"tax_id\":\"1\",\"tag\":\"[{\\\"value\\\":\\\"Iphone\\\"},{\\\"value\\\":\\\"Printer\\\"},{\\\"value\\\":\\\"Office\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 31, 'Samsung Smart TV', 'primary', '2021-12-11 03:02:16', '2021-12-11 03:02:16'),
(4, 1, 'product', '{\"_token\":\"VYGiIsIKYffqKENgs1a8jXN0ihLuPSHc26HGj5Au\",\"name\":\"Hi\",\"slug\":\"hi\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>hijab nya cantik<\\/p>\",\"content\":\"<p>hijab&nbsp;<\\/p>\",\"images\":[null,\"products\\/download.jpg\"],\"sale_type\":\"0\",\"sku\":\"qq\",\"price\":\"344\",\"sale_price\":\"434300000\",\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"23\",\"length\":\"32\",\"wide\":\"33\",\"height\":\"323\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":\"1\",\"cross_sale_products\":\"1\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"1\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tax_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 106, 'Hi', 'primary', '2021-12-11 03:10:58', '2021-12-11 03:10:58'),
(5, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-11 03:16:04', '2021-12-11 03:16:04'),
(6, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 03:20:31', '2021-12-11 03:20:31'),
(7, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-11 03:22:10', '2021-12-11 03:22:10'),
(8, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 04:21:04', '2021-12-11 04:21:04'),
(9, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-11 05:46:51', '2021-12-11 05:46:51'),
(10, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 09:45:38', '2021-12-11 09:45:38'),
(11, 1, 'page', '{\"_token\":\"nSKdmW3r0GkSN3QeWBGwnQD3N6CS4u4hIXEBxduH\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Best deals for you\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Exclusive Products\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"general\\/b-1.jpg\\\" url1=\\\"\\/product-categories\\/headphone\\\" image2=\\\"general\\/b-2.jpg\\\" url2=\\\"\\/product-categories\\/camera\\\" image3=\\\"general\\/b-3.jpg\\\" url3=\\\"\\/product-categories\\/watches\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Products\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Featured Products\\\" top_rated_product_title=\\\"Top Rated Products\\\" on_sale_product_title=\\\"On Sale Products\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Our Brands\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-11 09:52:20', '2021-12-11 09:52:20'),
(12, 1, 'page', '{\"_token\":\"nSKdmW3r0GkSN3QeWBGwnQD3N6CS4u4hIXEBxduH\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"general\\/b-1.jpg\\\" url1=\\\"\\/product-categories\\/headphone\\\" image2=\\\"general\\/b-2.jpg\\\" url2=\\\"\\/product-categories\\/camera\\\" image3=\\\"general\\/b-3.jpg\\\" url3=\\\"\\/product-categories\\/watches\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-11 10:01:17', '2021-12-11 10:01:17'),
(13, 1, 'page', '{\"_token\":\"nSKdmW3r0GkSN3QeWBGwnQD3N6CS4u4hIXEBxduH\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"general\\/b-1.jpg\\\" url1=\\\"\\/product-categories\\/headphone\\\" image2=\\\"general\\/b-2.jpg\\\" url2=\\\"\\/product-categories\\/camera\\\" image3=\\\"general\\/b-3.jpg\\\" url3=\\\"\\/product-categories\\/watches\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-11 10:01:19', '2021-12-11 10:01:19'),
(14, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 23:12:08', '2021-12-11 23:12:08'),
(15, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 23:14:04', '2021-12-11 23:14:04'),
(16, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 23:19:49', '2021-12-11 23:19:49'),
(17, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-11 23:22:35', '2021-12-11 23:22:35'),
(18, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-11 23:35:16', '2021-12-11 23:35:16'),
(19, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-11 23:37:47', '2021-12-11 23:37:47'),
(20, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-12 00:11:55', '2021-12-12 00:11:55'),
(21, 1, 'product', '{\"_token\":\"5qCYrmB2msZqHB5Zs7SRzCQOXYWeA22OrZENIyT8\",\"name\":\"MUKENAH\",\"slug\":\"mukenah\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>mukenah bagus banget<\\/p>\",\"content\":\"<p><img src=\\\"http:\\/\\/localhost:8000\\/storage\\/products\\/download.jpg\\\" alt=\\\"download\\\"><br>&nbsp;<\\/p>\",\"images\":[null,\"products\\/shop-with-sign-we-are-open-52683-38687.jpg\"],\"sale_type\":\"0\",\"sku\":\"MKNH\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"23\",\"length\":\"21\",\"wide\":\"12\",\"height\":\"212\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tax_id\":\"0\",\"tag\":\"[{\\\"value\\\":\\\"mukenah\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 107, 'MUKENAH', 'primary', '2021-12-12 00:45:43', '2021-12-12 00:45:43'),
(22, 1, 'product-tag', '{\"_token\":\"5qCYrmB2msZqHB5Zs7SRzCQOXYWeA22OrZENIyT8\",\"name\":\"MUKENAH\",\"slug\":\"mukenah\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>mukenah bagus banget<\\/p>\",\"content\":\"<p><img src=\\\"http:\\/\\/localhost:8000\\/storage\\/products\\/download.jpg\\\" alt=\\\"download\\\"><br>&nbsp;<\\/p>\",\"images\":[null,\"products\\/shop-with-sign-we-are-open-52683-38687.jpg\"],\"sale_type\":\"0\",\"sku\":\"MKNH\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"23\",\"length\":\"21\",\"wide\":\"12\",\"height\":\"212\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tax_id\":\"0\",\"tag\":\"[{\\\"value\\\":\\\"mukenah\\\"}]\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 7, 'mukenah', 'info', '2021-12-12 00:45:45', '2021-12-12 00:45:45'),
(23, 1, 'product', '{\"_token\":\"5qCYrmB2msZqHB5Zs7SRzCQOXYWeA22OrZENIyT8\",\"name\":\"MUKENAH\",\"slug\":\"mukenah\",\"slug_id\":\"566\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>mukenah bagus banget<\\/p>\",\"content\":\"<p><img src=\\\"http:\\/\\/localhost:8000\\/storage\\/products\\/download.jpg\\\" alt=\\\"download\\\"><br>&nbsp;<\\/p>\",\"images\":[null,\"products\\/shop-with-sign-we-are-open-52683-38687.jpg\"],\"sale_type\":\"0\",\"sku\":\"MKNH\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"23\",\"length\":\"21\",\"wide\":\"12\",\"height\":\"212\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tax_id\":\"0\",\"tag\":\"[{\\\"value\\\":\\\"mukenah\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 107, 'MUKENAH', 'primary', '2021-12-12 00:48:54', '2021-12-12 00:48:54'),
(24, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-12 00:59:46', '2021-12-12 00:59:46'),
(25, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-12 01:04:47', '2021-12-12 01:04:47'),
(26, 1, 'product', '{\"_token\":\"FIy6iKhXTRzU03NjaC0LQjyoiOAZmwYItO7usZPW\",\"name\":\"MUKENAH\",\"slug\":\"mukenah\",\"slug_id\":\"566\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>mukenah bagus banget<\\/p>\",\"content\":\"<p><img src=\\\"http:\\/\\/localhost:8000\\/storage\\/products\\/download.jpg\\\" alt=\\\"download\\\"><br>&nbsp;<\\/p>\",\"images\":[null,\"products\\/shop-with-sign-we-are-open-52683-38687.jpg\"],\"sale_type\":\"0\",\"sku\":\"MKNH\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"23\",\"length\":\"21\",\"wide\":\"12\",\"height\":\"212\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tax_id\":\"0\",\"tag\":\"[{\\\"value\\\":\\\"mukenah\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 107, 'MUKENAH', 'primary', '2021-12-12 01:05:49', '2021-12-12 01:05:49'),
(27, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-12 01:06:35', '2021-12-12 01:06:35'),
(28, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-12 07:37:18', '2021-12-12 07:37:18'),
(29, 1, 'user', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"first_name\":\"firman\",\"last_name\":\"sugiharto\",\"username\":\"firman\",\"email\":\"firmanadmin@gmail.com\",\"password\":\"firman12345\",\"password_confirmation\":\"firman12345\",\"submit\":\"save\",\"role_id\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Firman Sugiharto', 'info', '2021-12-12 07:57:59', '2021-12-12 07:57:59'),
(30, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Dress\",\"slug\":\"dress\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"product-categories\\/p-1.png\",\"is_featured\":\"1\",\"icon\":\"ion-heart\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Dress', 'primary', '2021-12-12 08:25:35', '2021-12-12 08:25:35'),
(31, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Hijab\",\"slug\":\"hijab\",\"slug_id\":\"470\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":\"product-categories\\/p-2.png\",\"is_featured\":\"1\",\"icon\":\"ion-android-person\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Hijab', 'primary', '2021-12-12 08:27:47', '2021-12-12 08:27:47'),
(32, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Celana\",\"slug\":\"celana\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"2\",\"status\":\"published\",\"image\":\"product-categories\\/p-3.png\",\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Celana', 'primary', '2021-12-12 08:29:17', '2021-12-12 08:29:17'),
(33, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Jaket\",\"slug\":\"jaket\",\"slug_id\":\"472\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"3\",\"status\":\"published\",\"image\":\"product-categories\\/p-4.png\",\"is_featured\":\"1\",\"icon\":\"flaticon-watch\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'Jaket', 'primary', '2021-12-12 08:30:03', '2021-12-12 08:30:03'),
(34, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Jaket\",\"slug\":\"jaket\",\"slug_id\":\"472\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"3\",\"status\":\"published\",\"image\":\"product-categories\\/p-4.png\",\"is_featured\":\"1\",\"icon\":\"linearicons-clubs\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'Jaket', 'primary', '2021-12-12 08:30:53', '2021-12-12 08:30:53'),
(35, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Sweater\",\"slug\":\"sweater\",\"slug_id\":\"473\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"4\",\"status\":\"published\",\"image\":\"product-categories\\/p-5.png\",\"is_featured\":\"1\",\"icon\":\"flaticon-console\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'Sweater', 'primary', '2021-12-12 08:31:54', '2021-12-12 08:31:54'),
(36, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Sweater\",\"slug\":\"sweater\",\"slug_id\":\"473\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"4\",\"status\":\"published\",\"image\":\"product-categories\\/p-5.png\",\"is_featured\":\"1\",\"icon\":\"linearicons-cactus\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'Sweater', 'primary', '2021-12-12 08:32:29', '2021-12-12 08:32:29'),
(37, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Baju\",\"slug\":\"baju\",\"slug_id\":\"474\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"5\",\"status\":\"published\",\"image\":\"product-categories\\/p-6.png\",\"is_featured\":\"1\",\"icon\":\"ion-android-home\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 6, 'Baju', 'primary', '2021-12-12 08:33:31', '2021-12-12 08:33:31'),
(38, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Aksesoris Hijab\",\"slug\":\"aksesoris-hijab\",\"slug_id\":\"475\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"6\",\"status\":\"published\",\"image\":\"product-categories\\/p-7.png\",\"is_featured\":\"1\",\"icon\":\"ion-android-bulb\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 7, 'Aksesoris Hijab', 'primary', '2021-12-12 08:35:12', '2021-12-12 08:35:12'),
(39, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Rok\",\"slug\":\"rok\",\"slug_id\":\"476\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"7\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":\"ion-bag\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 8, 'Rok', 'primary', '2021-12-12 08:36:53', '2021-12-12 08:36:53'),
(40, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Bawahan\",\"slug\":\"bawahan\",\"slug_id\":\"478\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"9\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":\"ion-arrow-down-a\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 10, 'Bawahan', 'primary', '2021-12-12 08:38:00', '2021-12-12 08:38:00'),
(41, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Menswear\",\"slug\":\"menswear\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"product-categories\\/p-1.png\",\"is_featured\":\"1\",\"icon\":\"ion-heart\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Menswear', 'primary', '2021-12-12 08:45:33', '2021-12-12 08:45:33'),
(42, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Dress\",\"slug\":\"dress\",\"slug_id\":\"479\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"10\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":\"ion-android-favorite-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 11, 'Dress', 'primary', '2021-12-12 08:47:02', '2021-12-12 08:47:02'),
(43, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 12, 'Printer', 'danger', '2021-12-12 08:47:26', '2021-12-12 08:47:26'),
(44, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 13, 'Computer', 'danger', '2021-12-12 08:47:41', '2021-12-12 08:47:41'),
(45, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 14, 'Fax Machine', 'danger', '2021-12-12 08:47:54', '2021-12-12 08:47:54'),
(46, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 15, 'Mouse', 'danger', '2021-12-12 08:48:08', '2021-12-12 08:48:08'),
(47, 1, 'flash-sale', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Winter Sale 3', 'danger', '2021-12-12 09:08:00', '2021-12-12 09:08:00'),
(48, 1, 'flash-sale', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Winter Sale 2', 'danger', '2021-12-12 09:08:08', '2021-12-12 09:08:08'),
(49, 1, 'flash-sale', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Winter Sale 1', 'danger', '2021-12-12 09:08:15', '2021-12-12 09:08:15'),
(50, 1, 'product-tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Electronic', 'danger', '2021-12-12 09:09:08', '2021-12-12 09:09:08'),
(51, 1, 'product-tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Mobile', 'danger', '2021-12-12 09:09:24', '2021-12-12 09:09:24'),
(52, 1, 'product-tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 6, 'IT', 'danger', '2021-12-12 09:09:48', '2021-12-12 09:09:48'),
(53, 1, 'product-tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'Office', 'danger', '2021-12-12 09:09:56', '2021-12-12 09:09:56'),
(54, 1, 'product-tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Iphone', 'danger', '2021-12-12 09:10:04', '2021-12-12 09:10:04'),
(55, 1, 'product-tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'Printer', 'danger', '2021-12-12 09:10:11', '2021-12-12 09:10:11'),
(56, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Jaket\",\"slug\":\"jaket-1\",\"slug_id\":\"484\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"1\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 16, 'Jaket', 'primary', '2021-12-12 10:24:43', '2021-12-12 10:24:43'),
(57, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 17, 'Suscipit et maxime in.', 'danger', '2021-12-12 10:25:12', '2021-12-12 10:25:12'),
(58, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 18, 'Sed sit ipsa saepe quia.', 'danger', '2021-12-12 10:25:25', '2021-12-12 10:25:25'),
(59, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 19, 'Eos est aut cum qui.', 'danger', '2021-12-12 10:25:39', '2021-12-12 10:25:39'),
(60, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 20, 'Rem vel sit ut autem.', 'danger', '2021-12-12 10:25:52', '2021-12-12 10:25:52'),
(61, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 16, 'Jaket', 'danger', '2021-12-12 10:26:08', '2021-12-12 10:26:08'),
(62, 1, 'product-category', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Menswear\",\"slug\":\"menswear\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"product-categories\\/p-1.png\",\"is_featured\":\"1\",\"icon\":\"ion-ios-person-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Menswear', 'primary', '2021-12-12 10:27:10', '2021-12-12 10:27:10'),
(63, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Forte Corduroy Jacket Maroon\",\"slug\":\"forte-corduroy-jacket-maroon\",\"slug_id\":\"566\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. <\\/span><i>Cuttingloose<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan <\\/span><i>drop shoulder<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">, dengan hidden <\\/span><i>snap button<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.<\\/span><\\/p><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Material:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><i>100% Premium Corduroy<\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.<\\/span><\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Info:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">2. On model menggunakan size S (Wanita), dan size L (Pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">3. Silakan ukur sesuai detail size yang tertera<\\/span><\\/p>\",\"images\":[null,\"products\\/forte-corduroy-jacket-men-maroon-2-1634550458703-resized1024.jpg\"],\"sale_type\":\"0\",\"sku\":\"JKT\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":null,\"wide\":null,\"height\":\"177\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"3\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 107, 'Forte Corduroy Jacket Maroon', 'primary', '2021-12-12 10:42:17', '2021-12-12 10:42:17'),
(64, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"HiForte Corduroy Jacket Brown\",\"slug\":\"hiforte-corduroy-jacket-brown\",\"slug_id\":\"565\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. <\\/span><i>Cuttingloose<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan <\\/span><i>drop shoulder<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">, dengan hidden <\\/span><i>snap button<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.<\\/span><\\/p><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Material:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><i>100% Premium Corduroy<\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.<\\/span><\\/p><p><br>&nbsp;<\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Info:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">2. On model menggunakan size S (Wanita), dan size L (Pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">3. Silakan ukur sesuai detail size yang tertera<\\/span><\\/p>\",\"images\":[null,\"products\\/1-4.jpg\"],\"sale_type\":\"0\",\"sku\":\"JKT0\",\"price\":\"359000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"23\",\"length\":null,\"wide\":null,\"height\":\"177\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 106, 'HiForte Corduroy Jacket Brown', 'primary', '2021-12-12 11:52:43', '2021-12-12 11:52:43'),
(65, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 104, 'Samsung Smart TV', 'danger', '2021-12-12 11:53:36', '2021-12-12 11:53:36'),
(66, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 105, 'Samsung Smart TV', 'danger', '2021-12-12 11:53:37', '2021-12-12 11:53:37'),
(67, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 31, 'Samsung Smart TV', 'danger', '2021-12-12 11:53:37', '2021-12-12 11:53:37'),
(68, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 32, 'Smart Home Speaker', 'danger', '2021-12-12 11:58:53', '2021-12-12 11:58:53'),
(69, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 32, 'Smart Home Speaker', 'danger', '2021-12-12 11:58:54', '2021-12-12 11:58:54'),
(70, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 33, 'Smart Home Speaker', 'danger', '2021-12-12 11:59:02', '2021-12-12 11:59:02'),
(71, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 33, 'Smart Home Speaker', 'danger', '2021-12-12 11:59:02', '2021-12-12 11:59:02'),
(72, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Smart Home Speaker', 'danger', '2021-12-12 11:59:46', '2021-12-12 11:59:46');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(73, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Ritardando T-shirt Maroon\",\"slug\":null,\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Unisex T-Shirt dengan panjang lengan yang jatuh di atas siku, <\\/span><i>cuttingloose<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan <\\/span><i>drop shoulder<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">, label siluet bunga mawar di bagian sisi kiri bawah. Menggunakan material <\\/span><i>Cotton Bamboo<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> yang cocok dikenakan sebagai daily wear.<\\/span><\\/p><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Material:&nbsp;<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><i>Cotton Bamboo<\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Serat lebih sejuk, lembut, tidak terlalu tipis dan tebal, nyaman.<\\/span><\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Info:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">1. Tinggi badan model 177 cm (wanita) dan 180 cm (pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">2. On model menggunakan size S (Wanita) dan size M (Pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">3. Silakan ukur sesuai detail ukuran yang tertera<\\/span><\\/p>\",\"images\":[null,\"products\\/2-4.jpg\"],\"sale_type\":\"0\",\"sku\":\"MARN1\",\"price\":\"189000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"-170200\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"177\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 108, 'Ritardando T-shirt Maroon', 'primary', '2021-12-12 12:04:16', '2021-12-12 12:04:16'),
(74, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 102, 'Smart Televisions', 'danger', '2021-12-12 12:09:02', '2021-12-12 12:09:02'),
(75, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 103, 'Smart Televisions', 'danger', '2021-12-12 12:09:02', '2021-12-12 12:09:02'),
(76, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 30, 'Smart Televisions', 'danger', '2021-12-12 12:09:03', '2021-12-12 12:09:03'),
(77, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 99, 'Audio Equipment', 'danger', '2021-12-12 12:09:15', '2021-12-12 12:09:15'),
(78, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 100, 'Audio Equipment', 'danger', '2021-12-12 12:09:15', '2021-12-12 12:09:15'),
(79, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 101, 'Audio Equipment', 'danger', '2021-12-12 12:09:15', '2021-12-12 12:09:15'),
(80, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 29, 'Audio Equipment', 'danger', '2021-12-12 12:09:16', '2021-12-12 12:09:16'),
(81, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 96, 'Red & Black Headphone', 'danger', '2021-12-12 12:09:30', '2021-12-12 12:09:30'),
(82, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 97, 'Red & Black Headphone', 'danger', '2021-12-12 12:09:30', '2021-12-12 12:09:30'),
(83, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 98, 'Red & Black Headphone', 'danger', '2021-12-12 12:09:31', '2021-12-12 12:09:31'),
(84, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 28, 'Red & Black Headphone', 'danger', '2021-12-12 12:09:31', '2021-12-12 12:09:31'),
(85, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 93, 'Beat Headphone', 'danger', '2021-12-12 12:09:53', '2021-12-12 12:09:53'),
(86, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 94, 'Beat Headphone', 'danger', '2021-12-12 12:09:53', '2021-12-12 12:09:53'),
(87, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 95, 'Beat Headphone', 'danger', '2021-12-12 12:09:54', '2021-12-12 12:09:54'),
(88, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 27, 'Beat Headphone', 'danger', '2021-12-12 12:09:54', '2021-12-12 12:09:54'),
(89, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 85, 'Gaming Keyboard', 'danger', '2021-12-12 12:10:15', '2021-12-12 12:10:15'),
(90, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 86, 'Gaming Keyboard', 'danger', '2021-12-12 12:10:15', '2021-12-12 12:10:15'),
(91, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 24, 'Gaming Keyboard', 'danger', '2021-12-12 12:10:16', '2021-12-12 12:10:16'),
(92, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 90, 'Smart Watches', 'danger', '2021-12-12 12:10:32', '2021-12-12 12:10:32'),
(93, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 91, 'Smart Watches', 'danger', '2021-12-12 12:10:33', '2021-12-12 12:10:33'),
(94, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 92, 'Smart Watches', 'danger', '2021-12-12 12:10:33', '2021-12-12 12:10:33'),
(95, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 26, 'Smart Watches', 'danger', '2021-12-12 12:10:33', '2021-12-12 12:10:33'),
(96, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 82, 'Phillips Mouse', 'danger', '2021-12-12 12:10:43', '2021-12-12 12:10:43'),
(97, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 83, 'Phillips Mouse', 'danger', '2021-12-12 12:10:44', '2021-12-12 12:10:44'),
(98, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 84, 'Phillips Mouse', 'danger', '2021-12-12 12:10:44', '2021-12-12 12:10:44'),
(99, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 23, 'Phillips Mouse', 'danger', '2021-12-12 12:10:45', '2021-12-12 12:10:45'),
(100, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 80, 'Black Glasses', 'danger', '2021-12-12 12:10:55', '2021-12-12 12:10:55'),
(101, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 81, 'Black Glasses', 'danger', '2021-12-12 12:10:55', '2021-12-12 12:10:55'),
(102, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 22, 'Black Glasses', 'danger', '2021-12-12 12:10:56', '2021-12-12 12:10:56'),
(103, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 77, 'Historic Alarm Clock', 'danger', '2021-12-12 12:11:05', '2021-12-12 12:11:05'),
(104, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 78, 'Historic Alarm Clock', 'danger', '2021-12-12 12:11:06', '2021-12-12 12:11:06'),
(105, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 79, 'Historic Alarm Clock', 'danger', '2021-12-12 12:11:06', '2021-12-12 12:11:06'),
(106, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 21, 'Historic Alarm Clock', 'danger', '2021-12-12 12:11:07', '2021-12-12 12:11:07'),
(107, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 76, 'Macbook Pro 2015 13 inch', 'danger', '2021-12-12 12:11:16', '2021-12-12 12:11:16'),
(108, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 20, 'Macbook Pro 2015 13 inch', 'danger', '2021-12-12 12:11:17', '2021-12-12 12:11:17'),
(109, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 66, 'Hand playstation', 'danger', '2021-12-12 12:11:32', '2021-12-12 12:11:32'),
(110, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 67, 'Hand playstation', 'danger', '2021-12-12 12:11:32', '2021-12-12 12:11:32'),
(111, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 68, 'Hand playstation', 'danger', '2021-12-12 12:11:33', '2021-12-12 12:11:33'),
(112, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 15, 'Hand playstation', 'danger', '2021-12-12 12:11:34', '2021-12-12 12:11:34'),
(113, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 87, 'Dual Camera 20MP', 'danger', '2021-12-12 12:11:56', '2021-12-12 12:11:56'),
(114, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 88, 'Dual Camera 20MP', 'danger', '2021-12-12 12:11:56', '2021-12-12 12:11:56'),
(115, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 89, 'Dual Camera 20MP', 'danger', '2021-12-12 12:11:56', '2021-12-12 12:11:56'),
(116, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 25, 'Dual Camera 20MP', 'danger', '2021-12-12 12:11:57', '2021-12-12 12:11:57'),
(117, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 59, 'Macbook Pro 13 inch', 'danger', '2021-12-12 12:12:15', '2021-12-12 12:12:15'),
(118, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 60, 'Macbook Pro 13 inch', 'danger', '2021-12-12 12:12:16', '2021-12-12 12:12:16'),
(119, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 61, 'Macbook Pro 13 inch', 'danger', '2021-12-12 12:12:16', '2021-12-12 12:12:16'),
(120, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 62, 'Macbook Pro 13 inch', 'danger', '2021-12-12 12:12:16', '2021-12-12 12:12:16'),
(121, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 12, 'Macbook Pro 13 inch', 'danger', '2021-12-12 12:12:17', '2021-12-12 12:12:17'),
(122, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 57, 'Apple Watch Serial 7', 'danger', '2021-12-12 12:12:41', '2021-12-12 12:12:41'),
(123, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 58, 'Apple Watch Serial 7', 'danger', '2021-12-12 12:12:42', '2021-12-12 12:12:42'),
(124, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 11, 'Apple Watch Serial 7', 'danger', '2021-12-12 12:12:42', '2021-12-12 12:12:42'),
(125, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 74, 'Leather Watch Band Serial 3', 'danger', '2021-12-12 12:12:53', '2021-12-12 12:12:53'),
(126, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 75, 'Leather Watch Band Serial 3', 'danger', '2021-12-12 12:12:54', '2021-12-12 12:12:54'),
(127, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 19, 'Leather Watch Band Serial 3', 'danger', '2021-12-12 12:12:54', '2021-12-12 12:12:54'),
(128, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 71, 'Black Smart Watches', 'danger', '2021-12-12 12:13:04', '2021-12-12 12:13:04'),
(129, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 72, 'Black Smart Watches', 'danger', '2021-12-12 12:13:04', '2021-12-12 12:13:04'),
(130, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 73, 'Black Smart Watches', 'danger', '2021-12-12 12:13:04', '2021-12-12 12:13:04'),
(131, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 18, 'Black Smart Watches', 'danger', '2021-12-12 12:13:04', '2021-12-12 12:13:04'),
(132, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 70, 'Cool Smart Watches', 'danger', '2021-12-12 12:17:22', '2021-12-12 12:17:22'),
(133, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 17, 'Cool Smart Watches', 'danger', '2021-12-12 12:17:23', '2021-12-12 12:17:23'),
(134, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 69, 'Apple Airpods Serial 3', 'danger', '2021-12-12 12:17:32', '2021-12-12 12:17:32'),
(135, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 16, 'Apple Airpods Serial 3', 'danger', '2021-12-12 12:17:33', '2021-12-12 12:17:33'),
(136, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 64, 'MacSafe 80W', 'danger', '2021-12-12 12:17:45', '2021-12-12 12:17:45'),
(137, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 65, 'MacSafe 80W', 'danger', '2021-12-12 12:17:45', '2021-12-12 12:17:45'),
(138, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 14, 'MacSafe 80W', 'danger', '2021-12-12 12:17:46', '2021-12-12 12:17:46'),
(139, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 63, 'Apple Keyboard', 'danger', '2021-12-12 12:17:57', '2021-12-12 12:17:57'),
(140, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 13, 'Apple Keyboard', 'danger', '2021-12-12 12:17:58', '2021-12-12 12:17:58'),
(141, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 56, 'Macbook Air 12 inch', 'danger', '2021-12-12 12:18:10', '2021-12-12 12:18:10'),
(142, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 10, 'Macbook Air 12 inch', 'danger', '2021-12-12 12:18:11', '2021-12-12 12:18:11'),
(143, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 52, 'Macbook Pro 2015', 'danger', '2021-12-12 12:19:35', '2021-12-12 12:19:35'),
(144, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 53, 'Macbook Pro 2015', 'danger', '2021-12-12 12:19:35', '2021-12-12 12:19:35'),
(145, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 54, 'Macbook Pro 2015', 'danger', '2021-12-12 12:19:35', '2021-12-12 12:19:35'),
(146, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 55, 'Macbook Pro 2015', 'danger', '2021-12-12 12:19:36', '2021-12-12 12:19:36'),
(147, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 9, 'Macbook Pro 2015', 'danger', '2021-12-12 12:19:36', '2021-12-12 12:19:36'),
(148, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 50, 'Apple iPhone 13 Plus', 'danger', '2021-12-12 12:19:46', '2021-12-12 12:19:46'),
(149, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 51, 'Apple iPhone 13 Plus', 'danger', '2021-12-12 12:19:46', '2021-12-12 12:19:46'),
(150, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 8, 'Apple iPhone 13 Plus', 'danger', '2021-12-12 12:19:47', '2021-12-12 12:19:47'),
(151, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 47, 'Leather Watch Band', 'danger', '2021-12-12 12:19:58', '2021-12-12 12:19:58'),
(152, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 48, 'Leather Watch Band', 'danger', '2021-12-12 12:19:59', '2021-12-12 12:19:59'),
(153, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 49, 'Leather Watch Band', 'danger', '2021-12-12 12:19:59', '2021-12-12 12:19:59'),
(154, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 7, 'Leather Watch Band', 'danger', '2021-12-12 12:20:01', '2021-12-12 12:20:01'),
(155, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 44, 'Camera Samsung SS-24', 'danger', '2021-12-12 12:20:55', '2021-12-12 12:20:55'),
(156, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 45, 'Camera Samsung SS-24', 'danger', '2021-12-12 12:20:56', '2021-12-12 12:20:56'),
(157, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 46, 'Camera Samsung SS-24', 'danger', '2021-12-12 12:20:56', '2021-12-12 12:20:56'),
(158, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 6, 'Camera Samsung SS-24', 'danger', '2021-12-12 12:20:57', '2021-12-12 12:20:57'),
(159, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 42, 'Camera Hikvision HK-35VS8', 'danger', '2021-12-12 12:21:15', '2021-12-12 12:21:15'),
(160, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 43, 'Camera Hikvision HK-35VS8', 'danger', '2021-12-12 12:21:16', '2021-12-12 12:21:16'),
(161, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'Camera Hikvision HK-35VS8', 'danger', '2021-12-12 12:21:17', '2021-12-12 12:21:17'),
(162, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 39, 'Chikie - Bluetooth Speaker', 'danger', '2021-12-12 12:21:41', '2021-12-12 12:21:41'),
(163, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 40, 'Chikie - Bluetooth Speaker', 'danger', '2021-12-12 12:21:41', '2021-12-12 12:21:41'),
(164, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 41, 'Chikie - Bluetooth Speaker', 'danger', '2021-12-12 12:21:41', '2021-12-12 12:21:41'),
(165, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'Chikie - Bluetooth Speaker', 'danger', '2021-12-12 12:21:42', '2021-12-12 12:21:42'),
(166, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 36, 'Boxed - Bluetooth Headphone', 'danger', '2021-12-12 12:21:52', '2021-12-12 12:21:52'),
(167, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 37, 'Boxed - Bluetooth Headphone', 'danger', '2021-12-12 12:21:53', '2021-12-12 12:21:53'),
(168, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 38, 'Boxed - Bluetooth Headphone', 'danger', '2021-12-12 12:21:54', '2021-12-12 12:21:54'),
(169, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Boxed - Bluetooth Headphone', 'danger', '2021-12-12 12:21:55', '2021-12-12 12:21:55'),
(170, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 34, 'Headphone Ultra Bass', 'danger', '2021-12-12 12:22:07', '2021-12-12 12:22:07'),
(171, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 35, 'Headphone Ultra Bass', 'danger', '2021-12-12 12:22:07', '2021-12-12 12:22:07'),
(172, 1, 'product', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Headphone Ultra Bass', 'danger', '2021-12-12 12:22:08', '2021-12-12 12:22:08'),
(173, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Forte Corduroy Jacket Cream\",\"slug\":\"forte-corduroy-jacket-cream\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. <\\/span><i>Cuttingloose<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan <\\/span><i>drop shoulder<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">, dengan hidden <\\/span><i>snap button<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\"> dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.<\\/span><\\/p><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Material:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><i>100% Premium Corduroy<\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.<\\/span><\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Info:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">2. On model menggunakan size S (Wanita), dan size L (Pria)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">3. Silakan ukur sesuai detail size yang tertera<\\/span><\\/p>\",\"images\":[null,\"products\\/3-4.jpg\"],\"sale_type\":\"0\",\"sku\":\"JKTC\",\"price\":\"359000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"-500625\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"177\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 109, 'Forte Corduroy Jacket Cream', 'primary', '2021-12-12 12:49:03', '2021-12-12 12:49:03'),
(174, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Argyle Knit Vest Chestnut\",\"slug\":\"argyle-knit-vest-chestnut\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">Argyle Knit Vest adalah <\\/span><i>sleeveless <\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">vest bermotif Argyle atau wajik dengan kombinasi 4 warna. Hadir dengan <\\/span><i>boxy cutting<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">, yaitu <\\/span><i>drop shoulder<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\"> pada bagian bahu dan <\\/span><i>loose<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\"> di badan. Bagian lehernya berbentuk V atau <\\/span><i>V-neck<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">. Materialnya lebih kokoh dan tebal dibandingkan Knit Vest sebelumnya. Menjadikan look kamu terlihat lebih <\\/span><i>casual<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">.<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Material:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><i><strong>Premium Cotton Knit<\\/strong><\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan<\\/span><\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Info:<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">1. Harap ukur sesuai detail size yang sudah diberikan<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">2. Tinggi badan model wanita 163 cm dan model pria 185 cm<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">3. On model wanita menggunakan size M dan model pria menggunakan size L<\\/span><\\/p>\",\"images\":[null,\"products\\/4-4.JPG\"],\"sale_type\":\"0\",\"sku\":\"Chestnut\",\"price\":\"249000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"300\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"163\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 110, 'Argyle Knit Vest Chestnut', 'primary', '2021-12-12 13:01:39', '2021-12-12 13:01:39'),
(175, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Corduroy Shacket Hickory\",\"slug\":\"corduroy-shacket-hickory\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">Corduroy Shacket atau <\\/span><i>shirt jacket<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\"> yang berarti kemeja jaket dari material Corduroy. Menariknya, Corduroy Shacket ini dapat kamu kenakan dengan dua model, yaitu sebagai kemeja atau jaket. Corduroy Shacket ini pun <\\/span><i>unisex<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">, dapat dikenakan oleh pria maupun wanita. Hadir dengan <\\/span><i>oversized cutting<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\"> yang cocok dikenakan sebagai <\\/span><i>outer<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\"> dan memudahkan kamu untuk <\\/span><i>mix and match outfit<\\/i><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\\\">.&nbsp;<\\/span><\\/p>\",\"content\":\"<h2 style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Material:<\\/span><\\/h2><p style=\\\"margin-left:0px;\\\"><strong>Velvet Corduroy<\\/strong><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Nyaman, tidak tebal, bertekstur lembut, sedikit stretch<\\/span><\\/p>\",\"images\":[null,\"products\\/5-4.jpg\"],\"sale_type\":\"0\",\"sku\":\"Shacket\",\"price\":\"229000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"163\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 111, 'Corduroy Shacket Hickory', 'primary', '2021-12-12 13:18:26', '2021-12-12 13:18:26'),
(176, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Daily Shirt Men Ivory\",\"slug\":\"daily-shirt-men-ivory\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-size:16px;\\\">Daily Shirt kembali hadir dengan warna dan motif yang menarik. Kemeja linen untuk pria dengan kerah reguler. Dengan detail kancing bukaan pada sisi depan badan dan saku di sisi kiri. Materialnya yang ringan dan mudah menyerap keringat, sehingga dapat kamu kenakan di segala kesempatan.&nbsp;<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><strong>Material<\\/strong><\\/p><p style=\\\"margin-left:0px;\\\"><i><strong>Linen Rayon<\\/strong><\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">Mudah menyerap keringat, tidak membuat gerah, ringan dan jatuh, berasal dari serat alami, sehingga tidak ironless.<\\/span><\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><strong>Info:<\\/strong><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">1. Harap ukur sesuai detail size yang sudah diberikan<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">2. Tinggi badan model 175 cm<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;color:rgb(0,0,0)!important;\\\">3. On model menggunakan size M<\\/span><\\/p>\",\"images\":[null,\"products\\/6-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"Ivory\",\"price\":\"209000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"350\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"175\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 112, 'Daily Shirt Men Ivory', 'primary', '2021-12-12 13:27:13', '2021-12-12 13:27:13'),
(177, 1, 'product', '{\"_token\":\"03nk3nBZNLpRMORMWA9R6jFyYiai6qZVGgOlnhch\",\"name\":\"Taksa Outer Cengkih\",\"slug\":\"taksa-outer-cengkih\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><strong>Taksa Outer<\\/strong><span style=\\\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\\\">,<\\/span><i> <\\/i><span style=\\\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\\\">luaran bertekstur unik dan berbahan linen dengan <\\/span><i>loose cutting <\\/i><span style=\\\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\\\">ini, pasti akan menjadi andalan. Karena mudah dipadukan dengan apa saja. Hadir dengan detail <\\/span><i>slit<\\/i><span style=\\\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\\\"> di sisi kanan dan kiri yang<\\/span><i> simple<\\/i><span style=\\\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\\\"> dan minimalis, <\\/span><i>effortless but still look stylish<\\/i><span style=\\\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\\\">!&nbsp;<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><strong>Material:<\\/strong><\\/p><p style=\\\"margin-left:0px;\\\"><i>Cotton Linen<\\/i><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;\\\">Bertekstur unik, ringan, dan tidak membuat gerah<\\/span><\\/p><p><br>&nbsp;<\\/p>\",\"content\":\"<p style=\\\"margin-left:0px;\\\"><strong>Info:<\\/strong><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;\\\">1. Harap ukur sesuai detail <\\/span><i>size<\\/i><span style=\\\"background-color:transparent;\\\"> yang sudah diberikan<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;\\\">2. Tinggi badan model : 168 cm&nbsp;<\\/span><\\/p><p style=\\\"margin-left:0px;\\\"><span style=\\\"background-color:transparent;\\\">3. <\\/span><i>On model <\\/i><span style=\\\"background-color:transparent;\\\">menggunakan size M<\\/span><\\/p>\",\"images\":[null,\"products\\/7-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"Cengkih\",\"price\":\"199000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"-250300\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"168\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 113, 'Taksa Outer Cengkih', 'primary', '2021-12-12 13:32:19', '2021-12-12 13:32:19'),
(178, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-12 13:39:39', '2021-12-12 13:39:39'),
(179, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 2, 'Firman Sugiharto', 'info', '2021-12-13 12:01:29', '2021-12-13 12:01:29'),
(180, 2, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 2, 2, 'Firman Sugiharto', 'info', '2021-12-13 12:03:17', '2021-12-13 12:03:17'),
(181, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 2, 'Firman Sugiharto', 'info', '2021-12-13 12:03:34', '2021-12-13 12:03:34'),
(182, 2, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 2, 2, 'Firman Sugiharto', 'info', '2021-12-13 12:04:01', '2021-12-13 12:04:01'),
(183, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-13 12:04:40', '2021-12-13 12:04:40'),
(184, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Miracle Voile\",\"slug\":\"miracle-voile\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgb(38,38,38);\\\">Hijab yg tipis tapi bisa tegap di dahi, berpori ga bikin gerah, lembut banget! Yakin, ga bisa cuma punya 1\\ud83d\\ude01 100% cotton miracle arabian voile, bukan yg cepat berbulu bakalan awet sampai 5 tahun lebih pun!<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/1-5.jpg\"],\"sale_type\":\"0\",\"sku\":\"HMV\",\"price\":\"55000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"22\",\"length\":\"130\",\"wide\":\"0\",\"height\":\"130\",\"is_added_attributes\":\"1\",\"added_attributes\":{\"1\":\"2\",\"2\":\"8\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 114, 'Miracle Voile', 'primary', '2021-12-13 12:18:59', '2021-12-13 12:18:59'),
(185, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Segi empat\",\"slug\":\"segi-empat\",\"slug_id\":\"489\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"2\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 21, 'Segi empat', 'primary', '2021-12-13 12:26:53', '2021-12-13 12:26:53'),
(186, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Segi tiga\",\"slug\":\"segi-tiga\",\"slug_id\":\"490\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"2\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 22, 'Segi tiga', 'primary', '2021-12-13 12:27:35', '2021-12-13 12:27:35'),
(187, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Pashmina\",\"slug\":\"pashmina\",\"slug_id\":\"491\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"2\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 23, 'Pashmina', 'primary', '2021-12-13 12:28:20', '2021-12-13 12:28:20'),
(188, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Syiria\",\"slug\":\"syiria\",\"slug_id\":\"492\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"2\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 24, 'Syiria', 'primary', '2021-12-13 12:29:00', '2021-12-13 12:29:00'),
(189, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Bergo\",\"slug\":\"bergo\",\"slug_id\":\"493\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"2\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 25, 'Bergo', 'primary', '2021-12-13 12:29:33', '2021-12-13 12:29:33');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(190, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Miracle Voile\",\"slug\":\"miracle-voile\",\"slug_id\":\"574\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgb(38,38,38);\\\">Hijab yg tipis tapi bisa tegap di dahi, berpori ga bikin gerah, lembut banget! Yakin, ga bisa cuma punya 1\\ud83d\\ude01 100% cotton miracle arabian voile, bukan yg cepat berbulu bakalan awet sampai 5 tahun lebih pun!<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/1-5.jpg\"],\"variation_default_id\":\"75\",\"attribute_sets\":[\"1\",\"2\"],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"21\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 114, 'Miracle Voile', 'primary', '2021-12-13 12:31:23', '2021-12-13 12:31:23'),
(191, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Gazelle Square Cotton Import\",\"slug\":\"gazelle-square-cotton-import\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Bahan: katun import Lebih berisi dari Miracle Voal jadi lebih mudah tegapnyaa, bertekstur khas, ironless! Gausah repot2 setrika kalau mau buru2 pakee tuuh cotton 100% jadi udh pasti adem. Ga akan terawang kalau dijadikan segitiga udh pasti lah yaa hihi<\\/p>\",\"content\":null,\"images\":[null,\"products\\/2-5.jpg\"],\"sale_type\":\"0\",\"sku\":\"GSCI\",\"price\":\"45000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"120\",\"wide\":\"120\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"21\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 116, 'Gazelle Square Cotton Import', 'primary', '2021-12-13 12:35:57', '2021-12-13 12:35:57'),
(192, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Wateresist Voile Syamaita TAHAN AIR\",\"slug\":\"wateresist-voile-syamaita-tahan-air\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">Material voal terbaikk dilapisi lapisan hidrophobic sehingga tahan cipratan air (kalau direndam dengan air tetap menyerap namun cepat kering, tetap bisa dicuci). Kainnya juga berpori jadi tidak perlu khawatir gerah \\ud83d\\udc4c<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/3-5.jpg\"],\"sale_type\":\"0\",\"sku\":\"WVSTA\",\"price\":\"66000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"120\",\"wide\":\"120\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"21\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 117, 'Wateresist Voile Syamaita TAHAN AIR', 'primary', '2021-12-13 12:39:08', '2021-12-13 12:39:08'),
(193, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Tie-Dye Set Ruffle Syamaita baju rumah\",\"slug\":\"tie-dye-set-ruffle-syamaita-baju-rumah\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">Material: Rayon Cotton bahan dingin dan lembut<\\/span><\\/p>\",\"content\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">atasan:<\\/span><\\/p><p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">&nbsp;LD +-115cm<\\/span><\\/p><p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">&nbsp;PB +- 70cm&nbsp;<\\/span><\\/p><p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">PT +- 58cm&nbsp;<\\/span><br>&nbsp;<\\/p><p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">bawahan: lingkar pinggang allsize fit from S to XL Panjang: +-93cm<\\/span><\\/p>\",\"images\":[null,\"products\\/4-6.jpg\"],\"sale_type\":\"0\",\"sku\":\"Ruffle\",\"price\":\"175000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"0\",\"wide\":\"0\",\"height\":\"93\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"21\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 118, 'Tie-Dye Set Ruffle Syamaita baju rumah', 'primary', '2021-12-13 12:43:37', '2021-12-13 12:43:37'),
(194, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Miracle Voal (Arabian Voile) Original Syamaita\",\"slug\":\"miracle-voal-arabian-voile-original-syamaita\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">Ukuran 120cm x 120cm \\/ 130x130cm (toleransi +-2cm) Bahan miracle voal ini sangat nyaman, ringan, adem, porinya besar, tipis tapi tidak terawang (untuk warna terang akan berbayang yaa lebih aman pakai ciput lagi), tidak licin jugaa.. ahhh enakeun pokoknya hihi\\ud83d\\ude0d<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/5-5.jpg\"],\"sale_type\":\"0\",\"sku\":\"Miracle\",\"price\":\"80000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"120\",\"wide\":\"120\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"21\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 119, 'Miracle Voal (Arabian Voile) Original Syamaita', 'primary', '2021-12-13 12:50:56', '2021-12-13 12:50:56'),
(195, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Bella square premium ANTI LETOY\",\"slug\":\"bella-square-premium-anti-letoy\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">Cocok bnget buat dipakai sehari-hari untuk kerja, kuliah, hangout, nyaman banget, mudah diatur tegak di dahi &amp; ANTI LETOY ANTI LEPEK<\\/span><\\/p>\",\"content\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">Ukuran 110X110 Bahan polycotton premium (bahan memang tipis sesuai karakterisik polycotton, adem, ngga gampang letoy)<\\/span><\\/p>\",\"images\":[null,\"products\\/6-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"DSS\",\"price\":\"45000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"110\",\"wide\":\"110\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"22\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 120, 'Bella square premium ANTI LETOY', 'primary', '2021-12-13 12:55:36', '2021-12-13 12:55:36'),
(196, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"SEGITIGA BALQIS instan - Bahan Diamond\",\"slug\":\"segitiga-balqis-instan-bahan-diamond\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">- Ukuran 125*125 sesuai foto yan guys - BAHAN DIAMOND IMPORT , Dijamin bagus kak - insya Allah jahitan bagus kak.. dijamin memuaskan - Harga sangat mudah, cocok dijual lagi, peluang buat reseller - di pakai sendiri juga nyaman di kantong<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/7-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"SGTI\",\"price\":\"80000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"33\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"125\",\"wide\":\"125\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"22\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 121, 'SEGITIGA BALQIS instan - Bahan Diamond', 'primary', '2021-12-13 13:13:23', '2021-12-13 13:13:23'),
(197, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Instant Diamond Lasercut\",\"slug\":\"instant-diamond-lasercut\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">Berikut adalah keterangan produknya ~Ukuran depan dari bahu ke perut 90 cm ~Panjang belakang dari kepala ke punggung kurang lebih 92 cm ~Lingkar muka 54 cm Kelebihan kain Diamond Stretch: - Simple, mudah dipakai &amp; tidak ribet - Bisa dipakai dengan banyak variasi cantik - Harganya murah tapi tidak murahan - Menutup Dada - Finishing LASERCUT - Nyaman dipakai - Lightweight (kainnya ringan) - Lembut khas kain Diamond Stretch - Tidak menerawang - Tidak gampang kusut - Tidak licin<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/8-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"DMD\",\"price\":\"97900\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"55\",\"length\":\"120\",\"wide\":\"120\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"22\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 122, 'Instant Diamond Lasercut', 'primary', '2021-12-13 13:30:28', '2021-12-13 13:30:28'),
(198, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"HIJAB PASHMINA CERUTY BABYDOLL\",\"slug\":\"hijab-pashmina-ceruty-babydoll\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">\\u2022WAJIB MEMAKAI WARNA CADANGAN 1 atau beberapa warna ,contoh : klo kosong warna milo boleh ganti hazel \\u2022simpan nomer wa yang bisa dihubingi jika kosong di catatan pembeli , jika tidak bisa di hubungi barang kosong akan di random \\ud83d\\ude4f \\u2022jika tidak ingin di random tolong tulis , kosong = konfirmasi \\u2022bahan yg kita pakai dari 3 gudang bahan pasti akan berbeda setiap warnanya ya tapi tetep bahan babydoll yang cantik<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/9-1-1.jpg\",\"products\\/93.jpg\",\"products\\/92.jpg\"],\"sale_type\":\"0\",\"sku\":\"CB\",\"price\":\"79800\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"33\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"125\",\"wide\":\"125\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"23\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 123, 'HIJAB PASHMINA CERUTY BABYDOLL', 'primary', '2021-12-13 13:39:08', '2021-12-13 13:39:08'),
(199, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Pasmina Crinkle Polos\",\"slug\":\"pasmina-crinkle-polos\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">\\u2022 Bahan Katun Voal Krepe \\u2022 Enak Di Pakai Dan Gampang Di Bentuk \\u2022 Ukuran Lebih Besar Dan Panjang Dari Pasmina Lainya 185x90cm \\u2022 Untuk Produk Ini Kami Mempunyai 60warna Lainnya Jika Di Etalase Kosong Silahkan Chat Admint Kami Minta Warna Yg Di Inginkan Dan \\u2022 Kami Juga Menyediakan Dalaman Ninja Tali Warna Hitam&nbsp;<\\/span><\\/p>\",\"content\":null,\"images\":[null],\"sale_type\":\"0\",\"sku\":\"CBF\",\"price\":\"67000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"12\",\"length\":\"120\",\"wide\":\"120\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"23\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 124, 'Pasmina Crinkle Polos', 'primary', '2021-12-13 13:43:56', '2021-12-13 13:43:56'),
(200, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Pasmina Crinkle Polos\",\"slug\":\"pasmina-crinkle-polos\",\"slug_id\":\"583\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\\\">\\u2022 Bahan Katun Voal Krepe \\u2022 Enak Di Pakai Dan Gampang Di Bentuk \\u2022 Ukuran Lebih Besar Dan Panjang Dari Pasmina Lainya 185x90cm \\u2022 Untuk Produk Ini Kami Mempunyai 60warna Lainnya Jika Di Etalase Kosong Silahkan Chat Admint Kami Minta Warna Yg Di Inginkan Dan \\u2022 Kami Juga Menyediakan Dalaman Ninja Tali Warna Hitam&nbsp;<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/101.jpg\",\"products\\/102.jpg\"],\"sale_type\":\"0\",\"sku\":\"CBF\",\"price\":\"67000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"12\",\"length\":\"120\",\"wide\":\"120\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"2\",\"23\"],\"brand_id\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 124, 'Pasmina Crinkle Polos', 'primary', '2021-12-13 13:46:54', '2021-12-13 13:46:54'),
(201, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Aksesoris Hijab\",\"slug\":\"aksesoris-hijab\",\"slug_id\":\"475\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"6\",\"status\":\"published\",\"image\":\"products\\/11-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-android-bulb\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 7, 'Aksesoris Hijab', 'primary', '2021-12-13 14:42:49', '2021-12-13 14:42:49'),
(202, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Baju\",\"slug\":\"baju\",\"slug_id\":\"474\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"5\",\"status\":\"published\",\"image\":\"products\\/12-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-android-home\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 6, 'Baju', 'primary', '2021-12-13 14:44:26', '2021-12-13 14:44:26'),
(203, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Menswear\",\"slug\":\"menswear\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"products\\/6-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-ios-person-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Menswear', 'primary', '2021-12-13 14:45:01', '2021-12-13 14:45:01'),
(204, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Hijab\",\"slug\":\"hijab\",\"slug_id\":\"470\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":\"products\\/9-1-1.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-android-person\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Hijab', 'primary', '2021-12-13 14:46:44', '2021-12-13 14:46:44'),
(205, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Jaket\",\"slug\":\"jaket\",\"slug_id\":\"472\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"3\",\"status\":\"published\",\"image\":\"products\\/5-4.jpg\",\"is_featured\":\"1\",\"icon\":\"linearicons-clubs\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'Jaket', 'primary', '2021-12-13 14:48:41', '2021-12-13 14:48:41'),
(206, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Sweater\",\"slug\":\"sweater\",\"slug_id\":\"473\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"4\",\"status\":\"published\",\"image\":\"products\\/4-4.JPG\",\"is_featured\":\"1\",\"icon\":\"linearicons-cactus\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'Sweater', 'primary', '2021-12-13 14:50:49', '2021-12-13 14:50:49'),
(207, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Celana\",\"slug\":\"celana\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"2\",\"status\":\"published\",\"image\":\"products\\/8-3.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Celana', 'primary', '2021-12-13 14:53:28', '2021-12-13 14:53:28'),
(208, 1, 'simple-slider-item', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Get up to 50% off Today Only!\",\"order\":\"1\",\"image\":\"products\\/5-5.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Woman Fashion', 'primary', '2021-12-13 15:07:52', '2021-12-13 15:07:52'),
(209, 1, 'simple-slider-item', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Get up to 50% off Today Only!\",\"order\":\"1\",\"image\":\"products\\/101.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Woman Fashion', 'primary', '2021-12-13 15:10:08', '2021-12-13 15:10:08'),
(210, 1, 'simple-slider-item', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Dapatkan diskon hingga 50% Hanya Hari Ini!\",\"order\":\"1\",\"image\":\"products\\/1-5.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Woman Fashion', 'primary', '2021-12-13 15:32:04', '2021-12-13 15:32:04'),
(211, 1, 'simple-slider-item', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Dapatkan diskon hingga 50% Hanya Hari Ini!\",\"order\":\"1\",\"image\":\"products\\/3-5.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Woman Fashion', 'primary', '2021-12-13 15:35:30', '2021-12-13 15:35:30'),
(212, 1, 'simple-slider-item', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"simple_slider_id\":\"1\",\"title\":\"Man Fashion\",\"link\":\"\\/products\",\"button_text\":\"Discover now\",\"description\":\"Diskon 50% untuk semua produk\",\"order\":\"2\",\"image\":\"products\\/forte-corduroy-jacket-men-maroon-2-1634550458703-resized1024.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Man Fashion', 'primary', '2021-12-13 15:39:47', '2021-12-13 15:39:47'),
(213, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Men Fashion\",\"slug\":\"menswear\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"products\\/6-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-ios-person-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Men Fashion', 'primary', '2021-12-13 15:43:54', '2021-12-13 15:43:54'),
(214, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Dress\",\"slug\":\"celana\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":null,\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Dress', 'primary', '2021-12-13 15:55:44', '2021-12-13 15:55:44'),
(215, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Celana\",\"slug\":\"dress\",\"slug_id\":\"479\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"10\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":\"ion-android-favorite-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 11, 'Celana', 'primary', '2021-12-13 15:56:13', '2021-12-13 15:56:13'),
(216, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 30, 'Dolores dolore quod in.', 'danger', '2021-12-13 15:58:04', '2021-12-13 15:58:04'),
(217, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 29, 'Sint aut nihil ducimus.', 'danger', '2021-12-13 15:59:04', '2021-12-13 15:59:04'),
(218, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 28, 'Dicta quia expedita ut.', 'danger', '2021-12-13 15:59:19', '2021-12-13 15:59:19'),
(219, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Arum Dress\",\"slug\":\"quia-id-sint-ad-rem\",\"slug_id\":\"494\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"3\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 26, 'Arum Dress', 'primary', '2021-12-13 16:00:04', '2021-12-13 16:00:04'),
(220, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Yoona Dress\",\"slug\":null,\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 36, 'Yoona Dress', 'info', '2021-12-13 16:00:55', '2021-12-13 16:00:55'),
(221, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Yoona Dress\",\"slug\":\"yoon\",\"slug_id\":\"495\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"3\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 27, 'Yoona Dress', 'primary', '2021-12-13 16:01:01', '2021-12-13 16:01:01'),
(222, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 36, 'Yoona Dress', 'danger', '2021-12-13 16:03:59', '2021-12-13 16:03:59'),
(223, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Men Jacket\",\"slug\":\"quis-id-veniam-qui-hic\",\"slug_id\":\"499\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"4\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 31, 'Men Jacket', 'primary', '2021-12-13 16:04:53', '2021-12-13 16:04:53'),
(224, 1, 'product-category', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Women Jacket\",\"slug\":\"cum-velit-vel-aut\",\"slug_id\":\"500\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"4\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 32, 'Women Jacket', 'primary', '2021-12-13 16:05:42', '2021-12-13 16:05:42'),
(225, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 35, 'Sed et qui sint.', 'danger', '2021-12-13 16:06:04', '2021-12-13 16:06:04'),
(226, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 34, 'Illum impedit et odio.', 'danger', '2021-12-13 16:06:19', '2021-12-13 16:06:19'),
(227, 1, 'product-category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 33, 'Expedita sit eos qui.', 'danger', '2021-12-13 16:06:55', '2021-12-13 16:06:55'),
(228, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Aurum Dress Pocket Busui Friendly\",\"slug\":\"aurum-dress-pocket-busui-friendly\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Gaun Aurum dengan Saku! - Size XS\\/S\\/M\\/L\\/XL Lingkar Dada 88\\/92\\/98\\/105\\/120 Lebar Ketiak 44\\/46\\/48\\/50\\/54 Panjang Baju 135\\/135\\/137\\/137\\/137cm Panjang Tangan 60cm \\u2757\\ufe0fTerdapat saku , Busui Friendly tersembunyi BUSUI &amp; WUDHU FRIENDLY Bahan: Barbie Crepe (adem, ringan, tidak terawang) - #dress #gamis #dressrample<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/1-6.jpeg\"],\"sale_type\":\"0\",\"sku\":\"JHJK\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"60\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"3\",\"26\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 125, 'Aurum Dress Pocket Busui Friendly', 'primary', '2021-12-13 16:15:32', '2021-12-13 16:15:32'),
(229, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Aurum Dress Pocket Busui Friendly\",\"slug\":\"aurum-dress-pocket-busui-friendly\",\"slug_id\":\"585\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Gaun Aurum dengan Saku! - Size XS\\/S\\/M\\/L\\/XL Lingkar Dada 88\\/92\\/98\\/105\\/120 Lebar Ketiak 44\\/46\\/48\\/50\\/54 Panjang Baju 135\\/135\\/137\\/137\\/137cm Panjang Tangan 60cm \\u2757\\ufe0fTerdapat saku , Busui Friendly tersembunyi BUSUI &amp; WUDHU FRIENDLY Bahan: Barbie Crepe (adem, ringan, tidak terawang) - #dress #gamis #dressrample<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/1-6.jpeg\",\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg\"],\"sale_type\":\"0\",\"sku\":\"JHJK\",\"price\":\"230000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"60\",\"wide\":\"0\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"3\",\"26\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 125, 'Aurum Dress Pocket Busui Friendly', 'primary', '2021-12-13 16:31:42', '2021-12-13 16:31:42'),
(230, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Yuna-bi Linen Cullote\",\"slug\":\"yuna-bi-linen-cullote\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":null,\"content\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Size Chart: Tersedia panjang 93cm dan 97cm Lingkar Pinggang Allsize : 56cm (min) - 110cm (max)<\\/span><\\/p>\",\"images\":[null,\"products\\/43ae3adcd9e5d6ed3540c542f7e918c9-1632457230584.jpeg\",\"products\\/da77f0f75b060af07749d0bb9540f482-1632457230059.jpeg\",\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\",\"products\\/58aefc242315169ed769312c2612363f-1632457230816.jpeg\",\"products\\/11.jpeg\"],\"sale_type\":\"0\",\"sku\":\"JJKSD\",\"price\":\"180000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"93\",\"wide\":\"97\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"10\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 126, 'Yuna-bi Linen Cullote', 'primary', '2021-12-13 16:42:09', '2021-12-13 16:42:09'),
(231, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Linen Cullote Pants Yure Kulot Celana Original Highwaist Tali Karet Pinggang\",\"slug\":\"linen-cullote-pants-yure-kulot-celana-original-highwaist-tali-karet-pinggang\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">material linen textured bangkok tipis, ringan, dan berpori. best material karena ringan untuk sehari-hari tapi kuat, tidak mudah robek, dan saat dipakai tidak terawang .<\\/span><\\/p><p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">&nbsp;Allsize fit XS to XL (bb 80kg muat) LP : Min 56cm Max 110cm (pinggang full karet) P : -+ 90cm (utk tb 158cm ke bawah) &amp; +-93 (untuk tb 163cm ke bawah) bisa dipakai di atas 163cm tp di atas mata kaki Lingkar Paha : 68cm Untuk P : Panjang Celana warna bw\\/putih terbaru memakai full furing sehingga tidak terawang<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/4b5409d70bba8e571e4d3d48dba2ffd4-1631780013224.jpeg\",\"products\\/4b8cbe862e17a0da5951c231cf98f1a1-1631780012941.jpeg\",\"products\\/f9740587-72f6-486c-bc5d-65cfdbba5a6a-1636548562497.png\",\"products\\/577c5cb6499ce94c175c6ee40c0eaeae-1631780012791.jpeg\"],\"sale_type\":\"0\",\"sku\":\"QHJJ\",\"price\":\"154000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"158\",\"wide\":\"110\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"10\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 127, 'Linen Cullote Pants Yure Kulot Celana Original Highwaist Tali Karet Pinggang', 'primary', '2021-12-13 16:49:37', '2021-12-13 16:49:37'),
(232, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"ELS Skirt\",\"slug\":\"els-skirt\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Material : Suede HQ Lembut di luar, sedikit mengembang jatuhnya jadi meskipun cuttingnya A-Line tetap terlihat megah, sedikit shiny apabila terkena cahaya&nbsp;<\\/span><br>&nbsp;<\\/p><p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">(Bisa disetrika dari dalam atau bag luar pakai steamer)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\">Size : Lingkar Pinggang : 62-86cm Panjang : +-93cm (amannya dipakai untuk 40-60kg) ada resleting di samping kiri, saku di kanan<\\/p><p style=\\\"margin-left:0px;\\\">Berat: 230g<\\/p>\",\"content\":null,\"images\":[null],\"sale_type\":\"0\",\"sku\":\"SSDD\",\"price\":\"145000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"62\",\"wide\":\"86\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"10\"],\"brand_id\":\"0\",\"product_collections\":[\"2\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 128, 'ELS Skirt', 'primary', '2021-12-13 17:11:38', '2021-12-13 17:11:38'),
(233, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"Linen Ankle Pants\",\"slug\":\"linen-ankle-pants\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Linen Ankle Pants (on Jade Green colour)<\\/span><\\/p><p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Material: Linen Angel Textured Bangkok (ringan, berpori dan bertekstur, adem)<\\/span><\\/p><p><br><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Finally bisa ngeluarin Linen serian pants! Kali ini modelnya \\u201cBaggy Pants\\u201d yaa jadi bisa dipakai untuk yg berpaha kecil maupun besar tapi ujung kaki mengecil sehingga terlihat ramping \\ud83e\\udd70<\\/span><\\/p><p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">On model tinggi badan 155cm bb 58kg dipakai di perut jadi terlihat \\u201chighwaist\\u201d yaa<\\/span><\\/p><p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Detail size: ALLSIZE bestfit from 40kg to 68kg Lingkar perut: +- 65-90cm (bagian belakang full karet) Lingkar pinggang +- 100cm Lingkar paha +- 68cm Lingkar pergelangan kaki +-37cm Panjang celana: +- 97cm (untuk tb 150an cm jadi look highwaist, untuk tb di atas 160cm jadi ankle pants yaa sedikit di atas mata kaki)<\\/span><\\/p>\",\"content\":null,\"images\":[null,\"products\\/4-8.jpeg\",\"products\\/66f4090b-f6d8-48dd-a882-6f2d50d58f50-1628352126418.jpeg\",\"products\\/99657342e35ff706d54b8ea0c746b98e-1628305448360.jpeg\"],\"sale_type\":\"0\",\"sku\":\"SAA\",\"price\":\"187999\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"280\",\"length\":\"65\",\"wide\":\"90\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"10\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 129, 'Linen Ankle Pants', 'primary', '2021-12-13 17:18:13', '2021-12-13 17:18:13'),
(234, 1, 'product', '{\"_token\":\"JJgsOmKiKiGduCd6PjesVzuf8q6Dyt6R3wupqvzd\",\"name\":\"ELS Skirt\",\"slug\":\"els-skirt\",\"slug_id\":\"588\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">Material : Suede HQ Lembut di luar, sedikit mengembang jatuhnya jadi meskipun cuttingnya A-Line tetap terlihat megah, sedikit shiny apabila terkena cahaya&nbsp;<\\/span><br>&nbsp;<\\/p><p><span style=\\\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\\\">(Bisa disetrika dari dalam atau bag luar pakai steamer)<\\/span><\\/p><p style=\\\"margin-left:0px;\\\">Size : Lingkar Pinggang : 62-86cm Panjang : +-93cm (amannya dipakai untuk 40-60kg) ada resleting di samping kiri, saku di kanan<\\/p><p style=\\\"margin-left:0px;\\\">Berat: 230g<\\/p>\",\"content\":null,\"images\":[null,\"products\\/3-6.jpeg\"],\"sale_type\":\"0\",\"sku\":\"SSDD\",\"price\":\"145000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"0\",\"length\":\"62\",\"wide\":\"86\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"10\"],\"brand_id\":\"0\",\"product_collections\":[\"2\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 128, 'ELS Skirt', 'primary', '2021-12-13 17:36:51', '2021-12-13 17:36:51'),
(235, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-13 17:40:26', '2021-12-13 17:40:26'),
(236, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 02:43:32', '2021-12-14 02:43:32'),
(237, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 05:49:27', '2021-12-14 05:49:27'),
(238, 1, 'product-category', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Dress\",\"slug\":\"celana\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg\",\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Dress', 'primary', '2021-12-14 06:00:55', '2021-12-14 06:00:55'),
(239, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Yoona Dress Pocket Busui Friendly\",\"slug\":\"yoona-dress-pocket-busui-friendly\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Gaun Yoona dengan Saku! @- @Size XS\\/S\\/M\\/L\\/XL @Lingkar Dada 88\\/92\\/98\\/105\\/120 @Lebar Ketiak 44\\/46\\/48\\/50\\/54 @Panjang Baju 135\\/135\\/137\\/137\\/137cm @Panjang Tangan 60cm @\\u2757\\ufe0fTerdapat saku , Busui Friendly tersembunyi @BUSUI &amp; WUDHU FRIENDLY @Bahan: Barbie Crepe (adem, ringan, tidak terawang)<\\/p>\",\"content\":null,\"images\":[null,\"products\\/71c69fd01c3bfe00630c6b3fbc2ec43c-1626501615252.jpeg\"],\"sale_type\":\"0\",\"sku\":\"SDD\",\"price\":\"130000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"135\",\"wide\":\"60\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"3\",\"27\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 130, 'Yoona Dress Pocket Busui Friendly', 'primary', '2021-12-14 06:07:15', '2021-12-14 06:07:15');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(240, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Staccato Denim Jacket Mid\",\"slug\":\"staccato-denim-jacket-mid\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Jaket denim yang nyaman dan stylish dengan model crop. Detail pleat pada sisi lengan atas yang unik, dengan dua saku pada bagian sisi depan, kerah regular dengan THENBLANK signature button.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>100% Cotton Denim<\\/p><p>Katun denim yang tidak kaku, tidak tipis dan tidak terlalu tebal sehingga tidak membuat terlihat lebih bervolume.<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm<\\/p><p>2. On model menggunakan size S<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/11-1.jpg\"],\"sale_type\":\"0\",\"sku\":\"SDJM\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"4\",\"32\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"3\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 131, 'Staccato Denim Jacket Mid', 'primary', '2021-12-14 06:14:51', '2021-12-14 06:14:51'),
(241, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Staccato Denim Jacket Light\",\"slug\":\"staccato-denim-jacket-light\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Jaket denim yang nyaman dan stylish dengan model crop. Detail pleat pada sisi lengan atas yang unik, dengan dua saku pada bagian sisi depan, kerah regular dengan THENBLANK signature button.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>100% Cotton Denim<\\/p><p>Katun denim yang tidak kaku, tidak tipis dan tidak terlalu tebal sehingga tidak membuat terlihat lebih bervolume.<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm<\\/p><p>2. On model menggunakan size S<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/22.jpg\",\"products\\/23.jpg\",\"products\\/12.jpg\"],\"sale_type\":\"0\",\"sku\":\"SDJM\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"4\",\"32\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 132, 'Staccato Denim Jacket Light', 'primary', '2021-12-14 06:19:39', '2021-12-14 06:19:39'),
(242, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Bomber Corduroy Jacket Hickory Regular\",\"slug\":null,\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>A new jacket is coming your way: Bomber Jacket. Hadir dalam dua ukuran, regular-sized dan oversized. Terdapat detail zipper pada bagian depan, dua saku di sisi kanan dan kiri badan, serta karet pada hemline dan pergelangan tangan. Materialnya bertekstur lembut dan sedikit stretch, perfect for your casual style!<\\/p>\",\"content\":\"<p>Material:&nbsp;<br>Velvet Corduroy<\\/p><p>Nyaman, tidak tebal, bertekstur lembut, sedikit stretch<\\/p><p>__<\\/p><p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 163 cm<\\/p><p>3. On model menggunakan size S<\\/p><p>&nbsp;<\\/p>\",\"images\":[null,\"products\\/33.jpg\",\"products\\/32.jpg\",\"products\\/34.jpg\",\"products\\/31.jpg\"],\"sale_type\":\"0\",\"sku\":\"BCJHR\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"165\",\"wide\":\"165\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"4\",\"32\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 133, 'Bomber Corduroy Jacket Hickory Regular', 'primary', '2021-12-14 06:25:29', '2021-12-14 06:25:29'),
(243, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Forte Corduroy Jacket Cream\",\"slug\":\"forte-corduroy-jacket-cream-1\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. Cuttingloose dan drop shoulder, dengan hidden snap button dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>100% Premium Corduroy<\\/p><p>Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)<\\/p><p>2. On model menggunakan size S (Wanita), dan size L (Pria)<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/42.jpg\",\"products\\/41.jpg\"],\"sale_type\":\"0\",\"sku\":\"FCJM\",\"price\":\"249000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"180\",\"wide\":\"180\",\"height\":\"160\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"4\",\"31\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 134, 'Forte Corduroy Jacket Cream', 'primary', '2021-12-14 06:33:15', '2021-12-14 06:33:15'),
(244, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Forte Corduroy Jacket Maroon\",\"slug\":\"forte-corduroy-jacket-maroon-1\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. Cuttingloose dan drop shoulder, dengan hidden snap button dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>100% Premium Corduroy<\\/p><p>Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)<\\/p><p>2. On model menggunakan size S (Wanita), dan size L (Pria)<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/forte-corduroy-jacket-men-maroon-2-1634550458703-resized1024.jpg\",\"products\\/51.jpg\",\"products\\/55.jpg\",\"products\\/53.jpg\",\"products\\/52.jpg\"],\"sale_type\":\"0\",\"sku\":\"FCJM\",\"price\":\"259000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"180\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"4\",\"31\",\"32\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"2\",\"3\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 135, 'Forte Corduroy Jacket Maroon', 'primary', '2021-12-14 06:39:43', '2021-12-14 06:39:43'),
(245, 1, 'product', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"name\":\"Forte Corduroy Jacket Brown\",\"slug\":\"forte-corduroy-jacket-brown\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. Cuttingloose dan drop shoulder, dengan hidden snap button dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>100% Premium Corduroy<\\/p><p>Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)<\\/p><p>2. On model menggunakan size S (Wanita), dan size L (Pria)<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/63.jpg\",\"products\\/62.jpg\",\"products\\/61.jpg\"],\"sale_type\":\"0\",\"sku\":\"FCJB\",\"price\":\"259999\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"21\",\"allow_checkout_when_out_of_stock\":\"1\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"180\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"4\",\"31\",\"32\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 136, 'Forte Corduroy Jacket Brown', 'primary', '2021-12-14 06:44:11', '2021-12-14 06:44:11'),
(246, 1, 'simple-slider-item', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":\"Dapatkan diskon hingga 50% Hanya Hari Ini!\",\"order\":\"1\",\"image\":\"products\\/baju-slider.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Woman Fashion', 'primary', '2021-12-14 06:52:12', '2021-12-14 06:52:12'),
(247, 1, 'simple-slider-item', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"simple_slider_id\":\"1\",\"title\":\"Man Fashion\",\"link\":\"\\/products\",\"button_text\":\"Discover now\",\"description\":\"Diskon 50% untuk semua produk\",\"order\":\"1\",\"image\":\"products\\/slider-2.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Man Fashion', 'primary', '2021-12-14 07:03:40', '2021-12-14 07:03:40'),
(248, 1, 'simple-slider-item', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":null,\"order\":\"1\",\"image\":\"products\\/baju-slider.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Woman Fashion', 'primary', '2021-12-14 07:05:31', '2021-12-14 07:05:31'),
(249, 1, 'simple-slider-item', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"simple_slider_id\":\"1\",\"title\":\"Man Fashion\",\"link\":\"\\/products\",\"button_text\":\"Discover now\",\"description\":null,\"order\":\"1\",\"image\":\"products\\/slider-2.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Man Fashion', 'primary', '2021-12-14 07:07:20', '2021-12-14 07:07:20'),
(250, 1, 'simple-slider-item', '{\"_token\":\"wmVqaUOOotkcQjkiP1OsPzN5qjefh8qi4l5Ep6iw\",\"simple_slider_id\":\"1\",\"title\":\"Summer With ISYANA\",\"link\":\"\\/products\",\"button_text\":\"Shop now\",\"description\":null,\"order\":\"1\",\"image\":\"products\\/jaket-slider.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Summer With ISYANA', 'primary', '2021-12-14 07:13:25', '2021-12-14 07:13:25'),
(251, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-14 07:16:22', '2021-12-14 07:16:22'),
(252, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 07:39:31', '2021-12-14 07:39:31'),
(253, 1, 'plugin-order', '{\"description\":\"aaaaaaaa6666\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 28, 'ID: 28', 'primary', '2021-12-14 07:47:37', '2021-12-14 07:47:37'),
(254, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-14 07:51:35', '2021-12-14 07:51:35'),
(255, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 08:14:15', '2021-12-14 08:14:15'),
(256, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-14 08:19:49', '2021-12-14 08:19:49'),
(257, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 08:28:57', '2021-12-14 08:28:57'),
(258, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Dolce Knit Top Almond\",\"slug\":\"dolce-knit-top-almond\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Atasan rajut berbahan dasar Knit. Cuttingloose fit dengan aksen puff atau balon pada sisi lengan atas, serta fit pada pergelangan tangannya. Keunikannya ada pada variasi teknik rajut yang berbeda antara badan dan lengan, menghasilkan look yang eksklusif.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Premium Cotton Knit<\\/p><p>Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan.<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm<\\/p><p>2. On model menggunakan size S<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/12-1.jpg\",\"products\\/13.jpg\",\"products\\/11-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"DKTA\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"250\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"5\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"3\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 137, 'Dolce Knit Top Almond', 'primary', '2021-12-14 08:44:54', '2021-12-14 08:44:54'),
(259, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Andante Cardigan Black\",\"slug\":\"andante-cardigan-black\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Cardigan berlengan panjang dengan kancing bungkus di bagian bukaan tengah depan. Cuttingloose-fit dan model crop, cocok dipadukan dengan bawahan yang lebih loose untuk tampilan yang seimbang. Material Knit yang halus dan lembut, menjadikan penampilanmu terlihat sweet and stylish!<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Premium Cotton Knit<\\/p><p>Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm<\\/p><p>2. On model menggunakan size S<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/23-1.jpg\",\"products\\/22-1.jpg\",\"products\\/21.jpg\"],\"sale_type\":\"0\",\"sku\":\"ACB\",\"price\":\"249999\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"270\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"5\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 138, 'Andante Cardigan Black', 'primary', '2021-12-14 08:50:20', '2021-12-14 08:50:20'),
(260, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Andante Cardigan Maroon\",\"slug\":\"andante-cardigan-maroon\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Cardigan berlengan panjang dengan kancing bungkus di bagian bukaan tengah depan. Cuttingloose-fit dan model crop, cocok dipadukan dengan bawahan yang lebih loose untuk tampilan yang seimbang. Material Knit yang halus dan lembut, menjadikan penampilanmu terlihat sweet and stylish!<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Premium Cotton Knit<\\/p><p>Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm<\\/p><p>2. On model menggunakan size S<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/33-1.jpg\",\"products\\/32-1.jpg\",\"products\\/31-1.jpg\"],\"sale_type\":\"0\",\"sku\":\"ACM\",\"price\":\"240000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"13\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"250\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"5\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"1\",\"2\",\"3\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 139, 'Andante Cardigan Maroon', 'primary', '2021-12-14 08:55:01', '2021-12-14 08:55:01'),
(261, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Basic Shirt Caramel\",\"slug\":\"basic-shirt-caramel\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton<\\/p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 171 cm<\\/p><p>3. On model menggunakan size S<\\/p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian<\\/p>\",\"images\":[null,\"products\\/13-1.jpg\",\"products\\/12-2.jpg\",\"products\\/11-4.jpg\"],\"sale_type\":\"0\",\"sku\":\"BSC\",\"price\":\"249999\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"19\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"350\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"6\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\",\"3\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 140, 'Basic Shirt Caramel', 'primary', '2021-12-14 09:01:29', '2021-12-14 09:01:29'),
(262, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Basic Shirt Brown\",\"slug\":\"basic-shirt-brown\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton<\\/p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 163 cm<\\/p><p>3. On model menggunakan size S<\\/p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian<\\/p>\",\"images\":[null,\"products\\/21-1.jpg\",\"products\\/22-2.jpg\",\"products\\/23-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"BSB\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"24\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"350\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"6\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 141, 'Basic Shirt Brown', 'primary', '2021-12-14 09:05:27', '2021-12-14 09:05:27'),
(263, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Basic Shirt Jade\",\"slug\":null,\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton<\\/p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 163 cm<\\/p><p>3. On model menggunakan size S<\\/p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian<\\/p>\",\"images\":[null,\"products\\/32-2.jpg\",\"products\\/33-2.jpg\",\"products\\/31-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"BSJ\",\"price\":\"249999\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"350\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"6\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 142, 'Basic Shirt Jade', 'primary', '2021-12-14 09:09:03', '2021-12-14 09:09:03'),
(264, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Ritardando T-shirt Broken White\",\"slug\":null,\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Unisex T-Shirt dengan panjang lengan yang jatuh di atas siku, cuttingloose dan drop shoulder, label siluet bunga mawar di bagian sisi kiri bawah. Menggunakan material Cotton Bamboo yang cocok dikenakan sebagai daily wear.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton Bamboo<\\/p><p>Serat lebih sejuk, lembut, tidak terlalu tipis dan tebal, nyaman.<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm (wanita) dan 180 cm (pria)<\\/p><p>2. On model menggunakan size S (Wanita) dan size M (Pria)<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/42-1.jpg\",\"products\\/41-1.jpg\",\"products\\/43.jpg\"],\"sale_type\":\"0\",\"sku\":\"RTBW\",\"price\":\"159999\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"200\",\"length\":\"180\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"6\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 143, 'Ritardando T-shirt Broken White', 'primary', '2021-12-14 09:14:11', '2021-12-14 09:14:11'),
(265, 1, 'product', '{\"_token\":\"omKOvtpatUj7Nv755wTs4n07yCpOUApTangsHvZt\",\"name\":\"Ritardando T-shirt Dusty Rose\",\"slug\":\"ritardando-t-shirt-dusty-rose\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Unisex T-Shirt dengan panjang lengan yang jatuh di atas siku, cuttingloose dan drop shoulder, label siluet bunga mawar di bagian sisi kiri bawah. Menggunakan material Cotton Bamboo yang cocok dikenakan sebagai daily wear.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton Bamboo<\\/p><p>Serat lebih sejuk, lembut, tidak terlalu tipis dan tebal, nyaman.<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Tinggi badan model 177 cm (wanita) dan 180 cm (pria)<\\/p><p>2. On model menggunakan size S (Wanita) dan size M (Pria)<\\/p><p>3. Silakan ukur sesuai detail size yang tertera<\\/p>\",\"images\":[null,\"products\\/53-1.jpg\",\"products\\/52-1.jpg\",\"products\\/51-1.jpg\"],\"sale_type\":\"0\",\"sku\":\"RTDS\",\"price\":\"159000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"22\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"260\",\"length\":\"180\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"6\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 144, 'Ritardando T-shirt Dusty Rose', 'primary', '2021-12-14 09:18:21', '2021-12-14 09:18:21'),
(266, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-14 09:20:23', '2021-12-14 09:20:23'),
(267, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 03:14:19', '2021-12-14 03:14:19'),
(268, 1, 'product', '{\"_token\":\"iwRXYu7QdXJPX5gMKqK9fTIwbbQzcqKCpBoUbtVS\",\"name\":\"Basic Shirt Ocean\",\"slug\":\"basic-shirt-ocean\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton<\\/p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 163 cm<\\/p><p>3. On model menggunakan size S<\\/p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian<\\/p><p>&nbsp;<\\/p>\",\"images\":[null,\"products\\/63-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"BSO\",\"price\":\"249000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"260\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"6\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 145, 'Basic Shirt Ocean', 'primary', '2021-12-14 03:30:33', '2021-12-14 03:30:33'),
(269, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-14 10:32:59', '2021-12-14 10:32:59'),
(270, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Loose Shirt Honey\",\"slug\":\"loose-shirt-honey\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Simple top that is perfect for any look! Atasan loose-cut dengan exposed &nbsp;button di bagian depan. Opening sleeves dan collar yang lebar untuk kesan casual with a twist. Terdapat slit kecil di sisi kanan juga kiri yang membuatmu nyaman dan bebas beraktivitas. Kini, Loose Shirt tersedia dari size S-L, loh!<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Rayon Cotton<\\/p><p>Katun yang lembut, nyaman, dingin dan berserat katun<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 168 cm<\\/p><p>3. On model menggunakan size M<\\/p>\",\"images\":[null,\"products\\/73.jpg\",\"products\\/72.jpg\",\"products\\/71.jpg\"],\"sale_type\":\"0\",\"sku\":\"LSH\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"14\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"250\",\"length\":\"180\",\"wide\":\"180\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"6\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 146, 'Loose Shirt Honey', 'primary', '2021-12-14 10:35:56', '2021-12-14 10:35:56'),
(271, 1, 'product-category', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Membumi\",\"slug\":\"aksesoris-hijab\",\"slug_id\":\"475\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"6\",\"status\":\"published\",\"image\":\"products\\/11-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-android-bulb\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 7, 'Membumi', 'primary', '2021-12-14 10:38:45', '2021-12-14 10:38:45'),
(272, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Genta Pants Rotika\",\"slug\":\"genta-pants-rotika\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Genta Pants, koleksi celana pertama THENBLANK untuk pria. Terdapat dua saku di sisi kanan dan kiri depan, dua saku di bagian belakang, belt loop, serta menggunakan zipper YKK sehingga tidak diragukan lagi kualitasnya. Cuttingnya regular fit yang dapat menunjang keseharianmu yang aktif. Cocok dipadukan dengan Segara Shirt ataupun Rona Shirt.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Stretch Drill<\\/p><p>Tidak tipis, tidak mudah lecek, tidak press di badan, lembut, semakin lembut walau sudah dicuci dan dikenakan berkali-kali<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model: 175 cm<\\/p><p>3. On model menggunakan size L<\\/p>\",\"images\":[null,\"products\\/11-5.jpg\",\"products\\/12-3.jpg\",\"products\\/13-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"GPR\",\"price\":\"245000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"21\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"400\",\"length\":\"175\",\"wide\":\"175\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"7\",\"11\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 147, 'Genta Pants Rotika', 'primary', '2021-12-14 10:43:57', '2021-12-14 10:43:57'),
(273, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Genta Pants Turangga\",\"slug\":\"genta-pants-turangga\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Genta Pants, koleksi celana pertama THENBLANK untuk pria. Terdapat dua saku di sisi kanan dan kiri depan, dua saku di bagian belakang, belt loop, serta menggunakan zipper YKK sehingga tidak diragukan lagi kualitasnya. Cuttingnya regular fit yang dapat menunjang keseharianmu yang aktif. Cocok dipadukan dengan Segara Shirt ataupun Rona Shirt.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Stretch Drill<\\/p><p>Tidak tipis, tidak mudah lecek, tidak press di badan, lembut, semakin lembut walau sudah dicuci dan dikenakan berkali-kali<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model: 175 cm<\\/p><p>3. On model menggunakan size L<\\/p>\",\"images\":[null,\"products\\/21-2.jpg\",\"products\\/22-3.jpg\",\"products\\/23-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"GPT\",\"price\":\"234990\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"180\",\"wide\":\"180\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"7\",\"11\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 148, 'Genta Pants Turangga', 'primary', '2021-12-14 10:47:44', '2021-12-14 10:47:44'),
(274, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Genta Pants Saliwah\",\"slug\":\"genta-pants-saliwah\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Genta Pants, koleksi celana pertama THENBLANK untuk pria. Terdapat dua saku di sisi kanan dan kiri depan, dua saku di bagian belakang, belt loop, serta menggunakan zipper YKK sehingga tidak diragukan lagi kualitasnya. Cuttingnya regular fit yang dapat menunjang keseharianmu yang aktif. Cocok dipadukan dengan Segara Shirt ataupun Rona Shirt.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Stretch Drill<\\/p><p>Tidak tipis, tidak mudah lecek, tidak press di badan, lembut, semakin lembut walau sudah dicuci dan dikenakan berkali-kali<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model: 175 cm<\\/p><p>3. On model menggunakan size L<\\/p>\",\"images\":[null,\"products\\/32-3.jpg\",\"products\\/31-3.jpg\",\"products\\/33-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"GPS\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"500\",\"length\":\"180\",\"wide\":\"180\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"7\",\"11\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 149, 'Genta Pants Saliwah', 'primary', '2021-12-14 10:50:48', '2021-12-14 10:50:48'),
(275, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Bestari Skirt Sorgum\",\"slug\":\"bestari-skirt-sorgum\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Bestari Skirt, rok dengan a-line cutting yang melebar di bagian bawah sehingga membuat nyaman untuk bergerak. Terdapat saku di sisi kanan dan kiri, serta zipper di bagian sisi kiri. Rok ini juga cocok dipakai untuk bentuk tubuh apapun dan membuat penampilan terlihat sleek dan elegan di hari yang spesial.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>No Wrinkle Cotton<\\/p><p>Dengan paduan serat katun dan polyester, sehingga jatuh secara sempurna, tidak kaku, ironless<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model : 168 cm<\\/p><p>3. On model menggunakan size M<\\/p>\",\"images\":[null,\"products\\/43-1.jpg\",\"products\\/42-2.jpg\",\"products\\/41-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"BSS\",\"price\":\"170000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"12\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"450\",\"length\":\"168\",\"wide\":\"168\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"7\",\"8\"],\"brand_id\":\"0\",\"product_collections\":[\"1\",\"2\",\"3\"],\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 150, 'Bestari Skirt Sorgum', 'primary', '2021-12-14 10:54:13', '2021-12-14 10:54:13'),
(276, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Segara Shirt Oyong\",\"slug\":\"segara-shirt-oyong\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Kemeja untuk pria berlengan panjang dengan detail french collar dan saku pada bagian depan kiri. Cutting regular fit, kancing dengan warna senada pada bagian tengah depan dan di bagian lengan untuk opening sleeve yang adjustable. Double stitch di sisi badan untuk jahitan yang lebih kuat. Varian warnanya yang basic, cocok untuk melengkapi koleksi kemeja harianmu.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>100% Cotton<\\/p><p>Made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek,<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model: 175 cm<\\/p><p>3. On model menggunakan size XL<\\/p>\",\"images\":[null,\"products\\/51-2.jpg\",\"products\\/52-2.jpg\",\"products\\/53-2.jpg\"],\"sale_type\":\"0\",\"sku\":\"SSO\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"11\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"300\",\"length\":\"175\",\"wide\":\"175\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"1\",\"6\",\"7\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 151, 'Segara Shirt Oyong', 'primary', '2021-12-14 10:57:01', '2021-12-14 10:57:01'),
(277, 1, 'product-category', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Sweater\",\"slug\":\"sweater\",\"slug_id\":\"473\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"4\",\"description\":null,\"order\":\"4\",\"status\":\"published\",\"image\":\"products\\/4-4.JPG\",\"is_featured\":\"1\",\"icon\":\"linearicons-cactus\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'Sweater', 'primary', '2021-12-14 11:03:07', '2021-12-14 11:03:07'),
(278, 1, 'product', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Basic Shirt Ocean\",\"slug\":\"basic-shirt-ocean\",\"slug_id\":\"605\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.<\\/p><p>&nbsp;<\\/p><p>Material:<\\/p><p>Cotton<\\/p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)<\\/p><p>&nbsp;<\\/p>\",\"content\":\"<p>Info:<\\/p><p>1. Harap ukur sesuai detail size yang sudah diberikan<\\/p><p>2. Tinggi badan model 163 cm<\\/p><p>3. On model menggunakan size S<\\/p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian<\\/p><p>&nbsp;<\\/p>\",\"images\":[null,\"products\\/63-3.jpg\"],\"sale_type\":\"0\",\"sku\":\"BSO\",\"price\":\"249000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"260\",\"length\":\"177\",\"wide\":\"177\",\"height\":\"0\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"1\",\"categories\":[\"6\"],\"brand_id\":\"0\",\"product_labels\":[\"1\",\"2\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 145, 'Basic Shirt Ocean', 'primary', '2021-12-14 11:12:15', '2021-12-14 11:12:15'),
(279, 1, 'product-category', '{\"_token\":\"9dWkREmSy86swISqGMZVI3yNHc8sqy7GSh6IcxSx\",\"name\":\"Men Fashion\",\"slug\":\"menswear\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"products\\/6-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-ios-person-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Men Fashion', 'primary', '2021-12-14 11:15:32', '2021-12-14 11:15:32'),
(280, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-15 07:57:10', '2021-12-15 07:57:10'),
(281, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-15 07:57:41', '2021-12-15 07:57:41');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(282, 1, 'product-category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Accessories\",\"slug\":\"accessories\",\"slug_id\":\"477\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"8\",\"status\":\"published\",\"image\":\"products\\/shop-with-sign-we-are-open-52683-38687.jpg\",\"is_featured\":\"1\",\"icon\":\"flaticon-plugins\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 9, 'Accessories', 'primary', '2021-12-15 08:14:06', '2021-12-15 08:14:06'),
(283, 1, 'menu', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Categories\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/menswear\\\",\\\"id\\\":19,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Television\\\",\\\"referenceId\\\":1,\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/hijab\\\",\\\"id\\\":20,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Mobile\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/celana\\\",\\\"id\\\":21,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Headphone\\\",\\\"referenceId\\\":3,\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/jaket\\\",\\\"id\\\":22,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Watches\\\",\\\"referenceId\\\":4,\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/sweater\\\",\\\"id\\\":23,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Game\\\",\\\"referenceId\\\":5,\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"menu_id\":\"10\",\"target\":\"_self\",\"title\":\"Game\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Categories', 'primary', '2021-12-15 08:24:02', '2021-12-15 08:24:02'),
(284, 1, 'menu', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Categories\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"19\\\",\\\"title\\\":\\\"Television\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/menswear\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"20\\\",\\\"title\\\":\\\"Mobile\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/hijab\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"21\\\",\\\"title\\\":\\\"Headphone\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/celana\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"22\\\",\\\"title\\\":\\\"Watches\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/jaket\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"id\\\":\\\"23\\\",\\\"title\\\":\\\"Game\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/sweater\\\",\\\"class\\\":\\\"\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Accessories\\\",\\\"referenceId\\\":\\\"9\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Accessories\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Categories', 'primary', '2021-12-15 08:27:40', '2021-12-15 08:27:40'),
(285, 1, 'menu', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Categories\",\"deleted_nodes\":\"19 20 21 22 23\",\"menu_nodes\":\"[{\\\"id\\\":\\\"28\\\",\\\"title\\\":\\\"Accessories\\\",\\\"referenceId\\\":\\\"9\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"customUrl\\\":\\\"\\/product-categories\\/accessories\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Baju\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Bawahan\\\",\\\"referenceId\\\":\\\"10\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Celana\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Dress\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Hijab\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Jaket\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Membumi\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":7,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Men Fashion\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":8,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Rok\\\",\\\"referenceId\\\":\\\"8\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Ecommerce\\\\\\\\Models\\\\\\\\ProductCategory\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":9,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Rok\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Categories', 'primary', '2021-12-15 08:31:42', '2021-12-15 08:31:42'),
(286, 1, 'product-category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Men Fashion\",\"slug\":\"men-fashion\",\"slug_id\":\"469\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"0\",\"status\":\"published\",\"image\":\"products\\/6-2.jpg\",\"is_featured\":\"1\",\"icon\":\"ion-ios-person-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Men Fashion', 'primary', '2021-12-15 08:37:47', '2021-12-15 08:37:47'),
(287, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"general\\/b-1.jpg\\\" url1=\\\"\\/product-categories\\/baju\\\" image2=\\\"general\\/b-2.jpg\\\" url2=\\\"\\/product-categories\\/camera\\\" image3=\\\"general\\/b-3.jpg\\\" url3=\\\"\\/product-categories\\/watches\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 08:49:38', '2021-12-15 08:49:38'),
(288, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"general\\/b-1.jpg\\\" u[banners image1=\\\"products\\/baju-slider.jpg\\\" url1=\\\"product-categories\\/baju\\\" image2=\\\"products\\/5-5.jpg\\\" url2=\\\"product-categories\\/hijab\\\" image3=\\\"products\\/41.jpg\\\" url3=\\\"product-categories\\/men-fashion\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 09:01:44', '2021-12-15 09:01:44'),
(289, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"general\\/b-1.jpg\\\" u[banners image1=\\\"products\\/baju-slider.jpg\\\" url1=\\\"product-categories\\/baju\\\" image2=\\\"products\\/5-5.jpg\\\" url2=\\\"product-categories\\/hijab\\\" image3=\\\"products\\/41.jpg\\\" url3=\\\"product-categories\\/men-fashion\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 09:27:57', '2021-12-15 09:27:57'),
(290, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/22.jpg\\\" url1=\\\"product-categories\\/jaket\\\" image2=\\\"products\\/99657342e35ff706d54b8ea0c746b98e-1628305448360.jpeg\\\" url2=\\\"product-categories\\/hijab\\\" image3=\\\"products\\/32-3.jpg\\\" url3=\\\"product-categories\\/men-fashion\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 09:34:57', '2021-12-15 09:34:57'),
(291, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\\\" url1=\\\"product-categories\\/dress\\\" image2=\\\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\\\" url2=\\\"product-categories\\/celana\\\" image3=\\\"products\\/6-3.jpg\\\" url3=\\\"product-categories\\/hijab\\\"][\\/banners][simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 09:43:49', '2021-12-15 09:43:49'),
(292, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\\\" url1=\\\"product-categories\\/dress\\\" image2=\\\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\\\" url2=\\\"product-categories\\/celana\\\" image3=\\\"products\\/6-3.jpg\\\" url3=\\\"product-categories\\/hijab\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 09:46:48', '2021-12-15 09:46:48'),
(293, 1, 'product-category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Dress\",\"slug\":\"celana\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg\",\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Dress', 'primary', '2021-12-15 09:51:08', '2021-12-15 09:51:08'),
(294, 1, 'product-category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Dress\",\"slug\":\"dress-1\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg\",\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Dress', 'primary', '2021-12-15 10:03:32', '2021-12-15 10:03:32'),
(295, 1, 'product-category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Celana\",\"slug\":\"celana\",\"slug_id\":\"479\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"10\",\"status\":\"published\",\"image\":null,\"is_featured\":\"0\",\"icon\":\"ion-android-favorite-outline\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 11, 'Celana', 'primary', '2021-12-15 10:04:08', '2021-12-15 10:04:08'),
(296, 1, 'product-category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Dress\",\"slug\":\"dress\",\"slug_id\":\"471\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\ProductCategory\",\"parent_id\":\"0\",\"description\":null,\"order\":\"1\",\"status\":\"published\",\"image\":\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg\",\"is_featured\":\"1\",\"icon\":\"ion-icecream\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Dress', 'primary', '2021-12-15 10:04:37', '2021-12-15 10:04:37'),
(297, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\\\" url1=\\\"product-categories\\/dress\\\" image2=\\\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\\\" url2=\\\"product-categories\\/bawahan\\\" image3=\\\"products\\/6-3.jpg\\\" url3=\\\"product-categories\\/hijab\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-brands title=\\\"Brend Kita\\\"][\\/featured-brands]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 10:09:53', '2021-12-15 10:09:53'),
(298, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\\\" url1=\\\"product-categories\\/dress\\\" image2=\\\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\\\" url2=\\\"product-categories\\/bawahan\\\" image3=\\\"products\\/6-3.jpg\\\" url3=\\\"product-categories\\/hijab\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>[featured-news title=\\\"Visit Our Blog\\\" description=\\\"Our Blog updated the newest trend of the world regularly\\\"][\\/featured-news]<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 10:13:38', '2021-12-15 10:13:38'),
(299, 1, 'post', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"4 Expert Tips On How To Choose The Right Men\\u2019s Wallet\",\"slug\":\"4-expert-tips-on-how-to-choose-the-right-mens-wallet\",\"slug_id\":\"550\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"description\":\"You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.\",\"is_featured\":\"1\",\"content\":\"<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.<\\/p>\\r\\n\\r\\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"f4\\\" src=\\\"\\/storage\\/news\\/1.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:<\\/em><\\/strong><\\/p>\\r\\n\\r\\n<h4><strong>Number 1: Choose A Neat Wallet<\\/strong><\\/h4>\\r\\n\\r\\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style<\\/strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.<\\/p>\\r\\n\\r\\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"f5\\\" src=\\\"\\/storage\\/news\\/2.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<h4><strong>Number 2: Choose The Right Size For Your Wallet<\\/strong><\\/h4>\\r\\n\\r\\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.<\\/p>\\r\\n\\r\\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"f1\\\" src=\\\"\\/storage\\/news\\/3.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials<\\/strong><\\/h4>\\r\\n\\r\\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.<\\/p>\\r\\n\\r\\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"f6\\\" src=\\\"\\/storage\\/news\\/4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment<\\/strong><\\/h4>\\r\\n\\r\\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.<\\/p>\\r\\n\\r\\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"f2\\\" src=\\\"\\/storage\\/news\\/5.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"pending\",\"categories\":[\"1\"],\"image\":\"news\\/1.jpg\",\"tag\":\"General,Design,Jquery,Branding,Modern\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'primary', '2021-12-15 10:19:51', '2021-12-15 10:19:51'),
(300, 1, 'category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Ecommerce\",\"slug\":\"ecommerce\",\"slug_id\":\"546\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"1\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"pending\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Ecommerce', 'primary', '2021-12-15 10:21:06', '2021-12-15 10:21:06'),
(301, 1, 'category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Fashion\",\"slug\":\"fashion\",\"slug_id\":\"547\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"pending\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 2, 'Fashion', 'primary', '2021-12-15 10:21:23', '2021-12-15 10:21:23'),
(302, 1, 'category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Electronic\",\"slug\":\"electronic\",\"slug_id\":\"548\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"pending\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Electronic', 'primary', '2021-12-15 10:21:42', '2021-12-15 10:21:42'),
(303, 1, 'category', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Commercial\",\"slug\":\"commercial\",\"slug_id\":\"549\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"pending\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'Commercial', 'primary', '2021-12-15 10:21:58', '2021-12-15 10:21:58'),
(304, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Blog\",\"slug\":\"blog\",\"slug_id\":\"558\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>---<\\/p>\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"pending\",\"template\":\"blog-sidebar\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 3, 'Blog', 'primary', '2021-12-15 10:25:48', '2021-12-15 10:25:48'),
(305, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\\\" url1=\\\"product-categories\\/dress\\\" image2=\\\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\\\" url2=\\\"product-categories\\/bawahan\\\" image3=\\\"products\\/6-3.jpg\\\" url3=\\\"product-categories\\/hijab\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>&nbsp;<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Free Delivery\\\" description1=\\\"Free shipping on all US order or order above $200\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"30 Day Returns Guarantee\\\" description2=\\\"Simply return it within 30 days for an exchange\\\" icon3=\\\"flaticon-support\\\" title3=\\\"27\\/4 Online Support\\\" description3=\\\"Contact us 24 hours a day, 7 days a week\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Join Our Newsletter Now\\\" description=\\\"Register now to get updates on promotions.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 10:29:25', '2021-12-15 10:29:25'),
(306, 1, 'page', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 7, 'Affiliates', 'danger', '2021-12-15 10:36:09', '2021-12-15 10:36:09'),
(307, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"About us\",\"slug\":\"about-us\",\"slug_id\":\"559\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>Sejak tahun 2021,<\\/p><p>kami berkomitmen untuk selalu memberikan Anda pakaian sehari-hari yang lebih baik dengan desain yang timeless dan minimalis sebagai panduan kami, baik tampilan kasual, semi formal, maupun formal, yang akan Anda sukai untuk dikenakan di mana saja dan kapan saja.<\\/p><p><br>Semua koleksi kami dibuat dengan sangat memperhatikan pemilihan bahan, cutting, dan aksesoris, semuanya dibuat oleh orang Indonesia, di Indonesia.<\\/p>\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 4, 'About us', 'primary', '2021-12-15 10:41:54', '2021-12-15 10:41:54'),
(308, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"FAQ\",\"slug\":\"faq\",\"slug_id\":\"560\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>PADUAN SUARA. \'Wow! Wow! Wow!\' Sementara Duchess dan kata-kata \'EAT ME\' ditandai dengan indah di kismis. \'Baiklah, aku akan memakannya,\' kata Dormouse, tidak memilih untuk memperhatikan komentar terakhir ini. \\\"Tentu saja tidak!\\\" tanya si Hatter penuh kemenangan. Alice tidak berani mendekati Raja berkata dengan serius, \'dan terus menangis dengan cara ini! Hentikan saat ini, saya katakan!\' kata Alice. \'Kalau begitu, harus dimatikan!\' kata Mock Turtle mengulangi sambil berpikir. \'Saya ingin menunjukkan kepada Anda! Terrier kecil bermata cerah, kamu.<\\/p>\",\"is_featured\":\"0\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 5, 'FAQ', 'primary', '2021-12-15 10:44:53', '2021-12-15 10:44:53'),
(309, 1, 'page', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 6, 'Location', 'danger', '2021-12-15 10:46:51', '2021-12-15 10:46:51'),
(310, 1, 'page', '{\"_token\":\"VjWzfaubaifBXBcXtwOShHT1aOp3QdNKIrc0ABOw\",\"name\":\"Home\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"content\":\"<p>[simple-slider key=\\\"home-slider\\\"][\\/simple-slider]<\\/p><p>[featured-product-categories title=\\\"Kategori Teratas\\\" description=\\\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai \\u2018pertahanan\\u2019 utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\\\"][\\/featured-product-categories]<\\/p><p>[flash-sale title=\\\"Penawaran terbaik untuk Anda\\\"][\\/flash-sale]<\\/p><p>[product-collections title=\\\"Produk Ekslusif\\\"][\\/product-collections]<\\/p><p>[banners image1=\\\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\\\" url1=\\\"product-categories\\/dress\\\" image2=\\\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\\\" url2=\\\"product-categories\\/bawahan\\\" image3=\\\"products\\/6-3.jpg\\\" url3=\\\"product-categories\\/hijab\\\"][\\/banners]<\\/p><p>[trending-products title=\\\"Trending Product\\\"][[\\/trending-products]<\\/p><p>[product-blocks featured_product_title=\\\"Produk Unggulan\\\" top_rated_product_title=\\\"Produk Nilai Teratas\\\" on_sale_product_title=\\\"Produk Dijual\\\"][\\/product-blocks]<\\/p><p>&nbsp;<\\/p><p>[testimonials title=\\\"Our Client Say!\\\"][\\/testimonials]<\\/p><p>[our-features icon1=\\\"flaticon-shipped\\\" title1=\\\"Pengiriman Gratis\\\" description1=\\\"Pengiriman gratis untuk semua area Yogyakarta atau belanja diatas Rp200.000\\\" icon2=\\\"flaticon-money-back\\\" title2=\\\"Garansi Pengembalian 30 Hari\\\" description2=\\\"Cukup kembalikan dalam 30 hari untuk ditukar\\\" icon3=\\\"flaticon-support\\\" title3=\\\"24 Jam Online Support\\\" description3=\\\"Hubungi kami 24 jam sehari, 7 hari seminggu\\\"][\\/our-features]<\\/p><p>[newsletter-form title=\\\"Bergabunglah dengan Kami Sekarang\\\" description=\\\"Daftar sekarang untuk mendapatkan update tentang promosi.\\\"][\\/newsletter-form]<\\/p>\",\"is_featured\":\"0\",\"submit\":\"save\",\"status\":\"published\",\"template\":\"homepage\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'Home', 'primary', '2021-12-15 11:00:52', '2021-12-15 11:00:52'),
(311, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-15 11:32:12', '2021-12-15 11:32:12'),
(312, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-22 20:33:52', '2021-12-22 20:33:52'),
(313, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-22 20:44:08', '2021-12-22 20:44:08'),
(314, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-23 01:11:25', '2021-12-23 01:11:25'),
(315, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-23 10:07:18', '2021-12-23 10:07:18'),
(316, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-24 19:32:46', '2021-12-24 19:32:46'),
(317, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-27 01:20:31', '2021-12-27 01:20:31');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(318, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-27 01:25:26', '2021-12-27 01:25:26'),
(319, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-27 01:39:30', '2021-12-27 01:39:30'),
(320, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-27 01:44:45', '2021-12-27 01:44:45'),
(321, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-27 01:54:19', '2021-12-27 01:54:19'),
(322, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-27 02:06:45', '2021-12-27 02:06:45'),
(323, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-27 02:16:52', '2021-12-27 02:16:52'),
(324, 1, 'product', '{\"_token\":\"xL0NUU8RvOU5iT5OPwCju6u5D3pfCfa8GDKgUbNr\",\"name\":\"Maryland\",\"slug\":\"maryland\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>kami menggunakan kain berkualitas baik, bukan kain murahan.<\\/p><p>Kami telah menambahkan dua gaya panjang yang berbeda. Ini 105 cm dan 135 cm, Anda dapat memilih panjang yang berbeda sesuai permintaan Anda.<\\/p><p>fabric: polyester (elastic)<br>115cm:<br>M &nbsp;chest:86-88cm &nbsp; waist:68cm &nbsp; length:101cm &nbsp; sleeve:57cm &nbsp;<br>L &nbsp; chest:94-96cm &nbsp; waist:72cm &nbsp; length:102cm &nbsp; sleeve:58cm &nbsp;<br>XL &nbsp;chest:98-102cm &nbsp; waist:76cm &nbsp; length:103cm &nbsp; sleeve:59cm &nbsp;<\\/p><p>135cm<br>M &nbsp;chest:86-88cm &nbsp; waist:68cm &nbsp; length:135cm &nbsp; sleeve:57cm &nbsp;<br>L &nbsp; chest:94-96cm &nbsp; waist:72cm &nbsp; length:136cm &nbsp; sleeve:58cm &nbsp;<br>XL &nbsp;chest:98-102cm &nbsp; waist:76cm &nbsp; length:137cm &nbsp; sleeve:59cm &nbsp;<\\/p>\",\"content\":\"<p>Please make sure that these actual measurements will fit you.<br>Notes:&nbsp;<br>\\ufeff1, If you have size problem, feel free to contact us.<br>\\ufeff2, Please allow slight (\\u00b13cm)manual measurement deviation for the data.<\\/p>\",\"images\":[null,\"products\\/dress-maryland.jpg\"],\"sale_type\":\"0\",\"sku\":\"MYLD\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"390\",\"length\":\"66\",\"wide\":\"88\",\"height\":\"76\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"3\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 152, 'Maryland', 'primary', '2021-12-27 03:02:30', '2021-12-27 03:02:30'),
(325, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-12-27 08:56:31', '2021-12-27 08:56:31'),
(326, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2021-12-27 09:12:40', '2021-12-27 09:12:40'),
(327, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-01 20:25:08', '2022-01-01 20:25:08'),
(328, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-02 02:15:10', '2022-01-02 02:15:10'),
(329, 1, 'product', '{\"_token\":\"8tEnLZc0HHQgc0njWVfiRrFSlfwsl9QbgxiFItFC\",\"name\":\"Maryland Baru\",\"slug\":\"maryland-baru\",\"slug_id\":\"612\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>kami menggunakan kain berkualitas baik, bukan kain murahan.<\\/p><p>Kami telah menambahkan dua gaya panjang yang berbeda. Ini 105 cm dan 135 cm, Anda dapat memilih panjang yang berbeda sesuai permintaan Anda.<\\/p><p>fabric: polyester (elastic)<br>115cm:<br>M &nbsp;chest:86-88cm &nbsp; waist:68cm &nbsp; length:101cm &nbsp; sleeve:57cm &nbsp;<br>L &nbsp; chest:94-96cm &nbsp; waist:72cm &nbsp; length:102cm &nbsp; sleeve:58cm &nbsp;<br>XL &nbsp;chest:98-102cm &nbsp; waist:76cm &nbsp; length:103cm &nbsp; sleeve:59cm &nbsp;<\\/p><p>135cm<br>M &nbsp;chest:86-88cm &nbsp; waist:68cm &nbsp; length:135cm &nbsp; sleeve:57cm &nbsp;<br>L &nbsp; chest:94-96cm &nbsp; waist:72cm &nbsp; length:136cm &nbsp; sleeve:58cm &nbsp;<br>XL &nbsp;chest:98-102cm &nbsp; waist:76cm &nbsp; length:137cm &nbsp; sleeve:59cm &nbsp;<\\/p>\",\"content\":\"<p>Please make sure that these actual measurements will fit you.<br>Notes:&nbsp;<br>\\ufeff1, If you have size problem, feel free to contact us.<br>\\ufeff2, Please allow slight (\\u00b13cm)manual measurement deviation for the data.<\\/p>\",\"images\":[null,\"products\\/dress-maryland.jpg\"],\"sale_type\":\"0\",\"sku\":\"MYLD\",\"price\":\"250000\",\"sale_price\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"1\",\"quantity\":\"23\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"weight\":\"390\",\"length\":\"66\",\"wide\":\"88\",\"height\":\"76\",\"is_added_attributes\":\"0\",\"added_attributes\":{\"1\":\"1\"},\"related_products\":null,\"cross_sale_products\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"is_featured\":\"0\",\"categories\":[\"3\",\"26\",\"27\"],\"brand_id\":\"0\",\"product_collections\":[\"1\"],\"product_labels\":[\"1\"],\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 152, 'Maryland Baru', 'primary', '2022-01-02 02:17:12', '2022-01-02 02:17:12'),
(330, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-01-02 02:42:11', '2022-01-02 02:42:11'),
(331, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-02 04:56:41', '2022-01-02 04:56:41'),
(332, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-01-02 05:22:45', '2022-01-02 05:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, NULL, 'pending', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-07-02 21:03:27', '2021-12-15 10:21:06'),
(2, 'Fashion', 0, NULL, 'pending', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-07-02 21:03:27', '2021-12-15 10:21:22'),
(3, 'Electronic', 0, NULL, 'pending', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-07-02 21:03:27', '2021-12-15 10:21:42'),
(4, 'Commercial', 0, NULL, 'pending', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-07-02 21:03:27', '2021-12-15 10:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2021-06-26 20:36:21', '2021-06-26 20:36:21'),
(2, 'widget_total_2', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(3, 'widget_total_themes', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(4, 'widget_total_3', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(5, 'widget_total_4', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(6, 'widget_total_users', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(7, 'widget_total_pages', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(8, 'widget_total_plugins', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(9, 'widget_analytics_general', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(10, 'widget_analytics_page', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(11, 'widget_analytics_browser', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(12, 'widget_posts_recent', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(13, 'widget_analytics_referrer', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(14, 'widget_audit_logs', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(15, 'widget_ecommerce_report_general', '2021-06-26 20:36:23', '2021-06-26 20:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 0, 1, '2021-12-27 01:57:02', '2021-12-27 01:57:02'),
(2, NULL, 1, 2, 0, 1, '2021-12-27 01:57:02', '2021-12-27 01:57:02'),
(3, NULL, 1, 3, 102, 0, '2021-12-27 01:57:02', '2021-12-27 01:57:02'),
(4, NULL, 1, 4, 0, 1, '2021-12-27 01:57:02', '2021-12-27 01:57:02'),
(5, NULL, 1, 5, 0, 1, '2021-12-27 01:57:02', '2021-12-27 01:57:02'),
(6, NULL, 1, 6, 105, 0, '2021-12-27 01:57:02', '2021-12-27 01:57:03'),
(7, NULL, 1, 7, 106, 0, '2021-12-27 01:57:03', '2021-12-27 01:57:03'),
(8, NULL, 1, 8, 107, 0, '2021-12-27 01:57:03', '2021-12-27 01:57:03'),
(9, '{\"state\":\"expand\"}', 1, 9, 108, 0, '2021-12-27 01:57:03', '2021-12-27 01:59:13'),
(10, NULL, 1, 10, 109, 0, '2021-12-27 01:57:03', '2021-12-27 01:59:14'),
(11, NULL, 1, 11, 110, 0, '2021-12-27 01:57:03', '2021-12-27 01:59:14'),
(12, NULL, 1, 12, 111, 0, '2021-12-27 01:57:03', '2021-12-27 02:00:18'),
(13, NULL, 1, 13, 112, 0, '2021-12-27 01:57:03', '2021-12-27 02:00:18'),
(14, NULL, 1, 14, 0, 1, '2021-12-27 01:57:03', '2021-12-27 01:57:03'),
(15, NULL, 1, 15, 0, 1, '2021-12-27 01:57:03', '2021-12-27 01:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/1.png', 'published', 0, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(2, 'Hand crafted', NULL, NULL, 'brands/2.png', 'published', 1, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(3, 'Mestonix', NULL, NULL, 'brands/3.png', 'published', 2, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(4, 'Sunshine', NULL, NULL, 'brands/4.png', 'published', 3, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(5, 'Pure', NULL, NULL, 'brands/5.png', 'published', 4, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(6, 'Anfold', NULL, NULL, 'brands/6.png', 'published', 5, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(7, 'Automotive', NULL, NULL, 'brands/7.png', 'published', 6, 1, '2021-07-02 21:02:30', '2021-07-02 21:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'IDR', 'Rp', 1, 0, 0, 1, 1, '2021-07-02 21:02:30', '2021-12-13 12:23:24'),
(2, 'USD', '$', 0, 2, 1, 0, 0.84, '2021-07-02 21:02:30', '2021-07-02 21:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '$2y$10$K/P2LPetfxnrO752qadhduS4xoVh6EYBVKS9HSIIC19P8OPYt11zi', 'customers/1.jpg', NULL, '+16780453521', 'lzY0MSMDiBgVILFbGzUYh4IyAHdSVkcrVoQ2W2ax1g03Bu8TFoab4xGY0rwI', '2021-07-02 21:02:34', '2021-07-02 21:02:34', '2021-07-03 04:02:34', NULL),
(2, 'Mrs. Eldridge Blick', 'cora83@example.com', '$2y$10$62cK/8tFyKejy/MLQMdaNeqIiWP/4tKIyQRrgHvopqCWDyFHrFw92', 'customers/1.jpg', NULL, '+14709221225', NULL, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '2021-07-03 04:02:34', NULL),
(3, 'Ms. Nia Hauck', 'marlon94@example.net', '$2y$10$rpoMdFsmHrtKpcMbWQ.EGODCF3L2l1Ca0cnXTs3lflLVS5bCX7VRS', 'customers/2.jpg', NULL, '+12698949478', NULL, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '2021-07-03 04:02:34', NULL),
(4, 'Kade Senger', 'otto.runte@example.com', '$2y$10$XuVvL3bHM1j3eSRMuVnnt..2DHKNSBc5IN4nd1YsRwspITiyeMfRi', 'customers/3.jpg', NULL, '+17435929377', NULL, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '2021-07-03 04:02:35', NULL),
(5, 'Rosendo Casper', 'magnus.quigley@example.net', '$2y$10$EC.b/lDviW9YO5sdQ0BZJ.CkWaa5/n9JP.sJIYhUyx/EACi5iyDN.', 'customers/4.jpg', NULL, '+17579865193', NULL, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '2021-07-03 04:02:35', NULL),
(6, 'Mr. Gerhard Sanford', 'rod.mertz@example.net', '$2y$10$abKSQ5gFM3xY8s3kSvktje7ni4g4hAVejvnzpVoF2wYfJjfRWcpNS', 'customers/5.jpg', NULL, '+17195941730', NULL, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '2021-07-03 04:02:35', NULL),
(7, 'Prof. Unique Lehner', 'tohara@example.org', '$2y$10$RILXixlHH0SCuJdJUkj3a.ISV9EijHd9ZSnZ4RAjYVrCHHarixmia', 'customers/6.jpg', NULL, '+12529546538', NULL, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '2021-07-03 04:02:36', NULL),
(8, 'Mr. Everett Harvey PhD', 'bahringer.bernice@example.net', '$2y$10$TOjVoo40NoPBDWPqrZmfxePJYgx8Nf1LqsPwLceMs7Jwkx/hy356.', 'customers/7.jpg', NULL, '+19136302158', NULL, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '2021-07-03 04:02:36', NULL),
(9, 'Mason Anderson', 'atillman@example.org', '$2y$10$A2ITWnPKyuYqrym2L4sUCOdzbvBMg8Ase08w5RKVIIOKjTF9OxxSC', 'customers/8.jpg', NULL, '+16780340467', NULL, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '2021-07-03 04:02:36', NULL),
(10, 'Hattie Crist', 'archibald.legros@example.org', '$2y$10$mlRsWpg0EBm7egQHFBisvOHwgAiNOltf.u.5bKfVcGA6D5LF0ncO6', 'customers/9.jpg', NULL, '+16461378736', NULL, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '2021-07-03 04:02:36', NULL),
(11, 'Gino Feest', 'wschultz@example.org', '$2y$10$u6m3W6uTWYrmiOy.p6o1F.qpL9Gi8.SnQs2vfSOAshpssxphRpwv6', 'customers/10.jpg', NULL, '+15203771648', NULL, '2021-07-02 21:02:37', '2021-07-02 21:02:37', '2021-07-03 04:02:37', NULL),
(12, 'wisnu', 'wisnu@gmail.com', '$2y$10$QhNJUrNgbUP7evrm5t62qOhGm8vpdMnyIh7xAf7cOMH3veU62LMua', NULL, NULL, NULL, 'RWNjN8Xbwfjg5OjB668IclhSvGSlzsDAmO41rKfpmJ64Pcprq4pQe5bbMAtD', '2021-12-11 03:15:30', '2021-12-11 03:15:30', '2021-12-11 10:15:30', NULL),
(13, 'firman', 'firman@gmail.com', '$2y$10$69B22JXRGGDAuCOjJcNTF.6dF8HXs7.MDB3ltL0c61AZJtq3pacwW', NULL, '1998-06-09', '087566444656', 'HXqTanGafhYy7tT9ycomUf3J91Py6BMRMnPP3d49QuqJpyDl3G6Om9nGXQQX', '2021-12-15 11:34:47', '2021-12-15 11:39:48', '2021-12-15 18:34:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+19725795880', 'FI', 'New Mexico', 'Port Joanny', '88894 Skiles Cliff Apt. 302', 1, 1, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '86509'),
(2, 'John Smith', 'john.smith@botble.com', '+19299586840', 'AO', 'West Virginia', 'Port Armando', '8125 German Bridge', 1, 0, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '04782'),
(3, 'Mrs. Eldridge Blick', 'cora83@example.com', '+16785915500', 'NF', 'Massachusetts', 'North Chanel', '454 Gerhold Falls', 2, 1, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '79996-0341'),
(4, 'Ms. Nia Hauck', 'marlon94@example.net', '+12235541362', 'BA', 'Iowa', 'East Kaseybury', '650 Wolff Estates', 3, 1, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '69355'),
(5, 'Kade Senger', 'otto.runte@example.com', '+17541662003', 'SV', 'South Carolina', 'South Misty', '956 Mayert Orchard Apt. 650', 4, 1, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '70114-1144'),
(6, 'Rosendo Casper', 'magnus.quigley@example.net', '+15341388658', 'NF', 'Georgia', 'East Malcolmfort', '1676 Glennie Ridge', 5, 1, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '65433'),
(7, 'Mr. Gerhard Sanford', 'rod.mertz@example.net', '+19731127390', 'FM', 'Arkansas', 'Lake Murlmouth', '21371 Addie Drive Apt. 587', 6, 1, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '69384-7852'),
(8, 'Prof. Unique Lehner', 'tohara@example.org', '+19128341528', 'RE', 'Georgia', 'Camillafurt', '9086 Kutch Burg Suite 559', 7, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '90995-1999'),
(9, 'Mr. Everett Harvey PhD', 'bahringer.bernice@example.net', '+18185966737', 'FK', 'Hawaii', 'Baumbachland', '9713 Hartmann Cove', 8, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '17388-9390'),
(10, 'Mason Anderson', 'atillman@example.org', '+14708554768', 'SH', 'Mississippi', 'Raleighport', '894 Brayan Keys Suite 015', 9, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '08157-9871'),
(11, 'Hattie Crist', 'archibald.legros@example.org', '+18572615328', 'CO', 'Utah', 'Ednaside', '94831 Ericka Circle Suite 382', 10, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '06943'),
(12, 'Gino Feest', 'wschultz@example.org', '+12233793135', 'SJ', 'Iowa', 'North Michaelaborough', '442 Legros Fort Apt. 711', 11, 1, '2021-07-02 21:02:37', '2021-07-02 21:02:37', '70475-1907'),
(13, 'Wisnu Andrian', 'wisnu@gmail.com', '087836741009', 'ID', 'Daerah Istimewa Yogyakarta', 'BANTUL,KAB.BANTUL', 'Jln.Janti, Gg.Punto Dewo, Kanoman RT 07-RW 10- NO 223, Banguntapan- Bantul-55198, Di Yogyakarta, Kab. Bantul, Banguntapan, Rumah', 12, 1, '2021-12-11 03:19:38', '2021-12-11 03:19:38', NULL),
(14, 'FIRMAN APRILIAN', 'firman@gmail.com', '085783732387', 'ID', 'Daerah Istimewa Yogyakarta', 'BANTUL,KAB.BANTUL', 'Jln.Janti, Gg.Punto Dewo, Kanoman RT 07-RW 10- NO 223, Banguntapan- Bantul-55198, Di Yogyakarta', 13, 1, '2021-12-15 11:38:13', '2021-12-15 11:45:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale 1', '2021-07-23 00:00:00', 'published', '2021-07-02 14:03:24', '2021-07-02 14:03:24'),
(2, 'Winter Sale 2', '2021-08-19 00:00:00', 'published', '2021-07-02 14:03:24', '2021-07-02 14:03:24'),
(3, 'Winter Sale 3', '2021-08-22 00:00:00', 'published', '2021-07-02 14:03:24', '2021-07-02 14:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 105, 28.62, 15, 1),
(2, 90, 31.995, 9, 5),
(3, 52, 85.8, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `currency_id`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 9, '1', 'default', 'completed', '187.28', 1, '17.03', '0.00', NULL, NULL, '0.00', '170.25', 1, NULL, 1, 'aeVZ4KoR9J0cniihPoHJMMFs5wR7I', 1, '2021-06-29 13:03:25', '2021-07-02 21:03:25'),
(2, 10, '1', 'default', 'pending', '597.20', 1, '23.20', '0.00', NULL, NULL, '0.00', '574.00', 1, NULL, 1, '7OQDzMy0uNm6DGX6s2m7Ri8ywK1nZ', 2, '2021-07-01 07:03:25', '2021-07-02 21:03:25'),
(3, 7, '1', 'default', 'pending', '214.50', 1, '14.50', '0.00', NULL, NULL, '0.00', '200.00', 1, NULL, 1, '4JISyPJzlCjBjhgMArc4dSX9e6qll', 3, '2021-06-25 09:03:25', '2021-07-02 21:03:25'),
(4, 6, '1', 'default', 'pending', '330.40', 1, '18.40', '0.00', NULL, NULL, '0.00', '312.00', 1, NULL, 1, 'rDsaRbUSryroInW4dV0cvNtbhjVWL', 4, '2021-07-01 11:03:25', '2021-07-02 21:03:25'),
(5, 7, '1', 'default', 'pending', '1915.80', 1, '72.80', '0.00', NULL, NULL, '0.00', '1843.00', 1, NULL, 1, '41d5yhITLstkEJrIrtpoyR87gkpRh', 5, '2021-07-01 13:03:25', '2021-07-02 21:03:25'),
(6, 4, '1', 'default', 'pending', '1145.10', 1, '44.10', '0.00', NULL, NULL, '0.00', '1101.00', 1, NULL, 1, '2A7L52lilXzM2nJxFBIS9VmnXC3Vm', 6, '2021-06-27 21:03:25', '2021-07-02 21:03:25'),
(7, 4, '1', 'default', 'pending', '1075.40', 1, '42.40', '0.00', NULL, NULL, '0.00', '1033.00', 1, NULL, 1, '6DHPd0GCyuc8FrNPc4w7jT9fLRsLX', 7, '2021-06-28 05:03:25', '2021-07-02 21:03:25'),
(8, 2, '1', 'default', 'completed', '430.50', 1, '20.50', '0.00', NULL, NULL, '0.00', '410.00', 1, NULL, 1, 'zQk4eRr0iKJsFSv9AZ7adPvKPAbvf', 8, '2021-07-01 19:03:25', '2021-07-02 21:03:25'),
(9, 3, '1', 'default', 'completed', '435.80', 1, '19.80', '0.00', NULL, NULL, '0.00', '416.00', 1, NULL, 1, 'ZdODniK8VdeF7L9evzAHR1r4jy8G0', 9, '2021-06-27 21:03:25', '2021-07-02 21:03:25'),
(10, 5, '1', 'default', 'pending', '658.90', 1, '59.90', '0.00', NULL, NULL, '0.00', '599.00', 1, NULL, 1, 'EM2sEvWo4UzFKiRx2EMskCoL8mZCM', 10, '2021-07-01 01:03:25', '2021-07-02 21:03:25'),
(11, 8, '1', 'default', 'completed', '655.60', 1, '39.60', '0.00', NULL, NULL, '0.00', '616.00', 1, NULL, 1, 'tr9R4t49UO1A0AWwrWQwcfrclcEE0', 11, '2021-06-25 09:03:25', '2021-07-02 21:03:25'),
(12, 4, '1', 'default', 'completed', '1009.30', 1, '36.30', '0.00', NULL, NULL, '0.00', '973.00', 1, NULL, 1, 'x18iq43Q5Zm6PRNdNxHTBltBxUrBq', 12, '2021-06-26 03:03:25', '2021-07-02 21:03:25'),
(13, 7, '1', 'default', 'pending', '749.00', 1, '47.00', '0.00', NULL, NULL, '0.00', '702.00', 1, NULL, 1, 'NWMT54ptm4H448seeAyiRl0v6P6qv', 13, '2021-06-28 05:03:25', '2021-07-02 21:03:25'),
(14, 3, '1', 'default', 'pending', '326.55', 1, '15.55', '0.00', NULL, NULL, '0.00', '311.00', 1, NULL, 1, '8VuB5zKyGMWSWtrpSQe4srVumjyIa', 14, '2021-07-02 07:03:25', '2021-07-02 21:03:25'),
(15, 1, '1', 'default', 'pending', '1194.00', 1, '46.00', '0.00', NULL, NULL, '0.00', '1148.00', 1, NULL, 1, '49KnnNIb2SGDjCeFXfCrcU5SwhF58', 15, '2021-06-28 21:03:25', '2021-07-02 21:03:25'),
(16, 7, '1', 'default', 'completed', '1027.10', 1, '66.10', '0.00', NULL, NULL, '0.00', '961.00', 1, NULL, 1, 'whOSklEYzz4XRNe5Duk3RcK98JNiM', 16, '2021-07-01 05:03:25', '2021-07-02 21:03:25'),
(17, 1, '1', 'default', 'completed', '662.78', 1, '32.03', '0.00', NULL, NULL, '0.00', '630.75', 1, NULL, 1, 'dM8M8M400YSLqjQNclnknjG7S78Ml', 17, '2021-07-01 05:03:25', '2021-07-02 21:03:25'),
(18, 10, '1', 'default', 'pending', '816.20', 1, '34.20', '0.00', NULL, NULL, '0.00', '782.00', 1, NULL, 1, 'oq6NxzCr8vJWwcdQck4QE1Zv94b8T', 18, '2021-06-30 15:03:25', '2021-07-02 21:03:25'),
(19, 1, '1', 'default', 'pending', '228.25', 1, '20.75', '0.00', NULL, NULL, '0.00', '207.50', 1, NULL, 1, '7hayinIUJjAfDc0fQh7TgcpLnGDi4', 19, '2021-07-02 01:03:25', '2021-07-02 21:03:25'),
(20, 6, '1', 'default', 'pending', '346.50', 1, '16.50', '0.00', NULL, NULL, '0.00', '330.00', 1, NULL, 1, '43l4nhboJmFf1MGGo2SpEtAH1n9l0', 20, '2021-07-02 19:03:25', '2021-07-02 21:03:25'),
(21, 12, '1', 'default', 'processing', '344.00', 1, '0.00', '0.00', NULL, NULL, '0.00', '344.00', 1, NULL, 1, 'e893cc47931d0626f01c99acd7e312c8', 21, '2021-12-11 03:18:41', '2021-12-11 03:21:30'),
(22, 0, '1', 'default', 'pending', '344.00', 1, '0.00', '0.00', NULL, NULL, '0.00', '344.00', 0, NULL, 1, '75288e088acad0152fabe10cef0f66a1', 22, '2021-12-12 00:05:50', '2021-12-12 00:07:39'),
(23, 12, NULL, 'default', 'pending', '2990000.00', NULL, '0.00', '0.00', NULL, NULL, '0.00', '2990000.00', 0, NULL, 0, 'a84795433568d3c2a720bf7f921079c3', NULL, '2021-12-12 01:04:00', '2021-12-12 01:04:00'),
(24, 0, NULL, 'default', 'pending', '5060000.00', NULL, '0.00', '0.00', NULL, NULL, '0.00', '5060000.00', 0, NULL, 0, 'e4e99919579a6e34b356845517d8d5af', NULL, '2021-12-13 17:43:33', '2021-12-13 17:43:33'),
(25, 0, NULL, 'default', 'pending', '3120000.00', NULL, '0.00', '0.00', NULL, NULL, '0.00', '3120000.00', 0, NULL, 0, 'eca68dcd0ba9ad6a69b4a2a8ad5861a5', NULL, '2021-12-14 06:08:52', '2021-12-14 06:08:52'),
(26, 0, '1', 'default', 'pending', '1280000.00', 1, '0.00', '0.00', 'BISISISISISISII', NULL, '0.00', '1280000.00', 0, NULL, 1, 'de441e982435cf2126e1740034cd6eb7', 23, '2021-12-14 07:23:36', '2021-12-14 07:25:20'),
(27, 0, '1', 'default', 'pending', '259000.00', 1, '0.00', '0.00', NULL, NULL, '0.00', '259000.00', 0, NULL, 1, '66da3405894e8d57ad9b6432bf1e2db3', 24, '2021-12-14 07:30:41', '2021-12-14 07:31:30'),
(28, 12, NULL, 'default', 'processing', '250000.00', 1, '0.00', '0.00', 'aaaaaaaa6666', NULL, '0.00', '250000.00', 1, NULL, 1, '178b333a9ada6bda668383a00f292397', 25, '2021-12-14 07:35:46', '2021-12-14 07:47:48'),
(29, 1, NULL, 'default', 'pending', '259999.00', 1, '0.00', '0.00', NULL, NULL, '0.00', '259999.00', 0, NULL, 1, 'a9cea6b296d5650a68cc3c5c8b2f8696', 26, '2021-12-14 08:24:11', '2021-12-14 08:24:31'),
(30, 13, NULL, 'default', 'pending', '1138000.00', 1, '0.00', '0.00', 'SEMOGA BERKAH YAA', NULL, '0.00', '1138000.00', 0, NULL, 1, 'd9011332c9f507701b65babc3a971350', 27, '2021-12-15 11:43:33', '2021-12-15 11:44:09'),
(31, 13, NULL, 'default', 'pending', '154000.00', 1, '0.00', '0.00', NULL, NULL, '0.00', '154000.00', 0, NULL, 1, '2c6e43e5170846768a957c2ae9e00188', 28, '2021-12-15 11:46:59', '2021-12-15 11:47:20'),
(32, 0, NULL, 'default', 'pending', '359000.00', NULL, '0.00', '0.00', NULL, NULL, '0.00', '359000.00', 0, NULL, 0, '3ae41fc6bc74f29a666b36692c20c36c', NULL, '2021-12-23 02:04:44', '2021-12-23 02:04:44'),
(33, 13, NULL, 'default', 'delivering', '250000.00', 1, '0.00', '0.00', NULL, NULL, '0.00', '250000.00', 1, NULL, 1, '419586a96485da77fbe278fe5ceeb7de', 29, '2022-01-02 02:47:11', '2022-01-02 05:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Mason Anderson', '+14708554768', 'atillman@example.org', 'SH', 'Mississippi', 'Raleighport', '894 Brayan Keys Suite 015', 1, '08157-9871'),
(2, 'Hattie Crist', '+18572615328', 'archibald.legros@example.org', 'CO', 'Utah', 'Ednaside', '94831 Ericka Circle Suite 382', 2, '06943'),
(3, 'Prof. Unique Lehner', '+19128341528', 'tohara@example.org', 'RE', 'Georgia', 'Camillafurt', '9086 Kutch Burg Suite 559', 3, '90995-1999'),
(4, 'Mr. Gerhard Sanford', '+19731127390', 'rod.mertz@example.net', 'FM', 'Arkansas', 'Lake Murlmouth', '21371 Addie Drive Apt. 587', 4, '69384-7852'),
(5, 'Prof. Unique Lehner', '+19128341528', 'tohara@example.org', 'RE', 'Georgia', 'Camillafurt', '9086 Kutch Burg Suite 559', 5, '90995-1999'),
(6, 'Kade Senger', '+17541662003', 'otto.runte@example.com', 'SV', 'South Carolina', 'South Misty', '956 Mayert Orchard Apt. 650', 6, '70114-1144'),
(7, 'Kade Senger', '+17541662003', 'otto.runte@example.com', 'SV', 'South Carolina', 'South Misty', '956 Mayert Orchard Apt. 650', 7, '70114-1144'),
(8, 'Mrs. Eldridge Blick', '+16785915500', 'cora83@example.com', 'NF', 'Massachusetts', 'North Chanel', '454 Gerhold Falls', 8, '79996-0341'),
(9, 'Ms. Nia Hauck', '+12235541362', 'marlon94@example.net', 'BA', 'Iowa', 'East Kaseybury', '650 Wolff Estates', 9, '69355'),
(10, 'Rosendo Casper', '+15341388658', 'magnus.quigley@example.net', 'NF', 'Georgia', 'East Malcolmfort', '1676 Glennie Ridge', 10, '65433'),
(11, 'Mr. Everett Harvey PhD', '+18185966737', 'bahringer.bernice@example.net', 'FK', 'Hawaii', 'Baumbachland', '9713 Hartmann Cove', 11, '17388-9390'),
(12, 'Kade Senger', '+17541662003', 'otto.runte@example.com', 'SV', 'South Carolina', 'South Misty', '956 Mayert Orchard Apt. 650', 12, '70114-1144'),
(13, 'Prof. Unique Lehner', '+19128341528', 'tohara@example.org', 'RE', 'Georgia', 'Camillafurt', '9086 Kutch Burg Suite 559', 13, '90995-1999'),
(14, 'Ms. Nia Hauck', '+12235541362', 'marlon94@example.net', 'BA', 'Iowa', 'East Kaseybury', '650 Wolff Estates', 14, '69355'),
(15, 'John Smith', '+19725795880', 'john.smith@botble.com', 'FI', 'New Mexico', 'Port Joanny', '88894 Skiles Cliff Apt. 302', 15, '86509'),
(16, 'Prof. Unique Lehner', '+19128341528', 'tohara@example.org', 'RE', 'Georgia', 'Camillafurt', '9086 Kutch Burg Suite 559', 16, '90995-1999'),
(17, 'John Smith', '+19725795880', 'john.smith@botble.com', 'FI', 'New Mexico', 'Port Joanny', '88894 Skiles Cliff Apt. 302', 17, '86509'),
(18, 'Hattie Crist', '+18572615328', 'archibald.legros@example.org', 'CO', 'Utah', 'Ednaside', '94831 Ericka Circle Suite 382', 18, '06943'),
(19, 'John Smith', '+19725795880', 'john.smith@botble.com', 'FI', 'New Mexico', 'Port Joanny', '88894 Skiles Cliff Apt. 302', 19, '86509'),
(20, 'Mr. Gerhard Sanford', '+19731127390', 'rod.mertz@example.net', 'FM', 'Arkansas', 'Lake Murlmouth', '21371 Addie Drive Apt. 587', 20, '69384-7852'),
(21, 'John Smith', '+19725795880', 'john.smith@botble.com', 'FI', 'New Mexico', 'Port Joanny', '88894 Skiles Cliff Apt. 302', 29, '86509'),
(22, 'Wisnu Andrian', '085783732387', 'firman@gmail.com', 'ID', 'Daerah Istimewa Yogyakarta', 'BANTUL,KAB.BANTUL', 'Jln.Janti, Gg.Punto Dewo, Kanoman RT 07-RW 10- NO 223, Banguntapan- Bantul-55198, Di Yogyakarta', 30, NULL),
(23, 'FIRMAN APRILIAN', '085783732387', 'firman@gmail.com', 'ID', 'Daerah Istimewa Yogyakarta', 'BANTUL,KAB.BANTUL', 'Jln.Janti, Gg.Punto Dewo, Kanoman RT 07-RW 10- NO 223, Banguntapan- Bantul-55198, Di Yogyakarta', 31, NULL),
(24, 'FIRMAN APRILIAN', '085783732387', 'firman@gmail.com', 'ID', 'Daerah Istimewa Yogyakarta', 'BANTUL,KAB.BANTUL', 'Jln.Janti, Gg.Punto Dewo, Kanoman RT 07-RW 10- NO 223, Banguntapan- Bantul-55198, Di Yogyakarta', 33, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2021-06-29 13:03:25', '2021-06-29 13:03:25'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2021-06-29 13:03:25', '2021-06-29 13:03:25'),
(3, 'confirm_payment', 'Payment was confirmed (amount $187.28) by %user_name%', 0, 1, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(4, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(5, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(6, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2021-07-01 07:03:25', '2021-07-01 07:03:25'),
(7, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2021-07-01 07:03:25', '2021-07-01 07:03:25'),
(8, 'confirm_payment', 'Payment was confirmed (amount $597.20) by %user_name%', 0, 2, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(9, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(10, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2021-06-25 09:03:25', '2021-06-25 09:03:25'),
(11, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2021-06-25 09:03:25', '2021-06-25 09:03:25'),
(12, 'confirm_payment', 'Payment was confirmed (amount $214.50) by %user_name%', 0, 3, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(13, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(14, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2021-07-01 11:03:25', '2021-07-01 11:03:25'),
(15, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2021-07-01 11:03:25', '2021-07-01 11:03:25'),
(16, 'confirm_payment', 'Payment was confirmed (amount $330.40) by %user_name%', 0, 4, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(17, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(18, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2021-07-01 13:03:25', '2021-07-01 13:03:25'),
(19, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2021-07-01 13:03:25', '2021-07-01 13:03:25'),
(20, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(21, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(22, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2021-06-27 21:03:25', '2021-06-27 21:03:25'),
(23, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2021-06-27 21:03:25', '2021-06-27 21:03:25'),
(24, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(25, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(26, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2021-06-28 05:03:25', '2021-06-28 05:03:25'),
(27, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2021-06-28 05:03:25', '2021-06-28 05:03:25'),
(28, 'confirm_payment', 'Payment was confirmed (amount $1,075.40) by %user_name%', 0, 7, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(29, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(30, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2021-07-01 19:03:25', '2021-07-01 19:03:25'),
(31, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2021-07-01 19:03:25', '2021-07-01 19:03:25'),
(32, 'confirm_payment', 'Payment was confirmed (amount $430.50) by %user_name%', 0, 8, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(33, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(34, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(35, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2021-06-27 21:03:25', '2021-06-27 21:03:25'),
(36, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2021-06-27 21:03:25', '2021-06-27 21:03:25'),
(37, 'confirm_payment', 'Payment was confirmed (amount $435.80) by %user_name%', 0, 9, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(38, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(39, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(40, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2021-07-01 01:03:25', '2021-07-01 01:03:25'),
(41, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2021-07-01 01:03:25', '2021-07-01 01:03:25'),
(42, 'confirm_payment', 'Payment was confirmed (amount $658.90) by %user_name%', 0, 10, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(43, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(44, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2021-06-25 09:03:25', '2021-06-25 09:03:25'),
(45, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2021-06-25 09:03:25', '2021-06-25 09:03:25'),
(46, 'confirm_payment', 'Payment was confirmed (amount $655.60) by %user_name%', 0, 11, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(47, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(48, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(49, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2021-06-26 03:03:25', '2021-06-26 03:03:25'),
(50, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2021-06-26 03:03:25', '2021-06-26 03:03:25'),
(51, 'confirm_payment', 'Payment was confirmed (amount $1,009.30) by %user_name%', 0, 12, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(52, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(53, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(54, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2021-06-28 05:03:25', '2021-06-28 05:03:25'),
(55, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2021-06-28 05:03:25', '2021-06-28 05:03:25'),
(56, 'confirm_payment', 'Payment was confirmed (amount $749.00) by %user_name%', 0, 13, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(57, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(58, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2021-07-02 07:03:25', '2021-07-02 07:03:25'),
(59, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2021-07-02 07:03:25', '2021-07-02 07:03:25'),
(60, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(61, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 14, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(62, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2021-06-28 21:03:25', '2021-06-28 21:03:25'),
(63, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2021-06-28 21:03:25', '2021-06-28 21:03:25'),
(64, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(65, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(66, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2021-07-01 05:03:25', '2021-07-01 05:03:25'),
(67, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2021-07-01 05:03:25', '2021-07-01 05:03:25'),
(68, 'confirm_payment', 'Payment was confirmed (amount $1,027.10) by %user_name%', 0, 16, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(69, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(70, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(71, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2021-07-01 05:03:25', '2021-07-01 05:03:25'),
(72, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2021-07-01 05:03:25', '2021-07-01 05:03:25'),
(73, 'confirm_payment', 'Payment was confirmed (amount $662.78) by %user_name%', 0, 17, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(74, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(75, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(76, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2021-06-30 15:03:25', '2021-06-30 15:03:25'),
(77, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2021-06-30 15:03:25', '2021-06-30 15:03:25'),
(78, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(79, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2021-07-02 01:03:25', '2021-07-02 01:03:25'),
(80, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2021-07-02 01:03:25', '2021-07-02 01:03:25'),
(81, 'confirm_payment', 'Payment was confirmed (amount $228.25) by %user_name%', 0, 19, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(82, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(83, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2021-07-02 19:03:25', '2021-07-02 19:03:25'),
(84, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2021-07-02 19:03:25', '2021-07-02 19:03:25'),
(85, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(86, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 20, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(87, 'update_status', 'Order confirmed by %user_name%', 0, 1, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(88, 'update_status', 'Order confirmed by %user_name%', 0, 8, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(89, 'update_status', 'Order confirmed by %user_name%', 0, 9, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(90, 'update_status', 'Order confirmed by %user_name%', 0, 11, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(91, 'update_status', 'Order confirmed by %user_name%', 0, 12, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(92, 'update_status', 'Order confirmed by %user_name%', 0, 16, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(93, 'update_status', 'Order confirmed by %user_name%', 0, 17, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(94, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 21, NULL, '2021-12-11 03:19:46', '2021-12-11 03:19:46'),
(95, 'create_order', 'New order #10000021 from wisnu', NULL, 21, NULL, '2021-12-11 03:19:47', '2021-12-11 03:19:47'),
(96, 'confirm_order', 'Order was verified by %user_name%', 1, 21, NULL, '2021-12-11 03:21:30', '2021-12-11 03:21:30'),
(97, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 22, NULL, '2021-12-12 00:07:38', '2021-12-12 00:07:38'),
(98, 'create_order', 'New order #10000022 from ', NULL, 22, NULL, '2021-12-12 00:07:39', '2021-12-12 00:07:39'),
(99, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 26, NULL, '2021-12-14 07:25:19', '2021-12-14 07:25:19'),
(100, 'create_order', 'New order #10000026 from ', NULL, 26, NULL, '2021-12-14 07:25:20', '2021-12-14 07:25:20'),
(101, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 27, NULL, '2021-12-14 07:31:29', '2021-12-14 07:31:29'),
(102, 'create_order', 'New order #10000027 from ', NULL, 27, NULL, '2021-12-14 07:31:30', '2021-12-14 07:31:30'),
(103, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 28, NULL, '2021-12-14 07:36:15', '2021-12-14 07:36:15'),
(104, 'create_order', 'New order #10000028 from wisnu', NULL, 28, NULL, '2021-12-14 07:36:16', '2021-12-14 07:36:16'),
(105, 'confirm_order', 'Order was verified by %user_name%', 1, 28, NULL, '2021-12-14 07:47:48', '2021-12-14 07:47:48'),
(106, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 29, NULL, '2021-12-14 08:24:30', '2021-12-14 08:24:30'),
(107, 'create_order', 'New order #10000029 from John Smith', NULL, 29, NULL, '2021-12-14 08:24:31', '2021-12-14 08:24:31'),
(108, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 30, NULL, '2021-12-15 11:44:08', '2021-12-15 11:44:08'),
(109, 'create_order', 'New order #10000030 from firman', NULL, 30, NULL, '2021-12-15 11:44:09', '2021-12-15 11:44:09'),
(110, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 31, NULL, '2021-12-15 11:47:20', '2021-12-15 11:47:20'),
(111, 'create_order', 'New order #10000031 from firman', NULL, 31, NULL, '2021-12-15 11:47:20', '2021-12-15 11:47:20'),
(112, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 33, NULL, '2022-01-02 02:48:13', '2022-01-02 02:48:13'),
(113, 'create_order', 'New order #10000033 from firman', NULL, 33, NULL, '2022-01-02 02:48:13', '2022-01-02 02:48:13'),
(114, 'confirm_order', 'Order was verified by %user_name%', 1, 33, NULL, '2022-01-02 05:02:30', '2022-01-02 05:02:30'),
(115, 'confirm_payment', 'Payment was confirmed (amount Rp250,000) by %user_name%', 1, 33, NULL, '2022-01-02 05:03:28', '2022-01-02 05:03:28'),
(116, 'create_shipment', 'Order was sent to shipping team by %user_name%', 1, 33, NULL, '2022-01-02 05:04:33', '2022-01-02 05:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '90.00', '9.00', '[]', 40, 'Chikie - Bluetooth Speaker', 861.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(2, 1, 1, '80.25', '8.03', '[]', 88, 'Dual Camera 20MP', 741.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(3, 2, 3, '90.00', '9.00', '[]', 39, 'Chikie - Bluetooth Speaker', 2583.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(4, 2, 2, '122.00', '12.20', '[]', 84, 'Phillips Mouse', 1374.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(5, 2, 3, '20.00', '2.00', '[]', 95, 'Beat Headphone', 2091.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(6, 3, 1, '90.00', '9.00', '[]', 39, 'Chikie - Bluetooth Speaker', 861.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(7, 3, 2, '55.00', '5.50', '[]', 46, 'Camera Samsung SS-24', 1398.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(8, 4, 1, '110.00', '11.00', '[]', 52, 'Macbook Pro 2015', 761.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(9, 4, 2, '20.00', '2.00', '[]', 95, 'Beat Headphone', 1394.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(10, 4, 3, '54.00', '5.40', '[]', 104, 'Samsung Smart TV', 1815.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(11, 5, 3, '374.00', '37.40', '[]', 36, 'Boxed - Bluetooth Headphone', 2484.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(12, 5, 3, '123.00', '12.30', '[]', 63, 'Apple Keyboard', 2343.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(13, 5, 1, '110.00', '11.00', '[]', 71, 'Black Smart Watches', 865.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(14, 5, 2, '121.00', '12.10', '[]', 74, 'Leather Watch Band Serial 3', 1262.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(15, 6, 3, '330.00', '33.00', '[]', 34, 'Headphone Ultra Bass', 1578.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(16, 6, 1, '111.00', '11.10', '[]', 47, 'Leather Watch Band', 583.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(17, 7, 3, '120.00', '12.00', '[]', 59, 'Macbook Pro 13 inch', 1695.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(18, 7, 3, '122.00', '12.20', '[]', 70, 'Cool Smart Watches', 2535.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(19, 7, 2, '125.00', '12.50', '[]', 76, 'Macbook Pro 2015 13 inch', 1462.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(20, 7, 1, '57.00', '5.70', '[]', 98, 'Red & Black Headphone', 610.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(21, 8, 2, '90.00', '9.00', '[]', 39, 'Chikie - Bluetooth Speaker', 1722.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(22, 8, 2, '115.00', '11.50', '[]', 80, 'Black Glasses', 1388.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(23, 9, 2, '121.00', '12.10', '[]', 74, 'Leather Watch Band Serial 3', 1262.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(24, 9, 3, '20.00', '2.00', '[]', 94, 'Beat Headphone', 2091.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(25, 9, 2, '57.00', '5.70', '[]', 96, 'Red & Black Headphone', 1220.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(26, 10, 1, '431.00', '43.10', '[]', 33, 'Smart Home Speaker', 771.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(27, 10, 1, '55.00', '5.50', '[]', 45, 'Camera Samsung SS-24', 699.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(28, 10, 1, '113.00', '11.30', '[]', 51, 'Apple iPhone 13 Plus', 572.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(29, 11, 1, '111.00', '11.10', '[]', 48, 'Leather Watch Band', 583.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(30, 11, 3, '110.00', '11.00', '[]', 66, 'Hand playstation', 1530.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(31, 11, 1, '121.00', '12.10', '[]', 74, 'Leather Watch Band Serial 3', 631.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(32, 11, 1, '54.00', '5.40', '[]', 101, 'Audio Equipment', 801.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(33, 12, 3, '125.00', '12.50', '[]', 76, 'Macbook Pro 2015 13 inch', 2193.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(34, 12, 3, '122.00', '12.20', '[]', 82, 'Phillips Mouse', 2061.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(35, 12, 2, '116.00', '11.60', '[]', 102, 'Smart Televisions', 1050.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(36, 13, 1, '111.00', '11.10', '[]', 64, 'MacSafe 80W', 646.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(37, 13, 2, '110.00', '11.00', '[]', 67, 'Hand playstation', 1020.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(38, 13, 1, '127.00', '12.70', '[]', 69, 'Apple Airpods Serial 3', 724.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(39, 13, 2, '122.00', '12.20', '[]', 82, 'Phillips Mouse', 1374.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(40, 14, 2, '115.00', '11.50', '[]', 81, 'Black Glasses', 1388.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(41, 14, 2, '40.50', '4.05', '[]', 91, 'Smart Watches', 1544.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(42, 15, 3, '110.00', '11.00', '[]', 72, 'Black Smart Watches', 2595.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(43, 15, 3, '119.00', '11.90', '[]', 77, 'Historic Alarm Clock', 2508.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(44, 15, 3, '115.00', '11.50', '[]', 81, 'Black Glasses', 2082.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(45, 15, 1, '116.00', '11.60', '[]', 102, 'Smart Televisions', 525.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(46, 16, 1, '431.00', '43.10', '[]', 32, 'Smart Home Speaker', 771.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(47, 16, 3, '90.00', '9.00', '[]', 39, 'Chikie - Bluetooth Speaker', 2583.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(48, 16, 2, '120.00', '12.00', '[]', 59, 'Macbook Pro 13 inch', 1130.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(49, 16, 1, '20.00', '2.00', '[]', 95, 'Beat Headphone', 697.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(50, 17, 2, '110.00', '11.00', '[]', 68, 'Hand playstation', 1020.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(51, 17, 1, '110.00', '11.00', '[]', 71, 'Black Smart Watches', 865.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(52, 17, 3, '80.25', '8.03', '[]', 87, 'Dual Camera 20MP', 2223.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(53, 17, 3, '20.00', '2.00', '[]', 93, 'Beat Headphone', 2091.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(54, 18, 3, '90.00', '9.00', '[]', 39, 'Chikie - Bluetooth Speaker', 2583.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(55, 18, 3, '110.00', '11.00', '[]', 71, 'Black Smart Watches', 2595.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(56, 18, 1, '122.00', '12.20', '[]', 83, 'Phillips Mouse', 687.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(57, 18, 3, '20.00', '2.00', '[]', 95, 'Beat Headphone', 2091.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(58, 19, 1, '46.00', '4.60', '[]', 42, 'Camera Hikvision HK-35VS8', 896.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(59, 19, 1, '121.00', '12.10', '[]', 75, 'Leather Watch Band Serial 3', 631.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(60, 19, 1, '40.50', '4.05', '[]', 91, 'Smart Watches', 772.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(61, 20, 2, '55.00', '5.50', '[]', 46, 'Camera Samsung SS-24', 1398.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(62, 20, 2, '110.00', '11.00', '[]', 67, 'Hand playstation', 1020.00, 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(64, 21, 1, '344.00', '0.00', '[]', 106, 'Hi', 23.00, 0, '2021-12-11 03:19:46', '2021-12-11 03:19:46'),
(66, 22, 1, '344.00', '0.00', '[]', 106, 'Hi', 23.00, 0, '2021-12-12 00:07:38', '2021-12-12 00:07:38'),
(67, 23, 13, '230000.00', '0.00', '[]', 107, 'MUKENAH', 299.00, 0, '2021-12-12 01:04:01', '2021-12-12 01:04:01'),
(68, 24, 22, '230000.00', '0.00', '[]', 125, 'Aurum Dress Pocket Busui Friendly', 11000.00, 0, '2021-12-13 17:43:33', '2021-12-13 17:43:33'),
(69, 25, 24, '130000.00', '0.00', '[]', 130, 'Yoona Dress Pocket Busui Friendly', 12000.00, 0, '2021-12-14 06:08:52', '2021-12-14 06:08:52'),
(71, 26, 16, '80000.00', '0.00', '[]', 119, 'Miracle Voal (Arabian Voile) Original Syamaita', 0.10, 0, '2021-12-14 07:25:19', '2021-12-14 07:25:19'),
(73, 27, 1, '259000.00', '0.00', '[]', 135, 'Forte Corduroy Jacket Maroon', 500.00, 0, '2021-12-14 07:31:29', '2021-12-14 07:31:29'),
(75, 28, 1, '250000.00', '0.00', '[]', 133, 'Bomber Corduroy Jacket Hickory Regular', 500.00, 0, '2021-12-14 07:36:15', '2021-12-14 07:36:15'),
(77, 29, 1, '259999.00', '0.00', '[]', 136, 'Forte Corduroy Jacket Brown', 500.00, 0, '2021-12-14 08:24:30', '2021-12-14 08:24:30'),
(81, 30, 1, '170000.00', '0.00', '[]', 150, 'Bestari Skirt Sorgum', 996.00, 0, '2021-12-15 11:44:08', '2021-12-15 11:44:08'),
(82, 30, 1, '250000.00', '0.00', '[]', 149, 'Genta Pants Saliwah', 996.00, 0, '2021-12-15 11:44:08', '2021-12-15 11:44:08'),
(83, 30, 2, '359000.00', '0.00', '[]', 106, 'HiForte Corduroy Jacket Brown', 996.00, 0, '2021-12-15 11:44:08', '2021-12-15 11:44:08'),
(85, 31, 1, '154000.00', '0.00', '[]', 127, 'Linen Cullote Pants Yure Kulot Celana Original Highwaist Tali Karet Pinggang', 0.10, 0, '2021-12-15 11:47:20', '2021-12-15 11:47:20'),
(86, 32, 1, '359000.00', '0.00', '[]', 106, 'HiForte Corduroy Jacket Brown', 23.00, 0, '2021-12-23 02:04:44', '2021-12-23 02:04:44'),
(88, 33, 1, '250000.00', '0.00', '[]', 152, 'Maryland Baru', 390.00, 0, '2022-01-02 02:48:13', '2022-01-02 02:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `is_searchable` tinyint(4) NOT NULL DEFAULT 0,
  `is_show_on_list` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(106, 'HiForte Corduroy Jacket Brown', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. </span><i>Cuttingloose</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan </span><i>drop shoulder</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">, dengan hidden </span><i>snap button</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.</span></p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Material:</span></p><p style=\"margin-left:0px;\"><i>100% Premium Corduroy</i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.</span></p><p><br>&nbsp;</p>', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Info:</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">2. On model menggunakan size S (Wanita), dan size L (Pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">3. Silakan ukur sesuai detail size yang tertera</span></p>', 'published', '[\"products\\/1-4.jpg\"]', 'JKT0', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 359000, NULL, NULL, NULL, NULL, NULL, 177.00, 23.00, NULL, NULL, NULL, NULL, NULL, '2021-12-11 03:10:58', '2021-12-15 11:44:08', 0, 2, 'in_stock'),
(107, 'Forte Corduroy Jacket Maroon', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. </span><i>Cuttingloose</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan </span><i>drop shoulder</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">, dengan hidden </span><i>snap button</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.</span></p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Material:</span></p><p style=\"margin-left:0px;\"><i>100% Premium Corduroy</i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.</span></p>', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Info:</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">2. On model menggunakan size S (Wanita), dan size L (Pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">3. Silakan ukur sesuai detail size yang tertera</span></p>', 'published', '[\"products\\/forte-corduroy-jacket-men-maroon-2-1634550458703-resized1024.jpg\"]', 'JKT', 0, 12, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 230000, NULL, NULL, NULL, NULL, NULL, 177.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 00:45:42', '2021-12-12 10:42:17', 0, 4, 'in_stock'),
(108, 'Ritardando T-shirt Maroon', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Unisex T-Shirt dengan panjang lengan yang jatuh di atas siku, </span><i>cuttingloose</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan </span><i>drop shoulder</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">, label siluet bunga mawar di bagian sisi kiri bawah. Menggunakan material </span><i>Cotton Bamboo</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> yang cocok dikenakan sebagai daily wear.</span></p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Material:&nbsp;</span></p><p style=\"margin-left:0px;\"><i>Cotton Bamboo</i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Serat lebih sejuk, lembut, tidak terlalu tipis dan tebal, nyaman.</span></p>', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Info:</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">1. Tinggi badan model 177 cm (wanita) dan 180 cm (pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">2. On model menggunakan size S (Wanita) dan size M (Pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">3. Silakan ukur sesuai detail ukuran yang tertera</span></p>', 'published', '[\"products\\/2-4.jpg\"]', 'MARN1', 0, 12, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 189000, NULL, NULL, NULL, 0.00, 0.00, 177.00, -170200.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 12:04:16', '2021-12-12 12:04:16', NULL, 0, 'in_stock'),
(109, 'Forte Corduroy Jacket Cream', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. </span><i>Cuttingloose</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan </span><i>drop shoulder</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">, dengan hidden </span><i>snap button</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\"> dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.</span></p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Material:</span></p><p style=\"margin-left:0px;\"><i>100% Premium Corduroy</i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.</span></p>', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Info:</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">2. On model menggunakan size S (Wanita), dan size L (Pria)</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">3. Silakan ukur sesuai detail size yang tertera</span></p>', 'published', '[\"products\\/3-4.jpg\"]', 'JKTC', 0, 13, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 359000, NULL, NULL, NULL, 0.00, 0.00, 177.00, -500625.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 12:49:03', '2021-12-12 12:54:40', NULL, 1, 'in_stock'),
(110, 'Argyle Knit Vest Chestnut', '<p><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">Argyle Knit Vest adalah </span><i>sleeveless </i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">vest bermotif Argyle atau wajik dengan kombinasi 4 warna. Hadir dengan </span><i>boxy cutting</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">, yaitu </span><i>drop shoulder</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\"> pada bagian bahu dan </span><i>loose</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\"> di badan. Bagian lehernya berbentuk V atau </span><i>V-neck</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">. Materialnya lebih kokoh dan tebal dibandingkan Knit Vest sebelumnya. Menjadikan look kamu terlihat lebih </span><i>casual</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">.</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Material:</span></p><p style=\"margin-left:0px;\"><i><strong>Premium Cotton Knit</strong></i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan</span></p>', '<p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Info:</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">1. Harap ukur sesuai detail size yang sudah diberikan</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">2. Tinggi badan model wanita 163 cm dan model pria 185 cm</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">3. On model wanita menggunakan size M dan model pria menggunakan size L</span></p>', 'published', '[\"products\\/4-4.JPG\"]', 'Chestnut', 0, 23, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 249000, NULL, NULL, NULL, 0.00, 0.00, 163.00, 300.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 13:01:39', '2021-12-12 13:01:39', NULL, 0, 'in_stock'),
(111, 'Corduroy Shacket Hickory', '<p><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">Corduroy Shacket atau </span><i>shirt jacket</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\"> yang berarti kemeja jaket dari material Corduroy. Menariknya, Corduroy Shacket ini dapat kamu kenakan dengan dua model, yaitu sebagai kemeja atau jaket. Corduroy Shacket ini pun </span><i>unisex</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">, dapat dikenakan oleh pria maupun wanita. Hadir dengan </span><i>oversized cutting</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\"> yang cocok dikenakan sebagai </span><i>outer</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\"> dan memudahkan kamu untuk </span><i>mix and match outfit</i><span style=\"background-color:transparent;color:rgb(0,0,0)!important;font-size:16px;\">.&nbsp;</span></p>', '<h2 style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Material:</span></h2><p style=\"margin-left:0px;\"><strong>Velvet Corduroy</strong></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Nyaman, tidak tebal, bertekstur lembut, sedikit stretch</span></p>', 'published', '[\"products\\/5-4.jpg\"]', 'Shacket', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 229000, NULL, NULL, NULL, 0.00, 0.00, 163.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 13:18:26', '2021-12-12 13:18:26', NULL, 0, 'in_stock'),
(112, 'Daily Shirt Men Ivory', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-size:16px;\">Daily Shirt kembali hadir dengan warna dan motif yang menarik. Kemeja linen untuk pria dengan kerah reguler. Dengan detail kancing bukaan pada sisi depan badan dan saku di sisi kiri. Materialnya yang ringan dan mudah menyerap keringat, sehingga dapat kamu kenakan di segala kesempatan.&nbsp;</span></p><p style=\"margin-left:0px;\"><strong>Material</strong></p><p style=\"margin-left:0px;\"><i><strong>Linen Rayon</strong></i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">Mudah menyerap keringat, tidak membuat gerah, ringan dan jatuh, berasal dari serat alami, sehingga tidak ironless.</span></p>', '<p style=\"margin-left:0px;\"><strong>Info:</strong></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">1. Harap ukur sesuai detail size yang sudah diberikan</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">2. Tinggi badan model 175 cm</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;color:rgb(0,0,0)!important;\">3. On model menggunakan size M</span></p>', 'published', '[\"products\\/6-2.jpg\"]', 'Ivory', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 209000, NULL, NULL, NULL, 0.00, 0.00, 175.00, 350.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 13:27:13', '2021-12-13 11:59:26', NULL, 1, 'in_stock'),
(113, 'Taksa Outer Cengkih', '<p><strong>Taksa Outer</strong><span style=\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\">,</span><i> </i><span style=\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\">luaran bertekstur unik dan berbahan linen dengan </span><i>loose cutting </i><span style=\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\">ini, pasti akan menjadi andalan. Karena mudah dipadukan dengan apa saja. Hadir dengan detail </span><i>slit</i><span style=\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\"> di sisi kanan dan kiri yang</span><i> simple</i><span style=\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\"> dan minimalis, </span><i>effortless but still look stylish</i><span style=\"background-color:transparent;color:rgba(51,51,51,0.8);font-size:16px;\">!&nbsp;</span></p><p style=\"margin-left:0px;\"><strong>Material:</strong></p><p style=\"margin-left:0px;\"><i>Cotton Linen</i></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;\">Bertekstur unik, ringan, dan tidak membuat gerah</span></p><p><br>&nbsp;</p>', '<p style=\"margin-left:0px;\"><strong>Info:</strong></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;\">1. Harap ukur sesuai detail </span><i>size</i><span style=\"background-color:transparent;\"> yang sudah diberikan</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;\">2. Tinggi badan model : 168 cm&nbsp;</span></p><p style=\"margin-left:0px;\"><span style=\"background-color:transparent;\">3. </span><i>On model </i><span style=\"background-color:transparent;\">menggunakan size M</span></p>', 'published', '[\"products\\/7-2.jpg\"]', 'Cengkih', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 199000, NULL, NULL, NULL, 0.00, 0.00, 168.00, -250300.00, NULL, NULL, NULL, NULL, NULL, '2021-12-12 13:32:19', '2021-12-12 13:32:19', NULL, 0, 'in_stock'),
(114, 'Miracle Voile', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(38,38,38);\">Hijab yg tipis tapi bisa tegap di dahi, berpori ga bikin gerah, lembut banget! Yakin, ga bisa cuma punya 1😁 100% cotton miracle arabian voile, bukan yg cepat berbulu bakalan awet sampai 5 tahun lebih pun!</span></p>', NULL, 'published', '[\"products\\/1-5.jpg\"]', 'HMV', 0, 11, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 55000, NULL, NULL, NULL, 130.00, 0.00, 130.00, 22.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:18:58', '2021-12-13 12:31:25', NULL, 0, 'in_stock'),
(115, 'Miracle Voile', NULL, NULL, 'published', '[\"products\\/1-5.jpg\"]', 'HMV', 0, 11, 0, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 55000, NULL, NULL, NULL, 130.00, 0.00, 130.00, 22.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:19:00', '2021-12-13 12:31:25', NULL, 0, 'in_stock'),
(116, 'Gazelle Square Cotton Import', '<p>Bahan: katun import Lebih berisi dari Miracle Voal jadi lebih mudah tegapnyaa, bertekstur khas, ironless! Gausah repot2 setrika kalau mau buru2 pakee tuuh cotton 100% jadi udh pasti adem. Ga akan terawang kalau dijadikan segitiga udh pasti lah yaa hihi</p>', NULL, 'published', '[\"products\\/2-5.jpg\"]', 'GSCI', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 45000, NULL, NULL, NULL, 120.00, 120.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:35:56', '2021-12-13 12:35:56', NULL, 0, 'in_stock'),
(117, 'Wateresist Voile Syamaita TAHAN AIR', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">Material voal terbaikk dilapisi lapisan hidrophobic sehingga tahan cipratan air (kalau direndam dengan air tetap menyerap namun cepat kering, tetap bisa dicuci). Kainnya juga berpori jadi tidak perlu khawatir gerah 👌</span></p>', NULL, 'published', '[\"products\\/3-5.jpg\"]', 'WVSTA', 0, 23, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 66000, NULL, NULL, NULL, 120.00, 120.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:39:07', '2021-12-13 12:39:07', NULL, 0, 'in_stock'),
(118, 'Tie-Dye Set Ruffle Syamaita baju rumah', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">Material: Rayon Cotton bahan dingin dan lembut</span></p>', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">atasan:</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">&nbsp;LD +-115cm</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">&nbsp;PB +- 70cm&nbsp;</span></p><p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">PT +- 58cm&nbsp;</span><br>&nbsp;</p><p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">bawahan: lingkar pinggang allsize fit from S to XL Panjang: +-93cm</span></p>', 'published', '[\"products\\/4-6.jpg\"]', 'Ruffle', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 175000, NULL, NULL, NULL, 0.00, 0.00, 93.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:43:37', '2021-12-13 12:43:37', NULL, 0, 'in_stock'),
(119, 'Miracle Voal (Arabian Voile) Original Syamaita', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">Ukuran 120cm x 120cm / 130x130cm (toleransi +-2cm) Bahan miracle voal ini sangat nyaman, ringan, adem, porinya besar, tipis tapi tidak terawang (untuk warna terang akan berbayang yaa lebih aman pakai ciput lagi), tidak licin jugaa.. ahhh enakeun pokoknya hihi😍</span></p>', NULL, 'published', '[\"products\\/5-5.jpg\"]', 'Miracle', 0, 7, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 80000, NULL, NULL, NULL, 120.00, 120.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:50:56', '2021-12-14 07:25:20', NULL, 1, 'in_stock'),
(120, 'Bella square premium ANTI LETOY', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">Cocok bnget buat dipakai sehari-hari untuk kerja, kuliah, hangout, nyaman banget, mudah diatur tegak di dahi &amp; ANTI LETOY ANTI LEPEK</span></p>', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">Ukuran 110X110 Bahan polycotton premium (bahan memang tipis sesuai karakterisik polycotton, adem, ngga gampang letoy)</span></p>', 'published', '[\"products\\/6-3.jpg\"]', 'DSS', 0, 13, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 45000, NULL, NULL, NULL, 110.00, 110.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 12:55:36', '2021-12-13 12:55:36', NULL, 0, 'in_stock'),
(121, 'SEGITIGA BALQIS instan - Bahan Diamond', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">- Ukuran 125*125 sesuai foto yan guys - BAHAN DIAMOND IMPORT , Dijamin bagus kak - insya Allah jahitan bagus kak.. dijamin memuaskan - Harga sangat mudah, cocok dijual lagi, peluang buat reseller - di pakai sendiri juga nyaman di kantong</span></p>', NULL, 'published', '[\"products\\/7-3.jpg\"]', 'SGTI', 0, 33, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 80000, NULL, NULL, NULL, 125.00, 125.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 13:13:23', '2021-12-13 13:28:02', NULL, 1, 'in_stock'),
(122, 'Instant Diamond Lasercut', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">Berikut adalah keterangan produknya ~Ukuran depan dari bahu ke perut 90 cm ~Panjang belakang dari kepala ke punggung kurang lebih 92 cm ~Lingkar muka 54 cm Kelebihan kain Diamond Stretch: - Simple, mudah dipakai &amp; tidak ribet - Bisa dipakai dengan banyak variasi cantik - Harganya murah tapi tidak murahan - Menutup Dada - Finishing LASERCUT - Nyaman dipakai - Lightweight (kainnya ringan) - Lembut khas kain Diamond Stretch - Tidak menerawang - Tidak gampang kusut - Tidak licin</span></p>', NULL, 'published', '[\"products\\/8-2.jpg\"]', 'DMD', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 97900, NULL, NULL, NULL, 120.00, 120.00, 0.00, 55.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 13:30:28', '2021-12-13 13:30:28', NULL, 0, 'in_stock'),
(123, 'HIJAB PASHMINA CERUTY BABYDOLL', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">•WAJIB MEMAKAI WARNA CADANGAN 1 atau beberapa warna ,contoh : klo kosong warna milo boleh ganti hazel •simpan nomer wa yang bisa dihubingi jika kosong di catatan pembeli , jika tidak bisa di hubungi barang kosong akan di random 🙏 •jika tidak ingin di random tolong tulis , kosong = konfirmasi •bahan yg kita pakai dari 3 gudang bahan pasti akan berbeda setiap warnanya ya tapi tetep bahan babydoll yang cantik</span></p>', NULL, 'published', '[\"products\\/9-1-1.jpg\",\"products\\/93.jpg\",\"products\\/92.jpg\"]', 'CB', 0, 33, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 79800, NULL, NULL, NULL, 125.00, 125.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 13:39:06', '2021-12-13 13:39:06', NULL, 0, 'in_stock'),
(124, 'Pasmina Crinkle Polos', '<p><span style=\"background-color:rgb(255,255,255);color:rgba(0,0,0,0.8);\">• Bahan Katun Voal Krepe • Enak Di Pakai Dan Gampang Di Bentuk • Ukuran Lebih Besar Dan Panjang Dari Pasmina Lainya 185x90cm • Untuk Produk Ini Kami Mempunyai 60warna Lainnya Jika Di Etalase Kosong Silahkan Chat Admint Kami Minta Warna Yg Di Inginkan Dan • Kami Juga Menyediakan Dalaman Ninja Tali Warna Hitam&nbsp;</span></p>', NULL, 'published', '[\"products\\/101.jpg\",\"products\\/102.jpg\"]', 'CBF', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 67000, NULL, NULL, NULL, 120.00, 120.00, 0.00, 12.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 13:43:56', '2021-12-13 13:46:54', NULL, 0, 'in_stock'),
(125, 'Aurum Dress Pocket Busui Friendly', '<p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Gaun Aurum dengan Saku! - Size XS/S/M/L/XL Lingkar Dada 88/92/98/105/120 Lebar Ketiak 44/46/48/50/54 Panjang Baju 135/135/137/137/137cm Panjang Tangan 60cm ❗️Terdapat saku , Busui Friendly tersembunyi BUSUI &amp; WUDHU FRIENDLY Bahan: Barbie Crepe (adem, ringan, tidak terawang) - #dress #gamis #dressrample</span></p>', NULL, 'published', '[\"products\\/1-6.jpeg\",\"products\\/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg\"]', 'JHJK', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 230000, NULL, NULL, NULL, 60.00, 0.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 16:15:31', '2021-12-14 05:53:05', NULL, 3, 'in_stock'),
(126, 'Yuna-bi Linen Cullote', NULL, '<p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Size Chart: Tersedia panjang 93cm dan 97cm Lingkar Pinggang Allsize : 56cm (min) - 110cm (max)</span></p>', 'published', '[\"products\\/43ae3adcd9e5d6ed3540c542f7e918c9-1632457230584.jpeg\",\"products\\/da77f0f75b060af07749d0bb9540f482-1632457230059.jpeg\",\"products\\/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\",\"products\\/58aefc242315169ed769312c2612363f-1632457230816.jpeg\",\"products\\/11.jpeg\"]', 'JJKSD', 0, 13, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 180000, NULL, NULL, NULL, 93.00, 97.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 16:42:09', '2021-12-13 16:42:53', NULL, 1, 'in_stock'),
(127, 'Linen Cullote Pants Yure Kulot Celana Original Highwaist Tali Karet Pinggang', '<p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">material linen textured bangkok tipis, ringan, dan berpori. best material karena ringan untuk sehari-hari tapi kuat, tidak mudah robek, dan saat dipakai tidak terawang .</span></p><p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">&nbsp;Allsize fit XS to XL (bb 80kg muat) LP : Min 56cm Max 110cm (pinggang full karet) P : -+ 90cm (utk tb 158cm ke bawah) &amp; +-93 (untuk tb 163cm ke bawah) bisa dipakai di atas 163cm tp di atas mata kaki Lingkar Paha : 68cm Untuk P : Panjang Celana warna bw/putih terbaru memakai full furing sehingga tidak terawang</span></p>', NULL, 'published', '[\"products\\/4b5409d70bba8e571e4d3d48dba2ffd4-1631780013224.jpeg\",\"products\\/4b8cbe862e17a0da5951c231cf98f1a1-1631780012941.jpeg\",\"products\\/f9740587-72f6-486c-bc5d-65cfdbba5a6a-1636548562497.png\",\"products\\/577c5cb6499ce94c175c6ee40c0eaeae-1631780012791.jpeg\"]', 'QHJJ', 0, 21, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 154000, NULL, NULL, NULL, 158.00, 110.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 16:49:36', '2021-12-15 11:47:20', NULL, 1, 'in_stock'),
(128, 'ELS Skirt', '<p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Material : Suede HQ Lembut di luar, sedikit mengembang jatuhnya jadi meskipun cuttingnya A-Line tetap terlihat megah, sedikit shiny apabila terkena cahaya&nbsp;</span><br>&nbsp;</p><p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">(Bisa disetrika dari dalam atau bag luar pakai steamer)</span></p><p style=\"margin-left:0px;\">Size : Lingkar Pinggang : 62-86cm Panjang : +-93cm (amannya dipakai untuk 40-60kg) ada resleting di samping kiri, saku di kanan</p><p style=\"margin-left:0px;\">Berat: 230g</p>', NULL, 'published', '[\"products\\/3-6.jpeg\"]', 'SSDD', 0, 23, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 145000, NULL, NULL, NULL, 62.00, 86.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 17:11:37', '2021-12-13 17:38:09', NULL, 1, 'in_stock'),
(129, 'Linen Ankle Pants', '<p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Linen Ankle Pants (on Jade Green colour)</span></p><p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Material: Linen Angel Textured Bangkok (ringan, berpori dan bertekstur, adem)</span></p><p><br><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Finally bisa ngeluarin Linen serian pants! Kali ini modelnya “Baggy Pants” yaa jadi bisa dipakai untuk yg berpaha kecil maupun besar tapi ujung kaki mengecil sehingga terlihat ramping 🥰</span></p><p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">On model tinggi badan 155cm bb 58kg dipakai di perut jadi terlihat “highwaist” yaa</span></p><p><span style=\"background-color:rgb(252,241,250);color:rgba(0,0,0,0.8);font-size:16px;\">Detail size: ALLSIZE bestfit from 40kg to 68kg Lingkar perut: +- 65-90cm (bagian belakang full karet) Lingkar pinggang +- 100cm Lingkar paha +- 68cm Lingkar pergelangan kaki +-37cm Panjang celana: +- 97cm (untuk tb 150an cm jadi look highwaist, untuk tb di atas 160cm jadi ankle pants yaa sedikit di atas mata kaki)</span></p>', NULL, 'published', '[\"products\\/4-8.jpeg\",\"products\\/66f4090b-f6d8-48dd-a882-6f2d50d58f50-1628352126418.jpeg\",\"products\\/99657342e35ff706d54b8ea0c746b98e-1628305448360.jpeg\"]', 'SAA', 0, 13, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 187999, NULL, NULL, NULL, 65.00, 90.00, 0.00, 280.00, NULL, NULL, NULL, NULL, NULL, '2021-12-13 17:18:13', '2021-12-13 17:18:13', NULL, 0, 'in_stock'),
(130, 'Yoona Dress Pocket Busui Friendly', '<p>Gaun Yoona dengan Saku! @- @Size XS/S/M/L/XL @Lingkar Dada 88/92/98/105/120 @Lebar Ketiak 44/46/48/50/54 @Panjang Baju 135/135/137/137/137cm @Panjang Tangan 60cm @❗️Terdapat saku , Busui Friendly tersembunyi @BUSUI &amp; WUDHU FRIENDLY @Bahan: Barbie Crepe (adem, ringan, tidak terawang)</p>', NULL, 'published', '[\"products\\/71c69fd01c3bfe00630c6b3fbc2ec43c-1626501615252.jpeg\"]', 'SDD', 0, 23, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 130000, NULL, NULL, NULL, 135.00, 60.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:07:15', '2021-12-14 06:08:18', NULL, 1, 'in_stock'),
(131, 'Staccato Denim Jacket Mid', '<p>Jaket denim yang nyaman dan stylish dengan model crop. Detail pleat pada sisi lengan atas yang unik, dengan dua saku pada bagian sisi depan, kerah regular dengan THENBLANK signature button.</p><p>&nbsp;</p><p>Material:</p><p>100% Cotton Denim</p><p>Katun denim yang tidak kaku, tidak tipis dan tidak terlalu tebal sehingga tidak membuat terlihat lebih bervolume.</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm</p><p>2. On model menggunakan size S</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/11-1.jpg\"]', 'SDJM', 0, 12, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 177.00, 177.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:14:50', '2021-12-14 06:14:50', NULL, 0, 'in_stock'),
(132, 'Staccato Denim Jacket Light', '<p>Jaket denim yang nyaman dan stylish dengan model crop. Detail pleat pada sisi lengan atas yang unik, dengan dua saku pada bagian sisi depan, kerah regular dengan THENBLANK signature button.</p><p>&nbsp;</p><p>Material:</p><p>100% Cotton Denim</p><p>Katun denim yang tidak kaku, tidak tipis dan tidak terlalu tebal sehingga tidak membuat terlihat lebih bervolume.</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm</p><p>2. On model menggunakan size S</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/22.jpg\",\"products\\/23.jpg\",\"products\\/12.jpg\"]', 'SDJM', 0, 22, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 177.00, 177.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:19:39', '2021-12-14 06:19:39', NULL, 0, 'in_stock'),
(133, 'Bomber Corduroy Jacket Hickory Regular', '<p>A new jacket is coming your way: Bomber Jacket. Hadir dalam dua ukuran, regular-sized dan oversized. Terdapat detail zipper pada bagian depan, dua saku di sisi kanan dan kiri badan, serta karet pada hemline dan pergelangan tangan. Materialnya bertekstur lembut dan sedikit stretch, perfect for your casual style!</p>', '<p>Material:&nbsp;<br>Velvet Corduroy</p><p>Nyaman, tidak tebal, bertekstur lembut, sedikit stretch</p><p>__</p><p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model 163 cm</p><p>3. On model menggunakan size S</p><p>&nbsp;</p>', 'published', '[\"products\\/33.jpg\",\"products\\/32.jpg\",\"products\\/34.jpg\",\"products\\/31.jpg\"]', 'BCJHR', 0, 10, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 165.00, 165.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:25:29', '2021-12-14 07:36:15', NULL, 1, 'in_stock'),
(134, 'Forte Corduroy Jacket Cream', '<p>Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. Cuttingloose dan drop shoulder, dengan hidden snap button dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.</p><p>&nbsp;</p><p>Material:</p><p>100% Premium Corduroy</p><p>Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.</p><p>&nbsp;</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)</p><p>2. On model menggunakan size S (Wanita), dan size L (Pria)</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/42.jpg\",\"products\\/41.jpg\"]', 'FCJM', 0, 12, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 249000, NULL, NULL, NULL, 180.00, 180.00, 160.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:33:15', '2021-12-14 06:33:15', NULL, 0, 'in_stock'),
(135, 'Forte Corduroy Jacket Maroon', '<p>Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. Cuttingloose dan drop shoulder, dengan hidden snap button dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.</p><p>&nbsp;</p><p>Material:</p><p>100% Premium Corduroy</p><p>Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)</p><p>2. On model menggunakan size S (Wanita), dan size L (Pria)</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/forte-corduroy-jacket-men-maroon-2-1634550458703-resized1024.jpg\",\"products\\/51.jpg\",\"products\\/55.jpg\",\"products\\/53.jpg\",\"products\\/52.jpg\"]', 'FCJM', 0, 22, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 259000, NULL, NULL, NULL, 177.00, 177.00, 180.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:39:43', '2021-12-14 07:31:29', NULL, 1, 'in_stock'),
(136, 'Forte Corduroy Jacket Brown', '<p>Unisex Corduroy Jacket. Jaket corduroy bertekstur khas dan eksklusif. Cuttingloose dan drop shoulder, dengan hidden snap button dan empat saku, terbagi di sisi depan dan samping. Perfect for your casual day.</p><p>&nbsp;</p><p>Material:</p><p>100% Premium Corduroy</p><p>Berserat cotton, nyaman, tidak terlalu tebal atau tipis, lembut, kualitas corduroy terbaik.</p><p>&nbsp;</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm (wanita) dan 180cm (pria)</p><p>2. On model menggunakan size S (Wanita), dan size L (Pria)</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/63.jpg\",\"products\\/62.jpg\",\"products\\/61.jpg\"]', 'FCJB', 0, 20, 1, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 259999, NULL, NULL, NULL, 177.00, 177.00, 180.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 06:44:10', '2021-12-14 08:24:30', NULL, 0, 'in_stock'),
(137, 'Dolce Knit Top Almond', '<p>Atasan rajut berbahan dasar Knit. Cuttingloose fit dengan aksen puff atau balon pada sisi lengan atas, serta fit pada pergelangan tangannya. Keunikannya ada pada variasi teknik rajut yang berbeda antara badan dan lengan, menghasilkan look yang eksklusif.</p><p>&nbsp;</p><p>Material:</p><p>Premium Cotton Knit</p><p>Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan.</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm</p><p>2. On model menggunakan size S</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/12-1.jpg\",\"products\\/13.jpg\",\"products\\/11-3.jpg\"]', 'DKTA', 0, 12, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 177.00, 177.00, 0.00, 250.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 08:44:54', '2021-12-14 08:44:54', NULL, 0, 'in_stock'),
(138, 'Andante Cardigan Black', '<p>Cardigan berlengan panjang dengan kancing bungkus di bagian bukaan tengah depan. Cuttingloose-fit dan model crop, cocok dipadukan dengan bawahan yang lebih loose untuk tampilan yang seimbang. Material Knit yang halus dan lembut, menjadikan penampilanmu terlihat sweet and stylish!</p><p>&nbsp;</p><p>Material:</p><p>Premium Cotton Knit</p><p>Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan</p><p>&nbsp;</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm</p><p>2. On model menggunakan size S</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/23-1.jpg\",\"products\\/22-1.jpg\",\"products\\/21.jpg\"]', 'ACB', 0, 13, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 249999, NULL, NULL, NULL, 177.00, 177.00, 0.00, 270.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 08:50:20', '2021-12-14 08:50:20', NULL, 0, 'in_stock'),
(139, 'Andante Cardigan Maroon', '<p>Cardigan berlengan panjang dengan kancing bungkus di bagian bukaan tengah depan. Cuttingloose-fit dan model crop, cocok dipadukan dengan bawahan yang lebih loose untuk tampilan yang seimbang. Material Knit yang halus dan lembut, menjadikan penampilanmu terlihat sweet and stylish!</p><p>&nbsp;</p><p>Material:</p><p>Premium Cotton Knit</p><p>Rajut rapat yang terbuat dari kapas terpilih sehingga lembut dan tidak panas saat dikenakan</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm</p><p>2. On model menggunakan size S</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/33-1.jpg\",\"products\\/32-1.jpg\",\"products\\/31-1.jpg\"]', 'ACM', 0, 13, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 240000, NULL, NULL, NULL, 177.00, 177.00, 0.00, 250.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 08:55:01', '2021-12-14 08:55:01', NULL, 0, 'in_stock'),
(140, 'Basic Shirt Caramel', '<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.</p><p>&nbsp;</p><p>Material:</p><p>Cotton</p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)</p><p>&nbsp;</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model 171 cm</p><p>3. On model menggunakan size S</p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian</p>', 'published', '[\"products\\/13-1.jpg\",\"products\\/12-2.jpg\",\"products\\/11-4.jpg\"]', 'BSC', 0, 19, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 249999, NULL, NULL, NULL, 177.00, 177.00, 0.00, 350.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 09:01:29', '2021-12-14 09:01:29', NULL, 0, 'in_stock'),
(141, 'Basic Shirt Brown', '<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.</p><p>&nbsp;</p><p>Material:</p><p>Cotton</p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model 163 cm</p><p>3. On model menggunakan size S</p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian</p>', 'published', '[\"products\\/21-1.jpg\",\"products\\/22-2.jpg\",\"products\\/23-2.jpg\"]', 'BSB', 0, 24, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 177.00, 177.00, 0.00, 350.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 09:05:26', '2021-12-14 09:05:26', NULL, 0, 'in_stock'),
(142, 'Basic Shirt Jade', '<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.</p><p>&nbsp;</p><p>Material:</p><p>Cotton</p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model 163 cm</p><p>3. On model menggunakan size S</p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian</p>', 'published', '[\"products\\/32-2.jpg\",\"products\\/33-2.jpg\",\"products\\/31-2.jpg\"]', 'BSJ', 0, 23, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 249999, NULL, NULL, NULL, 177.00, 177.00, 0.00, 350.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 09:09:02', '2021-12-14 09:09:02', NULL, 0, 'in_stock'),
(143, 'Ritardando T-shirt Broken White', '<p>Unisex T-Shirt dengan panjang lengan yang jatuh di atas siku, cuttingloose dan drop shoulder, label siluet bunga mawar di bagian sisi kiri bawah. Menggunakan material Cotton Bamboo yang cocok dikenakan sebagai daily wear.</p><p>&nbsp;</p><p>Material:</p><p>Cotton Bamboo</p><p>Serat lebih sejuk, lembut, tidak terlalu tipis dan tebal, nyaman.</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm (wanita) dan 180 cm (pria)</p><p>2. On model menggunakan size S (Wanita) dan size M (Pria)</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/42-1.jpg\",\"products\\/41-1.jpg\",\"products\\/43.jpg\"]', 'RTBW', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 159999, NULL, NULL, NULL, 180.00, 177.00, 0.00, 200.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 09:14:07', '2021-12-14 09:14:07', NULL, 0, 'in_stock'),
(144, 'Ritardando T-shirt Dusty Rose', '<p>Unisex T-Shirt dengan panjang lengan yang jatuh di atas siku, cuttingloose dan drop shoulder, label siluet bunga mawar di bagian sisi kiri bawah. Menggunakan material Cotton Bamboo yang cocok dikenakan sebagai daily wear.</p><p>&nbsp;</p><p>Material:</p><p>Cotton Bamboo</p><p>Serat lebih sejuk, lembut, tidak terlalu tipis dan tebal, nyaman.</p>', '<p>Info:</p><p>1. Tinggi badan model 177 cm (wanita) dan 180 cm (pria)</p><p>2. On model menggunakan size S (Wanita) dan size M (Pria)</p><p>3. Silakan ukur sesuai detail size yang tertera</p>', 'published', '[\"products\\/53-1.jpg\",\"products\\/52-1.jpg\",\"products\\/51-1.jpg\"]', 'RTDS', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 159000, NULL, NULL, NULL, 180.00, 177.00, 0.00, 260.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 09:18:21', '2021-12-14 09:18:21', NULL, 0, 'in_stock'),
(145, 'Basic Shirt Ocean', '<p>Back to basic with Basic Shirt. Didesain dengan cuttingloosefit berkerah mandarin, loose pada bagian body, dan fit di bagian bahu untuk keseluruhan look yang seimbang, kancing dengan warna senada, dan doublestitch di sisi badan dan lengan untuk jahitan yang lebih kuat.</p><p>&nbsp;</p><p>Material:</p><p>Cotton</p><p>(made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek, nyaman, tidak panas)</p><p>&nbsp;</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model 163 cm</p><p>3. On model menggunakan size S</p><p>4. Memiliki serat bahan yang lebih menonjol di beberapa bagian</p><p>&nbsp;</p>', 'published', '[\"products\\/63-3.jpg\"]', 'BSO', 0, 23, 0, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, 249000, NULL, NULL, NULL, 177.00, 177.00, 0.00, 260.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 03:30:32', '2021-12-14 11:12:15', NULL, 0, 'in_stock'),
(146, 'Loose Shirt Honey', '<p>Simple top that is perfect for any look! Atasan loose-cut dengan exposed &nbsp;button di bagian depan. Opening sleeves dan collar yang lebar untuk kesan casual with a twist. Terdapat slit kecil di sisi kanan juga kiri yang membuatmu nyaman dan bebas beraktivitas. Kini, Loose Shirt tersedia dari size S-L, loh!</p><p>&nbsp;</p><p>Material:</p><p>Rayon Cotton</p><p>Katun yang lembut, nyaman, dingin dan berserat katun</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model 168 cm</p><p>3. On model menggunakan size M</p>', 'published', '[\"products\\/73.jpg\",\"products\\/72.jpg\",\"products\\/71.jpg\"]', 'LSH', 0, 14, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 180.00, 180.00, 0.00, 250.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 10:35:56', '2021-12-14 10:35:56', NULL, 0, 'in_stock'),
(147, 'Genta Pants Rotika', '<p>Genta Pants, koleksi celana pertama THENBLANK untuk pria. Terdapat dua saku di sisi kanan dan kiri depan, dua saku di bagian belakang, belt loop, serta menggunakan zipper YKK sehingga tidak diragukan lagi kualitasnya. Cuttingnya regular fit yang dapat menunjang keseharianmu yang aktif. Cocok dipadukan dengan Segara Shirt ataupun Rona Shirt.</p><p>&nbsp;</p><p>Material:</p><p>Stretch Drill</p><p>Tidak tipis, tidak mudah lecek, tidak press di badan, lembut, semakin lembut walau sudah dicuci dan dikenakan berkali-kali</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model: 175 cm</p><p>3. On model menggunakan size L</p>', 'published', '[\"products\\/11-5.jpg\",\"products\\/12-3.jpg\",\"products\\/13-2.jpg\"]', 'GPR', 0, 21, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 245000, NULL, NULL, NULL, 175.00, 175.00, 0.00, 400.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 10:43:57', '2021-12-14 10:43:57', NULL, 0, 'in_stock'),
(148, 'Genta Pants Turangga', '<p>Genta Pants, koleksi celana pertama THENBLANK untuk pria. Terdapat dua saku di sisi kanan dan kiri depan, dua saku di bagian belakang, belt loop, serta menggunakan zipper YKK sehingga tidak diragukan lagi kualitasnya. Cuttingnya regular fit yang dapat menunjang keseharianmu yang aktif. Cocok dipadukan dengan Segara Shirt ataupun Rona Shirt.</p><p>&nbsp;</p><p>Material:</p><p>Stretch Drill</p><p>Tidak tipis, tidak mudah lecek, tidak press di badan, lembut, semakin lembut walau sudah dicuci dan dikenakan berkali-kali</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model: 175 cm</p><p>3. On model menggunakan size L</p>', 'published', '[\"products\\/21-2.jpg\",\"products\\/22-3.jpg\",\"products\\/23-3.jpg\"]', 'GPT', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 234990, NULL, NULL, NULL, 180.00, 180.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 10:47:43', '2021-12-14 10:47:43', NULL, 0, 'in_stock'),
(149, 'Genta Pants Saliwah', '<p>Genta Pants, koleksi celana pertama THENBLANK untuk pria. Terdapat dua saku di sisi kanan dan kiri depan, dua saku di bagian belakang, belt loop, serta menggunakan zipper YKK sehingga tidak diragukan lagi kualitasnya. Cuttingnya regular fit yang dapat menunjang keseharianmu yang aktif. Cocok dipadukan dengan Segara Shirt ataupun Rona Shirt.</p><p>&nbsp;</p><p>Material:</p><p>Stretch Drill</p><p>Tidak tipis, tidak mudah lecek, tidak press di badan, lembut, semakin lembut walau sudah dicuci dan dikenakan berkali-kali</p><p>&nbsp;</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model: 175 cm</p><p>3. On model menggunakan size L</p>', 'published', '[\"products\\/32-3.jpg\",\"products\\/31-3.jpg\",\"products\\/33-3.jpg\"]', 'GPS', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 180.00, 180.00, 0.00, 500.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 10:50:48', '2021-12-15 11:44:08', NULL, 0, 'in_stock'),
(150, 'Bestari Skirt Sorgum', '<p>Bestari Skirt, rok dengan a-line cutting yang melebar di bagian bawah sehingga membuat nyaman untuk bergerak. Terdapat saku di sisi kanan dan kiri, serta zipper di bagian sisi kiri. Rok ini juga cocok dipakai untuk bentuk tubuh apapun dan membuat penampilan terlihat sleek dan elegan di hari yang spesial.</p><p>&nbsp;</p><p>Material:</p><p>No Wrinkle Cotton</p><p>Dengan paduan serat katun dan polyester, sehingga jatuh secara sempurna, tidak kaku, ironless</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model : 168 cm</p><p>3. On model menggunakan size M</p>', 'published', '[\"products\\/43-1.jpg\",\"products\\/42-2.jpg\",\"products\\/41-2.jpg\"]', 'BSS', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 170000, NULL, NULL, NULL, 168.00, 168.00, 0.00, 450.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 10:54:13', '2021-12-15 11:44:08', NULL, 0, 'in_stock'),
(151, 'Segara Shirt Oyong', '<p>Kemeja untuk pria berlengan panjang dengan detail french collar dan saku pada bagian depan kiri. Cutting regular fit, kancing dengan warna senada pada bagian tengah depan dan di bagian lengan untuk opening sleeve yang adjustable. Double stitch di sisi badan untuk jahitan yang lebih kuat. Varian warnanya yang basic, cocok untuk melengkapi koleksi kemeja harianmu.</p><p>&nbsp;</p><p>Material:</p><p>100% Cotton</p><p>Made by Toyobo Ltd, bahan katun terbaik, tidak mudah lecek,</p>', '<p>Info:</p><p>1. Harap ukur sesuai detail size yang sudah diberikan</p><p>2. Tinggi badan model: 175 cm</p><p>3. On model menggunakan size XL</p>', 'published', '[\"products\\/51-2.jpg\",\"products\\/52-2.jpg\",\"products\\/53-2.jpg\"]', 'SSO', 0, 11, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 175.00, 175.00, 0.00, 300.00, NULL, NULL, NULL, NULL, NULL, '2021-12-14 10:57:01', '2021-12-14 10:57:01', NULL, 0, 'in_stock'),
(152, 'Maryland Baru', '<p>kami menggunakan kain berkualitas baik, bukan kain murahan.</p><p>Kami telah menambahkan dua gaya panjang yang berbeda. Ini 105 cm dan 135 cm, Anda dapat memilih panjang yang berbeda sesuai permintaan Anda.</p><p>fabric: polyester (elastic)<br>115cm:<br>M &nbsp;chest:86-88cm &nbsp; waist:68cm &nbsp; length:101cm &nbsp; sleeve:57cm &nbsp;<br>L &nbsp; chest:94-96cm &nbsp; waist:72cm &nbsp; length:102cm &nbsp; sleeve:58cm &nbsp;<br>XL &nbsp;chest:98-102cm &nbsp; waist:76cm &nbsp; length:103cm &nbsp; sleeve:59cm &nbsp;</p><p>135cm<br>M &nbsp;chest:86-88cm &nbsp; waist:68cm &nbsp; length:135cm &nbsp; sleeve:57cm &nbsp;<br>L &nbsp; chest:94-96cm &nbsp; waist:72cm &nbsp; length:136cm &nbsp; sleeve:58cm &nbsp;<br>XL &nbsp;chest:98-102cm &nbsp; waist:76cm &nbsp; length:137cm &nbsp; sleeve:59cm &nbsp;</p>', '<p>Please make sure that these actual measurements will fit you.<br>Notes:&nbsp;<br>﻿1, If you have size problem, feel free to contact us.<br>﻿2, Please allow slight (±3cm)manual measurement deviation for the data.</p>', 'published', '[\"products\\/dress-maryland.jpg\"]', 'MYLD', 0, 22, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 250000, NULL, NULL, NULL, 66.00, 88.00, 76.00, 390.00, NULL, NULL, NULL, NULL, NULL, '2021-12-27 03:02:29', '2022-01-02 02:48:13', NULL, 0, 'in_stock');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2021-07-02 21:02:32', '2021-07-02 21:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Men Fashion', 0, NULL, 'published', 0, 'products/6-2.jpg', 1, '2021-07-02 21:02:32', '2021-12-13 15:43:54'),
(2, 'Hijab', 0, NULL, 'published', 1, 'products/9-1-1.jpg', 1, '2021-07-02 21:02:32', '2021-12-13 14:46:44'),
(3, 'Dress', 0, NULL, 'published', 1, 'products/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg', 1, '2021-07-02 21:02:32', '2021-12-14 06:00:55'),
(4, 'Jaket', 0, NULL, 'published', 3, 'products/5-4.jpg', 1, '2021-07-02 21:02:32', '2021-12-13 14:48:41'),
(5, 'Sweater', 4, NULL, 'published', 4, 'products/4-4.JPG', 1, '2021-07-02 21:02:32', '2021-12-14 11:03:07'),
(6, 'Baju', 0, NULL, 'published', 5, 'products/12-2.jpg', 1, '2021-07-02 21:02:32', '2021-12-13 14:44:26'),
(7, 'Membumi', 0, NULL, 'published', 6, 'products/11-2.jpg', 1, '2021-07-02 21:02:32', '2021-12-14 10:38:45'),
(8, 'Rok', 0, NULL, 'published', 7, NULL, 0, '2021-07-02 21:02:32', '2021-12-12 08:36:53'),
(9, 'Accessories', 0, NULL, 'published', 8, 'products/shop-with-sign-we-are-open-52683-38687.jpg', 1, '2021-07-02 21:02:32', '2021-12-15 08:14:03'),
(10, 'Bawahan', 0, NULL, 'published', 9, NULL, 0, '2021-07-02 21:02:32', '2021-12-12 08:37:59'),
(11, 'Celana', 0, NULL, 'published', 10, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 15:56:13'),
(21, 'Segi empat', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 12:26:52'),
(22, 'Segi tiga', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 12:27:35'),
(23, 'Pashmina', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 12:28:20'),
(24, 'Syiria', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 12:29:00'),
(25, 'Bergo', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 12:29:33'),
(26, 'Arum Dress', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 16:00:03'),
(27, 'Yoona Dress', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 16:01:00'),
(31, 'Men Jacket', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 16:04:53'),
(32, 'Women Jacket', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-12-13 16:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(90, 1, 106),
(91, 1, 107),
(92, 1, 108),
(93, 1, 109),
(94, 1, 110),
(95, 1, 111),
(96, 1, 112),
(97, 1, 113),
(98, 2, 114),
(99, 21, 114),
(100, 2, 116),
(101, 21, 116),
(102, 2, 117),
(103, 21, 117),
(104, 2, 118),
(105, 21, 118),
(106, 2, 119),
(107, 21, 119),
(108, 2, 120),
(109, 22, 120),
(110, 2, 121),
(111, 22, 121),
(112, 2, 122),
(113, 22, 122),
(114, 2, 123),
(115, 23, 123),
(116, 2, 124),
(117, 23, 124),
(118, 3, 125),
(119, 26, 125),
(120, 10, 126),
(121, 10, 127),
(122, 10, 128),
(123, 10, 129),
(124, 3, 130),
(125, 27, 130),
(126, 4, 131),
(127, 32, 131),
(128, 4, 132),
(129, 32, 132),
(130, 4, 133),
(131, 32, 133),
(132, 1, 134),
(133, 4, 134),
(134, 31, 134),
(135, 1, 135),
(136, 4, 135),
(137, 31, 135),
(138, 32, 135),
(139, 1, 136),
(140, 4, 136),
(141, 31, 136),
(142, 32, 136),
(143, 5, 137),
(144, 5, 138),
(145, 5, 139),
(146, 6, 140),
(147, 6, 141),
(148, 6, 142),
(149, 1, 143),
(150, 6, 143),
(151, 1, 144),
(152, 6, 144),
(153, 6, 145),
(154, 6, 146),
(155, 1, 147),
(156, 7, 147),
(157, 11, 147),
(158, 1, 148),
(159, 7, 148),
(160, 11, 148),
(161, 1, 149),
(162, 7, 149),
(163, 11, 149),
(164, 7, 150),
(165, 8, 150),
(166, 1, 151),
(167, 6, 151),
(168, 7, 151),
(169, 3, 152),
(170, 26, 152),
(171, 27, 152);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(32, 1, 106),
(33, 1, 107),
(34, 3, 107),
(35, 1, 108),
(36, 1, 109),
(37, 2, 109),
(38, 1, 110),
(39, 1, 112),
(40, 1, 113),
(41, 1, 125),
(42, 1, 126),
(43, 1, 127),
(44, 2, 127),
(45, 2, 128),
(46, 1, 129),
(47, 2, 129),
(48, 3, 129),
(49, 1, 130),
(50, 1, 131),
(51, 3, 131),
(52, 1, 132),
(53, 2, 132),
(54, 1, 133),
(55, 2, 133),
(56, 3, 133),
(57, 1, 134),
(58, 1, 135),
(59, 1, 136),
(60, 2, 136),
(61, 1, 137),
(62, 3, 137),
(63, 1, 138),
(64, 1, 139),
(65, 2, 139),
(66, 1, 140),
(67, 1, 141),
(68, 1, 142),
(69, 1, 143),
(70, 1, 144),
(71, 1, 146),
(72, 2, 146),
(73, 3, 146),
(74, 1, 147),
(75, 2, 147),
(76, 1, 149),
(77, 2, 149),
(78, 1, 150),
(79, 2, 150),
(80, 3, 150),
(81, 1, 151),
(82, 1, 152);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(2, 'New', '#00c9a7', 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(3, 'Sale', '#fe9931', 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 12),
(1, 18),
(1, 24),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 142),
(1, 143),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(2, 9),
(2, 15),
(2, 21),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 111),
(2, 113),
(2, 126),
(2, 127),
(2, 129),
(2, 130),
(2, 132),
(2, 133),
(2, 134),
(2, 135),
(2, 136),
(2, 137),
(2, 138),
(2, 139),
(2, 140),
(2, 142),
(2, 143),
(2, 144),
(2, 145),
(2, 146),
(2, 147),
(2, 148),
(2, 150),
(3, 3),
(3, 6),
(3, 27),
(3, 30),
(3, 135),
(3, 139),
(3, 140);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(7, 'mukenah', NULL, 'published', '2021-12-12 00:45:44', '2021-12-12 00:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(2, 2),
(2, 5),
(3, 2),
(3, 4),
(3, 5),
(4, 4),
(4, 5),
(4, 6),
(5, 4),
(5, 5),
(6, 1),
(6, 5),
(7, 3),
(7, 5),
(8, 1),
(8, 2),
(8, 6),
(9, 3),
(9, 5),
(10, 1),
(10, 4),
(11, 3),
(11, 5),
(11, 6),
(12, 1),
(12, 4),
(12, 5),
(13, 5),
(13, 6),
(14, 3),
(14, 4),
(15, 2),
(15, 4),
(16, 5),
(16, 6),
(17, 1),
(17, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 6),
(21, 5),
(21, 6),
(22, 2),
(22, 4),
(22, 5),
(23, 1),
(23, 2),
(23, 5),
(24, 3),
(24, 6),
(25, 2),
(25, 4),
(26, 2),
(26, 3),
(26, 4),
(27, 3),
(27, 6),
(28, 2),
(28, 3),
(29, 2),
(29, 5),
(29, 6),
(30, 3),
(30, 4),
(31, 3),
(31, 4),
(31, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(75, 115, 114, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(149, 2, 75),
(150, 8, 75);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(63, 1, 114),
(64, 2, 114),
(65, 3, 114),
(66, 4, 114),
(67, 5, 114),
(68, 6, 114),
(69, 7, 114),
(70, 8, 114),
(71, 9, 114),
(72, 10, 114);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(63, 1, 114, 0),
(64, 2, 114, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1602.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(2, 2, NULL, 6048.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(3, 3, NULL, 2259.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(4, 4, NULL, 3970.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(5, 5, NULL, 6954.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(6, 6, NULL, 2161.00, NULL, '', 'delivered', '1145.10', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(7, 7, NULL, 6302.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(8, 8, NULL, 3110.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(9, 9, NULL, 4573.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(10, 10, NULL, 2042.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(11, 11, NULL, 3545.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(12, 12, NULL, 5304.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(13, 13, NULL, 3764.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(14, 14, NULL, 2932.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(15, 15, NULL, 7710.00, NULL, '', 'delivered', '1194.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(16, 16, NULL, 5181.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(17, 17, NULL, 6199.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(18, 18, NULL, 7956.00, NULL, '', 'approved', '816.20', 'pending', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(19, 19, NULL, 2299.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(20, 20, NULL, 2418.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(21, 33, 1, 390.00, NULL, NULL, 'delivering', '250000.00', 'pending', 'pending', '0.00', 1, '2022-01-02 05:04:32', '2022-01-02 05:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2021-06-29 13:03:25', '2021-06-29 13:03:25'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2021-07-01 05:03:25', '2021-07-02 21:03:25'),
(3, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, 1, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(4, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2021-07-01 07:03:25', '2021-07-01 07:03:25'),
(5, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2021-07-01 07:03:25', '2021-07-02 21:03:25'),
(6, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2021-06-25 09:03:25', '2021-06-25 09:03:25'),
(7, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2021-07-01 09:03:25', '2021-07-02 21:03:25'),
(8, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2021-07-01 11:03:25', '2021-07-01 11:03:25'),
(9, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2021-07-01 11:03:25', '2021-07-02 21:03:25'),
(10, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2021-07-01 13:03:25', '2021-07-01 13:03:25'),
(11, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2021-07-01 13:03:25', '2021-07-02 21:03:25'),
(12, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 5, 5, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(13, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2021-06-27 21:03:25', '2021-06-27 21:03:25'),
(14, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2021-07-01 15:03:25', '2021-07-02 21:03:25'),
(15, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 6, 6, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(16, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, 6, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(17, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2021-06-28 05:03:25', '2021-06-28 05:03:25'),
(18, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2021-07-01 17:03:25', '2021-07-02 21:03:25'),
(19, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2021-07-01 19:03:25', '2021-07-01 19:03:25'),
(20, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2021-07-01 19:03:25', '2021-07-02 21:03:25'),
(21, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, 8, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(22, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2021-06-27 21:03:25', '2021-06-27 21:03:25'),
(23, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2021-07-01 21:03:25', '2021-07-02 21:03:25'),
(24, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 9, 9, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(25, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2021-07-01 01:03:25', '2021-07-01 01:03:25'),
(26, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2021-07-01 23:03:25', '2021-07-02 21:03:25'),
(27, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2021-06-25 09:03:25', '2021-06-25 09:03:25'),
(28, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2021-07-02 01:03:25', '2021-07-02 21:03:25'),
(29, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 11, 11, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(30, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2021-06-26 03:03:25', '2021-06-26 03:03:25'),
(31, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2021-07-02 03:03:25', '2021-07-02 21:03:25'),
(32, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, 12, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(33, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2021-06-28 05:03:25', '2021-06-28 05:03:25'),
(34, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2021-07-02 05:03:25', '2021-07-02 21:03:25'),
(35, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2021-07-02 07:03:25', '2021-07-02 07:03:25'),
(36, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2021-07-02 07:03:25', '2021-07-02 21:03:25'),
(37, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 14, 14, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(38, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2021-06-28 21:03:25', '2021-06-28 21:03:25'),
(39, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2021-07-02 09:03:25', '2021-07-02 21:03:25'),
(40, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 15, 15, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(41, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, 15, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(42, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2021-07-01 05:03:25', '2021-07-01 05:03:25'),
(43, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2021-07-02 11:03:25', '2021-07-02 21:03:25'),
(44, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 16, 16, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(45, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2021-07-01 05:03:25', '2021-07-01 05:03:25'),
(46, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2021-07-02 13:03:25', '2021-07-02 21:03:25'),
(47, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, 17, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(48, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2021-06-30 15:03:25', '2021-06-30 15:03:25'),
(49, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2021-07-02 15:03:25', '2021-07-02 21:03:25'),
(50, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2021-07-02 01:03:25', '2021-07-02 01:03:25'),
(51, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2021-07-02 17:03:25', '2021-07-02 21:03:25'),
(52, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2021-07-02 19:03:25', '2021-07-02 19:03:25'),
(53, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2021-07-02 19:03:25', '2021-07-02 21:03:25'),
(54, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 20, 20, '2021-07-02 21:03:25', '2021-07-02 21:03:25'),
(55, 'create_from_order', 'Shipping was created from order %order_id%', 1, 21, 33, '2022-01-02 05:04:33', '2022-01-02 05:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-07-02 21:03:24', '2021-07-02 21:03:24'),
(2, 'ID', 'ID', '2022-01-02 05:19:31', '2022-01-02 05:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `currency_id`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', 1, 'base_on_price', NULL, '0.00', NULL, '0.00', '2021-07-02 21:03:24', '2021-07-02 21:03:24'),
(2, 'Delivery', 2, 'base_on_price', NULL, '0.00', NULL, '0.00', '2022-01-02 05:19:31', '2022-01-02 05:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Shopwise', 'sales@botble.com', '+62-896-7370-7289', 'Jln. Rejowinangun No.74 Rt 28 Rw 09 Kel.Rejowinangun Kec.Kotagede Kota Yogyakarta', 'ID', 'Indonesia', 'Yogyakarta', 1, 1, '2021-07-02 21:03:29', '2021-12-22 20:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2021-07-02 21:03:24', '2021-07-02 21:03:24'),
(2, 'None', 0.000000, 2, 'published', '2021-07-02 21:03:24', '2021-07-02 21:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(659, 0, '1', 39, 'image/png', 3509, 'brands/1.png', '[]', '2021-07-02 21:02:29', '2021-07-02 21:02:29', NULL),
(660, 0, '2', 39, 'image/png', 3505, 'brands/2.png', '[]', '2021-07-02 21:02:29', '2021-07-02 21:02:29', NULL),
(661, 0, '3', 39, 'image/png', 2585, 'brands/3.png', '[]', '2021-07-02 21:02:29', '2021-07-02 21:02:29', NULL),
(662, 0, '4', 39, 'image/png', 6427, 'brands/4.png', '[]', '2021-07-02 21:02:29', '2021-07-02 21:02:29', NULL),
(663, 0, '5', 39, 'image/png', 3246, 'brands/5.png', '[]', '2021-07-02 21:02:30', '2021-07-02 21:02:30', NULL),
(664, 0, '6', 39, 'image/png', 3276, 'brands/6.png', '[]', '2021-07-02 21:02:30', '2021-07-02 21:02:30', NULL),
(665, 0, '7', 39, 'image/png', 3120, 'brands/7.png', '[]', '2021-07-02 21:02:30', '2021-07-02 21:02:30', NULL),
(666, 0, 'p-1', 40, 'image/png', 9577, 'product-categories/p-1.png', '[]', '2021-07-02 21:02:30', '2021-07-02 21:02:30', NULL),
(667, 0, 'p-2', 40, 'image/png', 5510, 'product-categories/p-2.png', '[]', '2021-07-02 21:02:30', '2021-07-02 21:02:30', NULL),
(668, 0, 'p-3', 40, 'image/png', 16215, 'product-categories/p-3.png', '[]', '2021-07-02 21:02:31', '2021-07-02 21:02:31', NULL),
(669, 0, 'p-4', 40, 'image/png', 7394, 'product-categories/p-4.png', '[]', '2021-07-02 21:02:31', '2021-07-02 21:02:31', NULL),
(670, 0, 'p-5', 40, 'image/png', 6714, 'product-categories/p-5.png', '[]', '2021-07-02 21:02:31', '2021-07-02 21:02:31', NULL),
(671, 0, 'p-6', 40, 'image/png', 9541, 'product-categories/p-6.png', '[]', '2021-07-02 21:02:31', '2021-07-02 21:02:31', NULL),
(672, 0, 'p-7', 40, 'image/png', 13677, 'product-categories/p-7.png', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(673, 0, '1', 41, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(674, 0, '10', 41, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(675, 0, '2', 41, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(676, 0, '3', 41, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(677, 0, '4', 41, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(678, 0, '5', 41, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(679, 0, '6', 41, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(680, 0, '7', 41, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(681, 0, '8', 41, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(682, 0, '9', 41, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(683, 0, '1-1', 42, 'image/jpeg', 88437, 'products/1-1.jpg', '[]', '2021-07-02 21:02:37', '2021-07-02 21:02:37', NULL),
(684, 0, '1-2', 42, 'image/jpeg', 122690, 'products/1-2.jpg', '[]', '2021-07-02 21:02:37', '2021-07-02 21:02:37', NULL),
(685, 0, '1-3', 42, 'image/jpeg', 117296, 'products/1-3.jpg', '[]', '2021-07-02 21:02:38', '2021-07-02 21:02:38', NULL),
(686, 0, '1', 42, 'image/jpeg', 139025, 'products/1.jpg', '[]', '2021-07-02 21:02:38', '2021-07-02 21:02:38', NULL),
(687, 0, '10-1', 42, 'image/jpeg', 183491, 'products/10-1.jpg', '[]', '2021-07-02 21:02:39', '2021-07-02 21:02:39', NULL),
(688, 0, '10', 42, 'image/jpeg', 150956, 'products/10.jpg', '[]', '2021-07-02 21:02:40', '2021-07-02 21:02:40', NULL),
(689, 0, '11-1', 42, 'image/jpeg', 246200, 'products/11-1.jpg', '[]', '2021-07-02 21:02:40', '2021-07-02 21:02:40', NULL),
(690, 0, '11', 42, 'image/jpeg', 279390, 'products/11.jpg', '[]', '2021-07-02 21:02:41', '2021-07-02 21:02:41', NULL),
(691, 0, '12-1', 42, 'image/jpeg', 249712, 'products/12-1.jpg', '[]', '2021-07-02 21:02:41', '2021-07-02 21:02:41', NULL),
(692, 0, '12', 42, 'image/jpeg', 172221, 'products/12.jpg', '[]', '2021-07-02 21:02:42', '2021-07-02 21:02:42', NULL),
(693, 0, '13-1', 42, 'image/jpeg', 257021, 'products/13-1.jpg', '[]', '2021-07-02 21:02:43', '2021-07-02 21:02:43', NULL),
(694, 0, '13', 42, 'image/jpeg', 232917, 'products/13.jpg', '[]', '2021-07-02 21:02:43', '2021-07-02 21:02:43', NULL),
(695, 0, '14-1', 42, 'image/jpeg', 201773, 'products/14-1.jpg', '[]', '2021-07-02 21:02:44', '2021-07-02 21:02:44', NULL),
(696, 0, '14', 42, 'image/jpeg', 287194, 'products/14.jpg', '[]', '2021-07-02 21:02:44', '2021-07-02 21:02:44', NULL),
(697, 0, '15-1', 42, 'image/jpeg', 273720, 'products/15-1.jpg', '[]', '2021-07-02 21:02:45', '2021-07-02 21:02:45', NULL),
(698, 0, '15', 42, 'image/jpeg', 114265, 'products/15.jpg', '[]', '2021-07-02 21:02:46', '2021-07-02 21:02:46', NULL),
(699, 0, '16', 42, 'image/jpeg', 97174, 'products/16.jpg', '[]', '2021-07-02 21:02:46', '2021-07-02 21:02:46', NULL),
(700, 0, '17', 42, 'image/jpeg', 70179, 'products/17.jpg', '[]', '2021-07-02 21:02:48', '2021-07-02 21:02:48', NULL),
(701, 0, '18-1', 42, 'image/jpeg', 287835, 'products/18-1.jpg', '[]', '2021-07-02 21:02:49', '2021-07-02 21:02:49', NULL),
(702, 0, '18-2', 42, 'image/jpeg', 454869, 'products/18-2.jpg', '[]', '2021-07-02 21:02:51', '2021-07-02 21:02:51', NULL),
(703, 0, '18', 42, 'image/jpeg', 257331, 'products/18.jpg', '[]', '2021-07-02 21:02:53', '2021-07-02 21:02:53', NULL),
(704, 0, '19-1', 42, 'image/jpeg', 144008, 'products/19-1.jpg', '[]', '2021-07-02 21:02:54', '2021-07-02 21:02:54', NULL),
(705, 0, '19', 42, 'image/jpeg', 188821, 'products/19.jpg', '[]', '2021-07-02 21:02:55', '2021-07-02 21:02:55', NULL),
(706, 0, '2-1', 42, 'image/jpeg', 138167, 'products/2-1.jpg', '[]', '2021-07-02 21:02:56', '2021-07-02 21:02:56', NULL),
(707, 0, '2-2', 42, 'image/jpeg', 230552, 'products/2-2.jpg', '[]', '2021-07-02 21:02:56', '2021-07-02 21:02:56', NULL),
(708, 0, '2-3', 42, 'image/jpeg', 179301, 'products/2-3.jpg', '[]', '2021-07-02 21:02:57', '2021-07-02 21:02:57', NULL),
(709, 0, '2', 42, 'image/jpeg', 130048, 'products/2.jpg', '[]', '2021-07-02 21:02:57', '2021-07-02 21:02:57', NULL),
(710, 0, '20-1', 42, 'image/jpeg', 249712, 'products/20-1.jpg', '[]', '2021-07-02 21:02:58', '2021-07-02 21:02:58', NULL),
(711, 0, '20', 42, 'image/jpeg', 172221, 'products/20.jpg', '[]', '2021-07-02 21:02:58', '2021-07-02 21:02:58', NULL),
(712, 0, '21-1', 42, 'image/jpeg', 260746, 'products/21-1.jpg', '[]', '2021-07-02 21:02:59', '2021-07-02 21:02:59', NULL),
(713, 0, '21', 42, 'image/jpeg', 124244, 'products/21.jpg', '[]', '2021-07-02 21:03:00', '2021-07-02 21:03:00', NULL),
(714, 0, '22-1', 42, 'image/jpeg', 268620, 'products/22-1.jpg', '[]', '2021-07-02 21:03:01', '2021-07-02 21:03:01', NULL),
(715, 0, '22', 42, 'image/jpeg', 128692, 'products/22.jpg', '[]', '2021-07-02 21:03:03', '2021-07-02 21:03:03', NULL),
(716, 0, '23-1', 42, 'image/jpeg', 105560, 'products/23-1.jpg', '[]', '2021-07-02 21:03:04', '2021-07-02 21:03:04', NULL),
(717, 0, '23', 42, 'image/jpeg', 177362, 'products/23.jpg', '[]', '2021-07-02 21:03:05', '2021-07-02 21:03:05', NULL),
(718, 0, '24-1', 42, 'image/jpeg', 239311, 'products/24-1.jpg', '[]', '2021-07-02 21:03:06', '2021-07-02 21:03:06', NULL),
(719, 0, '24', 42, 'image/jpeg', 363853, 'products/24.jpg', '[]', '2021-07-02 21:03:07', '2021-07-02 21:03:07', NULL),
(720, 0, '25-1', 42, 'image/jpeg', 17089, 'products/25-1.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(721, 0, '25', 42, 'image/jpeg', 18069, 'products/25.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(722, 0, '26-1', 42, 'image/jpeg', 13085, 'products/26-1.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(723, 0, '26-2', 42, 'image/jpeg', 22667, 'products/26-2.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(724, 0, '26', 42, 'image/jpeg', 13611, 'products/26.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(725, 0, '27-1', 42, 'image/jpeg', 10286, 'products/27-1.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(726, 0, '27', 42, 'image/jpeg', 12569, 'products/27.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(727, 0, '28-1', 42, 'image/jpeg', 15654, 'products/28-1.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(728, 0, '28', 42, 'image/jpeg', 18243, 'products/28.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(729, 0, '29-1', 42, 'image/jpeg', 27890, 'products/29-1.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(730, 0, '29', 42, 'image/jpeg', 27961, 'products/29.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(731, 0, '3-1', 42, 'image/jpeg', 135741, 'products/3-1.jpg', '[]', '2021-07-02 21:03:11', '2021-07-02 21:03:11', NULL),
(732, 0, '3-2', 42, 'image/jpeg', 123069, 'products/3-2.jpg', '[]', '2021-07-02 21:03:11', '2021-07-02 21:03:11', NULL),
(733, 0, '3-3', 42, 'image/jpeg', 98645, 'products/3-3.jpg', '[]', '2021-07-02 21:03:12', '2021-07-02 21:03:12', NULL),
(734, 0, '3', 42, 'image/jpeg', 201722, 'products/3.jpg', '[]', '2021-07-02 21:03:12', '2021-07-02 21:03:12', NULL),
(735, 0, '30-1', 42, 'image/jpeg', 26283, 'products/30-1.jpg', '[]', '2021-07-02 21:03:13', '2021-07-02 21:03:13', NULL),
(736, 0, '30', 42, 'image/jpeg', 27107, 'products/30.jpg', '[]', '2021-07-02 21:03:13', '2021-07-02 21:03:13', NULL),
(737, 0, '31-1', 42, 'image/jpeg', 25924, 'products/31-1.jpg', '[]', '2021-07-02 21:03:13', '2021-07-02 21:03:13', NULL),
(738, 0, '31', 42, 'image/jpeg', 18634, 'products/31.jpg', '[]', '2021-07-02 21:03:14', '2021-07-02 21:03:14', NULL),
(739, 0, '4-1', 42, 'image/jpeg', 205312, 'products/4-1.jpg', '[]', '2021-07-02 21:03:14', '2021-07-02 21:03:14', NULL),
(740, 0, '4-2', 42, 'image/jpeg', 223903, 'products/4-2.jpg', '[]', '2021-07-02 21:03:14', '2021-07-02 21:03:14', NULL),
(741, 0, '4-3', 42, 'image/jpeg', 106593, 'products/4-3.jpg', '[]', '2021-07-02 21:03:15', '2021-07-02 21:03:15', NULL),
(742, 0, '4', 42, 'image/jpeg', 456134, 'products/4.jpg', '[]', '2021-07-02 21:03:15', '2021-07-02 21:03:15', NULL),
(743, 0, '5-1', 42, 'image/jpeg', 110014, 'products/5-1.jpg', '[]', '2021-07-02 21:03:16', '2021-07-02 21:03:16', NULL),
(744, 0, '5-2', 42, 'image/jpeg', 104934, 'products/5-2.jpg', '[]', '2021-07-02 21:03:17', '2021-07-02 21:03:17', NULL),
(745, 0, '5-3', 42, 'image/jpeg', 131628, 'products/5-3.jpg', '[]', '2021-07-02 21:03:17', '2021-07-02 21:03:17', NULL),
(746, 0, '5', 42, 'image/jpeg', 214767, 'products/5.jpg', '[]', '2021-07-02 21:03:18', '2021-07-02 21:03:18', NULL),
(747, 0, '6-1', 42, 'image/jpeg', 128041, 'products/6-1.jpg', '[]', '2021-07-02 21:03:18', '2021-07-02 21:03:18', NULL),
(748, 0, '6', 42, 'image/jpeg', 148485, 'products/6.jpg', '[]', '2021-07-02 21:03:19', '2021-07-02 21:03:19', NULL),
(749, 0, '7-1', 42, 'image/jpeg', 144008, 'products/7-1.jpg', '[]', '2021-07-02 21:03:20', '2021-07-02 21:03:20', NULL),
(750, 0, '7', 42, 'image/jpeg', 188821, 'products/7.jpg', '[]', '2021-07-02 21:03:20', '2021-07-02 21:03:20', NULL),
(751, 0, '8-1', 42, 'image/jpeg', 274272, 'products/8-1.jpg', '[]', '2021-07-02 21:03:21', '2021-07-02 21:03:21', NULL),
(752, 0, '8', 42, 'image/jpeg', 217862, 'products/8.jpg', '[]', '2021-07-02 21:03:21', '2021-07-02 21:03:21', NULL),
(753, 0, '9-1', 42, 'image/jpeg', 65624, 'products/9-1.jpg', '[]', '2021-07-02 21:03:22', '2021-07-02 21:03:22', NULL),
(754, 0, '9', 42, 'image/jpeg', 159636, 'products/9.jpg', '[]', '2021-07-02 21:03:23', '2021-07-02 21:03:23', NULL),
(755, 0, '1', 43, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(756, 0, '2', 43, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(757, 0, '3', 43, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(758, 0, '4', 43, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(759, 0, '5', 43, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(760, 0, '6', 43, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(761, 0, '1', 44, 'image/jpeg', 2733, 'testimonials/1.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(762, 0, '2', 44, 'image/jpeg', 2840, 'testimonials/2.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(763, 0, '3', 44, 'image/jpeg', 3065, 'testimonials/3.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(764, 0, '4', 44, 'image/jpeg', 2559, 'testimonials/4.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(765, 0, '1', 45, 'image/jpeg', 98636, 'sliders/1.jpg', '[]', '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(766, 0, '2', 45, 'image/jpeg', 22560, 'sliders/2.jpg', '[]', '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(767, 0, '3', 45, 'image/jpeg', 21630, 'sliders/3.jpg', '[]', '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(768, 0, 'american-express', 46, 'image/png', 3209, 'general/american-express.png', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(769, 0, 'b-1', 46, 'image/jpeg', 20539, 'general/b-1.jpg', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(770, 0, 'b-2', 46, 'image/jpeg', 18320, 'general/b-2.jpg', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(771, 0, 'b-3', 46, 'image/jpeg', 42872, 'general/b-3.jpg', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(772, 0, 'discover', 46, 'image/png', 2494, 'general/discover.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(773, 0, 'favicon', 46, 'image/png', 1803, 'general/favicon.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(774, 0, 'logo-light', 46, 'image/png', 3736, 'general/logo-light.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(775, 0, 'logo', 46, 'image/png', 3927, 'general/logo.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(776, 0, 'master-card', 46, 'image/png', 3407, 'general/master-card.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(777, 0, 'newsletter', 46, 'image/jpeg', 48929, 'general/newsletter.jpg', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(778, 0, 'paypal', 46, 'image/png', 2670, 'general/paypal.png', '[]', '2021-07-02 21:03:31', '2021-07-02 21:03:31', NULL),
(779, 0, 'visa', 46, 'image/png', 2841, 'general/visa.png', '[]', '2021-07-02 21:03:31', '2021-07-02 21:03:31', NULL),
(780, 1, '0001', 42, 'image/jpeg', 460179, 'products/0001.jpg', '[]', '2021-12-11 03:01:14', '2021-12-12 10:36:24', '2021-12-12 10:36:24'),
(781, 1, 'download', 42, 'image/jpeg', 7053, 'products/download.jpg', '[]', '2021-12-11 03:09:04', '2021-12-11 03:09:04', NULL),
(782, 1, 'shop-with-sign-we-are-open_52683-38687', 42, 'image/jpeg', 57840, 'products/shop-with-sign-we-are-open-52683-38687.jpg', '[]', '2021-12-12 00:36:54', '2021-12-12 00:36:54', NULL),
(783, 1, 'forte_corduroy_jacket_men_maroon_2_1634550458703_resized1024', 42, 'image/jpeg', 111929, 'products/forte-corduroy-jacket-men-maroon-2-1634550458703-resized1024.jpg', '[]', '2021-12-12 10:37:19', '2021-12-12 10:37:19', NULL),
(784, 1, '1-4', 42, 'image/jpeg', 50872, 'products/1-4.jpg', '[]', '2021-12-12 11:52:11', '2021-12-12 11:52:11', NULL),
(785, 1, '2-4', 42, 'image/jpeg', 46889, 'products/2-4.jpg', '[]', '2021-12-12 12:03:31', '2021-12-12 12:03:31', NULL),
(786, 1, '3-4', 42, 'image/jpeg', 48534, 'products/3-4.jpg', '[]', '2021-12-12 12:41:03', '2021-12-12 12:41:03', NULL),
(787, 1, '4-4', 42, 'image/jpeg', 156244, 'products/4-4.JPG', '[]', '2021-12-12 12:57:52', '2021-12-12 12:57:52', NULL),
(788, 1, '4-5', 42, 'image/jpeg', 156244, 'products/4-5.JPG', '[]', '2021-12-12 13:15:16', '2021-12-12 13:15:38', '2021-12-12 13:15:38'),
(789, 1, '5-4', 42, 'image/jpeg', 254735, 'products/5-4.jpg', '[]', '2021-12-12 13:17:06', '2021-12-12 13:17:06', NULL),
(790, 1, '6-2', 42, 'image/jpeg', 54976, 'products/6-2.jpg', '[]', '2021-12-12 13:25:46', '2021-12-12 13:25:46', NULL),
(791, 1, '7-2', 42, 'image/jpeg', 82793, 'products/7-2.jpg', '[]', '2021-12-12 13:31:09', '2021-12-12 13:31:09', NULL),
(792, 1, '1-5', 42, 'image/jpeg', 42365, 'products/1-5.jpg', '[]', '2021-12-13 12:16:15', '2021-12-13 12:16:15', NULL),
(793, 1, '2-5', 42, 'image/jpeg', 26782, 'products/2-5.jpg', '[]', '2021-12-13 12:34:15', '2021-12-13 12:34:15', NULL),
(794, 1, '3-5', 42, 'image/jpeg', 26780, 'products/3-5.jpg', '[]', '2021-12-13 12:37:56', '2021-12-13 12:37:56', NULL),
(795, 1, '4-6', 42, 'image/jpeg', 27232, 'products/4-6.jpg', '[]', '2021-12-13 12:42:28', '2021-12-13 12:42:28', NULL),
(796, 1, '4-7', 42, 'image/jpeg', 27232, 'products/4-7.jpg', '[]', '2021-12-13 12:49:07', '2021-12-13 12:49:40', '2021-12-13 12:49:40'),
(797, 1, '5-5', 42, 'image/jpeg', 29008, 'products/5-5.jpg', '[]', '2021-12-13 12:49:56', '2021-12-13 12:49:56', NULL),
(798, 1, '6-3', 42, 'image/jpeg', 29188, 'products/6-3.jpg', '[]', '2021-12-13 12:54:42', '2021-12-13 12:54:42', NULL),
(799, 1, '7-3', 42, 'image/jpeg', 28718, 'products/7-3.jpg', '[]', '2021-12-13 13:12:38', '2021-12-13 13:12:38', NULL),
(800, 1, '8-2', 42, 'image/jpeg', 33118, 'products/8-2.jpg', '[]', '2021-12-13 13:29:13', '2021-12-13 13:29:13', NULL),
(801, 1, '9.2', 42, 'image/jpeg', 27275, 'products/92.jpg', '[]', '2021-12-13 13:38:02', '2021-12-13 13:38:02', NULL),
(802, 1, '9.3', 42, 'image/jpeg', 30815, 'products/93.jpg', '[]', '2021-12-13 13:38:05', '2021-12-13 13:38:05', NULL),
(803, 1, '9-1-1', 42, 'image/jpeg', 33803, 'products/9-1-1.jpg', '[]', '2021-12-13 13:38:09', '2021-12-13 13:38:09', NULL),
(804, 1, '10.1', 42, 'image/jpeg', 31298, 'products/101.jpg', '[]', '2021-12-13 13:46:25', '2021-12-13 13:46:25', NULL),
(805, 1, '10.2', 42, 'image/jpeg', 30672, 'products/102.jpg', '[]', '2021-12-13 13:46:28', '2021-12-13 13:46:28', NULL),
(806, 1, '12-2', 42, 'image/jpeg', 69784, 'products/12-2.jpg', '[]', '2021-12-13 14:41:56', '2021-12-13 14:41:56', NULL),
(807, 1, '11-2', 42, 'image/jpeg', 323859, 'products/11-2.jpg', '[]', '2021-12-13 14:42:32', '2021-12-13 14:42:32', NULL),
(808, 1, '8-3', 42, 'image/jpeg', 27177, 'products/8-3.jpg', '[]', '2021-12-13 14:53:12', '2021-12-13 14:53:12', NULL),
(809, 1, '1-6', 42, 'image/jpeg', 52301, 'products/1-6.jpeg', '[]', '2021-12-13 16:12:59', '2021-12-13 16:12:59', NULL),
(810, 1, '5cf16e611dd4e44a5423e9807dceeb11_1626501615381', 42, 'image/jpeg', 144171, 'products/5cf16e611dd4e44a5423e9807dceeb11-1626501615381.jpeg', '[]', '2021-12-13 16:31:25', '2021-12-13 16:31:25', NULL),
(811, 1, '1.1', 42, 'image/jpeg', 69561, 'products/11.jpeg', '[]', '2021-12-13 16:39:29', '2021-12-13 16:39:29', NULL),
(812, 1, '5cf16e611dd4e44a5423e9807dceeb11_1626501615381-1', 42, 'image/jpeg', 144171, 'products/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg', '[]', '2021-12-13 16:39:32', '2021-12-13 16:39:32', NULL),
(813, 1, '43ae3adcd9e5d6ed3540c542f7e918c9_1632457230584', 42, 'image/jpeg', 109912, 'products/43ae3adcd9e5d6ed3540c542f7e918c9-1632457230584.jpeg', '[]', '2021-12-13 16:39:36', '2021-12-13 16:39:36', NULL),
(814, 1, '58aefc242315169ed769312c2612363f_1632457230816', 42, 'image/jpeg', 134651, 'products/58aefc242315169ed769312c2612363f-1632457230816.jpeg', '[]', '2021-12-13 16:39:40', '2021-12-13 16:39:40', NULL),
(815, 1, '539fff014b025a0e652d4e496339bf3b_1632457231116', 42, 'image/jpeg', 143715, 'products/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg', '[]', '2021-12-13 16:39:43', '2021-12-13 16:39:43', NULL),
(816, 1, 'da77f0f75b060af07749d0bb9540f482_1632457230059', 42, 'image/jpeg', 116243, 'products/da77f0f75b060af07749d0bb9540f482-1632457230059.jpeg', '[]', '2021-12-13 16:39:47', '2021-12-13 16:39:47', NULL),
(817, 1, '4b5409d70bba8e571e4d3d48dba2ffd4_1631780013224', 42, 'image/jpeg', 69958, 'products/4b5409d70bba8e571e4d3d48dba2ffd4-1631780013224.jpeg', '[]', '2021-12-13 16:48:34', '2021-12-13 16:48:34', NULL),
(818, 1, 'F9740587-72F6-486C-BC5D-65CFDBBA5A6A_1636548562497', 42, 'image/png', 7407276, 'products/f9740587-72f6-486c-bc5d-65cfdbba5a6a-1636548562497.png', '[]', '2021-12-13 16:48:40', '2021-12-13 16:48:40', NULL),
(819, 1, '4b8cbe862e17a0da5951c231cf98f1a1_1631780012941', 42, 'image/jpeg', 362519, 'products/4b8cbe862e17a0da5951c231cf98f1a1-1631780012941.jpeg', '[]', '2021-12-13 16:48:49', '2021-12-13 16:48:49', NULL),
(820, 1, '577c5cb6499ce94c175c6ee40c0eaeae_1631780012791', 42, 'image/jpeg', 96525, 'products/577c5cb6499ce94c175c6ee40c0eaeae-1631780012791.jpeg', '[]', '2021-12-13 16:48:53', '2021-12-13 16:48:53', NULL),
(821, 1, '4-8', 42, 'image/jpeg', 113649, 'products/4-8.jpeg', '[]', '2021-12-13 17:16:21', '2021-12-13 17:16:21', NULL),
(822, 1, '99657342e35ff706d54b8ea0c746b98e_1628305448360', 42, 'image/jpeg', 91298, 'products/99657342e35ff706d54b8ea0c746b98e-1628305448360.jpeg', '[]', '2021-12-13 17:16:25', '2021-12-13 17:16:25', NULL),
(823, 1, '66F4090B-F6D8-48DD-A882-6F2D50D58F50_1628352126418', 42, 'image/jpeg', 1261061, 'products/66f4090b-f6d8-48dd-a882-6f2d50d58f50-1628352126418.jpeg', '[]', '2021-12-13 17:16:29', '2021-12-13 17:16:29', NULL),
(824, 1, '4-9', 42, 'image/jpeg', 113649, 'products/4-9.jpeg', '[]', '2021-12-13 17:36:10', '2021-12-13 17:36:10', NULL),
(825, 1, '3-6', 42, 'image/jpeg', 148661, 'products/3-6.jpeg', '[]', '2021-12-13 17:36:32', '2021-12-13 17:36:32', NULL),
(826, 1, '71c69fd01c3bfe00630c6b3fbc2ec43c_1626501615252', 42, 'image/jpeg', 270215, 'products/71c69fd01c3bfe00630c6b3fbc2ec43c-1626501615252.jpeg', '[]', '2021-12-14 06:06:23', '2021-12-14 06:06:23', NULL),
(827, 1, '1.1-1', 42, 'image/jpeg', 57999, 'products/11-1.jpg', '[]', '2021-12-14 06:13:38', '2021-12-14 06:13:38', NULL),
(828, 1, '1.2', 42, 'image/jpeg', 136973, 'products/12.jpg', '[]', '2021-12-14 06:18:27', '2021-12-14 06:18:27', NULL),
(829, 1, '2.2', 42, 'image/jpeg', 40451, 'products/22.jpg', '[]', '2021-12-14 06:18:32', '2021-12-14 06:18:32', NULL),
(830, 1, '2.3', 42, 'image/jpeg', 27614, 'products/23.jpg', '[]', '2021-12-14 06:18:35', '2021-12-14 06:18:35', NULL),
(831, 1, '3.1', 42, 'image/jpeg', 165682, 'products/31.jpg', '[]', '2021-12-14 06:24:11', '2021-12-14 06:24:11', NULL),
(832, 1, '3.2', 42, 'image/jpeg', 46347, 'products/32.jpg', '[]', '2021-12-14 06:24:15', '2021-12-14 06:24:15', NULL),
(833, 1, '3.3', 42, 'image/jpeg', 23482, 'products/33.jpg', '[]', '2021-12-14 06:24:18', '2021-12-14 06:24:18', NULL),
(834, 1, '3.4', 42, 'image/jpeg', 30018, 'products/34.jpg', '[]', '2021-12-14 06:24:21', '2021-12-14 06:24:21', NULL),
(835, 1, '4.1', 42, 'image/jpeg', 48534, 'products/41.jpg', '[]', '2021-12-14 06:31:58', '2021-12-14 06:31:58', NULL),
(836, 1, '4.2', 42, 'image/jpeg', 19036, 'products/42.jpg', '[]', '2021-12-14 06:32:02', '2021-12-14 06:32:02', NULL),
(837, 1, '5.1', 42, 'image/jpeg', 29823, 'products/51.jpg', '[]', '2021-12-14 06:37:38', '2021-12-14 06:37:38', NULL),
(838, 1, '5.2', 42, 'image/jpeg', 19610, 'products/52.jpg', '[]', '2021-12-14 06:37:41', '2021-12-14 06:37:41', NULL),
(839, 1, '5.3', 42, 'image/jpeg', 21689, 'products/53.jpg', '[]', '2021-12-14 06:37:45', '2021-12-14 06:37:45', NULL),
(840, 1, '5.5', 42, 'image/jpeg', 19745, 'products/55.jpg', '[]', '2021-12-14 06:37:48', '2021-12-14 06:37:48', NULL),
(841, 1, '6.1', 42, 'image/jpeg', 50872, 'products/61.jpg', '[]', '2021-12-14 06:42:34', '2021-12-14 06:42:34', NULL),
(842, 1, '6.2', 42, 'image/jpeg', 20391, 'products/62.jpg', '[]', '2021-12-14 06:42:38', '2021-12-14 06:42:38', NULL),
(843, 1, '6.3', 42, 'image/jpeg', 23794, 'products/63.jpg', '[]', '2021-12-14 06:42:42', '2021-12-14 06:42:42', NULL),
(844, 1, 'BAJU SLIDER', 42, 'image/jpeg', 540098, 'products/baju-slider.jpg', '[]', '2021-12-14 06:51:57', '2021-12-14 06:51:57', NULL),
(845, 1, 'SLIDER 2', 42, 'image/jpeg', 148165, 'products/slider-2.jpg', '[]', '2021-12-14 07:03:14', '2021-12-14 07:03:14', NULL),
(846, 1, 'JAKET SLIDER', 42, 'image/jpeg', 360972, 'products/jaket-slider.jpg', '[]', '2021-12-14 07:12:59', '2021-12-14 07:12:59', NULL),
(847, 1, '1.1-2', 42, 'image/jpeg', 55174, 'products/11-2.jpg', '[]', '2021-12-14 08:42:49', '2021-12-14 08:42:49', NULL),
(848, 1, '1.2-1', 42, 'image/jpeg', 28671, 'products/12-1.jpg', '[]', '2021-12-14 08:42:53', '2021-12-14 08:42:53', NULL),
(849, 1, '1.3', 42, 'image/jpeg', 13569, 'products/13.jpg', '[]', '2021-12-14 08:42:56', '2021-12-14 08:42:56', NULL),
(850, 1, '1.1-3', 42, 'image/jpeg', 55174, 'products/11-3.jpg', '[]', '2021-12-14 08:43:29', '2021-12-14 08:43:29', NULL),
(851, 1, '2.1', 42, 'image/jpeg', 84372, 'products/21.jpg', '[]', '2021-12-14 08:49:02', '2021-12-14 08:49:02', NULL),
(852, 1, '2.2-1', 42, 'image/jpeg', 16905, 'products/22-1.jpg', '[]', '2021-12-14 08:49:09', '2021-12-14 08:49:09', NULL),
(853, 1, '2.3-1', 42, 'image/jpeg', 28061, 'products/23-1.jpg', '[]', '2021-12-14 08:49:13', '2021-12-14 08:49:13', NULL),
(854, 1, '3.1-1', 42, 'image/jpeg', 61379, 'products/31-1.jpg', '[]', '2021-12-14 08:52:44', '2021-12-14 08:52:44', NULL),
(855, 1, '3.2-1', 42, 'image/jpeg', 40393, 'products/32-1.jpg', '[]', '2021-12-14 08:52:50', '2021-12-14 08:52:50', NULL),
(856, 1, '3.3-1', 42, 'image/jpeg', 21053, 'products/33-1.jpg', '[]', '2021-12-14 08:52:55', '2021-12-14 08:52:55', NULL),
(857, 1, '1.1-4', 42, 'image/jpeg', 109249, 'products/11-4.jpg', '[]', '2021-12-14 09:00:25', '2021-12-14 09:00:25', NULL),
(858, 1, '1.2-2', 42, 'image/jpeg', 17534, 'products/12-2.jpg', '[]', '2021-12-14 09:00:29', '2021-12-14 09:00:29', NULL),
(859, 1, '1.3-1', 42, 'image/jpeg', 18573, 'products/13-1.jpg', '[]', '2021-12-14 09:00:32', '2021-12-14 09:00:32', NULL),
(860, 1, '2.1-1', 42, 'image/jpeg', 74522, 'products/21-1.jpg', '[]', '2021-12-14 09:04:31', '2021-12-14 09:04:31', NULL),
(861, 1, '2.2-2', 42, 'image/jpeg', 16907, 'products/22-2.jpg', '[]', '2021-12-14 09:04:35', '2021-12-14 09:04:35', NULL),
(862, 1, '2.3-2', 42, 'image/jpeg', 35089, 'products/23-2.jpg', '[]', '2021-12-14 09:04:40', '2021-12-14 09:04:40', NULL),
(863, 1, '3.1-2', 42, 'image/jpeg', 96757, 'products/31-2.jpg', '[]', '2021-12-14 09:08:06', '2021-12-14 09:08:06', NULL),
(864, 1, '3.2-2', 42, 'image/jpeg', 16183, 'products/32-2.jpg', '[]', '2021-12-14 09:08:10', '2021-12-14 09:08:10', NULL),
(865, 1, '3.3-2', 42, 'image/jpeg', 15004, 'products/33-2.jpg', '[]', '2021-12-14 09:08:13', '2021-12-14 09:08:13', NULL),
(866, 1, '4.1-1', 42, 'image/jpeg', 40310, 'products/41-1.jpg', '[]', '2021-12-14 09:12:53', '2021-12-14 09:12:53', NULL),
(867, 1, '4.2-1', 42, 'image/jpeg', 10052, 'products/42-1.jpg', '[]', '2021-12-14 09:12:57', '2021-12-14 09:12:57', NULL),
(868, 1, '4.3', 42, 'image/jpeg', 20169, 'products/43.jpg', '[]', '2021-12-14 09:13:01', '2021-12-14 09:13:01', NULL),
(869, 1, '5.1-1', 42, 'image/jpeg', 40967, 'products/51-1.jpg', '[]', '2021-12-14 09:17:14', '2021-12-14 09:17:14', NULL),
(870, 1, '5.2-1', 42, 'image/jpeg', 14638, 'products/52-1.jpg', '[]', '2021-12-14 09:17:18', '2021-12-14 09:17:18', NULL),
(871, 1, '5.3-1', 42, 'image/jpeg', 31459, 'products/53-1.jpg', '[]', '2021-12-14 09:17:22', '2021-12-14 09:17:22', NULL),
(872, 1, '6.1-1', 42, 'image/jpeg', 135963, 'products/61-1.jpg', '[]', '2021-12-14 03:25:44', '2021-12-14 03:25:44', NULL),
(873, 1, '6.2-1', 42, 'image/jpeg', 15793, 'products/62-1.jpg', '[]', '2021-12-14 03:25:50', '2021-12-14 03:25:50', NULL),
(874, 1, '6.3-1', 42, 'image/jpeg', 16968, 'products/63-1.jpg', '[]', '2021-12-14 03:25:54', '2021-12-14 03:25:54', NULL),
(875, 1, '6.1-2', 42, 'image/jpeg', 135963, 'products/61-2.jpg', '[]', '2021-12-14 03:26:29', '2021-12-14 03:26:29', NULL),
(876, 1, '6.2-2', 42, 'image/jpeg', 15793, 'products/62-2.jpg', '[]', '2021-12-14 03:26:34', '2021-12-14 03:26:34', NULL),
(877, 1, '6.3-2', 42, 'image/jpeg', 16968, 'products/63-2.jpg', '[]', '2021-12-14 03:26:39', '2021-12-14 03:26:39', NULL),
(878, 1, '6.1-3', 42, 'image/jpeg', 135963, 'products/61-3.jpg', '[]', '2021-12-14 03:27:41', '2021-12-14 03:27:41', NULL),
(879, 1, '6.2-3', 42, 'image/jpeg', 15793, 'products/62-3.jpg', '[]', '2021-12-14 03:27:45', '2021-12-14 03:27:45', NULL),
(880, 1, '6.3-3', 42, 'image/jpeg', 16968, 'products/63-3.jpg', '[]', '2021-12-14 03:27:49', '2021-12-14 03:27:49', NULL),
(881, 1, '6.1-4', 42, 'image/jpeg', 135963, 'products/61-4.jpg', '[]', '2021-12-14 03:29:40', '2021-12-14 03:29:40', NULL),
(882, 1, '6.2-4', 42, 'image/jpeg', 15793, 'products/62-4.jpg', '[]', '2021-12-14 03:29:45', '2021-12-14 03:29:45', NULL),
(883, 1, '6.3-4', 42, 'image/jpeg', 16968, 'products/63-4.jpg', '[]', '2021-12-14 03:29:50', '2021-12-14 03:29:50', NULL),
(884, 1, '7.1', 42, 'image/jpeg', 112111, 'products/71.jpg', '[]', '2021-12-14 10:34:44', '2021-12-14 10:34:44', NULL),
(885, 1, '7.2', 42, 'image/jpeg', 20795, 'products/72.jpg', '[]', '2021-12-14 10:34:46', '2021-12-14 10:34:46', NULL),
(886, 1, '7.3', 42, 'image/jpeg', 12776, 'products/73.jpg', '[]', '2021-12-14 10:34:48', '2021-12-14 10:34:48', NULL),
(887, 1, '1.1-5', 42, 'image/jpeg', 148165, 'products/11-5.jpg', '[]', '2021-12-14 10:42:29', '2021-12-14 10:42:29', NULL),
(888, 1, '1.2-3', 42, 'image/jpeg', 12061, 'products/12-3.jpg', '[]', '2021-12-14 10:42:31', '2021-12-14 10:42:31', NULL),
(889, 1, '1.3-2', 42, 'image/jpeg', 41831, 'products/13-2.jpg', '[]', '2021-12-14 10:42:33', '2021-12-14 10:42:33', NULL),
(890, 1, '2.1-2', 42, 'image/jpeg', 130459, 'products/21-2.jpg', '[]', '2021-12-14 10:46:34', '2021-12-14 10:46:34', NULL),
(891, 1, '2.2-3', 42, 'image/jpeg', 10634, 'products/22-3.jpg', '[]', '2021-12-14 10:46:36', '2021-12-14 10:46:36', NULL),
(892, 1, '2.3-3', 42, 'image/jpeg', 35080, 'products/23-3.jpg', '[]', '2021-12-14 10:46:37', '2021-12-14 10:46:37', NULL),
(893, 1, '3.1-3', 42, 'image/jpeg', 27177, 'products/31-3.jpg', '[]', '2021-12-14 10:49:45', '2021-12-14 10:49:45', NULL),
(894, 1, '3.2-3', 42, 'image/jpeg', 43071, 'products/32-3.jpg', '[]', '2021-12-14 10:49:46', '2021-12-14 10:49:46', NULL),
(895, 1, '3.3-3', 42, 'image/jpeg', 27079, 'products/33-3.jpg', '[]', '2021-12-14 10:49:48', '2021-12-14 10:49:48', NULL),
(896, 1, '4.1-2', 42, 'image/jpeg', 66558, 'products/41-2.jpg', '[]', '2021-12-14 10:53:11', '2021-12-14 10:53:11', NULL),
(897, 1, '4.2-2', 42, 'image/jpeg', 9464, 'products/42-2.jpg', '[]', '2021-12-14 10:53:13', '2021-12-14 10:53:13', NULL),
(898, 1, '4.3-1', 42, 'image/jpeg', 29146, 'products/43-1.jpg', '[]', '2021-12-14 10:53:14', '2021-12-14 10:53:14', NULL),
(899, 1, '5.1-2', 42, 'image/jpeg', 192210, 'products/51-2.jpg', '[]', '2021-12-14 10:56:02', '2021-12-14 10:56:02', NULL),
(900, 1, '5.2-2', 42, 'image/jpeg', 13266, 'products/52-2.jpg', '[]', '2021-12-14 10:56:04', '2021-12-14 10:56:04', NULL),
(901, 1, '5.3-2', 42, 'image/jpeg', 32941, 'products/53-2.jpg', '[]', '2021-12-14 10:56:05', '2021-12-14 10:56:05', NULL),
(902, 1, 'Ninfa Logo', 42, 'image/png', 29584, 'products/ninfa-logo.png', '[]', '2021-12-15 11:09:42', '2021-12-15 11:09:42', NULL),
(903, 1, 'dress Maryland', 42, 'image/jpeg', 33549, 'products/dress-maryland.jpg', '[]', '2021-12-27 03:01:10', '2021-12-27 03:01:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(39, 0, 'brands', 'brands', 0, '2021-07-02 21:02:29', '2021-07-02 21:02:29', NULL),
(40, 0, 'product-categories', 'product-categories', 0, '2021-07-02 21:02:30', '2021-07-02 21:02:30', NULL),
(41, 0, 'customers', 'customers', 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(42, 0, 'products', 'products', 0, '2021-07-02 21:02:37', '2021-07-02 21:02:37', NULL),
(43, 0, 'news', 'news', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(44, 0, 'testimonials', 'testimonials', 0, '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(45, 0, 'sliders', 'sliders', 0, '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(46, 0, 'general', 'general', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 'Useful Links', 'useful-links', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 'Categories', 'categories', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(4, 'My Account', 'my-account', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 1, 0, NULL, NULL, '/products', NULL, 0, 'Products', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 1, 0, NULL, NULL, '#', NULL, 0, 'Shop', NULL, '_self', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(4, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/men-fashion', NULL, 0, 'Product Category', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-12-15 08:37:47'),
(5, 1, 3, 1, 'Botble\\Ecommerce\\Models\\Brand', '/brands/fashion-live', NULL, 0, 'Brand', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(6, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductTag', '/product-tags/electronic', NULL, 0, 'Product Tag', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(7, 1, 3, NULL, NULL, 'products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(8, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(9, 1, 8, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(10, 1, 8, 1, 'Botble\\Blog\\Models\\Category', '/news/ecommerce', NULL, 0, 'Blog Category', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(11, 1, 8, 1, 'Botble\\Blog\\Models\\Tag', '/tags/general', NULL, 0, 'Blog Tag', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(12, 1, 8, NULL, NULL, 'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Blog Single', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(13, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(14, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(15, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(18, 2, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(24, 4, 0, NULL, NULL, '/customer/overview', NULL, 0, 'My profile', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(25, 4, 0, NULL, NULL, '/wishlist', NULL, 0, 'Wishlist', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(26, 4, 0, NULL, NULL, 'customer/orders', NULL, 0, 'Orders', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(27, 4, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Order tracking', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(28, 3, 0, 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/accessories', '', 0, 'Accessories', '', '_self', 0, '2021-12-15 08:27:40', '2021-12-15 08:31:42'),
(29, 3, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/baju', NULL, 1, 'Baju', NULL, '_self', 0, '2021-12-15 08:31:42', '2021-12-15 08:31:42'),
(30, 3, 0, 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/bawahan', NULL, 2, 'Bawahan', NULL, '_self', 0, '2021-12-15 08:31:42', '2021-12-15 08:31:42'),
(31, 3, 0, 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/celana', NULL, 3, 'Celana', NULL, '_self', 0, '2021-12-15 08:31:42', '2021-12-15 10:04:08'),
(32, 3, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/dress', NULL, 4, 'Dress', NULL, '_self', 0, '2021-12-15 08:31:42', '2021-12-15 10:04:37'),
(33, 3, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/hijab', NULL, 5, 'Hijab', NULL, '_self', 0, '2021-12-15 08:31:43', '2021-12-15 08:31:43'),
(34, 3, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/jaket', NULL, 6, 'Jaket', NULL, '_self', 0, '2021-12-15 08:31:43', '2021-12-15 08:31:43'),
(35, 3, 0, 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/aksesoris-hijab', NULL, 7, 'Membumi', NULL, '_self', 0, '2021-12-15 08:31:43', '2021-12-15 08:31:43'),
(36, 3, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/men-fashion', NULL, 8, 'Men Fashion', NULL, '_self', 0, '2021-12-15 08:31:43', '2021-12-15 08:37:47'),
(37, 3, 0, 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/rok', NULL, 9, 'Rok', NULL, '_self', 0, '2021-12-15 08:31:43', '2021-12-15 08:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"ion-ios-person-outline\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 10:27:08'),
(2, 'icon', '[\"ion-android-person\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:27:46'),
(3, 'icon', '[\"ion-icecream\"]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:29:17'),
(4, 'icon', '[\"linearicons-clubs\"]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:30:53'),
(5, 'icon', '[\"linearicons-cactus\"]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:32:29'),
(6, 'icon', '[\"ion-android-home\"]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:33:31'),
(7, 'icon', '[\"ion-android-bulb\"]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:35:12'),
(8, 'icon', '[\"ion-bag\"]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:36:53'),
(9, 'icon', '[\"flaticon-plugins\"]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-05-03 02:01:00'),
(10, 'icon', '[\"ion-arrow-down-a\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:37:59'),
(11, 'icon', '[\"ion-android-favorite-outline\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-05-03 02:01:00', '2021-12-12 08:47:01'),
(16, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(17, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(18, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(20, 'icon', '[null]', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 12:26:52', '2021-12-13 12:26:52'),
(21, 'icon', '[null]', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 12:27:35', '2021-12-13 12:27:35'),
(22, 'icon', '[null]', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 12:28:20', '2021-12-13 12:28:20'),
(23, 'icon', '[null]', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 12:29:00', '2021-12-13 12:29:00'),
(24, 'icon', '[null]', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 12:29:33', '2021-12-13 12:29:33'),
(25, 'icon', '[null]', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 16:00:04', '2021-12-13 16:00:04'),
(27, 'icon', '[null]', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 16:01:00', '2021-12-13 16:01:00'),
(28, 'icon', '[null]', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 16:04:53', '2021-12-13 16:04:53'),
(29, 'icon', '[null]', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-13 16:05:42', '2021-12-13 16:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_06_10_230148_create_acl_tables', 1),
(8, '2016_06_14_230857_create_menus_table', 1),
(9, '2016_06_17_091537_create_contacts_table', 1),
(10, '2016_06_28_221418_create_pages_table', 1),
(11, '2016_10_05_074239_create_setting_table', 1),
(12, '2016_10_07_193005_create_translations_table', 1),
(13, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(14, '2016_12_16_084601_create_widgets_table', 1),
(15, '2017_05_09_070343_create_media_tables', 1),
(16, '2017_05_18_080441_create_payment_tables', 1),
(17, '2017_07_11_140018_create_simple_slider_table', 1),
(18, '2017_10_24_154832_create_newsletter_table', 1),
(19, '2017_11_03_070450_create_slug_table', 1),
(20, '2018_07_09_214610_create_testimonial_table', 1),
(21, '2019_01_05_053554_create_jobs_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2020_03_05_041139_create_ecommerce_tables', 1),
(24, '2020_09_22_135635_update_taxes_table', 1),
(25, '2020_09_29_101006_add_views_into_ec_products_table', 1),
(26, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 1),
(27, '2020_10_06_073439_improve_ecommerce_database', 1),
(28, '2020_11_01_040415_update_table_ec_order_addresses', 1),
(29, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 1),
(30, '2020_11_30_015801_update_table_ec_product_categories', 1),
(31, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1),
(32, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1),
(33, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1),
(34, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(35, '2021_02_18_073505_update_table_ec_reviews', 1),
(36, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 1),
(37, '2021_03_10_025153_change_column_tax_amount', 1),
(38, '2021_03_20_033103_add_column_availability_to_table_ec_products', 1),
(39, '2021_03_27_144913_add_customer_type_into_table_payments', 1),
(40, '2021_04_28_074008_ecommerce_create_product_label_table', 1),
(41, '2021_05_24_034720_make_column_currency_nullable', 2),
(42, '2021_06_28_153141_correct_slugs_data', 3),
(43, '2021_07_18_101839_fix_old_theme_options', 4),
(44, '2021_05_31_173037_ecommerce_create_ec_products_translations', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<p>[simple-slider key=\"home-slider\"][/simple-slider]</p><p>[featured-product-categories title=\"Kategori Teratas\" description=\"Mau bagaimanapun penampilanmu, kunci utama adalah memiliki rasa percaya diri sebagai ‘pertahanan’ utama. Jangan cuma pakai baju bagus, tapi kamu sendiri minder.\"][/featured-product-categories]</p><p>[flash-sale title=\"Penawaran terbaik untuk Anda\"][/flash-sale]</p><p>[product-collections title=\"Produk Ekslusif\"][/product-collections]</p><p>[banners image1=\"products/5cf16e611dd4e44a5423e9807dceeb11-1626501615381-1.jpeg\" url1=\"product-categories/dress\" image2=\"products/539fff014b025a0e652d4e496339bf3b-1632457231116.jpeg\" url2=\"product-categories/bawahan\" image3=\"products/6-3.jpg\" url3=\"product-categories/hijab\"][/banners]</p><p>[trending-products title=\"Trending Product\"][[/trending-products]</p><p>[product-blocks featured_product_title=\"Produk Unggulan\" top_rated_product_title=\"Produk Nilai Teratas\" on_sale_product_title=\"Produk Dijual\"][/product-blocks]</p><p>&nbsp;</p><p>[testimonials title=\"Our Client Say!\"][/testimonials]</p><p>[our-features icon1=\"flaticon-shipped\" title1=\"Pengiriman Gratis\" description1=\"Pengiriman gratis untuk semua area Yogyakarta atau belanja diatas Rp200.000\" icon2=\"flaticon-money-back\" title2=\"Garansi Pengembalian 30 Hari\" description2=\"Cukup kembalikan dalam 30 hari untuk ditukar\" icon3=\"flaticon-support\" title3=\"24 Jam Online Support\" description3=\"Hubungi kami 24 jam sehari, 7 hari seminggu\"][/our-features]</p><p>[newsletter-form title=\"Bergabunglah dengan Kami Sekarang\" description=\"Daftar sekarang untuk mendapatkan update tentang promosi.\"][/newsletter-form]</p>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-12-15 11:00:50'),
(2, 'Contact us', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'pending', '2021-07-02 21:03:29', '2021-12-15 10:25:48'),
(4, 'About us', '<p>Sejak tahun 2021,</p><p>kami berkomitmen untuk selalu memberikan Anda pakaian sehari-hari yang lebih baik dengan desain yang timeless dan minimalis sebagai panduan kami, baik tampilan kasual, semi formal, maupun formal, yang akan Anda sukai untuk dikenakan di mana saja dan kapan saja.</p><p><br>Semua koleksi kami dibuat dengan sangat memperhatikan pemilihan bahan, cutting, dan aksesoris, semuanya dibuat oleh orang Indonesia, di Indonesia.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-12-15 10:41:54'),
(5, 'FAQ', '<p>PADUAN SUARA. \'Wow! Wow! Wow!\' Sementara Duchess dan kata-kata \'EAT ME\' ditandai dengan indah di kismis. \'Baiklah, aku akan memakannya,\' kata Dormouse, tidak memilih untuk memperhatikan komentar terakhir ini. \"Tentu saja tidak!\" tanya si Hatter penuh kemenangan. Alice tidak berani mendekati Raja berkata dengan serius, \'dan terus menangis dengan cara ini! Hentikan saat ini, saya katakan!\' kata Alice. \'Kalau begitu, harus dimatikan!\' kata Mock Turtle mengulangi sambil berpikir. \'Saya ingin menunjukkan kepada Anda! Terrier kecil bermata cerah, kamu.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-12-15 10:44:53'),
(8, 'Brands', '<p>[all-brands][/all-brands]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`) VALUES
(1, 'USD', 0, 'XPX66PLWAX', 'paypal', NULL, '187.28', 1, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(2, 'USD', 0, 'ENR1BZYMBS', 'paystack', NULL, '597.20', 2, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(3, 'USD', 0, 'CYZ5QTMRS5', 'sslcommerz', NULL, '214.50', 3, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(4, 'USD', 0, 'RFDQMXJNSW', 'paypal', NULL, '330.40', 4, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(5, 'USD', 0, 'XLMMUU9JXO', 'bank_transfer', NULL, '1915.80', 5, 'pending', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(6, 'USD', 0, '7PDKC51BT2', 'cod', NULL, '1145.10', 6, 'pending', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(7, 'USD', 0, 'ZV4GG1KBGY', 'stripe', NULL, '1075.40', 7, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(8, 'USD', 0, 'YDN8A2KXJP', 'paystack', NULL, '430.50', 8, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(9, 'USD', 0, 'QP237WDGZW', 'paypal', NULL, '435.80', 9, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(10, 'USD', 0, 'GO5OZXPEPS', 'stripe', NULL, '658.90', 10, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(11, 'USD', 0, '57OPA5PVY1', 'paystack', NULL, '655.60', 11, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(12, 'USD', 0, '9KJDI5OLDG', 'mollie', NULL, '1009.30', 12, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(13, 'USD', 0, 'HJ0Y1Y2CRT', 'paystack', NULL, '749.00', 13, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(14, 'USD', 0, 'NDJUM3ZLBY', 'bank_transfer', NULL, '326.55', 14, 'pending', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(15, 'USD', 0, 'LZN9IR2O0R', 'cod', NULL, '1194.00', 15, 'pending', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(16, 'USD', 0, 'E0Q9JB1OKK', 'sslcommerz', NULL, '1027.10', 16, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(17, 'USD', 0, '6ODVIVCPLB', 'paystack', NULL, '662.78', 17, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(18, 'USD', 0, '6JW67TIENK', 'cod', NULL, '816.20', 18, 'pending', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(19, 'USD', 0, 'E9IAGDDCXT', 'stripe', NULL, '228.25', 19, 'completed', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(20, 'USD', 0, 'TWVM80OOO3', 'bank_transfer', NULL, '346.50', 20, 'pending', 'confirm', NULL, NULL, NULL, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(21, 'USD', 1, 'JBNWVMUSKC', 'bank_transfer', NULL, '344.00', 21, 'pending', 'confirm', 12, NULL, NULL, '2021-12-11 03:19:47', '2021-12-11 03:21:30', 'Botble\\Ecommerce\\Models\\Customer'),
(22, 'IDR', 0, 'BL9GJW1MYP', 'cod', NULL, '344.00', 22, 'pending', 'confirm', NULL, NULL, NULL, '2021-12-12 00:07:39', '2021-12-12 00:07:39', NULL),
(23, 'IDR', 0, 'EIXVUGOCJU', 'bank_transfer', NULL, '1280000.00', 26, 'pending', 'confirm', NULL, NULL, NULL, '2021-12-14 07:25:20', '2021-12-14 07:25:20', NULL),
(24, 'IDR', 0, '1L9ZGNKS8U', 'cod', NULL, '259000.00', 27, 'pending', 'confirm', NULL, NULL, NULL, '2021-12-14 07:31:29', '2021-12-14 07:31:29', NULL),
(25, 'IDR', 1, 'ZL2ULPMZTY', 'bank_transfer', NULL, '250000.00', 28, 'pending', 'confirm', 12, NULL, NULL, '2021-12-14 07:36:15', '2021-12-14 07:47:48', 'Botble\\Ecommerce\\Models\\Customer'),
(26, 'IDR', 0, 'QDIBDXUZAM', 'cod', NULL, '259999.00', 29, 'pending', 'confirm', 1, NULL, NULL, '2021-12-14 08:24:30', '2021-12-14 08:24:30', 'Botble\\Ecommerce\\Models\\Customer'),
(27, 'IDR', 0, 'ZCLBTH5HQU', 'bank_transfer', NULL, '1138000.00', 30, 'pending', 'confirm', 13, NULL, NULL, '2021-12-15 11:44:09', '2021-12-15 11:44:09', 'Botble\\Ecommerce\\Models\\Customer'),
(28, 'IDR', 0, 'V0ORLNR0KU', 'cod', NULL, '154000.00', 31, 'pending', 'confirm', 13, NULL, NULL, '2021-12-15 11:47:20', '2021-12-15 11:47:20', 'Botble\\Ecommerce\\Models\\Customer'),
(29, 'IDR', 1, 'BX40O88SEG', 'cod', NULL, '250000.00', 33, 'completed', 'confirm', 13, NULL, NULL, '2022-01-02 02:48:13', '2022-01-02 05:03:28', 'Botble\\Ecommerce\\Models\\Customer');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\r\n\r\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\r\n\r\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\r\n\r\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\r\n\r\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\r\n\r\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\r\n\r\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\r\n\r\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\r\n\r\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\r\n\r\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\r\n\r\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>', 'pending', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1018, NULL, '2021-07-02 21:03:27', '2021-12-15 10:19:50'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'There isn’t much a girl can’t handle with the right accessories. That’s why the perfect women’s clutch bag is a wardrobe essential for first dates and spring weddings.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 359, NULL, '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(3, 'The Top 2020 Handbag Trends to Know', 'For the handbag obsessives, let\'s dive into the latter a little more. This year will bring a fresh array of bag designs, and already we\'ve gotten a sneak peek of what both spring and fall 2020 collections have to offer/', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 397, NULL, '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'To match your multi-colored purses with your favorite outfits, simply select a complementary handbag hue that will make your outfit pop for work or the weekend.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 401, NULL, '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(5, 'How to Care for Leather Bags', 'A leather bag is a special, near-universally beloved object, appreciated in equal measure by bon-vivants of both sexes, who cherish the supple hand, understated burnish and heady smell that can only emanate from premium quality skin.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1005, NULL, '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 107, NULL, '2021-07-02 21:03:27', '2021-12-12 07:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(10, 4, 3),
(19, 1, 1),
(20, 4, 2),
(21, 3, 4),
(22, 1, 5),
(23, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 1, 1, 'status', 'published', 'pending', '2021-12-15 10:19:51', '2021-12-15 10:19:51'),
(2, 'Botble\\Page\\Models\\Page', 3, 1, 'status', 'published', 'pending', '2021-12-15 10:25:48', '2021-12-15 10:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'activated_plugins', '[\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\"]', NULL, NULL),
(5, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(6, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(7, 'permalink-botble-blog-models-tag', 'tags', NULL, NULL),
(8, 'payment_cod_status', '1', NULL, NULL),
(9, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(10, 'payment_bank_transfer_status', '1', NULL, NULL),
(11, 'payment_bank_transfer_description', '<p>Please send money to our bank account: BCA - 1990 404 19.</p>', NULL, NULL),
(12, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(13, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(14, 'ecommerce_store_name', 'Nunfa Fashion', NULL, NULL),
(15, 'ecommerce_store_phone', '+62-896-7370-7289', NULL, NULL),
(16, 'ecommerce_store_address', 'Jln. Rejowinangun No.74 Rt 28 Rw 09 Kel.Rejowinangun Kec.Kotagede Kota Yogyakarta', NULL, NULL),
(17, 'New York', 'Singapore', NULL, NULL),
(18, 'ecommerce_store_country', 'ID', NULL, NULL),
(20, 'theme', 'shopwise', NULL, NULL),
(40, 'social_login_enable', '1', NULL, NULL),
(41, 'social_login_facebook_enable', '1', NULL, NULL),
(42, 'social_login_facebook_app_id', '1752152358341085', NULL, NULL),
(43, 'social_login_facebook_app_secret', '39a9c04311e0da0956298c6dcee7d5e6', NULL, NULL),
(44, 'social_login_google_enable', '1', NULL, NULL),
(47, 'social_login_github_enable', '1', NULL, NULL),
(50, 'social_login_linkedin_enable', '1', NULL, NULL),
(171, 'theme-shopwise-site_title', 'Nunfa Fashion', NULL, NULL),
(172, 'theme-shopwise-copyright', '© 2021 Botble Technologies. All Rights Reserved.', NULL, NULL),
(173, 'theme-shopwise-favicon', 'general/favicon.png', NULL, NULL),
(174, 'theme-shopwise-logo', 'products/ninfa-logo.png', NULL, NULL),
(175, 'theme-shopwise-logo_footer', 'products/ninfa-logo.png', NULL, NULL),
(176, 'theme-shopwise-address', 'Yogyakarta', NULL, NULL),
(177, 'theme-shopwise-hotline', '+62896-7370-7289', NULL, NULL),
(178, 'theme-shopwise-email', 'nunfafashion@gmail.com', NULL, NULL),
(179, 'theme-shopwise-facebook', 'https://facebook.com/nunfafashion', NULL, NULL),
(180, 'theme-shopwise-twitter', 'https://twitter.com/nunfafashion', NULL, NULL),
(181, 'theme-shopwise-youtube', 'https://youtube.com/nunfafashion', NULL, NULL),
(182, 'theme-shopwise-instagram', 'https://instagram.com/nunfafashion', NULL, NULL),
(183, 'theme-shopwise-payment_methods', '[null,\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]', NULL, NULL),
(184, 'theme-shopwise-newsletter_image', 'general/newsletter.jpg', NULL, NULL),
(185, 'theme-shopwise-homepage_id', '1', NULL, NULL),
(187, 'theme-shopwise-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(188, 'theme-shopwise-cookie_consent_learn_more_url', 'http://shopwise.local/cookie-policy', NULL, NULL),
(189, 'theme-shopwise-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(191, 'ecommerce_store_state', 'Indonesia', NULL, NULL),
(192, 'ecommerce_store_city', 'Yogyakarta', NULL, NULL),
(195, 'ecommerce_store_weight_unit', 'g', NULL, NULL),
(196, 'ecommerce_store_width_height_unit', 'cm', NULL, NULL),
(197, 'ecommerce_thousands_separator', ',', NULL, NULL),
(198, 'ecommerce_decimal_separator', '.', NULL, NULL),
(199, 'ecommerce_currencies_is_default', '0', NULL, NULL),
(200, 'ecommerce_shopping_cart_enabled', '1', NULL, NULL),
(201, 'ecommerce_ecommerce_tax_enabled', '0', NULL, NULL),
(202, 'ecommerce_display_product_price_including_taxes', '0', NULL, NULL),
(203, 'ecommerce_review_enabled', '1', NULL, NULL),
(204, 'ecommerce_enable_quick_buy_button', '1', NULL, NULL),
(205, 'ecommerce_quick_buy_target_page', 'checkout', NULL, NULL),
(206, 'ecommerce_zip_code_enabled', '0', NULL, NULL),
(207, 'ecommerce_verify_customer_email', '0', NULL, NULL),
(208, 'ecommerce_enable_guest_checkout', '1', NULL, NULL),
(209, 'ecommerce_minimum_order_amount', '0', NULL, NULL),
(210, 'ecommerce_available_countries', '[\"AF\",\"AX\",\"AL\",\"DZ\",\"AS\",\"AD\",\"AO\",\"AI\",\"AQ\",\"AG\",\"AR\",\"AM\",\"AW\",\"AU\",\"AT\",\"AZ\",\"BS\",\"BH\",\"BD\",\"BB\",\"BY\",\"BE\",\"PW\",\"BZ\",\"BJ\",\"BM\",\"BT\",\"BO\",\"BQ\",\"BA\",\"BW\",\"BV\",\"BR\",\"IO\",\"BN\",\"BG\",\"BF\",\"BI\",\"KH\",\"CM\",\"CA\",\"CV\",\"KY\",\"CF\",\"TD\",\"CL\",\"CN\",\"CX\",\"CC\",\"CO\",\"KM\",\"CG\",\"CD\",\"CK\",\"CR\",\"HR\",\"CU\",\"CW\",\"CY\",\"CZ\",\"DK\",\"DJ\",\"DM\",\"DO\",\"EC\",\"EG\",\"SV\",\"GQ\",\"ER\",\"EE\",\"ET\",\"FK\",\"FO\",\"FJ\",\"FI\",\"FR\",\"GF\",\"PF\",\"TF\",\"GA\",\"GM\",\"GE\",\"DE\",\"GH\",\"GI\",\"GR\",\"GL\",\"GD\",\"GP\",\"GU\",\"GT\",\"GG\",\"GN\",\"GW\",\"GY\",\"HT\",\"HM\",\"HN\",\"HK\",\"HU\",\"IS\",\"IN\",\"ID\",\"IR\",\"IQ\",\"IE\",\"IM\",\"IL\",\"IT\",\"CI\",\"JM\",\"JP\",\"JE\",\"JO\",\"KZ\",\"KE\",\"KI\",\"KW\",\"XK\",\"KG\",\"LA\",\"LV\",\"LB\",\"LS\",\"LR\",\"LY\",\"LI\",\"LT\",\"LU\",\"MO\",\"MK\",\"MG\",\"MW\",\"MY\",\"MV\",\"ML\",\"MT\",\"MH\",\"MQ\",\"MR\",\"MU\",\"YT\",\"MX\",\"FM\",\"MD\",\"MC\",\"MN\",\"ME\",\"MS\",\"MA\",\"MZ\",\"MM\",\"NA\",\"NR\",\"NP\",\"NL\",\"NC\",\"NZ\",\"NI\",\"NE\",\"NG\",\"NU\",\"NF\",\"MP\",\"KP\",\"NO\",\"OM\",\"PK\",\"PS\",\"PA\",\"PG\",\"PY\",\"PE\",\"PH\",\"PN\",\"PL\",\"PT\",\"PR\",\"QA\",\"RE\",\"RO\",\"RU\",\"RW\",\"BL\",\"SH\",\"KN\",\"LC\",\"MF\",\"SX\",\"PM\",\"VC\",\"SM\",\"ST\",\"SA\",\"SN\",\"RS\",\"SC\",\"SL\",\"SG\",\"SK\",\"SI\",\"SB\",\"SO\",\"ZA\",\"GS\",\"KR\",\"SS\",\"ES\",\"LK\",\"SD\",\"SR\",\"SJ\",\"SZ\",\"SE\",\"CH\",\"SY\",\"TW\",\"TJ\",\"TZ\",\"TH\",\"TL\",\"TG\",\"TK\",\"TO\",\"TT\",\"TN\",\"TR\",\"TM\",\"TC\",\"TV\",\"UG\",\"UA\",\"AE\",\"GB\",\"US\",\"UM\",\"UY\",\"UZ\",\"VU\",\"VA\",\"VE\",\"VN\",\"VG\",\"VI\",\"WF\",\"EH\",\"WS\",\"YE\",\"ZM\",\"ZW\"]', NULL, NULL),
(213, 'theme-shopwise-show_site_name', '0', NULL, NULL),
(214, 'theme-shopwise-seo_title', '', NULL, NULL),
(215, 'theme-shopwise-seo_description', '', NULL, NULL),
(216, 'theme-shopwise-seo_og_image', '', NULL, NULL),
(217, 'theme-shopwise-preloader_enabled', 'no', NULL, NULL),
(218, 'theme-shopwise-about-us', '', NULL, NULL),
(219, 'theme-shopwise-primary_font', 'Poppins', NULL, NULL),
(220, 'theme-shopwise-primary_color', '#FF324D', NULL, NULL),
(221, 'theme-shopwise-secondary_color', '#1D2224', NULL, NULL),
(222, 'theme-shopwise-enable_newsletter_popup', 'yes', NULL, NULL),
(223, 'theme-shopwise-newsletter_show_after_seconds', '10', NULL, NULL),
(224, 'theme-shopwise-facebook_comment_enabled_in_product', 'no', NULL, NULL),
(225, 'theme-shopwise-enable_sticky_header', 'yes', NULL, NULL),
(226, 'theme-shopwise-collapsing_product_categories_on_homepage', 'no', NULL, NULL),
(227, 'theme-shopwise-facebook_chat_enabled', 'no', NULL, NULL),
(228, 'theme-shopwise-facebook_page_id', '', NULL, NULL),
(229, 'theme-shopwise-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(230, 'theme-shopwise-facebook_app_id', '', NULL, NULL),
(231, 'theme-shopwise-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(232, 'theme-shopwise-number_of_posts_in_a_category', '12', NULL, NULL),
(233, 'theme-shopwise-number_of_posts_in_a_tag', '12', NULL, NULL),
(234, 'theme-shopwise-number_of_products_per_page', '12', NULL, NULL),
(235, 'theme-shopwise-number_of_cross_sale_product', '4', NULL, NULL),
(236, 'theme-shopwise-max_filter_price', '100000', NULL, NULL),
(239, 'theme-shopwise-cookie_consent_enable', 'yes', NULL, NULL),
(240, 'theme-shopwise-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(241, 'theme-shopwise-cookie_consent_background_color', '#000000', NULL, NULL),
(242, 'theme-shopwise-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(243, 'theme-shopwise-cookie_consent_max_width', '1170', NULL, NULL),
(249, 'payment_bank_transfer_name', 'Bank transfer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2021-07-02 21:03:28', '2021-07-02 21:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Woman Fashion', 'products/baju-slider.jpg', '/products', NULL, 1, '2021-07-02 21:03:28', '2021-12-14 07:05:31'),
(2, 1, 'Man Fashion', 'products/slider-2.jpg', '/products', NULL, 1, '2021-07-02 21:03:28', '2021-12-14 07:07:20'),
(3, 1, 'Summer With ISYANA', 'products/jaket-slider.jpg', '/products', NULL, 1, '2021-07-02 21:03:28', '2021-12-14 07:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(462, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(463, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(464, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(465, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(466, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(467, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(468, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-07-02 21:02:30', '2021-07-02 21:02:30'),
(469, 'men-fashion', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-15 08:37:47'),
(470, 'hijab', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:27:46'),
(471, 'dress', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-15 10:04:37'),
(472, 'jaket', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:30:03'),
(473, 'sweater', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:31:54'),
(474, 'baju', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:33:31'),
(475, 'aksesoris-hijab', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:35:12'),
(476, 'rok', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:36:53'),
(477, 'accessories', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(478, 'bawahan', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-12 08:37:59'),
(479, 'celana', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-15 10:04:08'),
(489, 'segi-empat', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-13 12:26:53'),
(490, 'segi-tiga', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-13 12:27:35'),
(491, 'pashmina', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-13 12:28:20'),
(492, 'syiria', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-13 12:29:00'),
(493, 'bergo', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-13 12:29:33'),
(494, 'quia-id-sint-ad-rem', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(495, 'yoon', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-12-13 16:01:01'),
(499, 'quis-id-veniam-qui-hic', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(500, 'cum-velit-vel-aut', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(541, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(542, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(543, 'jquery', 3, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(544, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(545, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(546, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(547, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(548, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(549, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(550, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(551, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(552, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(553, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(554, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(555, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(556, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(557, 'contact-us', 2, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(558, 'blog', 3, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(559, 'about-us', 4, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(560, 'faq', 5, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(563, 'brands', 8, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(564, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(565, 'hiforte-corduroy-jacket-brown', 106, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-11 03:10:58', '2021-12-12 11:52:42'),
(566, 'forte-corduroy-jacket-maroon', 107, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 00:45:42', '2021-12-12 10:42:17'),
(567, 'mukenah', 7, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-12-12 00:45:44', '2021-12-12 00:45:44'),
(568, 'Ritardando T-shirt Maroon', 108, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 12:04:16', '2021-12-12 12:04:16'),
(569, 'forte-corduroy-jacket-cream', 109, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 12:49:03', '2021-12-12 12:49:03'),
(570, 'argyle-knit-vest-chestnut', 110, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 13:01:39', '2021-12-12 13:01:39'),
(571, 'corduroy-shacket-hickory', 111, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 13:18:26', '2021-12-12 13:18:26'),
(572, 'daily-shirt-men-ivory', 112, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 13:27:13', '2021-12-12 13:27:13'),
(573, 'taksa-outer-cengkih', 113, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-12 13:32:19', '2021-12-12 13:32:19'),
(574, 'miracle-voile', 114, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 12:18:58', '2021-12-13 12:18:58'),
(575, 'gazelle-square-cotton-import', 116, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 12:35:57', '2021-12-13 12:35:57'),
(576, 'wateresist-voile-syamaita-tahan-air', 117, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 12:39:08', '2021-12-13 12:39:08'),
(577, 'tie-dye-set-ruffle-syamaita-baju-rumah', 118, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 12:43:37', '2021-12-13 12:43:37'),
(578, 'miracle-voal-arabian-voile-original-syamaita', 119, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 12:50:56', '2021-12-13 12:50:56'),
(579, 'bella-square-premium-anti-letoy', 120, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 12:55:36', '2021-12-13 12:55:36'),
(580, 'segitiga-balqis-instan-bahan-diamond', 121, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 13:13:23', '2021-12-13 13:13:23'),
(581, 'instant-diamond-lasercut', 122, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 13:30:28', '2021-12-13 13:30:28'),
(582, 'hijab-pashmina-ceruty-babydoll', 123, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 13:39:07', '2021-12-13 13:39:07'),
(583, 'pasmina-crinkle-polos', 124, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 13:43:56', '2021-12-13 13:43:56'),
(585, 'aurum-dress-pocket-busui-friendly', 125, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 16:15:32', '2021-12-13 16:15:32'),
(586, 'yuna-bi-linen-cullote', 126, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 16:42:09', '2021-12-13 16:42:09'),
(587, 'linen-cullote-pants-yure-kulot-celana-original-highwaist-tali-karet-pinggang', 127, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 16:49:36', '2021-12-13 16:49:36'),
(588, 'els-skirt', 128, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 17:11:37', '2021-12-13 17:11:37'),
(589, 'linen-ankle-pants', 129, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-13 17:18:13', '2021-12-13 17:18:13'),
(590, 'yoona-dress-pocket-busui-friendly', 130, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:07:15', '2021-12-14 06:07:15'),
(591, 'staccato-denim-jacket-mid', 131, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:14:50', '2021-12-14 06:14:50'),
(592, 'staccato-denim-jacket-light', 132, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:19:39', '2021-12-14 06:19:39'),
(593, 'Bomber Corduroy Jacket Hickory Regular', 133, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:25:29', '2021-12-14 06:25:29'),
(594, 'forte-corduroy-jacket-cream-1', 134, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:33:15', '2021-12-14 06:33:15'),
(595, 'forte-corduroy-jacket-maroon-1', 135, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:39:43', '2021-12-14 06:39:43'),
(596, 'forte-corduroy-jacket-brown', 136, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 06:44:10', '2021-12-14 06:44:10'),
(597, 'dolce-knit-top-almond', 137, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 08:44:54', '2021-12-14 08:44:54'),
(598, 'andante-cardigan-black', 138, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 08:50:20', '2021-12-14 08:50:20'),
(599, 'andante-cardigan-maroon', 139, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 08:55:01', '2021-12-14 08:55:01'),
(600, 'basic-shirt-caramel', 140, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 09:01:29', '2021-12-14 09:01:29'),
(601, 'basic-shirt-brown', 141, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 09:05:26', '2021-12-14 09:05:26'),
(602, 'Basic Shirt Jade', 142, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 09:09:03', '2021-12-14 09:09:03'),
(603, 'Ritardando T-shirt Broken White', 143, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 09:14:10', '2021-12-14 09:14:10'),
(604, 'ritardando-t-shirt-dusty-rose', 144, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 09:18:21', '2021-12-14 09:18:21'),
(605, 'basic-shirt-ocean', 145, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 03:30:32', '2021-12-14 03:30:32'),
(606, 'loose-shirt-honey', 146, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 10:35:56', '2021-12-14 10:35:56'),
(607, 'genta-pants-rotika', 147, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 10:43:57', '2021-12-14 10:43:57'),
(608, 'genta-pants-turangga', 148, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 10:47:44', '2021-12-14 10:47:44'),
(609, 'genta-pants-saliwah', 149, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 10:50:48', '2021-12-14 10:50:48'),
(610, 'bestari-skirt-sorgum', 150, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 10:54:13', '2021-12-14 10:54:13'),
(611, 'segara-shirt-oyong', 151, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-14 10:57:01', '2021-12-14 10:57:01'),
(612, 'maryland-baru', 152, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-27 03:02:29', '2022-01-02 02:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(3, 'Jquery', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-02 21:03:27', '2021-07-02 21:03:27'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-07-02 21:03:27', '2021-07-02 21:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Donald H. Hilixer', 'Gryphon replied rather crossly: \'of course you.', 'testimonials/1.jpg', 'Founder, Hilix', 'published', '2021-07-02 21:03:28', '2021-07-02 21:03:28'),
(2, 'Rosalina D. William', 'HE taught us Drawling, Stretching, and Fainting.', 'testimonials/2.jpg', 'Founder, qux co.', 'published', '2021-07-02 21:03:28', '2021-07-02 21:03:28'),
(3, 'John Becker', 'Gryphon. \'Turn a somersault in the house, quite.', 'testimonials/3.jpg', 'CEO, Highlands coffee', 'published', '2021-07-02 21:03:28', '2021-07-02 21:03:28'),
(4, 'Browfish Dumble', 'Tortoise, if he wasn\'t going to turn round on.', 'testimonials/4.jpg', 'Founder, Condo', 'published', '2021-07-02 21:03:28', '2021-07-02 21:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(12, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(13, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(14, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(15, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(16, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(17, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(18, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(19, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(20, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(21, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(22, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(23, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(24, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(25, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(26, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(27, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(28, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(29, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(30, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(31, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(32, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(33, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(34, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(35, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(36, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(37, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(38, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(39, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(40, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(41, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(42, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(43, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(44, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(45, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(46, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(47, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(48, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(49, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(50, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(51, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(52, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(53, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(54, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(55, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(56, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(57, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(58, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(59, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(60, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(61, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(62, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(63, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(64, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(65, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(66, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(67, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(68, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(69, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(70, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(71, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(72, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(73, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(74, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(75, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(76, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(77, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(78, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(79, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(80, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(81, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(82, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(83, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(84, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(85, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(86, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(87, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(88, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(89, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(90, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(91, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(92, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(93, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(94, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(95, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(96, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(97, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(98, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(99, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(100, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(101, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(102, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(103, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(104, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(105, 0, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(106, 0, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(107, 0, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(108, 0, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(109, 0, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(110, 0, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(111, 0, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(112, 0, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(113, 0, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(114, 0, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(115, 0, 'en', 'core/acl/api', 'name', 'Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(116, 0, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(117, 0, 'en', 'core/acl/api', 'save', 'Save', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(118, 0, 'en', 'core/acl/api', 'edit', 'Edit', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(119, 0, 'en', 'core/acl/api', 'delete', 'Delete', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(120, 0, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(121, 0, 'en', 'core/acl/api', 'secret', 'Secret', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(122, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(123, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(124, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(125, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(126, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(127, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(128, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(129, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(130, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(131, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(132, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(133, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(134, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(135, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(136, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(137, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(138, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(139, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(140, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(141, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(142, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(143, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(144, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(145, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(146, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(147, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(148, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(149, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(150, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(151, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(152, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(153, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(154, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(155, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(156, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(157, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(158, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(159, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(160, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(161, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(162, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(163, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(164, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(165, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(166, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(167, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(168, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(169, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(170, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(171, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(172, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(173, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(174, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(175, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(176, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(177, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(178, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(179, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(180, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(181, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(182, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(183, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(184, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(185, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(186, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(187, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(188, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(189, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(190, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(191, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(192, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(193, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(194, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(195, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(196, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(197, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(198, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(199, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(200, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(201, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(202, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(203, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(204, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(205, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(206, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(207, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(208, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(209, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(210, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(211, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(212, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(213, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(214, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(215, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(216, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(217, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(218, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(219, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(220, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(221, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(222, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(223, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(224, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(225, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(226, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(227, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(228, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(229, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(230, 0, 'en', 'core/acl/users', 'email', 'Email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(231, 0, 'en', 'core/acl/users', 'role', 'Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(232, 0, 'en', 'core/acl/users', 'username', 'Username', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(233, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(234, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(235, 0, 'en', 'core/acl/users', 'message', 'Message', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(236, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(237, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(238, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(239, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(240, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(241, 0, 'en', 'core/acl/users', 'password', 'Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(242, 0, 'en', 'core/acl/users', 'save', 'Save', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(243, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(244, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(245, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(246, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(247, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(248, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(249, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(250, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(251, 0, 'en', 'core/acl/users', 'close', 'Close', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(252, 0, 'en', 'core/acl/users', 'update', 'Update', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(253, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(254, 0, 'en', 'core/acl/users', 'users', 'Users', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(255, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(256, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(257, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(258, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(259, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(260, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(261, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(262, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(263, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(264, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(265, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(266, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(267, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(268, 0, 'en', 'core/acl/users', 'info.about', 'About', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(269, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(270, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(271, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(272, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(273, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(274, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(275, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(276, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(277, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(278, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(279, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(280, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(281, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(282, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(283, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(284, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(285, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(428, 0, 'en', 'core/base/base', 'yes', 'Yes', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(429, 0, 'en', 'core/base/base', 'no', 'No', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(430, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(431, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(432, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(433, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(434, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(435, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(436, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(437, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(438, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(439, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(440, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(441, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(442, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(443, 0, 'en', 'core/base/base', 'image', 'Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(444, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(445, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(446, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(447, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(448, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(449, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(450, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(451, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(452, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(453, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(454, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(455, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(456, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(457, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(458, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(459, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(460, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(464, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(465, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(466, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(467, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(468, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(469, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(470, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(471, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(472, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(473, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(474, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(475, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://localhost:8000/admin\">clicking here</a>.', '2021-07-26 04:16:43', '2021-12-12 07:52:27'),
(476, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(477, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(478, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(479, 0, 'en', 'core/base/forms', 'save', 'Save', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(480, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(481, 0, 'en', 'core/base/forms', 'image', 'Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(482, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(483, 0, 'en', 'core/base/forms', 'create', 'Create', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(484, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(485, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(486, 0, 'en', 'core/base/forms', 'ok', 'OK', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(487, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(488, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(489, 0, 'en', 'core/base/forms', 'template', 'Template', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(490, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(491, 0, 'en', 'core/base/forms', 'file', 'File', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(492, 0, 'en', 'core/base/forms', 'content', 'Content', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(493, 0, 'en', 'core/base/forms', 'description', 'Description', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(494, 0, 'en', 'core/base/forms', 'name', 'Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(495, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(496, 0, 'en', 'core/base/forms', 'title', 'Title', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(497, 0, 'en', 'core/base/forms', 'value', 'Value', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(498, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(499, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(500, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(501, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(502, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(503, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(504, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(505, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(506, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(507, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(508, 0, 'en', 'core/base/forms', 'update', 'Update', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(509, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(510, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(511, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(512, 0, 'en', 'core/base/forms', 'order', 'Order', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(513, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(514, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(515, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(516, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(517, 0, 'en', 'core/base/forms', 'add', 'Add', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(518, 0, 'en', 'core/base/forms', 'link', 'Link', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(519, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(520, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(521, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(522, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(523, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(524, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(525, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(526, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(527, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(528, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(529, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(530, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(531, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-07-26 04:16:43', '2021-07-26 04:17:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(532, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(533, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(534, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(535, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(536, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(537, 0, 'en', 'core/base/layouts', 'home', 'Home', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(538, 0, 'en', 'core/base/layouts', 'search', 'Search', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(539, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(540, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(541, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(542, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(543, 0, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(544, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(545, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(546, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(547, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(548, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(549, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(550, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(551, 0, 'en', 'core/base/notices', 'error', 'Error!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(552, 0, 'en', 'core/base/notices', 'success', 'Success!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(553, 0, 'en', 'core/base/notices', 'info', 'Info!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(554, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(555, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(556, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(557, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(558, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(559, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(560, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(561, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(562, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(563, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(564, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(565, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(566, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(567, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(568, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(569, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(570, 0, 'en', 'core/base/system', 'user.email', 'Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(571, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(572, 0, 'en', 'core/base/system', 'user.username', 'Username', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(573, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(574, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(575, 0, 'en', 'core/base/system', 'user.create', 'Create', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(576, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(577, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(578, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(579, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(580, 0, 'en', 'core/base/system', 'options.info', 'System information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(581, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(582, 0, 'en', 'core/base/system', 'info.title', 'System information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(583, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(584, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(585, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(586, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(587, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(588, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(589, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(590, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(591, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(592, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(593, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(594, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(595, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(596, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(597, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(598, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(599, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(600, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(601, 0, 'en', 'core/base/system', 'database', 'Database', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(602, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(603, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(604, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(605, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(606, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(607, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(608, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(609, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(610, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(611, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(612, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(613, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(614, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(615, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(616, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(617, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(618, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(619, 0, 'en', 'core/base/system', 'version', 'Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(620, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(621, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(622, 0, 'en', 'core/base/tables', 'id', 'ID', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(623, 0, 'en', 'core/base/tables', 'name', 'Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(624, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(625, 0, 'en', 'core/base/tables', 'title', 'Title', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(626, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(627, 0, 'en', 'core/base/tables', 'order', 'Order', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(628, 0, 'en', 'core/base/tables', 'status', 'Status', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(629, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(630, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(631, 0, 'en', 'core/base/tables', 'description', 'Description', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(632, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(633, 0, 'en', 'core/base/tables', 'url', 'URL', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(634, 0, 'en', 'core/base/tables', 'author', 'Author', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(635, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(636, 0, 'en', 'core/base/tables', 'column', 'Column', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(637, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(638, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(639, 0, 'en', 'core/base/tables', 'views', 'Views', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(640, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(641, 0, 'en', 'core/base/tables', 'session', 'Session', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(642, 0, 'en', 'core/base/tables', 'activated', 'activated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(643, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(644, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(645, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(646, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(647, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(648, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(649, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(650, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(651, 0, 'en', 'core/base/tables', 'export', 'Export', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(652, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(653, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(654, 0, 'en', 'core/base/tables', 'print', 'Print', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(655, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(656, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(657, 0, 'en', 'core/base/tables', 'display', 'Display', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(658, 0, 'en', 'core/base/tables', 'all', 'All', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(659, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(660, 0, 'en', 'core/base/tables', 'action', 'Actions', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(661, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(662, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(663, 0, 'en', 'core/base/tables', 'save', 'Save', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(664, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(665, 0, 'en', 'core/base/tables', 'to', 'to', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(666, 0, 'en', 'core/base/tables', 'in', 'in', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(667, 0, 'en', 'core/base/tables', 'records', 'records', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(668, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(669, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(670, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(671, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(672, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(673, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(674, 0, 'en', 'core/base/tables', 'template', 'Template', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(675, 0, 'en', 'core/base/tables', 'email', 'Email', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(676, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(677, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(678, 0, 'en', 'core/base/tables', 'image', 'Image', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(679, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(680, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(681, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(682, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(683, 0, 'en', 'core/base/tabs', 'file', 'Files', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(684, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(685, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(909, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(910, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(911, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(912, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(913, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(914, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(915, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(916, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(917, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(918, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(919, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(920, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(921, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(922, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(937, 0, 'en', 'core/media/media', 'filter', 'Filter', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(938, 0, 'en', 'core/media/media', 'everything', 'Everything', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(939, 0, 'en', 'core/media/media', 'image', 'Image', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(940, 0, 'en', 'core/media/media', 'video', 'Video', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(941, 0, 'en', 'core/media/media', 'document', 'Document', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(942, 0, 'en', 'core/media/media', 'view_in', 'View in', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(943, 0, 'en', 'core/media/media', 'all_media', 'All media', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(944, 0, 'en', 'core/media/media', 'trash', 'Trash', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(945, 0, 'en', 'core/media/media', 'recent', 'Recent', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(946, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(947, 0, 'en', 'core/media/media', 'upload', 'Upload', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(948, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(949, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(950, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(951, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(952, 0, 'en', 'core/media/media', 'sort', 'Sort', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(953, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(954, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(955, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(956, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(957, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(958, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(959, 0, 'en', 'core/media/media', 'actions', 'Actions', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(960, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(961, 0, 'en', 'core/media/media', 'insert', 'Insert', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(962, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(963, 0, 'en', 'core/media/media', 'create', 'Create', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(964, 0, 'en', 'core/media/media', 'rename', 'Rename', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(965, 0, 'en', 'core/media/media', 'close', 'Close', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(966, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(967, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(968, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(969, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(970, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(971, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(972, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(973, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(974, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(975, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(976, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(977, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(978, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(979, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(980, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(981, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(982, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(983, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(984, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(985, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(986, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(987, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(988, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(989, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(990, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(991, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(992, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(993, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(994, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(995, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(996, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(997, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(998, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(999, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1000, 0, 'en', 'core/media/media', 'add', 'Add media', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1001, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1002, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1003, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1004, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1005, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1006, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1007, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1008, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1009, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1010, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1011, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1012, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1013, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1014, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1015, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1016, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1017, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1018, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1019, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1020, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1021, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1022, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1023, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1024, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1025, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1026, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1027, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1028, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1029, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1030, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1031, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1032, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1033, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1034, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1035, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1036, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1037, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1038, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1039, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1040, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1041, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1042, 0, 'en', 'core/media/media', 'download_link', 'Download', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1043, 0, 'en', 'core/media/media', 'url', 'URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1044, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1045, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1149, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1150, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1151, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1152, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1153, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1154, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1155, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1156, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1157, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1158, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1159, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1160, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1161, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1162, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1163, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1164, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1165, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1166, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1167, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1168, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1169, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1170, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1171, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1172, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1173, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1174, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1175, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1176, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1177, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1178, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1179, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1180, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1181, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1182, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1183, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1184, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1185, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1186, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1187, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1188, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1189, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1190, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1191, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1192, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1193, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1194, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1195, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1196, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1197, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1198, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1199, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1200, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1201, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1202, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1203, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1204, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1205, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1206, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1207, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1208, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1209, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1210, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1211, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1212, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1213, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1214, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1215, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1216, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1217, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1218, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1219, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1220, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1221, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1222, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1223, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1224, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1225, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1226, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1227, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1228, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1229, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1230, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1231, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1232, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1233, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1234, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1235, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1236, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1237, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1238, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1239, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1240, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1241, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1242, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1243, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1244, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1245, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1246, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1247, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1248, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1249, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1250, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1251, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1252, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1253, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1254, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1255, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1256, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1257, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1258, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1259, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1260, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1261, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1262, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1263, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1264, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1265, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1266, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1267, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1268, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1269, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1270, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-07-26 04:16:46', '2021-07-26 04:17:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1271, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1272, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1273, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1274, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1275, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1276, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1277, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1278, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1279, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1280, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1281, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1282, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1283, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1284, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1285, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1286, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1287, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1288, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1289, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1290, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1291, 0, 'en', 'core/setting/setting', 'template', 'Template', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1292, 0, 'en', 'core/setting/setting', 'description', 'Description', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1293, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1294, 0, 'en', 'core/setting/setting', 'send', 'Send', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1295, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1296, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1297, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1298, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1299, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1300, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1301, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1302, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1303, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1304, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1373, 0, 'en', 'core/table/general', 'operations', 'Operations', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1374, 0, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1375, 0, 'en', 'core/table/general', 'display', 'Display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1376, 0, 'en', 'core/table/general', 'all', 'All', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1377, 0, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1378, 0, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1379, 0, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1380, 0, 'en', 'core/table/general', 'to', 'to', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1381, 0, 'en', 'core/table/general', 'in', 'in', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1382, 0, 'en', 'core/table/general', 'records', 'records', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1383, 0, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1384, 0, 'en', 'core/table/general', 'no_record', 'No record', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1385, 0, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1386, 0, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1387, 0, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1388, 0, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1389, 0, 'en', 'core/table/general', 'delete', 'Delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1390, 0, 'en', 'core/table/general', 'close', 'Close', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1391, 0, 'en', 'core/table/general', 'contains', 'Contains', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1392, 0, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1393, 0, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1394, 0, 'en', 'core/table/general', 'less_than', 'Less than', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1395, 0, 'en', 'core/table/general', 'value', 'Value', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1396, 0, 'en', 'core/table/general', 'select_field', 'Select field', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1397, 0, 'en', 'core/table/general', 'reset', 'Reset', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1398, 0, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1399, 0, 'en', 'core/table/general', 'apply', 'Apply', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1400, 0, 'en', 'core/table/general', 'filters', 'Filters', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1401, 0, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1402, 0, 'en', 'core/table/general', 'select_option', 'Select option', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1403, 0, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1404, 0, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1405, 0, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1406, 0, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1407, 0, 'en', 'core/table/general', 'search', 'Search...', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1408, 0, 'en', 'core/table/table', 'operations', 'Operations', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1409, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1410, 0, 'en', 'core/table/table', 'display', 'Display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1411, 0, 'en', 'core/table/table', 'all', 'All', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1412, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1413, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1414, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1415, 0, 'en', 'core/table/table', 'to', 'to', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1416, 0, 'en', 'core/table/table', 'in', 'in', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1417, 0, 'en', 'core/table/table', 'records', 'records', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1418, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1419, 0, 'en', 'core/table/table', 'no_record', 'No record', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1420, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1421, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1422, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1423, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1424, 0, 'en', 'core/table/table', 'delete', 'Delete', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1425, 0, 'en', 'core/table/table', 'close', 'Close', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1426, 0, 'en', 'core/table/table', 'contains', 'Contains', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1427, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1428, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1429, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1430, 0, 'en', 'core/table/table', 'value', 'Value', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1431, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1432, 0, 'en', 'core/table/table', 'reset', 'Reset', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1433, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1434, 0, 'en', 'core/table/table', 'apply', 'Apply', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1435, 0, 'en', 'core/table/table', 'filters', 'Filters', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1436, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1437, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1438, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1439, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1440, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1441, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1442, 0, 'en', 'core/table/table', 'search', 'Search...', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1475, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1476, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1477, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1478, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1479, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1480, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1481, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1482, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1483, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1484, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1485, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1486, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1487, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1488, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1489, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1490, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1491, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1492, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1493, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1494, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1513, 0, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1514, 0, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1515, 0, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1516, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1517, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1518, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1519, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1520, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1521, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1522, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1523, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1524, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1525, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1526, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1527, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1528, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1529, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1530, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1531, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1532, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1533, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1548, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1549, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1550, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1551, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1552, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1553, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1554, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1555, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1556, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1557, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1558, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1559, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1560, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1561, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1562, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1563, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1564, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1565, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1566, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1567, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1568, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1569, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1570, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1571, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1572, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1573, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1574, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1575, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1576, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1588, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1589, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1590, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1591, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1592, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1598, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1599, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1600, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1601, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1602, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1603, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1604, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1605, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1606, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1607, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1608, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1609, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1610, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1611, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1612, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1613, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1614, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1615, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1616, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1617, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1618, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1619, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1620, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1621, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1622, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1623, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1624, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1625, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1626, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1627, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1628, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1629, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1630, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1631, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1632, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1633, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1634, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1635, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1636, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1637, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1638, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1639, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1640, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1641, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1642, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1643, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1644, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1645, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1646, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1647, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1648, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1649, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1650, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1651, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1663, 0, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1664, 0, 'en', 'packages/widget/global', 'create', 'New widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1665, 0, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1666, 0, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1667, 0, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1668, 0, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1669, 0, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1670, 0, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1671, 0, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1672, 0, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1673, 0, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1674, 0, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1675, 0, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1676, 0, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1677, 0, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1678, 0, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1679, 0, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1680, 0, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1681, 0, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1682, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1683, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1684, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1685, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1686, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1687, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1688, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1689, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1690, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1691, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1692, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1693, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1694, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1695, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1696, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1697, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1698, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1699, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1700, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1701, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1702, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1722, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1723, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1724, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1725, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1726, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1727, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1728, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1729, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1730, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1731, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1732, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1733, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1734, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1735, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1736, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1737, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1738, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1739, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1740, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1741, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1742, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1743, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1744, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1745, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1746, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1747, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1774, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1775, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1776, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1777, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1778, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1779, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1780, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1781, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1782, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1783, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1784, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1785, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1786, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1787, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1788, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1789, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1790, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1791, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1792, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1793, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1794, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1795, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1796, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1797, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1798, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1799, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1822, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1823, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1824, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1825, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1826, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1827, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1828, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1829, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1830, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1831, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1832, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1833, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1834, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1835, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1836, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1837, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1838, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1839, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1840, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1841, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1842, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1843, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1844, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1845, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1862, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1863, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1864, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1865, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1866, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1867, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1868, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1869, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1870, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1871, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1872, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1873, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1874, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1875, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1876, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1877, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1878, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1879, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1880, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1881, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1882, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1883, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1884, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1885, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1886, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1887, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1888, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1889, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1890, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1891, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1892, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1893, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1894, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1895, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1896, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-07-26 04:16:48', '2021-07-26 04:17:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1897, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1898, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1899, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1900, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1901, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1902, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1903, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1904, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1905, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1906, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1907, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1908, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1909, 0, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1910, 0, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1911, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1912, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1913, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1914, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1915, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1916, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1917, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1918, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1919, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1920, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1921, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1922, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1923, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1963, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1964, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1965, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1966, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1967, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1968, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1969, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1970, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1971, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1972, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1973, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1974, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1975, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1976, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1977, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1978, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1979, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1980, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1981, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1982, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1983, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1984, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1985, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1986, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1987, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1988, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1989, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1990, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1991, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1992, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1993, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1994, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1995, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1996, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1997, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(1998, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(1999, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2000, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2001, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2002, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2003, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2004, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2005, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2006, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2007, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2008, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2009, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2010, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2011, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2012, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2013, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2014, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2015, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2016, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2017, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2018, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2019, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2020, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2021, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2022, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2023, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2061, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2062, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2063, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2064, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2065, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2066, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2067, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2068, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2069, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2070, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2071, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2072, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2073, 0, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2074, 0, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2075, 0, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2076, 0, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2077, 0, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2078, 0, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2079, 0, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2080, 0, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2081, 0, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2082, 0, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2083, 0, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2084, 0, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2085, 0, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2086, 0, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2087, 0, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2088, 0, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2089, 0, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2090, 0, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2091, 0, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2092, 0, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2093, 0, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2094, 0, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2095, 0, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2096, 0, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2097, 0, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2098, 0, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2099, 0, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2100, 0, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2101, 0, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2102, 0, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2103, 0, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2104, 0, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2105, 0, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2106, 0, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2107, 0, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2108, 0, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2109, 0, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2110, 0, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2111, 0, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2112, 0, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2113, 0, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2114, 0, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2115, 0, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2116, 0, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2117, 0, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2118, 0, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2119, 0, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2120, 0, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2121, 0, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2122, 0, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2123, 0, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2124, 0, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2125, 0, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2126, 0, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2127, 0, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2128, 0, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2129, 0, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2130, 0, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2131, 0, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2132, 0, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2133, 0, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2134, 0, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2135, 0, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2136, 0, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2137, 0, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2138, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2139, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2140, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2141, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2142, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2143, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2144, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2145, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2146, 0, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2147, 0, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2148, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2149, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2150, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2151, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2152, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2153, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2154, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2155, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2156, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2157, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2158, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2159, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2160, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2161, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2162, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2163, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2164, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2165, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2166, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2167, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2168, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2169, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2170, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2171, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2172, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2173, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2174, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2175, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2176, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2177, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2178, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2179, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2180, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2181, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2182, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2183, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2184, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2185, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2186, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2187, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2188, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2189, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2190, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2191, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2192, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2193, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2194, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2195, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2196, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2197, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2198, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2199, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2200, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2201, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2202, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2203, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2204, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2205, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2206, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2207, 0, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2208, 0, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2209, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2210, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2211, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2212, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2213, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2214, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2215, 0, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2216, 0, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2217, 0, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2218, 0, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2219, 0, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2220, 0, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2221, 0, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2222, 0, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2223, 0, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2224, 0, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2225, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2226, 0, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2227, 0, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2228, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2229, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2230, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2231, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2232, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2233, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2234, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2235, 0, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2236, 0, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2237, 0, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2238, 0, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2239, 0, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2240, 0, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2241, 0, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2242, 0, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2243, 0, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2244, 0, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2245, 0, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2246, 0, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2247, 0, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2248, 0, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2249, 0, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2250, 0, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2251, 0, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2252, 0, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2253, 0, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2254, 0, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2255, 0, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2256, 0, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2257, 0, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2258, 0, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2259, 0, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2260, 0, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2261, 0, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2262, 0, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2263, 0, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2264, 0, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2265, 0, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2266, 0, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2267, 0, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2268, 0, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2269, 0, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2270, 0, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2271, 0, 'en', 'plugins/ecommerce/order', 'name', 'Orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2272, 0, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2273, 0, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'The order is delivering or completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2274, 0, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'You do cancel the order successful', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2275, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2276, 0, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2277, 0, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2278, 0, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2279, 0, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2280, 0, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2281, 0, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2282, 0, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2283, 0, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2284, 0, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2285, 0, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2286, 0, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2287, 0, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2288, 0, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2289, 0, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2290, 0, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2291, 0, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2292, 0, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2293, 0, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2294, 0, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2295, 0, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2296, 0, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2297, 0, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2298, 0, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2299, 0, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2300, 0, 'en', 'plugins/ecommerce/order', 'create_new_product', 'Create a new product', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2301, 0, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2302, 0, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2303, 0, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2304, 0, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2305, 0, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2306, 0, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2307, 0, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2308, 0, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2309, 0, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2310, 0, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2311, 0, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2312, 0, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2313, 0, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2314, 0, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2315, 0, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2316, 0, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2317, 0, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2318, 0, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2319, 0, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2320, 0, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2321, 0, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2322, 0, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2323, 0, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2324, 0, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2325, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2326, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2327, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2328, 0, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2329, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2330, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2331, 0, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2332, 0, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2333, 0, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2334, 0, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2335, 0, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2336, 0, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2337, 0, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2338, 0, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2339, 0, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2340, 0, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2341, 0, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2342, 0, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2343, 0, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2344, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2345, 0, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2346, 0, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2347, 0, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2348, 0, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2349, 0, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2350, 0, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2351, 0, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2352, 0, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2353, 0, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2354, 0, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2355, 0, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2356, 0, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2357, 0, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2358, 0, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2359, 0, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2360, 0, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2361, 0, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2362, 0, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2363, 0, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2364, 0, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2365, 0, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2366, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2367, 0, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2368, 0, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2369, 0, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2370, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2371, 0, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2372, 0, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2373, 0, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2374, 0, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2375, 0, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2376, 0, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2377, 0, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2378, 0, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2379, 0, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2380, 0, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2381, 0, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2382, 0, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2383, 0, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2384, 0, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2385, 0, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2386, 0, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2387, 0, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2388, 0, 'en', 'plugins/ecommerce/order', 'orders', 'Orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2389, 0, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2390, 0, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2391, 0, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2392, 0, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2393, 0, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2394, 0, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2395, 0, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2396, 0, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2397, 0, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2398, 0, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2399, 0, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2400, 0, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2401, 0, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2402, 0, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2403, 0, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2404, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2405, 0, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2406, 0, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2407, 0, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2408, 0, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2409, 0, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2410, 0, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2411, 0, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2412, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2413, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2414, 0, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2415, 0, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2416, 0, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2417, 0, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2418, 0, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2419, 0, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2420, 0, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2421, 0, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2422, 0, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2423, 0, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2424, 0, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2425, 0, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2426, 0, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2427, 0, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2428, 0, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2429, 0, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2430, 0, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2431, 0, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2432, 0, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2433, 0, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2434, 0, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2435, 0, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2436, 0, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2437, 0, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2438, 0, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2439, 0, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2440, 0, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2441, 0, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2442, 0, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2443, 0, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2444, 0, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2445, 0, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2446, 0, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2447, 0, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2448, 0, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2449, 0, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2450, 0, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2451, 0, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2452, 0, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2453, 0, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2454, 0, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2455, 0, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2456, 0, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2457, 0, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2458, 0, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2459, 0, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2460, 0, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2461, 0, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2462, 0, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2463, 0, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2464, 0, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2465, 0, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2466, 0, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2467, 0, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2468, 0, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2469, 0, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2470, 0, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2471, 0, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2472, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2473, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2474, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2475, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2476, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2477, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2478, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2479, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2480, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2481, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2482, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2483, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2484, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2485, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2486, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2487, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2488, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2489, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2490, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2491, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2492, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2493, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2494, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2495, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2496, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2497, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2498, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2499, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2500, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2501, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2502, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2503, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2504, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2505, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2506, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2507, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2508, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2509, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2510, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2511, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2512, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2513, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2514, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2515, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2516, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2517, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2518, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2519, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2520, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2521, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2522, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2523, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2524, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2525, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2526, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2527, 0, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2528, 0, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2529, 0, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2530, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2531, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2532, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2533, 0, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2534, 0, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2535, 0, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2536, 0, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2537, 0, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2538, 0, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2539, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2540, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2541, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2542, 0, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2543, 0, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2544, 0, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2545, 0, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2546, 0, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2547, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2548, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2549, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2550, 0, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2551, 0, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2552, 0, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2553, 0, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2554, 0, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2555, 0, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2556, 0, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2557, 0, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2558, 0, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2559, 0, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2560, 0, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2561, 0, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2562, 0, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2563, 0, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2564, 0, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2565, 0, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2566, 0, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2567, 0, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2568, 0, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2569, 0, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2570, 0, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2571, 0, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2572, 0, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2573, 0, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2574, 0, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2575, 0, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2576, 0, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2577, 0, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2578, 0, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2579, 0, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2580, 0, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2581, 0, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2582, 0, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2583, 0, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2584, 0, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2585, 0, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2586, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2587, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2588, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2589, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2590, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2591, 0, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2592, 0, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2593, 0, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2594, 0, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2595, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2596, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2597, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2598, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2599, 0, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2600, 0, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2601, 0, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2602, 0, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2603, 0, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2604, 0, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2605, 0, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2606, 0, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2607, 0, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2608, 0, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2609, 0, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2610, 0, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2611, 0, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2612, 0, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2613, 0, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2614, 0, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2615, 0, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2616, 0, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2617, 0, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2618, 0, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2619, 0, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2620, 0, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2621, 0, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2622, 0, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2623, 0, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2624, 0, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2625, 0, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2626, 0, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2627, 0, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2628, 0, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2629, 0, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2630, 0, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2631, 0, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2632, 0, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2633, 0, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2634, 0, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2635, 0, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2636, 0, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2637, 0, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2638, 0, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2639, 0, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2640, 0, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2641, 0, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2642, 0, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2643, 0, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2644, 0, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2645, 0, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2646, 0, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2647, 0, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2648, 0, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2649, 0, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2650, 0, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2651, 0, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2652, 0, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2653, 0, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2654, 0, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2655, 0, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2656, 0, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2657, 0, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2658, 0, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2659, 0, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2660, 0, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2661, 0, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2662, 0, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2663, 0, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2664, 0, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2665, 0, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2666, 0, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2667, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2668, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2669, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2670, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2671, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2672, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2673, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2674, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2675, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2676, 0, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2677, 0, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2678, 0, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2679, 0, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2680, 0, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2681, 0, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2682, 0, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2683, 0, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2684, 0, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2685, 0, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2686, 0, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2687, 0, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2688, 0, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2689, 0, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top selling products in this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2690, 0, 'en', 'plugins/ecommerce/reports', 'today', 'Today', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2691, 0, 'en', 'plugins/ecommerce/reports', 'this_week', 'This week', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2692, 0, 'en', 'plugins/ecommerce/reports', 'this_month', 'This month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2693, 0, 'en', 'plugins/ecommerce/reports', 'this_year', 'This year', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2694, 0, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2695, 0, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2696, 0, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2697, 0, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2698, 0, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2699, 0, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2700, 0, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2701, 0, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2702, 0, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2703, 0, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2704, 0, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2705, 0, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2706, 0, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2707, 0, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2708, 0, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2709, 0, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-07-26 04:16:51', '2021-07-26 04:17:15');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2710, 0, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2711, 0, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2712, 0, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2713, 0, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2714, 0, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2715, 0, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2716, 0, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2717, 0, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2718, 0, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2719, 0, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2720, 0, 'en', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2721, 0, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2722, 0, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2723, 0, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2724, 0, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2725, 0, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2726, 0, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2727, 0, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2728, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2729, 0, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2730, 0, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2731, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2732, 0, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2733, 0, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2734, 0, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2735, 0, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2736, 0, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2737, 0, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2738, 0, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2739, 0, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2740, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2741, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2742, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2743, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2744, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2745, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2746, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2747, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2748, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2749, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2750, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2751, 0, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2752, 0, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2753, 0, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2754, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2755, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2756, 0, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2757, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2758, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2759, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2760, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2761, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2762, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2763, 0, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2764, 0, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2765, 0, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2766, 0, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2767, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2768, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2769, 0, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2770, 0, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2771, 0, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2772, 0, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2773, 0, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2774, 0, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2775, 0, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2776, 0, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2777, 0, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2778, 0, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2779, 0, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2780, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2781, 0, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2782, 0, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2783, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2784, 0, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2785, 0, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2786, 0, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2787, 0, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2788, 0, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2789, 0, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2790, 0, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2791, 0, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2792, 0, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2793, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2794, 0, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2795, 0, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2796, 0, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2797, 0, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2798, 0, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2799, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2800, 0, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2801, 0, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2802, 0, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2803, 0, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2804, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2805, 0, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2806, 0, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2807, 0, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2808, 0, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2809, 0, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2810, 0, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2811, 0, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2812, 0, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2813, 0, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2814, 0, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2815, 0, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2816, 0, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2817, 0, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2818, 0, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2819, 0, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2820, 0, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2821, 0, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2822, 0, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2823, 0, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2824, 0, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2825, 0, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2826, 0, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2827, 0, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2828, 0, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2829, 0, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2830, 0, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2831, 0, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2832, 0, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(3224, 0, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3225, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3226, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3227, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3228, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3229, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3230, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3231, 0, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3232, 0, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3233, 0, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3234, 0, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3235, 0, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3236, 0, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3237, 0, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3238, 0, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3239, 0, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3240, 0, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3241, 0, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3242, 0, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3243, 0, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3244, 0, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3245, 0, 'en', 'plugins/payment/payment', 'user', 'User', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3246, 0, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3247, 0, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3248, 0, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3249, 0, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3250, 0, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3251, 0, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3252, 0, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3253, 0, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3254, 0, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3255, 0, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3256, 0, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3257, 0, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3258, 0, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3259, 0, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3260, 0, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3261, 0, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3262, 0, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3263, 0, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3264, 0, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3265, 0, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3266, 0, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3267, 0, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3268, 0, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3269, 0, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3270, 0, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3271, 0, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3272, 0, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3273, 0, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3274, 0, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3275, 0, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3276, 0, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3277, 0, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3278, 0, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3279, 0, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3280, 0, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3281, 0, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3282, 0, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3283, 0, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3284, 0, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3285, 0, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3286, 0, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3287, 0, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3288, 0, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3289, 0, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3290, 0, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3291, 0, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3292, 0, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3293, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3294, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3295, 0, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3296, 0, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3297, 0, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3298, 0, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3299, 0, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3300, 0, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3301, 0, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3302, 0, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3303, 0, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3304, 0, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3305, 0, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3306, 0, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3307, 0, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3308, 0, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3309, 0, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3310, 0, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3311, 0, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3312, 0, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3313, 0, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3314, 0, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3315, 0, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3316, 0, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3317, 0, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3318, 0, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3319, 0, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3320, 0, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3321, 0, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3322, 0, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3323, 0, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3324, 0, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3325, 0, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3326, 0, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3327, 0, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3328, 0, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3329, 0, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3330, 0, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3331, 0, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3332, 0, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3333, 0, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3334, 0, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3335, 0, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3336, 0, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3337, 0, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3338, 0, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3339, 0, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3421, 0, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3422, 0, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3423, 0, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3424, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3425, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3426, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3427, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3428, 0, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3429, 0, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3430, 0, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3431, 0, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3432, 0, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3433, 0, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3434, 0, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3435, 0, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3436, 0, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3437, 0, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3438, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3439, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3440, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3441, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3442, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3443, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3444, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3445, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3446, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3447, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3448, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3449, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3450, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3451, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3452, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3453, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3454, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3455, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3456, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3457, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3458, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3459, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3460, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3461, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3462, 0, 'en', 'plugins/testimonial/testimonial', 'name', 'Testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3463, 0, 'en', 'plugins/testimonial/testimonial', 'create', 'New testimonial', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3464, 0, 'en', 'plugins/testimonial/testimonial', 'edit', 'Edit testimonial', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3465, 0, 'en', 'plugins/testimonial/testimonial', 'company', 'Position/Company', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3470, 0, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3471, 0, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3472, 0, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3473, 0, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3474, 0, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3475, 0, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3476, 0, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3477, 0, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3478, 0, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3479, 0, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3490, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3491, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3492, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3493, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3494, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3495, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3496, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3497, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3498, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3499, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3500, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3501, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3502, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3503, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3504, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3505, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3506, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3507, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3508, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3509, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3510, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3511, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3512, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3513, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3514, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3515, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3516, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3517, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3518, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3519, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3520, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3521, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3522, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3523, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3524, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3627, 0, 'id', 'core/acl/api', 'api_clients', 'API Clients', '2021-12-12 07:49:59', '2021-12-12 07:52:14'),
(3628, 0, 'id', 'core/acl/api', 'create_new_client', 'Create new client', '2021-12-12 07:50:00', '2021-12-12 07:52:14'),
(3629, 0, 'id', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3630, 0, 'id', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3631, 0, 'id', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3632, 0, 'id', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3633, 0, 'id', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3634, 0, 'id', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3635, 0, 'id', 'core/acl/api', 'cancel_delete', 'No', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3636, 0, 'id', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3637, 0, 'id', 'core/acl/api', 'name', 'Name', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3638, 0, 'id', 'core/acl/api', 'cancel', 'Cancel', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3639, 0, 'id', 'core/acl/api', 'save', 'Save', '2021-12-12 07:50:00', '2021-12-12 07:52:15'),
(3640, 0, 'id', 'core/acl/api', 'edit', 'Edit', '2021-12-12 07:50:01', '2021-12-12 07:52:15'),
(3641, 0, 'id', 'core/acl/api', 'delete', 'Delete', '2021-12-12 07:50:01', '2021-12-12 07:52:15'),
(3642, 0, 'id', 'core/acl/api', 'client_id', 'Client ID', '2021-12-12 07:50:01', '2021-12-12 07:52:15'),
(3643, 0, 'id', 'core/acl/api', 'secret', 'Secret', '2021-12-12 07:50:01', '2021-12-12 07:52:15'),
(3644, 0, 'id', 'core/acl/auth', 'login.username', 'Email/Username', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3645, 0, 'id', 'core/acl/auth', 'login.email', 'Email', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3646, 0, 'id', 'core/acl/auth', 'login.password', 'Password', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3647, 0, 'id', 'core/acl/auth', 'login.title', 'User Login', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3648, 0, 'id', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3649, 0, 'id', 'core/acl/auth', 'login.login', 'Sign in', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3650, 0, 'id', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3651, 0, 'id', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3652, 0, 'id', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3653, 0, 'id', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3654, 0, 'id', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-12-12 07:50:01', '2021-12-12 07:52:16'),
(3655, 0, 'id', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-12-12 07:50:02', '2021-12-12 07:52:16'),
(3656, 0, 'id', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3657, 0, 'id', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3658, 0, 'id', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3659, 0, 'id', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3660, 0, 'id', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3661, 0, 'id', 'core/acl/auth', 'reset.new_password', 'New password', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3662, 0, 'id', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3663, 0, 'id', 'core/acl/auth', 'reset.email', 'Email', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3664, 0, 'id', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3665, 0, 'id', 'core/acl/auth', 'reset.update', 'Update', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3666, 0, 'id', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3667, 0, 'id', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3668, 0, 'id', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-12-12 07:50:02', '2021-12-12 07:52:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3669, 0, 'id', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3670, 0, 'id', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-12-12 07:50:02', '2021-12-12 07:52:17'),
(3671, 0, 'id', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3672, 0, 'id', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3673, 0, 'id', 'core/acl/auth', 'reset.new-password', 'New password', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3674, 0, 'id', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3675, 0, 'id', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3676, 0, 'id', 'core/acl/auth', 'failed', 'Failed', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3677, 0, 'id', 'core/acl/auth', 'throttle', 'Throttle', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3678, 0, 'id', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3679, 0, 'id', 'core/acl/auth', 'register_now', 'Register now', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3680, 0, 'id', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3681, 0, 'id', 'core/acl/auth', 'login_title', 'Admin', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3682, 0, 'id', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3683, 0, 'id', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3684, 0, 'id', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-12-12 07:50:03', '2021-12-12 07:52:18'),
(3685, 0, 'id', 'core/acl/auth', 'languages', 'Languages', '2021-12-12 07:50:03', '2021-12-12 07:52:19'),
(3686, 0, 'id', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-12-12 07:50:03', '2021-12-12 07:52:19'),
(3687, 0, 'id', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3688, 0, 'id', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3689, 0, 'id', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3690, 0, 'id', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3691, 0, 'id', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3692, 0, 'id', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3693, 0, 'id', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3694, 0, 'id', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3695, 0, 'id', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3696, 0, 'id', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-12-12 07:50:04', '2021-12-12 07:52:19'),
(3697, 0, 'id', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-12-12 07:50:04', '2021-12-12 07:52:20'),
(3698, 0, 'id', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-12-12 07:50:04', '2021-12-12 07:52:20'),
(3699, 0, 'id', 'core/acl/permissions', 'name', 'Name', '2021-12-12 07:50:04', '2021-12-12 07:52:20'),
(3700, 0, 'id', 'core/acl/permissions', 'current_role', 'Current Role', '2021-12-12 07:50:04', '2021-12-12 07:52:20'),
(3701, 0, 'id', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3702, 0, 'id', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3703, 0, 'id', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3704, 0, 'id', 'core/acl/permissions', 'role_name', 'Name', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3705, 0, 'id', 'core/acl/permissions', 'role_description', 'Description', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3706, 0, 'id', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3707, 0, 'id', 'core/acl/permissions', 'cancel', 'Cancel', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3708, 0, 'id', 'core/acl/permissions', 'reset', 'Reset', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3709, 0, 'id', 'core/acl/permissions', 'save', 'Save', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3710, 0, 'id', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3711, 0, 'id', 'core/acl/permissions', 'details', 'Details', '2021-12-12 07:50:05', '2021-12-12 07:52:20'),
(3712, 0, 'id', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3713, 0, 'id', 'core/acl/permissions', 'all', 'All Permissions', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3714, 0, 'id', 'core/acl/permissions', 'list_role', 'List Roles', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3715, 0, 'id', 'core/acl/permissions', 'created_on', 'Created On', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3716, 0, 'id', 'core/acl/permissions', 'created_by', 'Created By', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3717, 0, 'id', 'core/acl/permissions', 'actions', 'Actions', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3718, 0, 'id', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-12-12 07:50:05', '2021-12-12 07:52:21'),
(3719, 0, 'id', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3720, 0, 'id', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3721, 0, 'id', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3722, 0, 'id', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3723, 0, 'id', 'core/acl/permissions', 'not_found', 'No role found!', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3724, 0, 'id', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3725, 0, 'id', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3726, 0, 'id', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3727, 0, 'id', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3728, 0, 'id', 'core/acl/permissions', 'options', 'Options', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3729, 0, 'id', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3730, 0, 'id', 'core/acl/permissions', 'roles', 'Roles', '2021-12-12 07:50:06', '2021-12-12 07:52:21'),
(3731, 0, 'id', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-12-12 07:50:06', '2021-12-12 07:52:22'),
(3732, 0, 'id', 'core/acl/permissions', 'user_management', 'User Management', '2021-12-12 07:50:06', '2021-12-12 07:52:22'),
(3733, 0, 'id', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-12-12 07:50:06', '2021-12-12 07:52:22'),
(3734, 0, 'id', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-12-12 07:50:06', '2021-12-12 07:52:22'),
(3735, 0, 'id', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-12-12 07:50:06', '2021-12-12 07:52:22'),
(3736, 0, 'id', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-12-12 07:50:07', '2021-12-12 07:52:22'),
(3737, 0, 'id', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-12-12 07:50:07', '2021-12-12 07:52:22'),
(3738, 0, 'id', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-12-12 07:50:07', '2021-12-12 07:52:22'),
(3739, 0, 'id', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-12-12 07:50:07', '2021-12-12 07:52:23'),
(3740, 0, 'id', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-12-12 07:50:07', '2021-12-12 07:52:23'),
(3741, 0, 'id', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-12-12 07:50:07', '2021-12-12 07:52:23'),
(3742, 0, 'id', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-12-12 07:50:07', '2021-12-12 07:52:23'),
(3743, 0, 'id', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-12-12 07:50:07', '2021-12-12 07:52:23'),
(3744, 0, 'id', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3745, 0, 'id', 'core/acl/users', 'not_found', 'User not found', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3746, 0, 'id', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3747, 0, 'id', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3748, 0, 'id', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3749, 0, 'id', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3750, 0, 'id', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3751, 0, 'id', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-12-12 07:50:08', '2021-12-12 07:52:23'),
(3752, 0, 'id', 'core/acl/users', 'email', 'Email', '2021-12-12 07:50:08', '2021-12-12 07:52:24'),
(3753, 0, 'id', 'core/acl/users', 'role', 'Role', '2021-12-12 07:50:08', '2021-12-12 07:52:24'),
(3754, 0, 'id', 'core/acl/users', 'username', 'Username', '2021-12-12 07:50:08', '2021-12-12 07:52:24'),
(3755, 0, 'id', 'core/acl/users', 'last_name', 'Last Name', '2021-12-12 07:50:08', '2021-12-12 07:52:24'),
(3756, 0, 'id', 'core/acl/users', 'first_name', 'First Name', '2021-12-12 07:50:08', '2021-12-12 07:52:24'),
(3757, 0, 'id', 'core/acl/users', 'message', 'Message', '2021-12-12 07:50:08', '2021-12-12 07:52:24'),
(3758, 0, 'id', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3759, 0, 'id', 'core/acl/users', 'change_password', 'Change password', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3760, 0, 'id', 'core/acl/users', 'current_password', 'Current password', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3761, 0, 'id', 'core/acl/users', 'new_password', 'New Password', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3762, 0, 'id', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3763, 0, 'id', 'core/acl/users', 'password', 'Password', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3764, 0, 'id', 'core/acl/users', 'save', 'Save', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3765, 0, 'id', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3766, 0, 'id', 'core/acl/users', 'deleted', 'User deleted', '2021-12-12 07:50:09', '2021-12-12 07:52:24'),
(3767, 0, 'id', 'core/acl/users', 'last_login', 'Last Login', '2021-12-12 07:50:09', '2021-12-12 07:52:25'),
(3768, 0, 'id', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-12-12 07:50:09', '2021-12-12 07:52:25'),
(3769, 0, 'id', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-12-12 07:50:09', '2021-12-12 07:52:25'),
(3770, 0, 'id', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-12-12 07:50:09', '2021-12-12 07:52:25'),
(3771, 0, 'id', 'core/acl/users', 'new_image', 'New Image', '2021-12-12 07:50:09', '2021-12-12 07:52:25'),
(3772, 0, 'id', 'core/acl/users', 'loading', 'Loading', '2021-12-12 07:50:09', '2021-12-12 07:52:25'),
(3773, 0, 'id', 'core/acl/users', 'close', 'Close', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3774, 0, 'id', 'core/acl/users', 'update', 'Update', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3775, 0, 'id', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3776, 0, 'id', 'core/acl/users', 'users', 'Users', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3777, 0, 'id', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3778, 0, 'id', 'core/acl/users', 'info.title', 'User profile', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3779, 0, 'id', 'core/acl/users', 'info.first_name', 'First Name', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3780, 0, 'id', 'core/acl/users', 'info.last_name', 'Last Name', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3781, 0, 'id', 'core/acl/users', 'info.email', 'Email', '2021-12-12 07:50:10', '2021-12-12 07:52:25'),
(3782, 0, 'id', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-12-12 07:50:11', '2021-12-12 07:52:25'),
(3783, 0, 'id', 'core/acl/users', 'info.address', 'Address', '2021-12-12 07:50:11', '2021-12-12 07:52:25'),
(3784, 0, 'id', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-12-12 07:50:11', '2021-12-12 07:52:25'),
(3785, 0, 'id', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-12-12 07:50:11', '2021-12-12 07:52:25'),
(3786, 0, 'id', 'core/acl/users', 'info.job', 'Job Position', '2021-12-12 07:50:11', '2021-12-12 07:52:25'),
(3787, 0, 'id', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3788, 0, 'id', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3789, 0, 'id', 'core/acl/users', 'info.interes', 'Interests', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3790, 0, 'id', 'core/acl/users', 'info.about', 'About', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3791, 0, 'id', 'core/acl/users', 'gender.title', 'Gender', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3792, 0, 'id', 'core/acl/users', 'gender.male', 'Male', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3793, 0, 'id', 'core/acl/users', 'gender.female', 'Female', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3794, 0, 'id', 'core/acl/users', 'total_users', 'Total users', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3795, 0, 'id', 'core/acl/users', 'statuses.activated', 'Activated', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3796, 0, 'id', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3797, 0, 'id', 'core/acl/users', 'make_super', 'Make super', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3798, 0, 'id', 'core/acl/users', 'remove_super', 'Remove super', '2021-12-12 07:50:11', '2021-12-12 07:52:26'),
(3799, 0, 'id', 'core/acl/users', 'is_super', 'Is super?', '2021-12-12 07:50:11', '2021-12-12 07:52:27'),
(3800, 0, 'id', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-12-12 07:50:11', '2021-12-12 07:52:27'),
(3801, 0, 'id', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3802, 0, 'id', 'core/acl/users', 'select_role', 'Select role', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3803, 0, 'id', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3804, 0, 'id', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3805, 0, 'id', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3806, 0, 'id', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3807, 0, 'id', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-12-12 07:50:12', '2021-12-12 07:52:27'),
(3808, 0, 'id', 'core/base/base', 'yes', 'Yes', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3809, 0, 'id', 'core/base/base', 'no', 'No', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3810, 0, 'id', 'core/base/base', 'is_default', 'Is default?', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3811, 0, 'id', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3812, 0, 'id', 'core/base/base', 'email_template.header', 'Email template header', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3813, 0, 'id', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3814, 0, 'id', 'core/base/base', 'email_template.site_title', 'Site title', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3815, 0, 'id', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3816, 0, 'id', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3817, 0, 'id', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3818, 0, 'id', 'core/base/base', 'email_template.date_year', 'Current year', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3819, 0, 'id', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3820, 0, 'id', 'core/base/base', 'change_image', 'Change image', '2021-12-12 07:50:13', '2021-12-12 07:52:28'),
(3821, 0, 'id', 'core/base/base', 'delete_image', 'Delete image', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3822, 0, 'id', 'core/base/base', 'preview_image', 'Preview image', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3823, 0, 'id', 'core/base/base', 'image', 'Image', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3824, 0, 'id', 'core/base/base', 'using_button', 'Using button', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3825, 0, 'id', 'core/base/base', 'select_image', 'Select image', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3826, 0, 'id', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3827, 0, 'id', 'core/base/base', 'add_image', 'Add image', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3828, 0, 'id', 'core/base/cache', 'cache_management', 'Cache management', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3829, 0, 'id', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3830, 0, 'id', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3831, 0, 'id', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3832, 0, 'id', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3833, 0, 'id', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3834, 0, 'id', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-12-12 07:50:14', '2021-12-12 07:52:29'),
(3835, 0, 'id', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-12-12 07:50:15', '2021-12-12 07:52:29'),
(3836, 0, 'id', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-12-12 07:50:15', '2021-12-12 07:52:29'),
(3837, 0, 'id', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-12-12 07:50:15', '2021-12-12 07:52:29'),
(3838, 0, 'id', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-12-12 07:50:15', '2021-12-12 07:52:29'),
(3839, 0, 'id', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-12-12 07:50:15', '2021-12-12 07:52:29'),
(3840, 0, 'id', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-12-12 07:50:15', '2021-12-12 07:52:30'),
(3841, 0, 'id', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-12-12 07:50:15', '2021-12-12 07:52:30'),
(3842, 0, 'id', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3843, 0, 'id', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3844, 0, 'id', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3845, 0, 'id', 'core/base/enums', 'statuses.draft', 'Draft', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3846, 0, 'id', 'core/base/enums', 'statuses.pending', 'Pending', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3847, 0, 'id', 'core/base/enums', 'statuses.published', 'Published', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3848, 0, 'id', 'core/base/errors', '401_title', 'Permission Denied', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3849, 0, 'id', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3850, 0, 'id', 'core/base/errors', '404_title', 'Page could not be found', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3851, 0, 'id', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3852, 0, 'id', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3853, 0, 'id', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3854, 0, 'id', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-12-12 07:50:16', '2021-12-12 07:52:30'),
(3855, 0, 'id', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://shopwise.local/admin\">clicking here</a>.', '2021-12-12 07:50:17', '2021-12-12 07:52:30'),
(3856, 0, 'id', 'core/base/errors', 'not_found', 'Not Found', '2021-12-12 07:50:17', '2021-12-12 07:52:30'),
(3857, 0, 'id', 'core/base/forms', 'choose_image', 'Choose image', '2021-12-12 07:50:17', '2021-12-12 07:52:30'),
(3858, 0, 'id', 'core/base/forms', 'actions', 'Actions', '2021-12-12 07:50:17', '2021-12-12 07:52:30'),
(3859, 0, 'id', 'core/base/forms', 'save', 'Save', '2021-12-12 07:50:17', '2021-12-12 07:52:30'),
(3860, 0, 'id', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-12-12 07:50:17', '2021-12-12 07:52:30'),
(3861, 0, 'id', 'core/base/forms', 'image', 'Image', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3862, 0, 'id', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3863, 0, 'id', 'core/base/forms', 'create', 'Create', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3864, 0, 'id', 'core/base/forms', 'edit', 'Edit', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3865, 0, 'id', 'core/base/forms', 'permalink', 'Permalink', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3866, 0, 'id', 'core/base/forms', 'ok', 'OK', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3867, 0, 'id', 'core/base/forms', 'cancel', 'Cancel', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3868, 0, 'id', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3869, 0, 'id', 'core/base/forms', 'template', 'Template', '2021-12-12 07:50:17', '2021-12-12 07:52:31'),
(3870, 0, 'id', 'core/base/forms', 'choose_file', 'Choose file', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3871, 0, 'id', 'core/base/forms', 'file', 'File', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3872, 0, 'id', 'core/base/forms', 'content', 'Content', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3873, 0, 'id', 'core/base/forms', 'description', 'Description', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3874, 0, 'id', 'core/base/forms', 'name', 'Name', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3875, 0, 'id', 'core/base/forms', 'slug', 'Slug', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3876, 0, 'id', 'core/base/forms', 'title', 'Title', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3877, 0, 'id', 'core/base/forms', 'value', 'Value', '2021-12-12 07:50:18', '2021-12-12 07:52:31'),
(3878, 0, 'id', 'core/base/forms', 'name_placeholder', 'Name', '2021-12-12 07:50:18', '2021-12-12 07:52:32'),
(3879, 0, 'id', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-12-12 07:50:18', '2021-12-12 07:52:32'),
(3880, 0, 'id', 'core/base/forms', 'description_placeholder', 'Short description', '2021-12-12 07:50:18', '2021-12-12 07:52:32'),
(3881, 0, 'id', 'core/base/forms', 'parent', 'Parent', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3882, 0, 'id', 'core/base/forms', 'icon', 'Icon', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3883, 0, 'id', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3884, 0, 'id', 'core/base/forms', 'order_by', 'Order by', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3885, 0, 'id', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3886, 0, 'id', 'core/base/forms', 'is_featured', 'Is featured?', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3887, 0, 'id', 'core/base/forms', 'is_default', 'Is default?', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3888, 0, 'id', 'core/base/forms', 'update', 'Update', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3889, 0, 'id', 'core/base/forms', 'publish', 'Publish', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3890, 0, 'id', 'core/base/forms', 'remove_image', 'Remove image', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3891, 0, 'id', 'core/base/forms', 'remove_file', 'Remove file', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3892, 0, 'id', 'core/base/forms', 'order', 'Order', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3893, 0, 'id', 'core/base/forms', 'alias', 'Alias', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3894, 0, 'id', 'core/base/forms', 'basic_information', 'Basic information', '2021-12-12 07:50:19', '2021-12-12 07:52:32'),
(3895, 0, 'id', 'core/base/forms', 'short_code', 'Shortcode', '2021-12-12 07:50:20', '2021-12-12 07:52:32'),
(3896, 0, 'id', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-12-12 07:50:20', '2021-12-12 07:52:32'),
(3897, 0, 'id', 'core/base/forms', 'add', 'Add', '2021-12-12 07:50:20', '2021-12-12 07:52:32'),
(3898, 0, 'id', 'core/base/forms', 'link', 'Link', '2021-12-12 07:50:20', '2021-12-12 07:52:32'),
(3899, 0, 'id', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-12-12 07:50:20', '2021-12-12 07:52:32'),
(3900, 0, 'id', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-12-12 07:50:20', '2021-12-12 07:52:33'),
(3901, 0, 'id', 'core/base/forms', 'expand_all', 'Expand all', '2021-12-12 07:50:20', '2021-12-12 07:52:33'),
(3902, 0, 'id', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-12-12 07:50:20', '2021-12-12 07:52:33'),
(3903, 0, 'id', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-12-12 07:50:20', '2021-12-12 07:52:33'),
(3904, 0, 'id', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-12-12 07:50:20', '2021-12-12 07:52:33'),
(3905, 0, 'id', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-12-12 07:50:20', '2021-12-12 07:52:33'),
(3906, 0, 'id', 'core/base/layouts', 'widgets', 'Widgets', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3907, 0, 'id', 'core/base/layouts', 'plugins', 'Plugins', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3908, 0, 'id', 'core/base/layouts', 'settings', 'Settings', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3909, 0, 'id', 'core/base/layouts', 'setting_general', 'General', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3910, 0, 'id', 'core/base/layouts', 'setting_email', 'Email', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3911, 0, 'id', 'core/base/layouts', 'system_information', 'System information', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3912, 0, 'id', 'core/base/layouts', 'theme', 'Theme', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3913, 0, 'id', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3914, 0, 'id', 'core/base/layouts', 'profile', 'Profile', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3915, 0, 'id', 'core/base/layouts', 'logout', 'Logout', '2021-12-12 07:50:21', '2021-12-12 07:52:33'),
(3916, 0, 'id', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-12-12 07:50:22', '2021-12-12 07:52:33'),
(3917, 0, 'id', 'core/base/layouts', 'home', 'Home', '2021-12-12 07:50:22', '2021-12-12 07:52:33'),
(3918, 0, 'id', 'core/base/layouts', 'search', 'Search', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3919, 0, 'id', 'core/base/layouts', 'add_new', 'Add new', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3920, 0, 'id', 'core/base/layouts', 'n_a', 'N/A', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3921, 0, 'id', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3922, 0, 'id', 'core/base/layouts', 'view_website', 'View website', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3923, 0, 'id', 'core/base/mail', 'send-fail', 'Send email failed', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3924, 0, 'id', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3925, 0, 'id', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3926, 0, 'id', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3927, 0, 'id', 'core/base/notices', 'success_header', 'Success!', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3928, 0, 'id', 'core/base/notices', 'error_header', 'Error!', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3929, 0, 'id', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-12-12 07:50:22', '2021-12-12 07:52:34'),
(3930, 0, 'id', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-12-12 07:50:23', '2021-12-12 07:52:34'),
(3931, 0, 'id', 'core/base/notices', 'error', 'Error!', '2021-12-12 07:50:23', '2021-12-12 07:52:34'),
(3932, 0, 'id', 'core/base/notices', 'success', 'Success!', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3933, 0, 'id', 'core/base/notices', 'info', 'Info!', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3934, 0, 'id', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3935, 0, 'id', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3936, 0, 'id', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3937, 0, 'id', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3938, 0, 'id', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3939, 0, 'id', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3940, 0, 'id', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3941, 0, 'id', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3942, 0, 'id', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3943, 0, 'id', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3944, 0, 'id', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-12-12 07:50:23', '2021-12-12 07:52:35'),
(3945, 0, 'id', 'core/base/system', 'user_management', 'User Management', '2021-12-12 07:50:23', '2021-12-12 07:52:36'),
(3946, 0, 'id', 'core/base/system', 'user_management_description', 'Manage users.', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3947, 0, 'id', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3948, 0, 'id', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3949, 0, 'id', 'core/base/system', 'user.list_super', 'List Super Users', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3950, 0, 'id', 'core/base/system', 'user.email', 'Email', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3951, 0, 'id', 'core/base/system', 'user.last_login', 'Last Login', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3952, 0, 'id', 'core/base/system', 'user.username', 'Username', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3953, 0, 'id', 'core/base/system', 'user.add_user', 'Add Super User', '2021-12-12 07:50:24', '2021-12-12 07:52:36'),
(3954, 0, 'id', 'core/base/system', 'user.cancel', 'Cancel', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3955, 0, 'id', 'core/base/system', 'user.create', 'Create', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3956, 0, 'id', 'core/base/system', 'options.features', 'Feature Access Control', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3957, 0, 'id', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3958, 0, 'id', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3959, 0, 'id', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3960, 0, 'id', 'core/base/system', 'options.info', 'System information', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3961, 0, 'id', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3962, 0, 'id', 'core/base/system', 'info.title', 'System information', '2021-12-12 07:50:25', '2021-12-12 07:52:36'),
(3963, 0, 'id', 'core/base/system', 'info.cache', 'Cache', '2021-12-12 07:50:25', '2021-12-12 07:52:37'),
(3964, 0, 'id', 'core/base/system', 'info.locale', 'Active locale', '2021-12-12 07:50:25', '2021-12-12 07:52:37'),
(3965, 0, 'id', 'core/base/system', 'info.environment', 'Environment', '2021-12-12 07:50:25', '2021-12-12 07:52:37'),
(3966, 0, 'id', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-12-12 07:50:25', '2021-12-12 07:52:37'),
(3967, 0, 'id', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-12-12 07:50:25', '2021-12-12 07:52:37'),
(3968, 0, 'id', 'core/base/system', 'get_system_report', 'Get System Report', '2021-12-12 07:50:25', '2021-12-12 07:52:37'),
(3969, 0, 'id', 'core/base/system', 'system_environment', 'System Environment', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3970, 0, 'id', 'core/base/system', 'framework_version', 'Framework Version', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3971, 0, 'id', 'core/base/system', 'timezone', 'Timezone', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3972, 0, 'id', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3973, 0, 'id', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3974, 0, 'id', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3975, 0, 'id', 'core/base/system', 'app_size', 'App Size', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3976, 0, 'id', 'core/base/system', 'server_environment', 'Server Environment', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3977, 0, 'id', 'core/base/system', 'php_version', 'PHP Version', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3978, 0, 'id', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3979, 0, 'id', 'core/base/system', 'server_software', 'Server Software', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3980, 0, 'id', 'core/base/system', 'server_os', 'Server OS', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3981, 0, 'id', 'core/base/system', 'database', 'Database', '2021-12-12 07:50:26', '2021-12-12 07:52:37'),
(3982, 0, 'id', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-12-12 07:50:26', '2021-12-12 07:52:38'),
(3983, 0, 'id', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-12-12 07:50:26', '2021-12-12 07:52:38'),
(3984, 0, 'id', 'core/base/system', 'session_driver', 'Session Driver', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3985, 0, 'id', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3986, 0, 'id', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3987, 0, 'id', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3988, 0, 'id', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3989, 0, 'id', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3990, 0, 'id', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3991, 0, 'id', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3992, 0, 'id', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3993, 0, 'id', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3994, 0, 'id', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3995, 0, 'id', 'core/base/system', 'extra_information', 'Extra Information', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3996, 0, 'id', 'core/base/system', 'copy_report', 'Copy Report', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3997, 0, 'id', 'core/base/system', 'package_name', 'Package Name', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3998, 0, 'id', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(3999, 0, 'id', 'core/base/system', 'version', 'Version', '2021-12-12 07:50:27', '2021-12-12 07:52:38'),
(4000, 0, 'id', 'core/base/system', 'cms_version', 'CMS Version', '2021-12-12 07:50:27', '2021-12-12 07:52:39'),
(4001, 0, 'id', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4002, 0, 'id', 'core/base/tables', 'id', 'ID', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4003, 0, 'id', 'core/base/tables', 'name', 'Name', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4004, 0, 'id', 'core/base/tables', 'slug', 'Slug', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4005, 0, 'id', 'core/base/tables', 'title', 'Title', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4006, 0, 'id', 'core/base/tables', 'order_by', 'Order By', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4007, 0, 'id', 'core/base/tables', 'order', 'Order', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4008, 0, 'id', 'core/base/tables', 'status', 'Status', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4009, 0, 'id', 'core/base/tables', 'created_at', 'Created At', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4010, 0, 'id', 'core/base/tables', 'updated_at', 'Updated At', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4011, 0, 'id', 'core/base/tables', 'description', 'Description', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4012, 0, 'id', 'core/base/tables', 'operations', 'Operations', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4013, 0, 'id', 'core/base/tables', 'url', 'URL', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4014, 0, 'id', 'core/base/tables', 'author', 'Author', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4015, 0, 'id', 'core/base/tables', 'notes', 'Notes', '2021-12-12 07:50:28', '2021-12-12 07:52:39'),
(4016, 0, 'id', 'core/base/tables', 'column', 'Column', '2021-12-12 07:50:29', '2021-12-12 07:52:39'),
(4017, 0, 'id', 'core/base/tables', 'origin', 'Origin', '2021-12-12 07:50:29', '2021-12-12 07:52:40'),
(4018, 0, 'id', 'core/base/tables', 'after_change', 'After changes', '2021-12-12 07:50:29', '2021-12-12 07:52:40'),
(4019, 0, 'id', 'core/base/tables', 'views', 'Views', '2021-12-12 07:50:29', '2021-12-12 07:52:40'),
(4020, 0, 'id', 'core/base/tables', 'browser', 'Browser', '2021-12-12 07:50:29', '2021-12-12 07:52:40'),
(4021, 0, 'id', 'core/base/tables', 'session', 'Session', '2021-12-12 07:50:29', '2021-12-12 07:52:40'),
(4022, 0, 'id', 'core/base/tables', 'activated', 'activated', '2021-12-12 07:50:29', '2021-12-12 07:52:40'),
(4023, 0, 'id', 'core/base/tables', 'deactivated', 'deactivated', '2021-12-12 07:50:30', '2021-12-12 07:52:40'),
(4024, 0, 'id', 'core/base/tables', 'is_featured', 'Is featured', '2021-12-12 07:50:30', '2021-12-12 07:52:40'),
(4025, 0, 'id', 'core/base/tables', 'edit', 'Edit', '2021-12-12 07:50:30', '2021-12-12 07:52:40'),
(4026, 0, 'id', 'core/base/tables', 'delete', 'Delete', '2021-12-12 07:50:30', '2021-12-12 07:52:40'),
(4027, 0, 'id', 'core/base/tables', 'restore', 'Restore', '2021-12-12 07:50:30', '2021-12-12 07:52:40'),
(4028, 0, 'id', 'core/base/tables', 'activate', 'Activate', '2021-12-12 07:50:30', '2021-12-12 07:52:41'),
(4029, 0, 'id', 'core/base/tables', 'deactivate', 'Deactivate', '2021-12-12 07:50:30', '2021-12-12 07:52:41'),
(4030, 0, 'id', 'core/base/tables', 'excel', 'Excel', '2021-12-12 07:50:30', '2021-12-12 07:52:41'),
(4031, 0, 'id', 'core/base/tables', 'export', 'Export', '2021-12-12 07:50:30', '2021-12-12 07:52:41'),
(4032, 0, 'id', 'core/base/tables', 'csv', 'CSV', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4033, 0, 'id', 'core/base/tables', 'pdf', 'PDF', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4034, 0, 'id', 'core/base/tables', 'print', 'Print', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4035, 0, 'id', 'core/base/tables', 'reset', 'Reset', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4036, 0, 'id', 'core/base/tables', 'reload', 'Reload', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4037, 0, 'id', 'core/base/tables', 'display', 'Display', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4038, 0, 'id', 'core/base/tables', 'all', 'All', '2021-12-12 07:50:31', '2021-12-12 07:52:41'),
(4039, 0, 'id', 'core/base/tables', 'add_new', 'Add New', '2021-12-12 07:50:32', '2021-12-12 07:52:41'),
(4040, 0, 'id', 'core/base/tables', 'action', 'Actions', '2021-12-12 07:50:32', '2021-12-12 07:52:41'),
(4041, 0, 'id', 'core/base/tables', 'delete_entry', 'Delete', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4042, 0, 'id', 'core/base/tables', 'view', 'View Detail', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4043, 0, 'id', 'core/base/tables', 'save', 'Save', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4044, 0, 'id', 'core/base/tables', 'show_from', 'Show from', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4045, 0, 'id', 'core/base/tables', 'to', 'to', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4046, 0, 'id', 'core/base/tables', 'in', 'in', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4047, 0, 'id', 'core/base/tables', 'records', 'records', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4048, 0, 'id', 'core/base/tables', 'no_data', 'No data to display', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4049, 0, 'id', 'core/base/tables', 'no_record', 'No record', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4050, 0, 'id', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-12-12 07:50:32', '2021-12-12 07:52:42'),
(4051, 0, 'id', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-12-12 07:50:33', '2021-12-12 07:52:42'),
(4052, 0, 'id', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-12-12 07:50:33', '2021-12-12 07:52:42'),
(4053, 0, 'id', 'core/base/tables', 'cancel', 'Cancel', '2021-12-12 07:50:33', '2021-12-12 07:52:42'),
(4054, 0, 'id', 'core/base/tables', 'template', 'Template', '2021-12-12 07:50:33', '2021-12-12 07:52:42'),
(4055, 0, 'id', 'core/base/tables', 'email', 'Email', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4056, 0, 'id', 'core/base/tables', 'last_login', 'Last login', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4057, 0, 'id', 'core/base/tables', 'shortcode', 'Shortcode', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4058, 0, 'id', 'core/base/tables', 'image', 'Image', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4059, 0, 'id', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4060, 0, 'id', 'core/base/tables', 'submit', 'Submit', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4061, 0, 'id', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4062, 0, 'id', 'core/base/tabs', 'detail', 'Detail', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4063, 0, 'id', 'core/base/tabs', 'file', 'Files', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4064, 0, 'id', 'core/base/tabs', 'record_note', 'Record Note', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4065, 0, 'id', 'core/base/tabs', 'revision', 'Revision History', '2021-12-12 07:50:33', '2021-12-12 07:52:43'),
(4066, 0, 'id', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4067, 0, 'id', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4068, 0, 'id', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4069, 0, 'id', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4070, 0, 'id', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4071, 0, 'id', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4072, 0, 'id', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4073, 0, 'id', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-12-12 07:50:34', '2021-12-12 07:52:43');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4074, 0, 'id', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-12-12 07:50:34', '2021-12-12 07:52:43'),
(4075, 0, 'id', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-12-12 07:50:34', '2021-12-12 07:52:44'),
(4076, 0, 'id', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-12-12 07:50:34', '2021-12-12 07:52:44'),
(4077, 0, 'id', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-12-12 07:50:34', '2021-12-12 07:52:44'),
(4078, 0, 'id', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-12-12 07:50:34', '2021-12-12 07:52:44'),
(4079, 0, 'id', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-12-12 07:50:34', '2021-12-12 07:52:44'),
(4080, 0, 'id', 'core/media/media', 'filter', 'Filter', '2021-12-12 07:50:35', '2021-12-12 07:52:44'),
(4081, 0, 'id', 'core/media/media', 'everything', 'Everything', '2021-12-12 07:50:35', '2021-12-12 07:52:44'),
(4082, 0, 'id', 'core/media/media', 'image', 'Image', '2021-12-12 07:50:35', '2021-12-12 07:52:44'),
(4083, 0, 'id', 'core/media/media', 'video', 'Video', '2021-12-12 07:50:35', '2021-12-12 07:52:44'),
(4084, 0, 'id', 'core/media/media', 'document', 'Document', '2021-12-12 07:50:35', '2021-12-12 07:52:45'),
(4085, 0, 'id', 'core/media/media', 'view_in', 'View in', '2021-12-12 07:50:35', '2021-12-12 07:52:45'),
(4086, 0, 'id', 'core/media/media', 'all_media', 'All media', '2021-12-12 07:50:35', '2021-12-12 07:52:45'),
(4087, 0, 'id', 'core/media/media', 'trash', 'Trash', '2021-12-12 07:50:35', '2021-12-12 07:52:45'),
(4088, 0, 'id', 'core/media/media', 'recent', 'Recent', '2021-12-12 07:50:35', '2021-12-12 07:52:45'),
(4089, 0, 'id', 'core/media/media', 'favorites', 'Favorites', '2021-12-12 07:50:35', '2021-12-12 07:52:45'),
(4090, 0, 'id', 'core/media/media', 'upload', 'Upload', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4091, 0, 'id', 'core/media/media', 'create_folder', 'Create folder', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4092, 0, 'id', 'core/media/media', 'refresh', 'Refresh', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4093, 0, 'id', 'core/media/media', 'empty_trash', 'Empty trash', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4094, 0, 'id', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4095, 0, 'id', 'core/media/media', 'sort', 'Sort', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4096, 0, 'id', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4097, 0, 'id', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4098, 0, 'id', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4099, 0, 'id', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4100, 0, 'id', 'core/media/media', 'size_asc', 'Size - ASC', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4101, 0, 'id', 'core/media/media', 'size_desc', 'Size - DESC', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4102, 0, 'id', 'core/media/media', 'actions', 'Actions', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4103, 0, 'id', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-12-12 07:50:36', '2021-12-12 07:52:45'),
(4104, 0, 'id', 'core/media/media', 'insert', 'Insert', '2021-12-12 07:50:36', '2021-12-12 07:52:46'),
(4105, 0, 'id', 'core/media/media', 'folder_name', 'Folder name', '2021-12-12 07:50:36', '2021-12-12 07:52:46'),
(4106, 0, 'id', 'core/media/media', 'create', 'Create', '2021-12-12 07:50:36', '2021-12-12 07:52:46'),
(4107, 0, 'id', 'core/media/media', 'rename', 'Rename', '2021-12-12 07:50:36', '2021-12-12 07:52:46'),
(4108, 0, 'id', 'core/media/media', 'close', 'Close', '2021-12-12 07:50:36', '2021-12-12 07:52:46'),
(4109, 0, 'id', 'core/media/media', 'save_changes', 'Save changes', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4110, 0, 'id', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4111, 0, 'id', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4112, 0, 'id', 'core/media/media', 'confirm', 'Confirm', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4113, 0, 'id', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4114, 0, 'id', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4115, 0, 'id', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4116, 0, 'id', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4117, 0, 'id', 'core/media/media', 'up_level', 'Up one level', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4118, 0, 'id', 'core/media/media', 'upload_progress', 'Upload progress', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4119, 0, 'id', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-12-12 07:50:37', '2021-12-12 07:52:46'),
(4120, 0, 'id', 'core/media/media', 'gallery', 'Media gallery', '2021-12-12 07:50:38', '2021-12-12 07:52:46'),
(4121, 0, 'id', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-12-12 07:50:38', '2021-12-12 07:52:46'),
(4122, 0, 'id', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:46'),
(4123, 0, 'id', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4124, 0, 'id', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4125, 0, 'id', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4126, 0, 'id', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4127, 0, 'id', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4128, 0, 'id', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4129, 0, 'id', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4130, 0, 'id', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4131, 0, 'id', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4132, 0, 'id', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-12-12 07:50:38', '2021-12-12 07:52:47'),
(4133, 0, 'id', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-12-12 07:50:38', '2021-12-12 07:52:48'),
(4134, 0, 'id', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-12-12 07:50:38', '2021-12-12 07:52:48'),
(4135, 0, 'id', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-12-12 07:50:38', '2021-12-12 07:52:48'),
(4136, 0, 'id', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4137, 0, 'id', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4138, 0, 'id', 'core/media/media', 'add_success', 'Add item successfully!', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4139, 0, 'id', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4140, 0, 'id', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4141, 0, 'id', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4142, 0, 'id', 'core/media/media', 'menu_name', 'Media', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4143, 0, 'id', 'core/media/media', 'add', 'Add media', '2021-12-12 07:50:39', '2021-12-12 07:52:48'),
(4144, 0, 'id', 'core/media/media', 'javascript.name', 'Name', '2021-12-12 07:50:39', '2021-12-12 07:52:49'),
(4145, 0, 'id', 'core/media/media', 'javascript.url', 'URL', '2021-12-12 07:50:39', '2021-12-12 07:52:49'),
(4146, 0, 'id', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-12-12 07:50:39', '2021-12-12 07:52:49'),
(4147, 0, 'id', 'core/media/media', 'javascript.size', 'Size', '2021-12-12 07:50:39', '2021-12-12 07:52:49'),
(4148, 0, 'id', 'core/media/media', 'javascript.mime_type', 'Type', '2021-12-12 07:50:40', '2021-12-12 07:52:49'),
(4149, 0, 'id', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-12-12 07:50:40', '2021-12-12 07:52:49'),
(4150, 0, 'id', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-12-12 07:50:40', '2021-12-12 07:52:49'),
(4151, 0, 'id', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-12-12 07:50:40', '2021-12-12 07:52:49'),
(4152, 0, 'id', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4153, 0, 'id', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4154, 0, 'id', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4155, 0, 'id', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4156, 0, 'id', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4157, 0, 'id', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4158, 0, 'id', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-12-12 07:50:40', '2021-12-12 07:52:50'),
(4159, 0, 'id', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4160, 0, 'id', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4161, 0, 'id', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4162, 0, 'id', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4163, 0, 'id', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4164, 0, 'id', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4165, 0, 'id', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4166, 0, 'id', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-12-12 07:50:41', '2021-12-12 07:52:50'),
(4167, 0, 'id', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-12-12 07:50:41', '2021-12-12 07:52:51'),
(4168, 0, 'id', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4169, 0, 'id', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4170, 0, 'id', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4171, 0, 'id', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4172, 0, 'id', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4173, 0, 'id', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4174, 0, 'id', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4175, 0, 'id', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-12-12 07:50:42', '2021-12-12 07:52:51'),
(4176, 0, 'id', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-12-12 07:50:42', '2021-12-12 07:52:52'),
(4177, 0, 'id', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-12-12 07:50:42', '2021-12-12 07:52:52'),
(4178, 0, 'id', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-12-12 07:50:42', '2021-12-12 07:52:52'),
(4179, 0, 'id', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-12-12 07:50:42', '2021-12-12 07:52:52'),
(4180, 0, 'id', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-12-12 07:50:42', '2021-12-12 07:52:52'),
(4181, 0, 'id', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-12-12 07:50:42', '2021-12-12 07:52:52'),
(4182, 0, 'id', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4183, 0, 'id', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4184, 0, 'id', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4185, 0, 'id', 'core/media/media', 'download_link', 'Download', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4186, 0, 'id', 'core/media/media', 'url', 'URL', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4187, 0, 'id', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4188, 0, 'id', 'core/media/media', 'downloading', 'Downloading...', '2021-12-12 07:50:43', '2021-12-12 07:52:52'),
(4189, 0, 'id', 'core/setting/setting', 'title', 'Settings', '2021-12-12 07:50:44', '2021-12-12 07:52:53'),
(4190, 0, 'id', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-12-12 07:50:44', '2021-12-12 07:52:54'),
(4191, 0, 'id', 'core/setting/setting', 'general.theme', 'Theme', '2021-12-12 07:50:44', '2021-12-12 07:52:54'),
(4192, 0, 'id', 'core/setting/setting', 'general.description', 'Setting site information', '2021-12-12 07:50:44', '2021-12-12 07:52:54'),
(4193, 0, 'id', 'core/setting/setting', 'general.title', 'General', '2021-12-12 07:50:44', '2021-12-12 07:52:54'),
(4194, 0, 'id', 'core/setting/setting', 'general.general_block', 'General Information', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4195, 0, 'id', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4196, 0, 'id', 'core/setting/setting', 'general.site_title', 'Site title', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4197, 0, 'id', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4198, 0, 'id', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4199, 0, 'id', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4200, 0, 'id', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4201, 0, 'id', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4202, 0, 'id', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4203, 0, 'id', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4204, 0, 'id', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4205, 0, 'id', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4206, 0, 'id', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-12-12 07:50:45', '2021-12-12 07:52:54'),
(4207, 0, 'id', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-12-12 07:50:46', '2021-12-12 07:52:54'),
(4208, 0, 'id', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4209, 0, 'id', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4210, 0, 'id', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4211, 0, 'id', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4212, 0, 'id', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4213, 0, 'id', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4214, 0, 'id', 'core/setting/setting', 'general.enable', 'Enable', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4215, 0, 'id', 'core/setting/setting', 'general.disable', 'Disable', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4216, 0, 'id', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4217, 0, 'id', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4218, 0, 'id', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4219, 0, 'id', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4220, 0, 'id', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4221, 0, 'id', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4222, 0, 'id', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4223, 0, 'id', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-12-12 07:50:46', '2021-12-12 07:52:55'),
(4224, 0, 'id', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4225, 0, 'id', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4226, 0, 'id', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4227, 0, 'id', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4228, 0, 'id', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4229, 0, 'id', 'core/setting/setting', 'general.yes', 'Yes', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4230, 0, 'id', 'core/setting/setting', 'general.no', 'No', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4231, 0, 'id', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4232, 0, 'id', 'core/setting/setting', 'general.select', '— Select —', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4233, 0, 'id', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4234, 0, 'id', 'core/setting/setting', 'general.locale', 'Site language', '2021-12-12 07:50:47', '2021-12-12 07:52:56'),
(4235, 0, 'id', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4236, 0, 'id', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4237, 0, 'id', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4238, 0, 'id', 'core/setting/setting', 'email.subject', 'Subject', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4239, 0, 'id', 'core/setting/setting', 'email.content', 'Content', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4240, 0, 'id', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4241, 0, 'id', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-12-12 07:50:47', '2021-12-12 07:52:57'),
(4242, 0, 'id', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-12-12 07:50:48', '2021-12-12 07:52:57'),
(4243, 0, 'id', 'core/setting/setting', 'email.back', 'Back to settings', '2021-12-12 07:50:48', '2021-12-12 07:52:57'),
(4244, 0, 'id', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-12-12 07:50:48', '2021-12-12 07:52:57'),
(4245, 0, 'id', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-12-12 07:50:48', '2021-12-12 07:52:57'),
(4246, 0, 'id', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-12-12 07:50:48', '2021-12-12 07:52:57'),
(4247, 0, 'id', 'core/setting/setting', 'email.continue', 'Continue', '2021-12-12 07:50:48', '2021-12-12 07:52:57'),
(4248, 0, 'id', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4249, 0, 'id', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4250, 0, 'id', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4251, 0, 'id', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4252, 0, 'id', 'core/setting/setting', 'email.port', 'Port', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4253, 0, 'id', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4254, 0, 'id', 'core/setting/setting', 'email.host', 'Host', '2021-12-12 07:50:48', '2021-12-12 07:52:58'),
(4255, 0, 'id', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-12-12 07:50:49', '2021-12-12 07:52:58'),
(4256, 0, 'id', 'core/setting/setting', 'email.username', 'Username', '2021-12-12 07:50:49', '2021-12-12 07:52:58'),
(4257, 0, 'id', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-12-12 07:50:49', '2021-12-12 07:52:58'),
(4258, 0, 'id', 'core/setting/setting', 'email.password', 'Password', '2021-12-12 07:50:49', '2021-12-12 07:52:58'),
(4259, 0, 'id', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4260, 0, 'id', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4261, 0, 'id', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4262, 0, 'id', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4263, 0, 'id', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4264, 0, 'id', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4265, 0, 'id', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4266, 0, 'id', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4267, 0, 'id', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4268, 0, 'id', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4269, 0, 'id', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4270, 0, 'id', 'core/setting/setting', 'email.ses_key', 'Key', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4271, 0, 'id', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-12-12 07:50:49', '2021-12-12 07:52:59'),
(4272, 0, 'id', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-12-12 07:50:50', '2021-12-12 07:52:59'),
(4273, 0, 'id', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-12-12 07:50:50', '2021-12-12 07:53:00'),
(4274, 0, 'id', 'core/setting/setting', 'email.ses_region', 'Region', '2021-12-12 07:50:50', '2021-12-12 07:53:00'),
(4275, 0, 'id', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-12-12 07:50:50', '2021-12-12 07:53:00'),
(4276, 0, 'id', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-12-12 07:50:51', '2021-12-12 07:53:00'),
(4277, 0, 'id', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-12-12 07:50:51', '2021-12-12 07:53:00'),
(4278, 0, 'id', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-12-12 07:50:51', '2021-12-12 07:53:00'),
(4279, 0, 'id', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-12-12 07:50:51', '2021-12-12 07:53:00'),
(4280, 0, 'id', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-12-12 07:50:51', '2021-12-12 07:53:00'),
(4281, 0, 'id', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4282, 0, 'id', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4283, 0, 'id', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4284, 0, 'id', 'core/setting/setting', 'email.default', 'Default', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4285, 0, 'id', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4286, 0, 'id', 'core/setting/setting', 'media.title', 'Media', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4287, 0, 'id', 'core/setting/setting', 'media.driver', 'Driver', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4288, 0, 'id', 'core/setting/setting', 'media.description', 'Settings for media', '2021-12-12 07:50:52', '2021-12-12 07:53:00'),
(4289, 0, 'id', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-12-12 07:50:52', '2021-12-12 07:53:01'),
(4290, 0, 'id', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-12-12 07:50:52', '2021-12-12 07:53:01'),
(4291, 0, 'id', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-12-12 07:50:53', '2021-12-12 07:53:01'),
(4292, 0, 'id', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-12-12 07:50:53', '2021-12-12 07:53:01'),
(4293, 0, 'id', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-12-12 07:50:53', '2021-12-12 07:53:01'),
(4294, 0, 'id', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-12-12 07:50:53', '2021-12-12 07:53:01'),
(4295, 0, 'id', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-12-12 07:50:53', '2021-12-12 07:53:01'),
(4296, 0, 'id', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-12-12 07:50:53', '2021-12-12 07:53:01'),
(4297, 0, 'id', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-12-12 07:50:54', '2021-12-12 07:53:01'),
(4298, 0, 'id', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-12-12 07:50:54', '2021-12-12 07:53:01'),
(4299, 0, 'id', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-12-12 07:50:54', '2021-12-12 07:53:01'),
(4300, 0, 'id', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-12-12 07:50:54', '2021-12-12 07:53:01'),
(4301, 0, 'id', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4302, 0, 'id', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4303, 0, 'id', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4304, 0, 'id', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4305, 0, 'id', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4306, 0, 'id', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4307, 0, 'id', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4308, 0, 'id', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4309, 0, 'id', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-12-12 07:50:54', '2021-12-12 07:53:02'),
(4310, 0, 'id', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-12-12 07:50:54', '2021-12-12 07:53:03'),
(4311, 0, 'id', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-12-12 07:50:54', '2021-12-12 07:53:03'),
(4312, 0, 'id', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-12-12 07:50:54', '2021-12-12 07:53:03'),
(4313, 0, 'id', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-12-12 07:50:54', '2021-12-12 07:53:03'),
(4314, 0, 'id', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-12-12 07:50:55', '2021-12-12 07:53:03'),
(4315, 0, 'id', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-12-12 07:50:55', '2021-12-12 07:53:03'),
(4316, 0, 'id', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-12-12 07:50:55', '2021-12-12 07:53:03'),
(4317, 0, 'id', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-12-12 07:50:55', '2021-12-12 07:53:03'),
(4318, 0, 'id', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-12-12 07:50:55', '2021-12-12 07:53:03'),
(4319, 0, 'id', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-12-12 07:50:55', '2021-12-12 07:53:03'),
(4320, 0, 'id', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-12-12 07:50:55', '2021-12-12 07:53:04'),
(4321, 1, 'id', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4322, 1, 'id', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4323, 1, 'id', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4324, 1, 'id', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4325, 1, 'id', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4326, 1, 'id', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4327, 1, 'id', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4328, 1, 'id', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4329, 1, 'id', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4330, 1, 'id', 'core/setting/setting', 'save_settings', 'Save settings', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4331, 1, 'id', 'core/setting/setting', 'template', 'Template', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4332, 1, 'id', 'core/setting/setting', 'description', 'Description', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4333, 1, 'id', 'core/setting/setting', 'enable', 'Enable', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4334, 1, 'id', 'core/setting/setting', 'send', 'Send', '2021-12-12 07:53:04', '2021-12-12 07:53:04'),
(4335, 1, 'id', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4336, 1, 'id', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4337, 1, 'id', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4338, 1, 'id', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4339, 1, 'id', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4340, 1, 'id', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4341, 1, 'id', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4342, 1, 'id', 'core/setting/setting', 'saving', 'Saving...', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4343, 1, 'id', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4344, 1, 'id', 'core/setting/setting', 'email_add_more', 'Add more', '2021-12-12 07:53:05', '2021-12-12 07:53:05'),
(4345, 1, 'id', 'core/table/general', 'operations', 'Operations', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4346, 1, 'id', 'core/table/general', 'loading_data', 'Loading data from server', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4347, 1, 'id', 'core/table/general', 'display', 'Display', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4348, 1, 'id', 'core/table/general', 'all', 'All', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4349, 1, 'id', 'core/table/general', 'edit_entry', 'Edit', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4350, 1, 'id', 'core/table/general', 'delete_entry', 'Delete', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4351, 1, 'id', 'core/table/general', 'show_from', 'Showing from', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4352, 1, 'id', 'core/table/general', 'to', 'to', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4353, 1, 'id', 'core/table/general', 'in', 'in', '2021-12-12 07:53:06', '2021-12-12 07:53:06'),
(4354, 1, 'id', 'core/table/general', 'records', 'records', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4355, 1, 'id', 'core/table/general', 'no_data', 'No data to display', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4356, 1, 'id', 'core/table/general', 'no_record', 'No record', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4357, 1, 'id', 'core/table/general', 'loading', 'Loading data from server', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4358, 1, 'id', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4359, 1, 'id', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4360, 1, 'id', 'core/table/general', 'cancel', 'Cancel', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4361, 1, 'id', 'core/table/general', 'delete', 'Delete', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4362, 1, 'id', 'core/table/general', 'close', 'Close', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4363, 1, 'id', 'core/table/general', 'contains', 'Contains', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4364, 1, 'id', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4365, 1, 'id', 'core/table/general', 'greater_than', 'Greater than', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4366, 1, 'id', 'core/table/general', 'less_than', 'Less than', '2021-12-12 07:53:07', '2021-12-12 07:53:07'),
(4367, 1, 'id', 'core/table/general', 'value', 'Value', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4368, 1, 'id', 'core/table/general', 'select_field', 'Select field', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4369, 1, 'id', 'core/table/general', 'reset', 'Reset', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4370, 1, 'id', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4371, 1, 'id', 'core/table/general', 'apply', 'Apply', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4372, 1, 'id', 'core/table/general', 'filters', 'Filters', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4373, 1, 'id', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4374, 1, 'id', 'core/table/general', 'select_option', 'Select option', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4375, 1, 'id', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4376, 1, 'id', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4377, 1, 'id', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4378, 1, 'id', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4379, 1, 'id', 'core/table/general', 'search', 'Search...', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4380, 1, 'id', 'core/table/table', 'operations', 'Operations', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4381, 1, 'id', 'core/table/table', 'loading_data', 'Loading data from server', '2021-12-12 07:53:08', '2021-12-12 07:53:08'),
(4382, 1, 'id', 'core/table/table', 'display', 'Display', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4383, 1, 'id', 'core/table/table', 'all', 'All', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4384, 1, 'id', 'core/table/table', 'edit_entry', 'Edit', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4385, 1, 'id', 'core/table/table', 'delete_entry', 'Delete', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4386, 1, 'id', 'core/table/table', 'show_from', 'Showing from', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4387, 1, 'id', 'core/table/table', 'to', 'to', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4388, 1, 'id', 'core/table/table', 'in', 'in', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4389, 1, 'id', 'core/table/table', 'records', 'records', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4390, 1, 'id', 'core/table/table', 'no_data', 'No data to display', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4391, 1, 'id', 'core/table/table', 'no_record', 'No record', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4392, 1, 'id', 'core/table/table', 'loading', 'Loading data from server', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4393, 1, 'id', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4394, 1, 'id', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4395, 1, 'id', 'core/table/table', 'cancel', 'Cancel', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4396, 1, 'id', 'core/table/table', 'delete', 'Delete', '2021-12-12 07:53:09', '2021-12-12 07:53:09'),
(4397, 1, 'id', 'core/table/table', 'close', 'Close', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4398, 1, 'id', 'core/table/table', 'contains', 'Contains', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4399, 1, 'id', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4400, 1, 'id', 'core/table/table', 'greater_than', 'Greater than', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4401, 1, 'id', 'core/table/table', 'less_than', 'Less than', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4402, 1, 'id', 'core/table/table', 'value', 'Value', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4403, 1, 'id', 'core/table/table', 'select_field', 'Select field', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4404, 1, 'id', 'core/table/table', 'reset', 'Reset', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4405, 1, 'id', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4406, 1, 'id', 'core/table/table', 'apply', 'Apply', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4407, 1, 'id', 'core/table/table', 'filters', 'Filters', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4408, 1, 'id', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4409, 1, 'id', 'core/table/table', 'select_option', 'Select option', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4410, 1, 'id', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4411, 1, 'id', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4412, 1, 'id', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4413, 1, 'id', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4414, 1, 'id', 'core/table/table', 'search', 'Search...', '2021-12-12 07:53:10', '2021-12-12 07:53:10'),
(4415, 1, 'id', 'packages/menu/menu', 'name', 'Menus', '2021-12-12 07:53:11', '2021-12-12 07:53:11'),
(4416, 1, 'id', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-12-12 07:53:11', '2021-12-12 07:53:11'),
(4417, 1, 'id', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-12-12 07:53:11', '2021-12-12 07:53:11'),
(4418, 1, 'id', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-12-12 07:53:11', '2021-12-12 07:53:11'),
(4419, 1, 'id', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-12-12 07:53:11', '2021-12-12 07:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$RVGBHAwqJgELH4UAz281S.MWnCyoJ3eVARla8I41rdFlPCK8umWR6', 'BzI4vMY4D5oQ4d4xQbT4gKlgi0G1PCHx2ynm5V4hr7o7EU3loVkvBZZgeWKG', '2021-07-02 21:03:29', '2022-01-02 04:56:41', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, '2022-01-02 04:56:41'),
(2, 'firmanadmin@gmail.com', NULL, '$2y$10$BAtmJtvEg3ecnTWWRXmp6uKyB05/GQ3dD0SJpHpMkoYSKEa3sXVIu', 'JVZiyHXXh5cTae0H2SLcMz58cavgyGIaml4Z7XhhlvhGHJtcXKqeRcsocVKn', '2021-12-12 07:57:58', '2021-12-13 12:03:34', 'firman', 'sugiharto', 'firman', NULL, 0, 0, NULL, '2021-12-13 12:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=904;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4420;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
