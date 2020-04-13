-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Nov 2019 pada 07.24
-- Versi server: 5.7.28-log
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyas_sop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `access_control_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `access`
--

INSERT INTO `access` (`id`, `access_control_id`, `role_id`, `status`) VALUES
(13, 94, 17, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_control`
--

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `access_control`
--

INSERT INTO `access_control` (`id`, `folder`, `class`, `method`, `val`) VALUES
(1, '', 'Access', '__construct', 'access/__construct'),
(2, '', 'Access', 'index', 'access/index'),
(3, '', 'Access', 'json', 'access/json'),
(4, '', 'Access', 'control', 'access/control'),
(5, '', 'Access', 'store', 'access/store'),
(6, '', 'Access', 'konfig', 'access/konfig'),
(7, '', 'Access', 'upload_file', 'access/upload_file'),
(8, '', 'Access', 'upload_file_dir', 'access/upload_file_dir'),
(9, '', 'Access', 'get_uri', 'access/get_uri'),
(10, '', 'Access', 'log_activity', 'access/log_activity'),
(11, '', 'Access', 'get_instance', 'access/get_instance'),
(12, '', 'Crud', '__construct', 'crud/__construct'),
(13, '', 'Crud', 'index', 'crud/index'),
(14, '', 'Crud', 'viewcode', 'crud/viewcode'),
(15, '', 'Crud', 'generate', 'crud/generate'),
(16, '', 'Crud', 'get_kolom', 'crud/get_kolom'),
(17, '', 'Crud', 'save_generate', 'crud/save_generate'),
(18, '', 'Crud', 'api', 'crud/api'),
(19, '', 'Crud', 'api_generate', 'crud/api_generate'),
(20, '', 'Crud', 'services', 'crud/services'),
(21, '', 'Crud', 'konfig', 'crud/konfig'),
(22, '', 'Crud', 'upload_file', 'crud/upload_file'),
(23, '', 'Crud', 'upload_file_dir', 'crud/upload_file_dir'),
(24, '', 'Crud', 'get_uri', 'crud/get_uri'),
(25, '', 'Crud', 'log_activity', 'crud/log_activity'),
(26, '', 'Crud', 'get_instance', 'crud/get_instance'),
(27, '', 'Crud_ajax', '__construct', 'crud_ajax/__construct'),
(28, '', 'Crud_ajax', 'index', 'crud_ajax/index'),
(29, '', 'Crud_ajax', 'ajaxGetTableCustomer', 'crud_ajax/ajaxgettablecustomer'),
(30, '', 'Crud_ajax', 'validate', 'crud_ajax/validate'),
(31, '', 'Crud_ajax', 'tambah', 'crud_ajax/tambah'),
(32, '', 'Crud_ajax', 'hapus', 'crud_ajax/hapus'),
(33, '', 'Crud_ajax', 'ajaxGetModalCustomer', 'crud_ajax/ajaxgetmodalcustomer'),
(34, '', 'Crud_ajax', 'edit', 'crud_ajax/edit'),
(35, '', 'Crud_ajax', 'konfig', 'crud_ajax/konfig'),
(36, '', 'Crud_ajax', 'upload_file', 'crud_ajax/upload_file'),
(37, '', 'Crud_ajax', 'upload_file_dir', 'crud_ajax/upload_file_dir'),
(38, '', 'Crud_ajax', 'get_uri', 'crud_ajax/get_uri'),
(39, '', 'Crud_ajax', 'log_activity', 'crud_ajax/log_activity'),
(40, '', 'Crud_ajax', 'get_instance', 'crud_ajax/get_instance'),
(41, '', 'Debug', '__construct', 'debug/__construct'),
(42, '', 'Debug', 'index', 'debug/index'),
(43, '', 'Debug', 'exportexcell', 'debug/exportexcell'),
(44, '', 'Debug', 'ecryprdecrypt', 'debug/ecryprdecrypt'),
(45, '', 'Debug', 'validation_form', 'debug/validation_form'),
(46, '', 'Debug', 'konfig', 'debug/konfig'),
(47, '', 'Debug', 'upload_file', 'debug/upload_file'),
(48, '', 'Debug', 'upload_file_dir', 'debug/upload_file_dir'),
(49, '', 'Debug', 'get_uri', 'debug/get_uri'),
(50, '', 'Debug', 'log_activity', 'debug/log_activity'),
(51, '', 'Debug', 'get_instance', 'debug/get_instance'),
(52, '', 'Dropdown', '__construct', 'dropdown/__construct'),
(53, '', 'Dropdown', 'index', 'dropdown/index'),
(54, '', 'Dropdown', 'generate', 'dropdown/generate'),
(55, '', 'Dropdown', 'konfig', 'dropdown/konfig'),
(56, '', 'Dropdown', 'upload_file', 'dropdown/upload_file'),
(57, '', 'Dropdown', 'upload_file_dir', 'dropdown/upload_file_dir'),
(58, '', 'Dropdown', 'get_uri', 'dropdown/get_uri'),
(59, '', 'Dropdown', 'log_activity', 'dropdown/log_activity'),
(60, '', 'Dropdown', 'get_instance', 'dropdown/get_instance'),
(61, '', 'Fitur', '__construct', 'fitur/__construct'),
(62, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(63, '', 'Fitur', 'impor', 'fitur/impor'),
(64, '', 'Fitur', 'importdata', 'fitur/importdata'),
(65, '', 'Fitur', 'access', 'fitur/access'),
(66, '', 'Fitur', 'exportreport', 'fitur/exportreport'),
(67, '', 'Fitur', 'toPdf', 'fitur/topdf'),
(68, '', 'Fitur', 'konfig', 'fitur/konfig'),
(69, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(70, '', 'Fitur', 'upload_file_dir', 'fitur/upload_file_dir'),
(71, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(72, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(73, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(74, '', 'Form_input', '__construct', 'form_input/__construct'),
(75, '', 'Form_input', 'index', 'form_input/index'),
(76, '', 'Form_input', 'ajaxGetAutocompleteCustomer', 'form_input/ajaxgetautocompletecustomer'),
(77, '', 'Form_input', 'ajaxGetSelectCustomer', 'form_input/ajaxgetselectcustomer'),
(78, '', 'Form_input', 'ajaxTambahCustomer', 'form_input/ajaxtambahcustomer'),
(79, '', 'Form_input', 'konfig', 'form_input/konfig'),
(80, '', 'Form_input', 'upload_file', 'form_input/upload_file'),
(81, '', 'Form_input', 'upload_file_dir', 'form_input/upload_file_dir'),
(82, '', 'Form_input', 'get_uri', 'form_input/get_uri'),
(83, '', 'Form_input', 'log_activity', 'form_input/log_activity'),
(84, '', 'Form_input', 'get_instance', 'form_input/get_instance'),
(85, '', 'Home', '__construct', 'home/__construct'),
(86, '', 'Home', 'index', 'home/index'),
(87, '', 'Home', 'chart', 'home/chart'),
(88, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(89, '', 'Home', 'konfig', 'home/konfig'),
(90, '', 'Home', 'upload_file', 'home/upload_file'),
(91, '', 'Home', 'upload_file_dir', 'home/upload_file_dir'),
(92, '', 'Home', 'get_uri', 'home/get_uri'),
(93, '', 'Home', 'log_activity', 'home/log_activity'),
(94, '', 'Home', 'get_instance', 'home/get_instance'),
(95, '', 'Login', '__construct', 'login/__construct'),
(96, '', 'Login', 'index', 'login/index'),
(97, '', 'Login', 'logout', 'login/logout'),
(98, '', 'Login', 'act_login', 'login/act_login'),
(99, '', 'Login', 'lockscreen', 'login/lockscreen'),
(100, '', 'Login', 'konfig', 'login/konfig'),
(101, '', 'Login', 'upload_file', 'login/upload_file'),
(102, '', 'Login', 'upload_file_dir', 'login/upload_file_dir'),
(103, '', 'Login', 'get_uri', 'login/get_uri'),
(104, '', 'Login', 'log_activity', 'login/log_activity'),
(105, '', 'Login', 'get_instance', 'login/get_instance'),
(106, '', 'Page', '__construct', 'page/__construct'),
(107, '', 'Page', 'portrait', 'page/portrait'),
(108, '', 'Page', 'landscape', 'page/landscape'),
(109, '', 'Page', 'konfig', 'page/konfig'),
(110, '', 'Page', 'upload_file', 'page/upload_file'),
(111, '', 'Page', 'upload_file_dir', 'page/upload_file_dir'),
(112, '', 'Page', 'get_uri', 'page/get_uri'),
(113, '', 'Page', 'log_activity', 'page/log_activity'),
(114, '', 'Page', 'get_instance', 'page/get_instance'),
(115, '', 'Rest_server', 'index', 'rest_server/index'),
(116, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(117, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(118, '', 'Tablednd', '__construct', 'tablednd/__construct'),
(119, '', 'Tablednd', 'index', 'tablednd/index'),
(120, '', 'Tablednd', 'simpan', 'tablednd/simpan'),
(121, '', 'Tablednd', 'konfig', 'tablednd/konfig'),
(122, '', 'Tablednd', 'upload_file', 'tablednd/upload_file'),
(123, '', 'Tablednd', 'upload_file_dir', 'tablednd/upload_file_dir'),
(124, '', 'Tablednd', 'get_uri', 'tablednd/get_uri'),
(125, '', 'Tablednd', 'log_activity', 'tablednd/log_activity'),
(126, '', 'Tablednd', 'get_instance', 'tablednd/get_instance'),
(127, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(128, '', 'Tinymce', 'index', 'tinymce/index'),
(129, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(130, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(131, '', 'Tinymce', 'upload_file_dir', 'tinymce/upload_file_dir'),
(132, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(133, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(134, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(135, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(136, '', 'UploadImage', 'index', 'uploadimage/index'),
(137, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(138, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(139, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(140, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(141, '', 'UploadImage', 'upload_file_dir', 'uploadimage/upload_file_dir'),
(142, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(143, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(144, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(145, 'master', 'Customer', '__construct', 'master/customer/__construct'),
(146, 'master', 'Customer', 'index', 'master/customer/index'),
(147, 'master', 'Customer', 'create', 'master/customer/create'),
(148, 'master', 'Customer', 'validate', 'master/customer/validate'),
(149, 'master', 'Customer', 'store', 'master/customer/store'),
(150, 'master', 'Customer', 'json', 'master/customer/json'),
(151, 'master', 'Customer', 'edit', 'master/customer/edit'),
(152, 'master', 'Customer', 'update', 'master/customer/update'),
(153, 'master', 'Customer', 'delete', 'master/customer/delete'),
(154, 'master', 'Customer', 'status', 'master/customer/status'),
(155, 'master', 'Customer', 'konfig', 'master/customer/konfig'),
(156, 'master', 'Customer', 'upload_file', 'master/customer/upload_file'),
(157, 'master', 'Customer', 'upload_file_dir', 'master/customer/upload_file_dir'),
(158, 'master', 'Customer', 'get_uri', 'master/customer/get_uri'),
(159, 'master', 'Customer', 'log_activity', 'master/customer/log_activity'),
(160, 'master', 'Customer', 'get_instance', 'master/customer/get_instance'),
(161, 'master', 'Grafik', '__construct', 'master/grafik/__construct'),
(162, 'master', 'Grafik', 'index', 'master/grafik/index'),
(163, 'master', 'Grafik', 'create', 'master/grafik/create'),
(164, 'master', 'Grafik', 'validate', 'master/grafik/validate'),
(165, 'master', 'Grafik', 'store', 'master/grafik/store'),
(166, 'master', 'Grafik', 'json', 'master/grafik/json'),
(167, 'master', 'Grafik', 'edit', 'master/grafik/edit'),
(168, 'master', 'Grafik', 'update', 'master/grafik/update'),
(169, 'master', 'Grafik', 'delete', 'master/grafik/delete'),
(170, 'master', 'Grafik', 'status', 'master/grafik/status'),
(171, 'master', 'Grafik', 'konfig', 'master/grafik/konfig'),
(172, 'master', 'Grafik', 'upload_file', 'master/grafik/upload_file'),
(173, 'master', 'Grafik', 'upload_file_dir', 'master/grafik/upload_file_dir'),
(174, 'master', 'Grafik', 'get_uri', 'master/grafik/get_uri'),
(175, 'master', 'Grafik', 'log_activity', 'master/grafik/log_activity'),
(176, 'master', 'Grafik', 'get_instance', 'master/grafik/get_instance'),
(177, 'master', 'Image', '__construct', 'master/image/__construct'),
(178, 'master', 'Image', 'index', 'master/image/index'),
(179, 'master', 'Image', 'create', 'master/image/create'),
(180, 'master', 'Image', 'validate', 'master/image/validate'),
(181, 'master', 'Image', 'store', 'master/image/store'),
(182, 'master', 'Image', 'json', 'master/image/json'),
(183, 'master', 'Image', 'edit', 'master/image/edit'),
(184, 'master', 'Image', 'update', 'master/image/update'),
(185, 'master', 'Image', 'delete', 'master/image/delete'),
(186, 'master', 'Image', 'status', 'master/image/status'),
(187, 'master', 'Image', 'konfig', 'master/image/konfig'),
(188, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(189, 'master', 'Image', 'upload_file_dir', 'master/image/upload_file_dir'),
(190, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(191, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(192, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(193, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(194, 'master', 'Keys', 'index', 'master/keys/index'),
(195, 'master', 'Keys', 'create', 'master/keys/create'),
(196, 'master', 'Keys', 'validate', 'master/keys/validate'),
(197, 'master', 'Keys', 'store', 'master/keys/store'),
(198, 'master', 'Keys', 'json', 'master/keys/json'),
(199, 'master', 'Keys', 'edit', 'master/keys/edit'),
(200, 'master', 'Keys', 'update', 'master/keys/update'),
(201, 'master', 'Keys', 'delete', 'master/keys/delete'),
(202, 'master', 'Keys', 'status', 'master/keys/status'),
(203, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(204, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(205, 'master', 'Keys', 'upload_file_dir', 'master/keys/upload_file_dir'),
(206, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(207, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(208, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(209, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(210, 'master', 'Konfig', 'index', 'master/konfig/index'),
(211, 'master', 'Konfig', 'create', 'master/konfig/create'),
(212, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(213, 'master', 'Konfig', 'store', 'master/konfig/store'),
(214, 'master', 'Konfig', 'json', 'master/konfig/json'),
(215, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(216, 'master', 'Konfig', 'update', 'master/konfig/update'),
(217, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(218, 'master', 'Konfig', 'status', 'master/konfig/status'),
(219, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(220, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(221, 'master', 'Konfig', 'upload_file_dir', 'master/konfig/upload_file_dir'),
(222, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(223, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(224, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(225, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(226, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(227, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(228, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(229, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(230, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(231, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(232, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(233, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(234, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(235, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(236, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(237, 'master', 'Menu_master', 'upload_file_dir', 'master/menu_master/upload_file_dir'),
(238, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(239, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(240, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(241, 'master', 'Report', '__construct', 'master/report/__construct'),
(242, 'master', 'Report', 'index', 'master/report/index'),
(243, 'master', 'Report', 'create', 'master/report/create'),
(244, 'master', 'Report', 'validate', 'master/report/validate'),
(245, 'master', 'Report', 'store', 'master/report/store'),
(246, 'master', 'Report', 'json', 'master/report/json'),
(247, 'master', 'Report', 'edit', 'master/report/edit'),
(248, 'master', 'Report', 'update', 'master/report/update'),
(249, 'master', 'Report', 'delete', 'master/report/delete'),
(250, 'master', 'Report', 'status', 'master/report/status'),
(251, 'master', 'Report', 'generate', 'master/report/generate'),
(252, 'master', 'Report', 'konfig', 'master/report/konfig'),
(253, 'master', 'Report', 'upload_file', 'master/report/upload_file'),
(254, 'master', 'Report', 'upload_file_dir', 'master/report/upload_file_dir'),
(255, 'master', 'Report', 'get_uri', 'master/report/get_uri'),
(256, 'master', 'Report', 'log_activity', 'master/report/log_activity'),
(257, 'master', 'Report', 'get_instance', 'master/report/get_instance'),
(258, 'master', 'Role', '__construct', 'master/role/__construct'),
(259, 'master', 'Role', 'index', 'master/role/index'),
(260, 'master', 'Role', 'create', 'master/role/create'),
(261, 'master', 'Role', 'validate', 'master/role/validate'),
(262, 'master', 'Role', 'store', 'master/role/store'),
(263, 'master', 'Role', 'json', 'master/role/json'),
(264, 'master', 'Role', 'edit', 'master/role/edit'),
(265, 'master', 'Role', 'update', 'master/role/update'),
(266, 'master', 'Role', 'delete', 'master/role/delete'),
(267, 'master', 'Role', 'status', 'master/role/status'),
(268, 'master', 'Role', 'konfig', 'master/role/konfig'),
(269, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(270, 'master', 'Role', 'upload_file_dir', 'master/role/upload_file_dir'),
(271, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(272, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(273, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(274, 'master', 'Site', '__construct', 'master/site/__construct'),
(275, 'master', 'Site', 'index', 'master/site/index'),
(276, 'master', 'Site', 'site_json', 'master/site/site_json'),
(277, 'master', 'Site', 'site_default', 'master/site/site_default'),
(278, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(279, 'master', 'Site', 'site_data', 'master/site/site_data'),
(280, 'master', 'Site', 'site_store', 'master/site/site_store'),
(281, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(282, 'master', 'Site', 'site_update', 'master/site/site_update'),
(283, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(284, 'master', 'Site', 'konfig', 'master/site/konfig'),
(285, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(286, 'master', 'Site', 'upload_file_dir', 'master/site/upload_file_dir'),
(287, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(288, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(289, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(290, 'master', 'User', 'index', 'master/user/index'),
(291, 'master', 'User', 'json', 'master/user/json'),
(292, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(293, 'master', 'User', 'store', 'master/user/store'),
(294, 'master', 'User', 'edit', 'master/user/edit'),
(295, 'master', 'User', 'editUser', 'master/user/edituser'),
(296, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(297, 'master', 'User', 'update', 'master/user/update'),
(298, 'master', 'User', 'delete', 'master/user/delete'),
(299, 'master', 'User', 'password_check', 'master/user/password_check'),
(300, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(301, 'master', 'User', '__construct', 'master/user/__construct'),
(302, 'master', 'User', 'konfig', 'master/user/konfig'),
(303, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(304, 'master', 'User', 'upload_file_dir', 'master/user/upload_file_dir'),
(305, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(306, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(307, 'master', 'User', 'get_instance', 'master/user/get_instance');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `ip` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `get` longtext,
  `post` longtext,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity`
--

INSERT INTO `activity` (`ip`, `link`, `get`, `post`, `user_id`, `created_at`) VALUES
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('182.0.231.50', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:10'),
('182.0.231.50', 'http://gatoko1.com/sop/report/users', '[]', '[]', 1, '2019-03-25 11:32:12'),
('182.0.231.50', 'http://gatoko1.com/sop/report/Users/ajaxall/', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"0\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"1\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"2\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"3\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"4\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"5\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"6\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"7\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"8\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"9\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"10\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:13'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:58'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:59'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:32:00'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:01'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=ke', '{\"term\":\"ke\"}', '[]', 1, '2019-03-25 11:32:21'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:22'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:23'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:24'),
('182.0.197.180', 'http://gatoko1.com/sop/login/logout', '[]', '[]', 1, '2019-03-25 11:32:31'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/login', '[]', '[]', NULL, '2019-03-25 11:32:31'),
('182.0.231.125', 'http://gatoko1.com/sop/login/lockscreen?user=smartsoft', '{\"user\":\"smartsoft\"}', '[]', NULL, '2019-03-25 11:32:38'),
('182.0.231.125', 'http://gatoko1.com/sop/login/act_login', '[]', '{\"username\":\"smartsoft\",\"password\":\"admin\"}', NULL, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-03-25 11:32:45'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:46'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contohmaster`
--

CREATE TABLE `contohmaster` (
  `cm_id` int(11) NOT NULL,
  `cm_nama` varchar(500) NOT NULL,
  `cm_data` text NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `nama`, `email`, `telp`, `alamat`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Iqbal luthfi', 'sistem.mikir@gmail.com', '2342', 'asem', 'ENABLE', '2019-10-15 09:58:06', '2019-10-22 13:36:30'),
(3, 'Gatot', 'gatot@gmail.com', '238137', '-', 'DISABLE', NULL, '2019-08-15 07:42:48'),
(17, '1', '2', '3', '17', 'ENABLE', '2019-11-02 15:50:43', NULL),
(18, 'Tesing', 'testing@gmail.com', '1', '1', 'ENABLE', '2019-11-08 09:48:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_dnd`
--

CREATE TABLE `customer_dnd` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `urutan` int(50) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `customer_dnd`
--

INSERT INTO `customer_dnd` (`id`, `nama`, `email`, `telp`, `alamat`, `urutan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Soleh', 'soleh@gmail.com', '081249812947', '-', 0, 'ENABLE', NULL, NULL),
(2, 'Solihun', 'solihun@gmail.com', '089182491928', '-', 1, 'ENABLE', NULL, NULL),
(3, 'Gatot', 'gatot@gmail.com', '089128498129', '-', 2, 'ENABLE', NULL, NULL),
(4, '', '', '', '', 3, 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, 'site', 7, 'ENABLE', '2018-02-05 13:48:31', NULL),
(7, NULL, NULL, NULL, 'site', 8, 'ENABLE', '2018-02-05 13:50:04', '2018-02-05 14:30:11'),
(8, NULL, NULL, NULL, 'site', 1, 'ENABLE', '2018-02-05 15:23:50', NULL),
(9, NULL, NULL, NULL, 'site', 9, 'ENABLE', '2018-02-13 17:59:15', NULL),
(10, NULL, NULL, NULL, 'site', 10, 'ENABLE', '2018-02-27 04:51:48', NULL),
(11, NULL, NULL, NULL, 'site', 11, 'ENABLE', '2018-02-27 04:52:11', NULL),
(12, NULL, NULL, NULL, 'site', 12, 'ENABLE', '2018-03-20 06:48:21', NULL),
(13, NULL, NULL, NULL, 'site', 13, 'ENABLE', '2018-03-20 06:48:44', NULL),
(14, NULL, NULL, NULL, 'site', 14, 'ENABLE', '2018-03-20 06:49:06', NULL),
(15, NULL, NULL, NULL, 'site', 15, 'ENABLE', '2018-03-20 06:49:25', NULL),
(16, NULL, NULL, NULL, 'site', 16, 'ENABLE', '2018-03-20 06:49:47', NULL),
(17, NULL, NULL, NULL, 'site', 17, 'ENABLE', '2018-03-20 06:50:02', '2018-04-05 08:09:52'),
(18, NULL, NULL, NULL, 'site', 18, 'ENABLE', '2018-03-20 06:50:26', NULL),
(19, NULL, NULL, NULL, 'site', 19, 'ENABLE', '2018-03-20 06:50:56', NULL),
(20, NULL, NULL, NULL, 'site', 20, 'ENABLE', '2018-03-20 06:51:11', NULL),
(21, NULL, NULL, NULL, 'site', 21, '0', '2018-08-07 13:58:09', NULL),
(22, NULL, NULL, NULL, 'site', 22, '0', '2018-08-11 02:56:50', NULL),
(23, NULL, NULL, NULL, 'site', 23, '0', '2018-08-11 02:59:09', NULL),
(24, NULL, NULL, NULL, 'site', 24, '0', '2018-09-24 06:55:24', NULL),
(25, NULL, NULL, NULL, 'site', 25, '0', '2018-10-12 03:20:28', NULL),
(28, '6950c16c9bcc6995f376b297f163175934330.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175934330.jpg', 'role', 8, 'ENABLE', '2018-10-12 15:12:17', NULL),
(32, '6950c16c9bcc6995f376b297f16317593996.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'webfile/6950c16c9bcc6995f376b297f16317593996.xlsx', 'role', 17, 'ENABLE', '2018-10-12 17:03:59', '2018-10-12 17:04:07'),
(35, '6950c16c9bcc6995f376b297f163175953822.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175953822.jpg', 'post', 1, 'ENABLE', '2018-10-13 13:01:23', NULL),
(36, '6950c16c9bcc6995f376b297f163175990676.pdf', 'application/pdf', 'webfile/6950c16c9bcc6995f376b297f163175990676.pdf', 'post', 2, 'ENABLE', '2018-10-13 13:03:02', '2018-10-13 13:03:46'),
(38, '6950c16c9bcc6995f376b297f16317598786.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f16317598786.jpg', 'siswa', 4, 'ENABLE', '2018-10-13 17:56:43', NULL),
(40, '6950c16c9bcc6995f376b297f16317593930.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f16317593930.png', 'user', 1, NULL, NULL, '2019-02-18 16:07:47'),
(43, '6950c16c9bcc6995f376b297f163175921106.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175921106.jpg', 'user', 12, 'ENABLE', '2018-11-05 11:15:57', NULL),
(45, '6950c16c9bcc6995f376b297f163175988920.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175988920.png', 'user', 11, 'ENABLE', '2018-11-15 16:47:11', '2019-02-18 16:18:34'),
(46, '', '', '', 'user', 24, 'ENABLE', '2019-01-22 13:51:27', NULL),
(47, '', '', '', 'user', 25, 'ENABLE', '2019-02-18 16:14:44', NULL),
(48, '6950c16c9bcc6995f376b297f163175955554.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175955554.png', 'user', 9, NULL, NULL, '2019-02-18 16:18:41'),
(49, '6950c16c9bcc6995f376b297f163175960546.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175960546.doc', 'persyaratan', 1, 'ENABLE', '2019-05-08 10:21:04', '2019-05-08 10:32:44'),
(50, '6950c16c9bcc6995f376b297f163175962451.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175962451.png', 'master_sub_izin_usaha', 17, 'ENABLE', '2019-05-25 12:16:47', NULL),
(51, '6950c16c9bcc6995f376b297f163175959021.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175959021.png', 'master_sub_izin_usaha', 18, 'ENABLE', '2019-05-25 12:17:12', NULL),
(52, '6950c16c9bcc6995f376b297f163175945413.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'webfile/6950c16c9bcc6995f376b297f163175945413.pptx', 'master_sub_izin_usaha', 19, 'ENABLE', '2019-05-25 12:18:38', NULL),
(53, '6950c16c9bcc6995f376b297f163175979501.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'webfile/6950c16c9bcc6995f376b297f163175979501.pptx', 'master_sub_izin_usaha', 20, 'ENABLE', '2019-05-25 12:18:57', NULL),
(54, '', '', '', 'master_sub_izin_usaha', 21, 'ENABLE', '2019-05-25 12:19:12', NULL),
(55, '', '', '', 'master_sub_izin_usaha', 22, 'ENABLE', '2019-05-25 12:20:38', NULL),
(56, '', '', '', 'master_sub_izin_usaha', 23, 'ENABLE', '2019-05-25 12:20:50', NULL),
(57, '', '', '', 'master_sub_izin_usaha', 24, 'ENABLE', '2019-05-25 12:21:01', NULL),
(58, '', '', '', 'master_sub_izin_usaha', 25, 'ENABLE', '2019-05-25 12:21:10', NULL),
(59, '', '', '', 'master_sub_izin_usaha', 26, 'ENABLE', '2019-05-25 12:21:22', NULL),
(60, '', '', '', 'master_sub_izin_usaha', 27, 'ENABLE', '2019-05-25 12:21:30', NULL),
(61, '', '', '', 'master_sub_izin_usaha', 28, 'ENABLE', '2019-05-25 12:21:39', NULL),
(62, '', '', '', 'master_sub_izin_usaha', 29, 'ENABLE', '2019-05-25 12:21:52', NULL),
(63, '', '', '', 'master_sub_izin_usaha', 30, 'ENABLE', '2019-05-25 12:22:00', NULL),
(64, '', '', '', 'master_sub_izin_usaha', 31, 'ENABLE', '2019-05-25 12:22:08', NULL),
(65, '', '', '', 'master_sub_izin_usaha', 32, 'ENABLE', '2019-05-25 12:22:27', NULL),
(66, '', '', '', 'master_sub_izin_usaha', 33, 'ENABLE', '2019-05-25 12:22:35', NULL),
(67, '', '', '', 'master_sub_izin_usaha', 34, 'ENABLE', '2019-05-25 12:22:45', NULL),
(68, '', '', '', 'master_sub_izin_usaha', 35, 'ENABLE', '2019-05-25 12:22:56', NULL),
(69, '', '', '', 'master_sub_izin_usaha', 36, 'ENABLE', '2019-05-25 12:23:04', NULL),
(70, '', '', '', 'master_sub_izin_usaha', 37, 'ENABLE', '2019-05-25 12:23:15', NULL),
(71, '', '', '', 'master_sub_izin_usaha', 38, 'ENABLE', '2019-05-25 12:23:23', NULL),
(72, '', '', '', 'master_sub_izin_usaha', 39, 'ENABLE', '2019-05-25 12:23:31', NULL),
(73, '6950c16c9bcc6995f376b297f163175984727.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175984727.docx', 'master_sub_izin_usaha', 40, 'ENABLE', '2019-05-25 12:24:09', NULL),
(74, '6950c16c9bcc6995f376b297f163175972055.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175972055.rtf', 'master_sub_izin_usaha', 41, 'ENABLE', '2019-05-25 12:24:22', NULL),
(75, '6950c16c9bcc6995f376b297f163175989166.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175989166.rtf', 'master_sub_izin_usaha', 42, 'ENABLE', '2019-05-25 12:24:53', NULL),
(76, '6950c16c9bcc6995f376b297f163175930523.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175930523.rtf', 'master_sub_izin_usaha', 43, 'ENABLE', '2019-05-25 12:25:11', NULL),
(77, '6950c16c9bcc6995f376b297f163175974506.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175974506.rtf', 'master_sub_izin_usaha', 44, 'ENABLE', '2019-05-25 12:25:46', NULL),
(78, '6950c16c9bcc6995f376b297f163175963577.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175963577.rtf', 'master_sub_izin_usaha', 45, 'ENABLE', '2019-05-25 12:26:04', NULL),
(79, '6950c16c9bcc6995f376b297f163175992147.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175992147.rtf', 'master_sub_izin_usaha', 46, 'ENABLE', '2019-05-25 12:26:27', NULL),
(80, '6950c16c9bcc6995f376b297f163175932300.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175932300.rtf', 'master_sub_izin_usaha', 47, 'ENABLE', '2019-05-25 12:26:42', NULL),
(81, '6950c16c9bcc6995f376b297f163175965075.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175965075.rtf', 'master_sub_izin_usaha', 48, 'ENABLE', '2019-05-25 12:27:10', NULL),
(82, '6950c16c9bcc6995f376b297f163175993136.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175993136.rtf', 'master_sub_izin_usaha', 49, 'ENABLE', '2019-05-25 12:27:34', NULL),
(83, '6950c16c9bcc6995f376b297f16317598894.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317598894.rtf', 'master_sub_izin_usaha', 50, 'ENABLE', '2019-05-25 12:27:57', NULL),
(84, '6950c16c9bcc6995f376b297f16317597861.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317597861.rtf', 'master_sub_izin_usaha', 51, 'ENABLE', '2019-05-25 12:28:09', NULL),
(85, '', '', '', 'master_sub_izin_usaha', 52, 'ENABLE', '2019-05-25 12:28:35', NULL),
(86, '', '', '', 'master_sub_izin_usaha', 53, 'ENABLE', '2019-05-25 12:28:47', NULL),
(87, '', '', '', 'master_sub_izin_usaha', 54, 'ENABLE', '2019-05-25 12:28:57', NULL),
(88, '', '', '', 'master_sub_izin_usaha', 55, 'ENABLE', '2019-05-25 12:29:06', NULL),
(89, '', '', '', 'master_sub_izin_usaha', 56, 'ENABLE', '2019-05-25 12:29:17', NULL),
(90, '', '', '', 'master_sub_izin_usaha', 57, 'ENABLE', '2019-05-25 12:29:25', NULL),
(91, '', '', '', 'master_sub_izin_usaha', 58, 'ENABLE', '2019-05-25 12:29:32', NULL),
(92, '', '', '', 'master_sub_izin_usaha', 59, 'ENABLE', '2019-05-25 12:29:42', NULL),
(93, '', '', '', 'master_sub_izin_usaha', 60, 'ENABLE', '2019-05-25 12:29:52', NULL),
(94, '', '', '', 'master_sub_izin_usaha', 61, 'ENABLE', '2019-05-25 12:30:00', NULL),
(95, '', '', '', 'master_sub_izin_usaha', 62, 'ENABLE', '2019-05-25 12:30:08', NULL),
(96, '', '', '', 'master_sub_izin_usaha', 63, 'ENABLE', '2019-05-25 12:30:20', NULL),
(97, '', '', '', 'master_sub_izin_usaha', 64, 'ENABLE', '2019-05-25 12:30:28', NULL),
(98, '', '', '', 'master_sub_izin_usaha', 65, 'ENABLE', '2019-05-25 12:30:36', NULL),
(99, '', '', '', 'master_sub_izin_usaha', 66, 'ENABLE', '2019-05-25 12:30:45', NULL),
(100, '', '', '', 'master_sub_izin_usaha', 67, 'ENABLE', '2019-05-25 12:30:53', NULL),
(101, '', '', '', 'master_sub_izin_usaha', 68, 'ENABLE', '2019-05-25 12:31:05', NULL),
(102, '', '', '', 'master_sub_izin_usaha', 69, 'ENABLE', '2019-05-25 12:31:17', NULL),
(103, '', '', '', 'master_sub_izin_usaha', 70, 'ENABLE', '2019-05-25 12:31:27', NULL),
(104, '', '', '', 'master_sub_izin_usaha', 71, 'ENABLE', '2019-05-25 12:31:35', NULL),
(105, '', '', '', 'master_sub_izin_usaha', 72, 'ENABLE', '2019-05-25 12:31:44', NULL),
(106, '', '', '', 'master_sub_izin_usaha', 73, 'ENABLE', '2019-05-25 12:31:55', NULL),
(107, '', '', '', 'master_sub_izin_usaha', 74, 'ENABLE', '2019-05-25 12:32:03', NULL),
(108, '', '', '', 'master_sub_izin_usaha', 75, 'ENABLE', '2019-05-25 12:32:10', NULL),
(109, '', '', '', 'master_sub_izin_usaha', 76, 'ENABLE', '2019-05-25 12:32:21', NULL),
(110, '6950c16c9bcc6995f376b297f16317593262.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317593262.docx', 'master_sub_izin_usaha', 77, 'ENABLE', '2019-05-25 12:33:40', NULL),
(111, '6950c16c9bcc6995f376b297f163175986381.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175986381.docx', 'master_sub_izin_usaha', 78, 'ENABLE', '2019-05-25 12:33:52', NULL),
(112, '6950c16c9bcc6995f376b297f163175950793.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175950793.rtf', 'master_sub_izin_usaha', 79, 'ENABLE', '2019-05-25 12:34:06', NULL),
(113, '6950c16c9bcc6995f376b297f163175916003.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175916003.rtf', 'master_sub_izin_usaha', 80, 'ENABLE', '2019-05-25 12:34:17', NULL),
(114, '6950c16c9bcc6995f376b297f163175976957.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175976957.doc', 'master_sub_izin_usaha', 81, 'ENABLE', '2019-05-25 12:34:32', NULL),
(115, '6950c16c9bcc6995f376b297f163175945850.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175945850.doc', 'master_sub_izin_usaha', 82, 'ENABLE', '2019-05-25 12:34:42', NULL),
(116, '6950c16c9bcc6995f376b297f163175948447.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175948447.doc', 'master_sub_izin_usaha', 83, 'ENABLE', '2019-05-25 12:34:57', NULL),
(117, '6950c16c9bcc6995f376b297f16317591150.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f16317591150.doc', 'master_sub_izin_usaha', 84, 'ENABLE', '2019-05-25 12:35:25', NULL),
(118, '6950c16c9bcc6995f376b297f163175995692.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175995692.rtf', 'master_sub_izin_usaha', 85, 'ENABLE', '2019-05-25 12:35:42', NULL),
(119, '6950c16c9bcc6995f376b297f163175917567.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175917567.rtf', 'master_sub_izin_usaha', 86, 'ENABLE', '2019-05-25 12:35:53', NULL),
(120, '6950c16c9bcc6995f376b297f163175952651.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175952651.rtf', 'master_sub_izin_usaha', 87, 'ENABLE', '2019-05-25 12:36:14', NULL),
(121, '6950c16c9bcc6995f376b297f163175986507.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175986507.rtf', 'master_sub_izin_usaha', 88, 'ENABLE', '2019-05-25 12:36:32', NULL),
(122, '6950c16c9bcc6995f376b297f163175919745.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175919745.rtf', 'master_sub_izin_usaha', 89, 'ENABLE', '2019-05-25 12:36:52', NULL),
(123, '6950c16c9bcc6995f376b297f163175958135.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175958135.rtf', 'master_sub_izin_usaha', 90, 'ENABLE', '2019-05-25 12:37:08', NULL),
(124, '6950c16c9bcc6995f376b297f163175923826.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175923826.rtf', 'master_sub_izin_usaha', 91, 'ENABLE', '2019-05-25 12:37:32', NULL),
(125, '6950c16c9bcc6995f376b297f163175994422.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175994422.rtf', 'master_sub_izin_usaha', 92, 'ENABLE', '2019-05-25 12:37:47', NULL),
(126, '6950c16c9bcc6995f376b297f163175994220.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175994220.rtf', 'master_sub_izin_usaha', 93, 'ENABLE', '2019-05-25 12:38:05', NULL),
(127, '6950c16c9bcc6995f376b297f163175944614.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175944614.rtf', 'master_sub_izin_usaha', 94, 'ENABLE', '2019-05-25 12:38:18', NULL),
(128, '6950c16c9bcc6995f376b297f163175936697.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175936697.docx', 'master_sub_izin_usaha', 95, 'ENABLE', '2019-05-25 12:39:04', NULL),
(129, '6950c16c9bcc6995f376b297f163175993697.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175993697.docx', 'master_sub_izin_usaha', 96, 'ENABLE', '2019-05-25 12:39:27', NULL),
(130, '6950c16c9bcc6995f376b297f163175916601.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175916601.rtf', 'master_sub_izin_usaha', 97, 'ENABLE', '2019-05-25 12:39:38', NULL),
(131, '6950c16c9bcc6995f376b297f163175986146.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175986146.docx', 'master_sub_izin_usaha', 98, 'ENABLE', '2019-05-25 12:39:57', NULL),
(132, '6950c16c9bcc6995f376b297f163175992935.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175992935.docx', 'master_sub_izin_usaha', 99, 'ENABLE', '2019-05-25 12:40:11', NULL),
(133, '6950c16c9bcc6995f376b297f16317599364.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317599364.rtf', 'master_sub_izin_usaha', 100, 'ENABLE', '2019-05-25 12:40:24', NULL),
(134, '6950c16c9bcc6995f376b297f163175969761.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175969761.docx', 'master_sub_izin_usaha', 101, 'ENABLE', '2019-05-25 12:40:45', NULL),
(135, '6950c16c9bcc6995f376b297f163175923046.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175923046.docx', 'master_sub_izin_usaha', 102, 'ENABLE', '2019-05-25 12:40:58', NULL),
(136, '6950c16c9bcc6995f376b297f163175993429.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175993429.rtf', 'master_sub_izin_usaha', 103, 'ENABLE', '2019-05-25 12:42:38', NULL),
(137, '6950c16c9bcc6995f376b297f163175992123.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175992123.docx', 'master_sub_izin_usaha', 104, 'ENABLE', '2019-05-25 12:42:57', NULL),
(138, '6950c16c9bcc6995f376b297f163175912233.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175912233.docx', 'master_sub_izin_usaha', 105, 'ENABLE', '2019-05-25 12:43:14', NULL),
(139, '6950c16c9bcc6995f376b297f163175990037.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175990037.rtf', 'master_sub_izin_usaha', 106, 'ENABLE', '2019-05-25 12:43:30', NULL),
(140, '6950c16c9bcc6995f376b297f163175965975.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175965975.docx', 'master_sub_izin_usaha', 107, 'ENABLE', '2019-05-25 12:43:48', NULL),
(141, '6950c16c9bcc6995f376b297f163175986352.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175986352.docx', 'master_sub_izin_usaha', 108, 'ENABLE', '2019-05-25 12:44:04', NULL),
(142, '6950c16c9bcc6995f376b297f163175949318.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175949318.rtf', 'master_sub_izin_usaha', 109, 'ENABLE', '2019-05-25 12:44:19', NULL),
(143, '6950c16c9bcc6995f376b297f163175976073.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175976073.docx', 'master_sub_izin_usaha', 110, 'ENABLE', '2019-05-25 12:44:40', NULL),
(144, '6950c16c9bcc6995f376b297f163175945825.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175945825.docx', 'master_sub_izin_usaha', 111, 'ENABLE', '2019-05-25 12:44:54', NULL),
(145, '6950c16c9bcc6995f376b297f163175958202.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175958202.rtf', 'master_sub_izin_usaha', 112, 'ENABLE', '2019-05-25 12:45:08', NULL),
(146, '6950c16c9bcc6995f376b297f163175956139.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175956139.docx', 'master_sub_izin_usaha', 113, 'ENABLE', '2019-05-25 12:45:38', NULL),
(147, '6950c16c9bcc6995f376b297f163175987475.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175987475.docx', 'master_sub_izin_usaha', 114, 'ENABLE', '2019-05-25 12:45:58', NULL),
(148, '6950c16c9bcc6995f376b297f163175946873.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175946873.rtf', 'master_sub_izin_usaha', 115, 'ENABLE', '2019-05-25 12:46:11', NULL),
(149, '6950c16c9bcc6995f376b297f163175967616.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175967616.docx', 'master_sub_izin_usaha', 116, 'ENABLE', '2019-05-25 12:46:53', NULL),
(150, '6950c16c9bcc6995f376b297f163175978218.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175978218.docx', 'master_sub_izin_usaha', 117, 'ENABLE', '2019-05-25 12:47:06', NULL),
(151, '6950c16c9bcc6995f376b297f163175979931.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175979931.docx', 'master_sub_izin_usaha', 118, 'ENABLE', '2019-05-25 12:47:27', NULL),
(152, '6950c16c9bcc6995f376b297f163175917704.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175917704.rtf', 'master_sub_izin_usaha', 119, 'ENABLE', '2019-05-25 12:48:05', NULL),
(153, '6950c16c9bcc6995f376b297f163175934353.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175934353.docx', 'master_sub_izin_usaha', 120, 'ENABLE', '2019-05-25 12:48:27', NULL),
(154, '6950c16c9bcc6995f376b297f163175942925.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175942925.rtf', 'master_sub_izin_usaha', 121, 'ENABLE', '2019-05-25 12:48:44', NULL),
(155, '6950c16c9bcc6995f376b297f163175927853.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175927853.docx', 'master_sub_izin_usaha', 122, 'ENABLE', '2019-05-25 12:49:03', NULL),
(156, '6950c16c9bcc6995f376b297f163175916993.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175916993.rtf', 'master_sub_izin_usaha', 123, 'ENABLE', '2019-05-25 12:49:17', NULL),
(157, '6950c16c9bcc6995f376b297f16317595423.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317595423.docx', 'master_sub_izin_usaha', 124, 'ENABLE', '2019-05-25 12:49:37', NULL),
(158, '6950c16c9bcc6995f376b297f16317591396.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317591396.rtf', 'master_sub_izin_usaha', 125, 'ENABLE', '2019-05-25 12:49:55', NULL),
(159, '6950c16c9bcc6995f376b297f163175917779.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175917779.docx', 'master_sub_izin_usaha', 126, 'ENABLE', '2019-05-25 12:50:13', NULL),
(160, '6950c16c9bcc6995f376b297f16317597435.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317597435.rtf', 'master_sub_izin_usaha', 127, 'ENABLE', '2019-05-25 12:50:26', NULL),
(161, '6950c16c9bcc6995f376b297f16317595012.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317595012.docx', 'master_sub_izin_usaha', 128, 'ENABLE', '2019-05-25 12:50:52', NULL),
(162, '6950c16c9bcc6995f376b297f16317599893.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317599893.docx', 'master_sub_izin_usaha', 129, 'ENABLE', '2019-05-25 12:51:06', NULL),
(163, '6950c16c9bcc6995f376b297f163175991392.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175991392.docx', 'master_sub_izin_usaha', 130, 'ENABLE', '2019-05-25 12:51:24', NULL),
(164, '6950c16c9bcc6995f376b297f163175982433.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175982433.rtf', 'master_sub_izin_usaha', 131, 'ENABLE', '2019-05-25 12:51:50', NULL),
(165, '6950c16c9bcc6995f376b297f163175970268.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175970268.docx', 'master_sub_izin_usaha', 132, 'ENABLE', '2019-05-25 12:52:14', NULL),
(166, '6950c16c9bcc6995f376b297f163175911983.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175911983.rtf', 'master_sub_izin_usaha', 133, 'ENABLE', '2019-05-25 12:52:28', NULL),
(167, '6950c16c9bcc6995f376b297f163175959217.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175959217.docx', 'master_sub_izin_usaha', 134, 'ENABLE', '2019-05-25 12:52:54', NULL),
(168, '6950c16c9bcc6995f376b297f163175940020.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175940020.rtf', 'master_sub_izin_usaha', 135, 'ENABLE', '2019-05-25 12:53:07', NULL),
(169, '6950c16c9bcc6995f376b297f163175947343.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175947343.docx', 'master_sub_izin_usaha', 136, 'ENABLE', '2019-05-25 12:53:26', NULL),
(170, '6950c16c9bcc6995f376b297f163175996437.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175996437.rtf', 'master_sub_izin_usaha', 137, 'ENABLE', '2019-05-25 12:53:41', NULL),
(171, '6950c16c9bcc6995f376b297f163175932381.xls', 'application/vnd.ms-office', 'webfile/6950c16c9bcc6995f376b297f163175932381.xls', 'bahan_baku', 0, 'ENABLE', '2019-06-26 13:38:46', NULL),
(172, '6950c16c9bcc6995f376b297f163175962421.xls', 'application/vnd.ms-office', 'webfile/6950c16c9bcc6995f376b297f163175962421.xls', 'bahan_baku', 0, 'ENABLE', '2019-06-26 13:49:14', NULL),
(173, '6950c16c9bcc6995f376b297f163175975813.PNG', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175975813.PNG', 'customer', 1, NULL, NULL, '2019-07-01 08:59:08'),
(174, '', '', '', 'customer', 4, 'ENABLE', '2019-07-15 10:55:21', NULL),
(175, '', '', '', 'customer', 5, 'ENABLE', '2019-08-15 07:44:50', NULL),
(176, '', '', '', 'customer', 6, 'ENABLE', '2019-08-15 07:54:51', NULL),
(186, '', '', '', 'customer', 16, 'ENABLE', '2019-10-15 09:58:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grafik`
--

CREATE TABLE `grafik` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `grafik`
--

INSERT INTO `grafik` (`id`, `name`, `value`) VALUES
(1, 'Testing', '-30'),
(2, 'Testing 2', '20'),
(3, 'Testing 2', '30'),
(4, 'testing2', '40'),
(5, 'testing 2', '50'),
(6, 'testing 2', '20'),
(7, 'testing 2', '10'),
(8, 'testing 2', '15'),
(9, 'testing 2', '20'),
(10, 'testing 2', '25'),
(11, 'testing 2', '35'),
(12, 'testing 2', '45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE `image` (
  `id` int(12) NOT NULL,
  `path` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `image`
--

INSERT INTO `image` (`id`, `path`) VALUES
(5, 'webfile/6950c16c9bcc6995f376b297f163175977305.jpg'),
(6, 'webfile/6950c16c9bcc6995f376b297f16317598195.png'),
(7, 'webfile/6950c16c9bcc6995f376b297f163175918255.pdf'),
(8, 'webfile/6950c16c9bcc6995f376b297f163175942707.jpg'),
(9, 'webfile/6950c16c9bcc6995f376b297f163175917095.png'),
(10, 'webfile/6950c16c9bcc6995f376b297f163175950229.jpg'),
(11, 'webfile/6950c16c9bcc6995f376b297f163175993341.pdf'),
(12, 'webfile/6950c16c9bcc6995f376b297f163175959701.png'),
(13, 'webfile/6950c16c9bcc6995f376b297f163175996844.jpg'),
(14, 'webfile/6950c16c9bcc6995f376b297f163175942779.jpg'),
(15, '<'),
(16, 'webfile/6950c16c9bcc6995f376b297f163175942654.jpg'),
(17, 'webfile/6950c16c9bcc6995f376b297f163175912658.jpg'),
(18, 'webfile/6950c16c9bcc6995f376b297f163175961249.jpg'),
(19, 'webfile/6950c16c9bcc6995f376b297f16317598585.png'),
(20, 'webfile/6950c16c9bcc6995f376b297f163175965096.docx'),
(21, '<'),
(22, 'webfile/6950c16c9bcc6995f376b297f163175939845.png'),
(23, 'webfile/6950c16c9bcc6995f376b297f163175965468.jpg'),
(24, 'webfile/6950c16c9bcc6995f376b297f163175994781.jpg'),
(25, '<'),
(26, 'webfile/6950c16c9bcc6995f376b297f163175925126.jpg'),
(27, 'af2a4c9d4c4956ec9d6ba62213eed568'),
(28, 'webfile/6950c16c9bcc6995f376b297f163175945616.jpg'),
(29, 'webfile/6950c16c9bcc6995f376b297f163175960129.jpg'),
(30, 'webfile/6950c16c9bcc6995f376b297f163175996636.doc'),
(31, 'webfile/6950c16c9bcc6995f376b297f163175937709.jpg'),
(32, 'webfile/6950c16c9bcc6995f376b297f163175930035.png'),
(33, 'webfile/6950c16c9bcc6995f376b297f163175919824.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `ignore_limits` varchar(255) DEFAULT NULL,
  `is_private_key` varchar(255) DEFAULT NULL,
  `ip_addresses` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '35d3d08c3d7b7f445ceb8e726a87b26c', '0', '0', '0', '123', '2017-10-12 13:34:33', 'ENABLE', NULL, '2019-02-18 17:04:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'KARYA STUDIO SOP', 'ENABLE', '2019-02-18 15:28:44', '2019-10-01 11:18:04'),
(7, 'LOGO', 'https://www.karyastudio.com/assets/images/logos/favicon.png', 'ENABLE', '2019-02-18 15:29:32', '2019-10-22 11:47:44'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://images.pexels.com/photos/434337/pexels-photo-434337.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://smartsoftstudio.com/\" target=\"_blank\">SmartSoft Studio</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-black', 'ENABLE', '2019-02-18 15:34:01', '2019-05-01 09:53:50'),
(13, 'TITLE_APPLICATION', 'KARYA STUDIO TEKNOLOGI DIGITAL | STANDART OPERATION PROCEDURE SYSTEM', 'ENABLE', '2019-02-18 15:39:54', NULL),
(14, 'APPLICATION_SMALL', 'KS', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'KARYA STUDIO TEKNOLOGI DIGITAL | STANDART OPERATIO...', 'ENABLE', '2019-02-18 15:47:41', NULL),
(17, 'LOGIN_TITLE', '', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '0', 'ENABLE', '2019-02-21 14:12:14', '2019-02-21 16:33:07'),
(25, 'email-template', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width\" />\r\n\r\n\r\n    <style type=\"text/css\">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class=\"body-wrap\">\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align=\"center\" class=\"masthead\">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"content\">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align=\"center\">\r\n                                        <p>\r\n                                            <a href=\"#\" class=\"button\">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you\'re wondering where you can find more of this fine meaty filler, visit <a href=\"http://baconipsum.com\">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class=\"content footer\" align=\"center\">\r\n                            <p>Sent by <a href=\"#\">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href=\"mailto:\">hello@company.com</a> | <a href=\"#\">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfig_email`
--

CREATE TABLE `konfig_email` (
  `ke_id` int(11) NOT NULL,
  `ke_slug` varchar(500) NOT NULL,
  `ke_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfig_email`
--

INSERT INTO `konfig_email` (`ke_id`, `ke_slug`, `ke_content`) VALUES
(1, 'logo', 'http://smartsoftstudio.com/wp-content/themes/sistemmikir-o/assets/images/logo-smartsoftstudio.png'),
(2, 'perusahaan', 'SMARTSOFT STUDIO'),
(3, 'body', 'Terima Kasih sudah mendaftar silahkan klik tombol dibawah ini untuk memverikasi'),
(4, 'footer', 'sd'),
(5, 'warna', '#8080ff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(12, 'api/example/users/1', 'get', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b95151e2-01cb-48b0-fc71-74788b971014\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426798, 1549430000, '1', 400),
(13, 'api/example/users/1', 'get', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"da6c7ebc-d468-82cd-b107-a43b223e3229\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426847, 1549430000, '1', 400),
(14, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"295384ee-de46-448a-ee33-5da93f0ee6d3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426895, 1549430000, '1', 200),
(15, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"9463f032-7a0c-d92f-b412-4fe3b0e3283d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426900, 1549430000, '1', 400),
(16, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"466fe8da-8fb3-03e6-9281-d0d53ff867b5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426910, 1549430000, '1', 400),
(17, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"a4353c0f-ae54-9d99-82b9-3952449d6589\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426923, 1549430000, '1', 400),
(18, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4b9ec719-7307-81d5-7700-cc52c1882174\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426931, 1549430000, '1', 400),
(19, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"1a9c3d5a-3eea-1ea0-192d-69d8b0d3bd7e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426934, 1549430000, '1', 400),
(20, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"faf745f8-86a1-6571-45a1-1d5c705857e3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426935, 1549430000, '1', 400),
(21, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d66bf86e-f241-d6bc-59a8-53e219895de5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426936, 1549430000, '1', 400),
(22, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"8d1e6190-f1ee-732f-0712-9b86f649431a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426958, 1549430000, '1', 400),
(23, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d947680b-21bb-f0d0-cb14-816ffd6557e6\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426959, 1549430000, '1', 400),
(24, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"196ad13d-5766-c800-4cc0-6521f1f0a5fa\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426967, 1549430000, '1', 400),
(25, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"aa627fb0-cd37-f6b7-1353-a00ab4db601f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426968, 1549430000, '1', 400),
(26, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"5cd4e253-2ef5-0abe-87fd-1c70c0b74460\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426978, 1549430000, '1', 400),
(27, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"313f78a7-c82e-0686-8762-b874535cdcbf\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427000, 1549430000, '1', 400),
(28, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"465eac17-0ecf-a742-60c1-d1bb5aad672c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427018, 1549430000, '1', 400),
(29, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b1a5d762-4c11-9bf5-3a0f-c672375a4477\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427058, 1549430000, '1', 200),
(30, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"bc6fbf72-1adf-b4ba-a316-5b75ea6b1cb9\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427061, 1549430000, '1', 200),
(31, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"541c15c3-9e59-a3ec-6a6c-65e6eee16eda\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427100, 1549430000, '1', 200),
(32, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4ea9e5cc-a4c2-710e-9f72-f921bcd470f7\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427157, 1549430000, '1', 200),
(33, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"c58bbf9d-48fe-4890-0e5a-87c7d21f1bcb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427166, 1549430000, '1', 200),
(34, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"a864cc0c-2540-09b1-c9e4-15a3c7791f89\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427177, 1549430000, '1', 200),
(35, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"97063f8c-c173-d733-e5b1-eb36b50c6717\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427200, 1549430000, '1', 200),
(36, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d74b25e0-c53c-1b24-ee1e-a456ca5e754a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428325, 1549430000, '1', 0),
(37, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"2dcb425a-4947-898b-1c78-91cda05e66a3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428345, 1549430000, '1', 404),
(38, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"ad64360f-e0c5-ec3c-3da3-c50b37fbef7f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428370, 1549430000, '1', 404),
(39, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"7c2b7aba-7f85-deed-d309-3d825769427e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428382, 1549430000, '1', 404),
(40, 'api/example/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"337\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"a927b74d-cc4b-7215-9fdd-f3592820fcb0\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarymV0NNVKnF6IL7z29\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:5:\"title\";s:3:\"tes\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428413, 1549430000, '1', 200),
(41, 'api/example/services', 'put', 'a:18:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"43\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"612f28dc-dc61-b57a-c9c0-69a5a8262b98\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:5:\"title\";s:4:\"tesa\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428448, 1549430000, '1', 200),
(42, 'api/example/services-enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"391bbf12-fd99-4e28-7fc5-6496dc491b0c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428468, 1549430000, '1', 200),
(43, 'api/example/services-disable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d5cbf18b-d9b5-f44d-c232-f84cc4d11db2\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428472, 1549430000, '1', 200),
(44, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"16344db9-d25f-e334-9651-333d7e88314e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428480, 1549430000, '1', 200),
(45, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"caef2b39-8710-18ca-6ce5-4fe6b70992a0\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428655, 1549430000, '1', 404),
(46, 'api/example/services/1', 'get', 'a:15:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"5c1fc3d5-e1a0-32d4-5577-0da8790112ac\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428659, 1549430000, '1', 404),
(47, 'api/example/services/0', 'get', 'a:15:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b65e8ad4-2781-d95d-de2c-4c8e8aa447fc\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428662, 1549430000, '1', 404),
(48, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b6e9a137-e2d0-9180-a433-6216c066a468\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428677, 1549430000, '1', 404),
(49, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"72518478-f719-4e92-cfe4-bf027a496092\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428680, 1549430000, '1', 404),
(50, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"faff51a0-75b3-9d5f-3b80-ba00e099b484\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428682, 1549430000, '1', 404),
(51, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"f20c8e54-9446-4d38-8a0f-219f1d5a561e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428715, 1549430000, '1', 404),
(52, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"5801b626-9ea3-b456-ae32-9af94267f20c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428717, 1549430000, '1', 404),
(53, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"43e761b9-d088-5745-33a6-e6e2c77f8e0a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428725, 1549430000, '1', 0),
(54, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"dda3a68d-329e-371a-e751-4fd11e3241e7\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428727, 1549430000, '1', 0),
(55, 'api/example/services/aa', 'get', 'a:14:{s:2:\"aa\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"c960faa4-1219-26de-d6fe-b7ddc07ec486\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428729, 1549430000, '1', 0),
(56, 'api/example/services/aa', 'get', 'a:14:{s:2:\"aa\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ab82d302-2290-2edd-eb75-0771e0de4f73\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428730, 1549430000, '1', 0),
(57, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b5495e5a-91ee-67ca-07fd-505c64ac0685\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428734, 1549430000, '1', 0),
(58, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"9923d27a-b199-e900-361a-1d6b440579a1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428741, 1549430000, '1', 404),
(59, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"0e4e077d-2103-723e-61fb-c5ec2ee8d025\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428742, 1549430000, '1', 404),
(60, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"f47e693b-addb-43f8-7837-ab0c7793c087\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428748, 1549430000, '1', 404),
(61, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"cbbd6ccb-dc98-f683-b919-c56aa9c0e66d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428749, 1549430000, '1', 404),
(62, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d1976171-7268-0319-2e50-4851a2fd6c22\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428786, 1549430000, '1', 200),
(63, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"fabc78b4-cc98-1a61-3131-0c44475cbcdc\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428800, 1549430000, '1', 404),
(64, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1ea384ac-8306-2f85-88da-49178e8a7f0e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428801, 1549430000, '1', 404),
(65, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ab54ff73-1a8a-cb60-b1b0-870b35536d9d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428805, 1549430000, '1', 404),
(66, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ea261273-b754-5389-5412-58e6beb47631\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428807, 1549430000, '1', 404);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(67, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"9e35cfeb-4c7c-699b-5643-8470aca0fbcb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428808, 1549430000, '1', 404),
(68, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"04edaf72-fcb9-e17b-2fc6-2986cbbbf741\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428815, 1549430000, '1', 200),
(69, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"2514eb50-6c21-1356-dfa9-e4eac100bf8a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428816, 1549430000, '1', 200),
(70, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"be916c7e-09f8-5b25-2c50-d09787853210\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428826, 1549430000, '1', 200),
(71, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"fddcff9d-7292-6c1e-ae51-0e74db0f397e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428841, 1549430000, '1', 200),
(72, 'api/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"bb1329fc-8f5a-bd41-0f66-d7fe899375b6\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434763, 1549430000, '1', 404),
(73, 'api/services/disable', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1e145c56-5906-ea88-a56e-a6c2bf9ae277\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434776, 1549430000, '1', 200),
(74, 'api/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"340\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"003e2e9a-9dda-4605-9c78-fedc0f0a57be\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:78:\"------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition:_form-data;_name\";s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";i:0;s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";i:1;s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434796, 1549430000, '1', 200),
(75, 'api/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"340\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"21a992d3-2eab-652c-dd40-fdb1b27632f2\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryT4EoJtBkCQ8K6lqn\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:6:\"tes ah\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434803, 1549430000, '1', 200),
(76, 'api/services/detail', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"e91f5cdb-a803-5c82-de2d-af59bdf0072b\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434820, 1549430000, '1', 200),
(77, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"da4fade1-054f-e5bc-7b3d-7bdfd6dc0890\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434823, 1549430000, '1', 200),
(78, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"216ef3d2-4d51-94bb-4a48-6947f622e27f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434825, 1549430000, '1', 200),
(79, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"537a295c-f413-84a0-cf08-67482a6c039d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434830, 1549430000, '1', 200),
(80, 'api/services/detail', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4f91ad2b-5a8b-947f-efdd-412572cc6296\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434831, 1549430000, '1', 200),
(81, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"15127d88-080d-fb1b-d526-47437f9257d2\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434849, 1549430000, '1', 200),
(82, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b2321b65-d3c7-71b6-c06c-bf8c11305996\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434851, 1549430000, '1', 200),
(83, 'api/services', 'put', 'a:18:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"47\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d74656c0-5e25-a4c6-7237-23ef9a1ce210\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:8:\"tesah uh\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434871, 1549430000, '1', 200),
(84, 'api/services/enable/1', 'put', 'a:19:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"47\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"c2454b7a-dddb-d292-306e-ddc176572eb8\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:8:\"tesah uh\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434936, 1549430000, '1', 200),
(85, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"35291873-7622-cfd6-23b5-c0c943dddcef\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434952, 1549440000, '1', 200),
(86, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"043b2b1f-e7e5-18ca-e0de-b3efa3271808\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434970, 1549440000, '1', 200),
(87, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"6b1ddca4-8512-a1b9-382e-ebc1a7796a91\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434971, 1549440000, '1', 200),
(88, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d41aed32-18b4-96a0-6158-0d008a068ca1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434990, 1549440000, '1', 200),
(89, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"bcfb6c42-5e8e-3733-2fe7-bede9320fbd0\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435032, 1549440000, '1', 200),
(90, 'api/services/disable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"8ba1482d-f892-55a3-293d-faadb1ceb153\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435039, 1549440000, '1', 200),
(91, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"7bd0b329-191e-52a9-d139-a2d7c158cd13\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435046, 1549440000, '1', 200),
(92, 'api/services/delete', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"643bb8b6-7edb-359a-7151-afb177dc0837\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435056, 1549440000, '1', 200),
(93, 'api/services', 'delete', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"041e4196-2eea-aa15-bad9-20df6c9acb1d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435078, 1549440000, '1', 200),
(94, 'api/services', 'delete', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1f715e2e-ea3b-d008-56b0-946c4f5f4d53\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=nkv3g7akvntgcd18ur7a4k02o5pm9rv6\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435084, 1549440000, '1', 200),
(95, 'api/services', 'get', 'a:9:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9eb3274b-e76d-48c9-8398-904cb2c09d56\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.148.201', 1550041680, 0.046937, '0', 403),
(96, 'api/services', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"fac2440a-8f8a-430b-a974-b987f96839ca\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041746, 0.03969, '1', 0),
(97, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d183c396-83d6-46f9-8625-9c7e996b1ee6\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041890, 0.0436552, '1', 404),
(98, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"58030595-56be-4fbe-888c-be60f7e5563c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550042033, 0.3466, '1', 200),
(99, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7fe9cef8-cbb0-4272-80d3-f9900f4a2297\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=00p5toh62fbnfbrapstu4do5pd2m5k1g\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043293, 0.038852, '1', 200),
(100, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"08d7c7d9-094a-41ea-81ef-e36b64bc9014\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043338, 0.038234, '1', 200),
(101, 'api/customer/detail/3', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7df16ff6-d61f-4187-9c17-c5ce6167b3df\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043341, 0.0393689, '1', 200),
(102, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bd5e8835-e313-43fa-af33-d81fe9524a2b\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043345, 0.0416031, '1', 200),
(103, 'api/customer/detail', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ad35228d-cc4d-49bc-a4bf-8cea06c5e871\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043354, 0.041436, '1', 200),
(104, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e30dc5a1-111a-4df7-9f68-10b8a01b5d2f\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043357, 0.0402689, '1', 200),
(105, 'api/customer/index_detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"378b4b80-ba76-4700-a7f2-90843fe6d12c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043363, 0.0494442, '1', 200),
(106, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"92d2bfcb-f7c6-4a74-b267-8f7ec2c94079\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043379, 0.045403, '1', 200),
(107, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3319eaf6-e27f-4fc8-9127-e9f085acca16\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043412, 0.040298, '1', 200),
(108, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e5354978-963c-47d5-9011-9df26f790075\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043439, 0.0403781, '1', 404),
(109, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6f15e59e-9569-43bc-a36b-6e38d2614227\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------270277143471167715971007\";s:14:\"Content-Length\";s:3:\"583\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:18:\"Bayu Briyan El Roy\";s:5:\"email\";s:24:\"bayubriyanelroy@gmal.com\";s:5:\"phone\";s:12:\"081230008101\";s:7:\"address\";s:56:\"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043765, 0.0433841, '1', 200),
(110, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"021b5b57-e343-4b71-8bd7-9eb0ee56608b\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------241408044604135091511042\";s:14:\"Content-Length\";s:3:\"473\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:5:\"phone\";s:0:\"\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043819, 0.074012, '1', 200),
(111, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c7c07d35-658f-4bc5-91fe-808d684170b1\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:3:\"167\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:18:\"Bayu Briyan El Roy\";s:5:\"email\";s:24:\"bayubriyanelroy@gmal.com\";s:7:\"address\";s:12:\"081230008101\";s:5:\"phone\";s:56:\"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048354, 0.0457339, '1', 200),
(112, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"891707bc-ee69-4f66-9f9a-d443df828569\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"33\";s:10:\"Connection\";s:10:\"keep-alive\";s:7:\"address\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"id\";s:1:\"2\";s:4:\"name\";s:0:\"\";s:5:\"email\";s:0:\"\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048393, 0.0788889, '1', 200),
(113, 'api/customer', 'delete', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"20c22bab-e0ff-4ae7-93e9-1b31a76b80fe\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048516, 0.04495, '1', 400),
(114, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c81411b7-5a9b-412d-bb50-45725d178c11\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"3\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048560, 0.0388892, '1', 200),
(115, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"26396c1a-8e8d-47f3-9602-dc03e8e12fc3\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"3\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048595, 0.0394552, '1', 404),
(116, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ac36bcce-0e42-4a69-8308-4ede1e1f3561\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048671, 0.0670228, '1', 200),
(117, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c407981f-055a-4663-96fd-2d9e281bdff5\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048689, 0.04316, '1', 404),
(118, 'api/customer/enable', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"55701b25-9c14-46aa-ba95-fde151a8281d\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048728, 0.046968, '1', 200),
(119, 'api/customer/enable', 'put', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"56c42994-6fd9-4291-a637-426d62fa3c6a\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048810, 0.0421109, '1', 200),
(120, 'api/customer', 'get', 'a:10:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"55658acd-5e8a-420b-ac48-52cd56478e31\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.101.98', 1553486265, 0.043426, '0', 403),
(121, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"580bffef-90d3-49fb-b877-2c5a0b3768f6\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486285, 0.0393262, '1', 200),
(122, 'api/customer', 'post', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"74e8aac9-a514-4fd1-a378-7cb584845d45\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486435, 0.0415149, '1', 200),
(123, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"61ad4f72-a273-4b0c-90d1-776651ee155d\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486456, 0.0401361, '1', 200),
(124, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f48b46f5-ef2c-4ced-828d-d55dcf4741e4\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486464, 0.0408051, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(125, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"25a837ed-9429-4b7b-adf2-f6a4c5a37024\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486468, 0.0408051, '1', 404),
(126, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d35dbdaa-e37f-4b92-9b2b-12f285cb0b12\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486471, 0.042562, '1', 200),
(127, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"914bbbda-2ea7-46f7-b9a4-41e60cbcbfcf\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486475, 0.041795, '1', 200),
(128, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b931dae0-efcf-4311-bad6-6b0281842cf9\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486478, 0.0405412, '1', 200),
(129, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"776eb3f3-8102-4bd7-b787-1a5c4bcb4795\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486548, 0.0437829, '1', 200),
(130, 'api/customer', 'put', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"28873dba-1b14-4637-916e-8cdb5119f1eb\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486610, 0.0680921, '1', 200),
(131, 'api/customer', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7e1eac1e-faf7-44dd-b734-af0e471a8dea\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------132173021837729928827018\";s:14:\"Content-Length\";s:3:\"601\";s:10:\"Connection\";s:10:\"keep-alive\";s:90:\"----------------------------132173021837729928827018\r\nContent-Disposition:_form-data;_name\";s:510:\"\"id\"\r\n\r\n1\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"name\"\r\n\r\nMarcell\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"email\"\r\n\r\nmarcell@gmail.com\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"phone\"\r\n\r\n0\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"address\"\r\n\r\n-\r\n----------------------------132173021837729928827018--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486651, 0.0602229, '1', 200),
(132, 'api/customer/index', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bdc624da-d819-4d43-a638-2841595334cf\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------058076299379341907803355\";s:14:\"Content-Length\";s:3:\"601\";s:10:\"Connection\";s:10:\"keep-alive\";s:90:\"----------------------------058076299379341907803355\r\nContent-Disposition:_form-data;_name\";s:510:\"\"id\"\r\n\r\n1\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"name\"\r\n\r\nMarcell\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"email\"\r\n\r\nmarcell@gmail.com\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"phone\"\r\n\r\n0\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"address\"\r\n\r\n-\r\n----------------------------058076299379341907803355--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486659, 0.0498202, '1', 200),
(133, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7017eee3-7f68-470d-b48f-cda8a497db21\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"61\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";s:4:\"name\";s:7:\"Marcell\";s:5:\"email\";s:17:\"marcell@gmail.com\";s:5:\"phone\";s:1:\"0\";s:7:\"address\";s:1:\"-\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486677, 0.0547671, '1', 200),
(134, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0919d15c-ab2d-4719-905a-294bab410871\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"72\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";s:4:\"name\";s:7:\"Marcell\";s:5:\"email\";s:17:\"marcell@gmail.com\";s:5:\"phone\";s:12:\"023489234234\";s:7:\"address\";s:1:\"-\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486705, 0.067431, '1', 200),
(135, 'api/customer', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"22946704-6ecb-4ae0-818a-984fe1ebb128\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486710, 0.0617602, '1', 200),
(136, 'api/service/1', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36\";s:6:\"Accept\";s:118:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:23:\"en-US,en;q=0.9,id;q=0.8\";s:6:\"Cookie\";s:162:\"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ikkhl00q5hb0lmtih2p6drde5dd37s1v\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553490057, 0.0625389, '1', 200),
(137, 'api/service/1', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36\";s:6:\"Accept\";s:118:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:23:\"en-US,en;q=0.9,id;q=0.8\";s:6:\"Cookie\";s:162:\"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ng0su29jtcb11lv1ee30qq70g9o6j7fs\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553493660, 0.158972, '1', 200),
(138, 'api/example/users', 'get', 'a:9:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0a4c05b5-5bda-4ae6-b446-a56b0f58dd10\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.101.98', 1554794034, 0.0983059, '0', 403),
(139, 'api/example/users', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"10838701-cb4f-4a83-a991-0e05906965ca\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=p051e6s1ql0263n5n3sddmlsk9u8rqs6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554794302, 0.0760469, '1', 0),
(140, 'api/example/users', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3a770d89-3c5a-426c-8a88-ab7b2ff71a96\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cb1hqv00que8cpvs70e1d5895usqu7td\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883642, 0.0705218, '1', 0),
(141, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"48c7470c-04ff-47f0-9e30-e464283234f0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883651, 0.055877, '1', 0),
(142, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f5001237-7200-4352-b3f3-4aef64823792\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883678, 0.0204818, '1', 0),
(143, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"aba6da08-f4f7-4619-99b5-04c6ee8ffc87\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883745, 0.136361, '1', 200),
(144, 'api/example', 'get', 'a:9:{s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"deflate, gzip\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"postman-token\";s:36:\"a99bba16-ad49-13bc-4f20-f6991eb24681\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:14:\"Content-Length\";s:1:\"0\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '103.233.102.8', 1554883924, 0.0799909, '1', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_created_at` datetime NOT NULL,
  `log_created_by` int(11) NOT NULL,
  `log_action` varchar(500) NOT NULL,
  `log_tablename` varchar(500) NOT NULL,
  `log_jsondata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(1, '2019-09-30 16:36:09', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"3\",\"cm_nama\":\"ddfdf\",\"cm_data\":\"dfdfdf\",\"status\":\"DISABLE\",\"created_at\":\"2019-09-30 16:25:21\",\"updated_at\":null}'),
(2, '2019-10-01 10:22:47', 1, 'deleteData', 'contohmaster', '{\"conn_id\":{\"affected_rows\":null,\"client_info\":null,\"client_version\":null,\"connect_errno\":null,\"connect_error\":null,\"errno\":null,\"error\":null,\"error_list\":null,\"field_count\":null,\"host_info\":null,\"info\":null,\"insert_id\":null,\"server_info\":null,\"server_version\":null,\"stat\":null,\"sqlstate\":null,\"protocol_version\":null,\"thread_id\":null,\"warning_count\":null},\"result_id\":{\"current_field\":null,\"field_count\":null,\"lengths\":null,\"num_rows\":null,\"type\":null},\"result_array\":[],\"result_object\":[],\"custom_result_object\":[],\"current_row\":0,\"num_rows\":null,\"row_data\":null}'),
(3, '2019-10-01 10:29:38', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"6\",\"cm_nama\":\"tes\",\"cm_data\":\"asdsd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:27:04\",\"updated_at\":null}{\"cm_id\":\"7\",\"cm_nama\":\"dssd\",\"cm_data\":\"ddssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:27:10\",\"updated_at\":null}'),
(4, '2019-10-01 10:35:34', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":null}'),
(5, '2019-10-01 10:43:29', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:35:34\"}'),
(6, '2019-10-01 10:43:35', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:43:29\"}'),
(7, '2019-10-01 10:56:08', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:43:35\"}'),
(8, '2019-10-01 10:56:51', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:08\"}'),
(9, '2019-10-01 10:56:54', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssdssa\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:51\"}'),
(10, '2019-10-01 10:57:18', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssdssa\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:51\"}'),
(11, '2019-10-01 10:58:10', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"9\",\"cm_nama\":\"tes\",\"cm_data\":\"sdsd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:41\",\"updated_at\":null}'),
(12, '2019-10-01 10:58:15', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"9\",\"cm_nama\":\"tes\",\"cm_data\":\"sdsd\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 10:33:41\",\"updated_at\":null}'),
(13, '2019-10-01 11:18:04', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SMARTSOFT SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-06-26 13:56:36\"}'),
(14, '2019-10-01 14:21:22', 1, 'updateData', 'user', '{\"id\":\"11\",\"nip\":\"oplos\",\"name\":\"Oplos\",\"email\":\"oplos@oplos.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"18\",\"desc\":\"-\\r\\n\",\"status\":\"0\",\"created_at\":\"2018-11-15 16:47:11\",\"updated_at\":\"2019-06-26 11:36:03\"}'),
(15, '2019-10-01 14:23:04', 1, 'updateData', 'customer', '{\"id\":\"5\",\"nama\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"telp\":\"08123000801\",\"alamat\":\"address\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:44:50\",\"updated_at\":\"2019-08-15 07:48:37\"}'),
(16, '2019-10-01 14:27:47', 1, 'updateData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"jdf\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-08-15 09:46:19\"}'),
(17, '2019-10-01 15:17:03', 1, 'updateData', 'customer', '{\"id\":\"7\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(18, '2019-10-01 15:17:09', 1, 'deleteData', 'file', '{\"id\":\"177\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"7\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(19, '2019-10-01 15:17:09', 1, 'deleteData', 'customer', '{\"id\":\"7\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(20, '2019-10-01 15:19:31', 1, 'updateData', 'customer', '{\"id\":\"8\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(21, '2019-10-01 15:19:37', 1, 'deleteData', 'file', '{\"id\":\"178\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"8\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(22, '2019-10-01 15:19:37', 1, 'deleteData', 'customer', '{\"id\":\"8\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(23, '2019-10-01 15:21:15', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:15\",\"status\":\"ENABLE\"}'),
(24, '2019-10-01 15:21:15', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":9,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\"}'),
(25, '2019-10-01 15:21:27', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:27\",\"status\":\"ENABLE\"}'),
(26, '2019-10-01 15:21:27', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":10,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\"}'),
(27, '2019-10-01 15:21:59', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:59\",\"status\":\"ENABLE\"}'),
(28, '2019-10-01 15:21:59', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":11,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\"}'),
(29, '2019-10-01 15:22:01', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:22:01\",\"status\":\"ENABLE\"}'),
(30, '2019-10-01 15:22:01', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":12,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\"}'),
(31, '2019-10-01 15:22:20', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:22:20\",\"status\":\"ENABLE\"}'),
(32, '2019-10-01 15:22:21', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":13,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:21\"}'),
(33, '2019-10-01 15:23:02', 1, 'updateData', 'customer', '{\"id\":\"13\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:20\",\"updated_at\":null}'),
(34, '2019-10-01 15:23:04', 1, 'updateData', 'customer', '{\"id\":\"12\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(35, '2019-10-01 15:23:05', 1, 'updateData', 'customer', '{\"id\":\"11\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(36, '2019-10-01 15:23:06', 1, 'updateData', 'customer', '{\"id\":\"10\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(37, '2019-10-01 15:23:08', 1, 'updateData', 'customer', '{\"id\":\"9\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(38, '2019-10-01 15:23:12', 1, 'deleteData', 'file', '{\"id\":\"179\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"9\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(39, '2019-10-01 15:23:12', 1, 'deleteData', 'customer', '{\"id\":\"9\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(40, '2019-10-01 15:24:27', 1, 'deleteData', 'file', '{\"id\":\"183\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"13\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:21\",\"updated_at\":null}'),
(41, '2019-10-01 15:24:27', 1, 'deleteData', 'customer', '{\"id\":\"13\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:22:20\",\"updated_at\":null}'),
(42, '2019-10-01 15:25:05', 1, 'deleteData', 'file', '{\"id\":\"182\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"12\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(43, '2019-10-01 15:25:05', 1, 'deleteData', 'customer', '{\"id\":\"12\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(44, '2019-10-01 15:25:32', 1, 'deleteData', 'file', '{\"id\":\"180\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"10\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(45, '2019-10-01 15:25:32', 1, 'deleteData', 'customer', '{\"id\":\"10\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(46, '2019-10-01 15:25:36', 1, 'deleteData', 'file', '{\"id\":\"181\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"11\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(47, '2019-10-01 15:25:36', 1, 'deleteData', 'customer', '{\"id\":\"11\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(48, '2019-10-01 15:28:17', 1, 'insertData', 'customer', '{\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:28:17\",\"status\":\"ENABLE\"}'),
(49, '2019-10-01 15:28:17', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":14,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\"}'),
(50, '2019-10-01 15:30:39', 1, 'updateData', 'customer', '{\"id\":\"14\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(51, '2019-10-01 15:31:05', 1, 'deleteData', 'file', '{\"id\":\"184\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"14\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(52, '2019-10-01 15:31:05', 1, 'deleteData', 'customer', '{\"id\":\"14\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(53, '2019-10-01 17:09:44', 1, 'insertData', 'customer', '{\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 17:09:44\",\"status\":\"ENABLE\"}'),
(54, '2019-10-01 17:09:44', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":15,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\"}'),
(55, '2019-10-01 17:09:50', 1, 'updateData', 'customer', '{\"id\":\"15\",\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(56, '2019-10-01 17:09:55', 1, 'deleteData', 'file', '{\"id\":\"185\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"15\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(57, '2019-10-01 17:09:55', 1, 'deleteData', 'customer', '{\"id\":\"15\",\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(58, '2019-10-15 09:53:06', 1, 'deleteData', 'customer', '{\"id\":\"5\",\"nama\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"telp\":\"08123000801\",\"alamat\":\"address\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:44:50\",\"updated_at\":\"2019-10-01 14:23:04\"}'),
(59, '2019-10-15 09:58:06', 1, 'insertData', 'customer', '{\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"created_at\":\"2019-10-15 09:58:06\",\"status\":\"ENABLE\"}'),
(60, '2019-10-15 09:58:06', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":16,\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\"}'),
(61, '2019-10-22 11:47:44', 1, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"http:\\/\\/www.pertanian.go.id\\/img\\/logo.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2019-04-29 10:56:09\"}'),
(62, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(63, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(64, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":2}'),
(65, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":3}'),
(66, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(67, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(68, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(69, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(70, '2019-10-22 13:26:52', 1, 'updateData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"jdf\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-10-01 14:27:47\"}'),
(71, '2019-10-22 13:27:06', 1, 'updateData', 'customer', '{\"id\":\"3\",\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"238137\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":\"2019-08-15 07:42:48\"}'),
(72, '2019-10-22 13:35:26', 1, 'deleteData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"18\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-10-22 13:26:52\"}'),
(73, '2019-10-22 13:35:47', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":null}'),
(74, '2019-10-22 13:35:57', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:35:47\"}'),
(75, '2019-10-22 13:36:30', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asem\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:35:57\"}'),
(76, '2019-11-02 15:49:56', 1, 'deleteData', 'access', '{\"id\":\"2\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}'),
(77, '2019-11-02 15:50:26', 1, 'deleteData', 'access', '{\"id\":\"3\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"4\",\"access_control_id\":\"293\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"5\",\"access_control_id\":\"294\",\"role_id\":\"17\",\"status\":\"active\"}'),
(78, '2019-11-02 15:50:43', 1, 'insertData', 'customer', '{\"nama\":\"1\",\"email\":\"2\",\"telp\":\"3\",\"alamat\":\"17\",\"created_at\":\"2019-11-02 15:50:43\",\"status\":\"ENABLE\"}'),
(79, '2019-11-02 15:51:31', 1, 'deleteData', 'access', '{\"id\":\"8\",\"access_control_id\":\"149\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"7\",\"access_control_id\":\"147\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"6\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}'),
(80, '2019-11-02 15:51:48', 1, 'deleteData', 'access', '{\"id\":\"11\",\"access_control_id\":\"147\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"10\",\"access_control_id\":\"146\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"9\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"12\",\"access_control_id\":\"149\",\"role_id\":\"17\",\"status\":\"active\"}'),
(81, '2019-11-08 09:48:39', 1, 'insertData', 'customer', '{\"nama\":\"Tesing\",\"email\":\"testing@gmail.com\",\"telp\":\"1\",\"alamat\":\"1\",\"created_at\":\"2019-11-08 09:48:39\",\"status\":\"ENABLE\"}'),
(82, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(83, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(84, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(85, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_backupdb`
--

CREATE TABLE `log_backupdb` (
  `bdb_id` int(11) NOT NULL,
  `bdb_file` varchar(500) NOT NULL,
  `bdb_size` varchar(500) NOT NULL,
  `bdb_sizedisplay` varchar(500) NOT NULL,
  `bdb_created_at` datetime NOT NULL,
  `bdb_created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_backupdb`
--

INSERT INTO `log_backupdb` (`bdb_id`, `bdb_file`, `bdb_size`, `bdb_sizedisplay`, `bdb_created_at`, `bdb_created_by`) VALUES
(1, 'backup-on-2019-09-25-17-18-20.zip', '26893', '26.26 KB', '2019-09-25 17:18:20', 1),
(2, 'backup-on-2019-09-25-17-19-15.zip', '26964', '26.33 KB', '2019-09-25 17:19:15', 1),
(3, 'backup-on-2019-09-30-17-04-07.zip', '27346', '26.71 KB', '2019-09-30 17:04:07', 1),
(4, 'backup-on-2019-10-03-16-55-55.zip', '29539', '28.85 KB', '2019-10-03 16:55:55', 1),
(5, 'backup-on-2019-10-15-09-53-59.zip', '29571', '28.88 KB', '2019-10-15 09:53:59', 1),
(6, 'backup-on-2019-10-16-14-00-26.zip', '29760', '29.06 KB', '2019-10-16 14:00:26', 1),
(7, 'backup-on-2019-11-08-09-47-08.zip', '30655', '29.94 KB', '2019-11-08 09:47:08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `urutan` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `notif` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `icon`, `link`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'mdi mdi-monitor-dashboard', '', '1', '0', NULL, 'ENABLE', '2019-01-17 14:33:33', NULL),
(13, 'Customer', 'fa fa-user', 'master/customer', '2', '0', '', 'ENABLE', '2019-07-01 09:02:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `header` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `name`, `query`, `header`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'SELECT * FROM user', '[\"nip\",\"name\",\"email\",\"password\",\"role_id\",\"desc\",\"status\",\"created_at\",\"updated_at\"]', 'ENABLE', '2019-03-13 09:57:07', '2019-03-19 17:13:35'),
(2, 'Customer', 'SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'', '[\"nama\",\"email\",\"telp\",\"alamat\",\"status\",\"dir\"]', 'ENABLE', '2019-03-25 10:47:39', '2019-07-01 09:01:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Admin', 'ENABLE', '[\"1\",\"13\"]', '2018-10-12 17:03:59', '2019-07-01 09:03:03'),
(18, 'Operation', 'ENABLE', NULL, '2018-10-24 10:29:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `site` varchar(225) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `site`
--

INSERT INTO `site` (`id`, `code`, `site`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '725245003', 'JAKARTA', 'JAKARTA', 'ENABLE', '2018-02-05 15:24:09', '2018-10-12 04:20:35'),
(7, '71805050', 'ADARO', 'SIS ADARO', 'ENABLE', '2018-02-05 13:48:30', '2018-08-06 05:40:46'),
(8, '71923055', 'KIDECO', 'BUMA KIDECO', 'ENABLE', '2018-02-05 13:50:04', '2018-10-12 04:20:39'),
(9, '72524510', 'HANDIL', 'HANDIL', 'ENABLE', '2018-02-13 17:59:15', '2018-05-03 09:09:28'),
(10, '71005052', 'LATI', 'BUMA LATI', 'ENABLE', '2018-02-27 04:51:48', '2018-05-03 09:09:36'),
(11, '72005051', 'ARKON', 'ARKON', 'ENABLE', '2018-02-27 04:52:11', '2018-10-12 03:20:21'),
(12, '71605055', 'ADARO', 'BUMA ADARO', 'ENABLE', '2018-03-20 06:48:21', '2018-05-03 09:09:51'),
(13, '71605054', 'BINUNGAN', 'BUMA BINUNGAN', 'ENABLE', '2018-03-20 06:48:44', '2018-05-03 09:09:58'),
(14, '72305050', 'SAMBARATA', 'SIS SAMBARATA', 'ENABLE', '2018-03-20 06:49:06', '2018-05-03 09:10:07'),
(15, '72305052', 'LATI', 'RBA LATI', 'ENABLE', '2018-03-20 06:49:25', '2018-05-03 09:10:17'),
(16, '72305053', 'MARTABE', 'MARTABE', 'ENABLE', '2018-03-20 06:49:47', '2018-05-03 09:10:24'),
(17, '72805053', 'AKT', 'AKT', 'ENABLE', '2018-03-20 06:50:02', '2018-05-03 09:10:33'),
(18, '72905053', 'KIDECO', 'PETROSEA KIDECO', 'ENABLE', '2018-03-20 06:50:26', '2018-05-03 09:10:43'),
(19, '73305053', 'BAKAN', 'BAKAN', 'ENABLE', '2018-03-20 06:50:56', '2018-05-03 09:10:52'),
(20, '73305054', 'BINUNGAN', 'SIS BINUNGAN', 'ENABLE', '2018-03-20 06:51:11', '2018-05-03 09:11:01'),
(21, 'sss', 'asdad', 'sadsa', 'ENABLE', '2018-08-07 13:58:09', NULL),
(22, '725245003', 'BANDUNG', 'BANDUNG', 'ENABLE', '2018-08-11 02:56:50', NULL),
(23, '7879779879', 'BANDUNG', 'BANDUNG', 'ENABLE', '2018-08-11 02:59:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` int(12) NOT NULL,
  `kronologis` text,
  `fitur` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `password`, `role_id`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smartsoft', 'Smartsoft Studio', 'smartsoftstudio1@mail.com', '21232f297a57a5a743894a0e4a801fc3', 17, 'asda', '0', '2018-02-23 16:09:49', '2019-02-19 11:02:53'),
(9, 'operator', 'Operator', '', '4b583376b2767b923c3e1da60d10de59', 18, '0', '0', '2018-10-24 10:53:02', '2019-02-18 16:18:41'),
(11, 'oplos', 'Oplos', 'oplos@oplos.com', '0192023a7bbd73250516f069df18b500', 18, '-\r\n', '0', '2018-11-15 16:47:11', '2019-10-01 14:21:22'),
(12, 'arvin', 'arvin', 'arvin', '89f6432af2e2bcea9489ad02cd27a134', 17, NULL, 'ENABLE', NULL, NULL),
(13, 'karya123studio', 'Karya Studio', 'karya123studio@gmail.com', '356f3bfc360b9018ab724b11064e2ddf', 17, '-', '0', '2018-02-23 16:09:49', '2019-02-19 11:02:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contohmaster`
--
ALTER TABLE `contohmaster`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_dnd`
--
ALTER TABLE `customer_dnd`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `konfig_email`
--
ALTER TABLE `konfig_email`
  ADD PRIMARY KEY (`ke_id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`log_id`);

--
-- Indeks untuk tabel `log_backupdb`
--
ALTER TABLE `log_backupdb`
  ADD PRIMARY KEY (`bdb_id`);

--
-- Indeks untuk tabel `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT untuk tabel `contohmaster`
--
ALTER TABLE `contohmaster`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `customer_dnd`
--
ALTER TABLE `customer_dnd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT untuk tabel `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `image`
--
ALTER TABLE `image`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `konfig_email`
--
ALTER TABLE `konfig_email`
  MODIFY `ke_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `log_backupdb`
--
ALTER TABLE `log_backupdb`
  MODIFY `bdb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
