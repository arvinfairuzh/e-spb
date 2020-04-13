-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Apr 2020 pada 02.45
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-spb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) NOT NULL,
  `access_control_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `access`
--

INSERT INTO `access` (`id`, `access_control_id`, `role_id`, `status`) VALUES
(13, 94, 17, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_control`
--

CREATE TABLE IF NOT EXISTS `access_control` (
  `id` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `activity` (
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
('182.0.231.50', 'http://gatoko1.com/sop/report/Users/ajaxall/', '[]', '{"draw":"1","columns":[{"data":"0","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"1","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"2","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"3","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"4","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"5","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"6","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"7","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"8","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"9","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"10","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}}],"start":"0","length":"10","search":{"value":"","regex":"false"}}', 1, '2019-03-25 11:32:13'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{"draw":"1","columns":[{"data":"ip","name":"","searchable":"true","orderable":"false","search":{"value":"","regex":"false"}},{"data":"created_at","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"ip","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"link","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"post","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"get","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}}],"order":[{"column":"1","dir":"asc"}],"start":"0","length":"10","search":{"value":"","regex":"false"}}', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:58'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{"draw":"1","columns":[{"data":"ip","name":"","searchable":"true","orderable":"false","search":{"value":"","regex":"false"}},{"data":"created_at","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"ip","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"link","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"post","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"get","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}}],"order":[{"column":"1","dir":"asc"}],"start":"0","length":"10","search":{"value":"","regex":"false"}}', 1, '2019-03-25 11:31:59'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{"ids":"1","name":"Smartsoft Studio","email":"smartsoftstudio1@mail.com","desc":"asda"}', 1, '2019-02-19 11:02:53'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:32:00'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{"draw":"1","columns":[{"data":"ip","name":"","searchable":"true","orderable":"false","search":{"value":"","regex":"false"}},{"data":"created_at","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"ip","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"link","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"post","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"get","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}}],"order":[{"column":"1","dir":"asc"}],"start":"0","length":"10","search":{"value":"","regex":"false"}}', 1, '2019-03-25 11:32:01'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=ke', '{"term":"ke"}', '[]', 1, '2019-03-25 11:32:21'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{"term":"kementr"}', '[]', 1, '2019-03-25 11:32:22'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{"term":"kementr"}', '[]', 1, '2019-03-25 11:32:23'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{"term":"kementr"}', '[]', 1, '2019-03-25 11:32:24'),
('182.0.197.180', 'http://gatoko1.com/sop/login/logout', '[]', '[]', 1, '2019-03-25 11:32:31'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/login', '[]', '[]', NULL, '2019-03-25 11:32:31'),
('182.0.231.125', 'http://gatoko1.com/sop/login/lockscreen?user=smartsoft', '{"user":"smartsoft"}', '[]', NULL, '2019-03-25 11:32:38'),
('182.0.231.125', 'http://gatoko1.com/sop/login/act_login', '[]', '{"username":"smartsoft","password":"admin"}', NULL, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-03-25 11:32:45'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{"draw":"1","columns":[{"data":"ip","name":"","searchable":"true","orderable":"false","search":{"value":"","regex":"false"}},{"data":"created_at","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"ip","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"link","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"post","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}},{"data":"get","name":"","searchable":"true","orderable":"true","search":{"value":"","regex":"false"}}],"order":[{"column":"1","dir":"asc"}],"start":"0","length":"10","search":{"value":"","regex":"false"}}', 1, '2019-03-25 11:32:46'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{"ids":"1","name":"Smartsoft Studio","email":"smartsoftstudio1@mail.com","desc":"asda"}', 1, '2019-02-19 11:02:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contohmaster`
--

CREATE TABLE IF NOT EXISTS `contohmaster` (
  `cm_id` int(11) NOT NULL,
  `cm_nama` varchar(500) NOT NULL,
  `cm_data` text NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_code`
--

CREATE TABLE IF NOT EXISTS `cost_code` (
  `id` int(11) NOT NULL,
  `kode_kategori` varchar(255) DEFAULT NULL,
  `kode_costcontrol` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `uom` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cost_code`
--

INSERT INTO `cost_code` (`id`, `kode_kategori`, `kode_costcontrol`, `deskripsi`, `uom`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, '010202M', '010202', 'Bore Pile', 'M''', 'ENABLE', '2019-01-21 15:46:28', NULL, NULL),
(2, 'M00020', '010101', 'Galian Tanah', 'M3', 'ENABLE', '2019-01-21 15:46:28', NULL, NULL),
(3, 'M00020', '010208', 'Lantai Kerja', 'M2', 'ENABLE', '2019-01-21 15:46:28', NULL, NULL),
(5, 'M13202', '010206', 'Urugan Pasir', 'M3', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(6, 'M13203', '010301', 'Bekisting Pile Cap', 'M2', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(9, 'MAT', '010209', 'Pondasi TC', 'Ls', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(13, 'SUB', '010203', 'Sheet Pile', 'M''', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(16, 'UPAH', '010102', 'Urugan Tanah', '', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(17, 'UPAH', '010104', 'Perataan Tanah', '', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(18, 'UPAH', '010201', 'Tiang Pancang', '', 'ENABLE', '2019-01-21 15:46:29', NULL, NULL),
(22, NULL, '010103', 'Pembuangan Tanah', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(23, NULL, '010105', 'Pemadatan Tanah', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(24, NULL, '010106', 'Dewatering', 'Ls', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(25, NULL, '010107', 'Sumur Resapan', 'Unit', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(26, NULL, '010108', 'Limestone', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(27, NULL, '010109', 'Basecourse', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(28, NULL, '010111', 'Gelar Plastik Cor', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(29, NULL, '010204', 'Strauss Pile', 'M''', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(30, NULL, '010205', 'Pondasi Batu Kali', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(31, NULL, '010207', 'Urugan Sirtu', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(32, NULL, '010211', 'Soldier Pile', 'M''', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(33, NULL, '010212', 'Aanstamping', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(34, NULL, '010213', 'Bentonite', 'M3', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(35, NULL, '010302', 'Bekisting Sloof', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(36, NULL, '010303', 'Bekisting Kolom', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(37, NULL, '010304', 'Bekisting Balok', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(38, NULL, '010305', 'Bekisting Ringbalk', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(39, NULL, '010306', 'Bekisting Plat Lantai', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(40, NULL, '010307', 'Bekisting Listplank', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(41, NULL, '010308', 'Bekisting Dinding', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(42, NULL, '010309', 'Bekisting Pit Lift / Sumpit', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(43, NULL, '010311', 'Bekisting Reservoir/GWT', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(44, NULL, '010312', 'Bekisting Ramp Basement', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(45, NULL, '010313', 'Bekisting STP', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(46, NULL, '010314', 'Bekisting lain-lain', 'M2', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(47, NULL, '010401', 'Besi Pile Cap', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(48, NULL, '010402', 'Besi Sloof', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(49, NULL, '010403', 'Besi Kolom', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(50, NULL, '010404', 'Besi kolom praktis', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(51, NULL, '010405', 'Besi Balok', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(52, NULL, '010406', 'Besi Ringbalk', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(53, NULL, '010407', 'Besi Plat Lantai', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(54, NULL, '010408', 'Besi Listplank', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(55, NULL, '010409', 'Besi Dinding', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(56, NULL, '010411', 'Besi Tangga', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(57, NULL, '010412', 'Besi Reservoir/GWT', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(58, NULL, '010413', 'Besi Ramp Basement', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(59, NULL, '010414', 'Besi STP', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(60, NULL, '010415', 'Besi Strauss Pile', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(61, NULL, '010416', 'Besi Bore Pile', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(62, NULL, '010417', 'Besi lain-lain', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(63, NULL, '010418', 'Besi Wiremesh', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(64, NULL, '010419', 'Besi Dowel', 'Kg', 'ENABLE', '2019-01-24 06:18:49', NULL, NULL),
(65, NULL, '010501', 'Beton Pile Cap', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(66, NULL, '010502', 'Beton Sloof', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(67, NULL, '010503', 'Beton Kolom', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(68, NULL, '010504', 'Beton Balok', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(69, NULL, '010505', 'Beton Ringbalk', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(70, NULL, '010506', 'Beton Plat Lantai', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(71, NULL, '010507', 'Beton Listplank', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(72, NULL, '010508', 'Beton Dinding', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(73, NULL, '010509', 'Beton Pit Lift / Sumpit', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(74, NULL, '010511', 'Beton Reservoir/GWT', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(75, NULL, '010512', 'Beton Ramp Basement', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(76, NULL, '010513', 'Beton STP', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(77, NULL, '010514', 'Beton Lain-lain', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(78, NULL, '010515', 'Potong Beton', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(79, NULL, '010516', 'Moisture Barrier', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(80, NULL, '010517', 'Beton Bore Pile', 'M3', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(81, NULL, '020101', 'Pasangan Bata Merah', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(82, NULL, '020102', 'Pasangan Bata Ringan', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(83, NULL, '020103', 'Plesteran', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(84, NULL, '020104', 'Acian', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(85, NULL, '020105', 'Pasangan Marmer Lantai', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(86, NULL, '020106', 'Pasangan Marmer Dinding', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(87, NULL, '020107', 'Pasangan Keramik Lantai', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(88, NULL, '020108', 'Pasangan Keramik Dinding', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(89, NULL, '020109', 'Pasangan Keramik Tangga', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(90, NULL, '020111', 'Pasangan Granit Tile Lantai', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(91, NULL, '020112', 'Pasangan Granit Tile Dinding', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(92, NULL, '020113', 'Pasangan Granit Tile Tangga', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(93, NULL, '020114', 'Pasangan Granit Tile Toilet', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(94, NULL, '020115', 'Pasangan Granit Lantai', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(95, NULL, '020116', 'Pasangan Granit Dinding', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(96, NULL, '020117', 'Dinding Partisi Gypsum', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(97, NULL, '020118', 'Dinding Partisi Sandwich Panel', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(98, NULL, '020119', 'Plint Keramik', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(99, NULL, '020121', 'Plint Granit', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(100, NULL, '020122', 'Plint Kayu', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(101, NULL, '020123', 'Plint Alumunium', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(102, NULL, '020124', 'Kolom Praktis', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(103, NULL, '020125', 'Expose', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(104, NULL, '020126', 'Tali Air', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(105, NULL, '020127', 'Openingan', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(106, NULL, '020128', 'Skonengan/Benangan', 'M''', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(107, NULL, '020129', 'Pasangan Wall Paper', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(108, NULL, '020131', 'Roster', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(109, NULL, '020132', 'Screed Keramik', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(110, NULL, '020133', 'Trowel Finish', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(111, NULL, '020134', 'Karpet', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(112, NULL, '020135', 'Vinyl', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(113, NULL, '020136', 'Lantai Kayu', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(114, NULL, '020137', 'Meja Beton', 'M2', 'ENABLE', '2019-01-24 06:18:50', NULL, NULL),
(115, NULL, '020138', 'ACP ', 'M2', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(116, NULL, '020139', 'Kaca Stopsol', 'M2', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(117, NULL, '020141', 'Stainless Saluran', 'M''', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(118, NULL, '020142', 'Batu Alam', 'M2', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(119, NULL, '020143', 'Batu Andesit', 'M2', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(120, NULL, '020144', 'Karang Pilang', 'M2', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(121, NULL, '020145', 'Lain-lain Lantai', 'Ls', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(122, NULL, '020146', 'Lain-lain Dinding', 'Ls', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(123, NULL, '020147', 'Floordeck', 'Ls', 'ENABLE', '2019-01-24 06:18:51', NULL, NULL),
(124, NULL, '020148', NULL, NULL, 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(125, NULL, '020149', 'Loose Pebbles', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(126, NULL, '020151', 'Pebbel stone', 'M''', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(127, NULL, '020152', 'Plesteran Kamprot', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(128, NULL, '020153', 'Treshold', 'M''', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(129, NULL, '020154', 'Pasangan Teraso Lantai', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(130, NULL, '020155', 'Window Sill', 'M''', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(131, NULL, '020156', 'Ban-banan', 'M''', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(132, NULL, '020157', NULL, NULL, 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(133, NULL, '020158', NULL, NULL, 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(134, NULL, '020201', 'Plafond Multiplek', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(135, NULL, '020202', 'Plafond Lambrisering', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(136, NULL, '020203', 'Plafond Accustic', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(137, NULL, '020204', 'Plafond Aluminium', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(138, NULL, '020205', 'Plafond Gypsum', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(139, NULL, '020206', 'Plafond Expose', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(140, NULL, '020207', 'Plafond Metal', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(141, NULL, '020208', 'Plafond Luxalon', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(142, NULL, '020209', 'Plafond Sandwich Panel', 'M2', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(143, NULL, '020211', 'Koef Lampu / Gordyn', 'Ls', 'ENABLE', '2019-01-24 06:21:40', NULL, NULL),
(144, NULL, '020212', 'List Cornice', 'M''', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(145, NULL, '020213', 'Shadow line', 'M''', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(146, NULL, '020214', 'Plafond Calsiboard', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(147, NULL, '020215', 'Plafond Gyptile', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(148, NULL, '020301', 'Penutup Atap Genteng', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(149, NULL, '020302', 'Penutup Atap Metal', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(150, NULL, '020303', 'Penutup Atap Skylight Fiberglass', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(151, NULL, '020304', 'Penutup Atap Skylight Polycarbonat', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(152, NULL, '020305', 'Penutup Atap Spandek', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(153, NULL, '020306', 'Penutup Atap Klip lok', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(154, NULL, '020307', 'Roof Insulation', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(155, NULL, '020308', 'Baja Ringan', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(156, NULL, '020309', 'Nok', 'M''', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(157, NULL, '020311', 'Fascia', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(158, NULL, '020312', 'Flashing', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(159, NULL, '020313', 'Cladding', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(160, NULL, '020314', 'Talang Tegak', 'M''', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(161, NULL, '020315', 'Roof Drain', 'Bh', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(162, NULL, '020316', 'Skylight Kaca', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(163, NULL, '020317', 'Sambungan baja', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(164, NULL, '020318', 'Profile Baja Atap', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(165, NULL, '020319', 'Rangka Baja Untuk Rangka Kaca Laminate', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(166, NULL, '020401', 'Window wall / Curtain wall', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(167, NULL, '020402', 'Kayu', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(168, NULL, '020403', 'Besi', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(169, NULL, '020404', 'Aluminium', 'ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(170, NULL, '020405', 'Kaca', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(171, NULL, '020406', 'PVC', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(172, NULL, '020407', 'Rolling Door', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(173, NULL, '020408', 'High Speed Door', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(174, NULL, '020409', 'Automatic Door', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(175, NULL, '020411', 'Sliding door', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(176, NULL, '020412', 'Swing door', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(177, NULL, '020413', 'Louver', 'Bh', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(178, NULL, '020414', 'Accesoris pintu,jendela,kusen lain-lain', 'Ls', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(179, NULL, '020501', 'Cat Dinding Dalam', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(180, NULL, '020503', 'Cat Plafond', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(181, NULL, '020504', 'Cat Partisi', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(182, NULL, '020505', 'Cat Railling', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(183, NULL, '020506', 'Cat Marka Jalan', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(184, NULL, '020507', 'Cat Minyak', 'M2', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(185, NULL, '020601', 'Closet Duduk', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(186, NULL, '020602', 'Closet Jongkok', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(187, NULL, '020603', 'Wastafel', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(188, NULL, '020604', 'Urinal', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(189, NULL, '020605', 'Penyekat Urinal', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(190, NULL, '020606', 'Kran Air', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(191, NULL, '020607', 'Towel Bar/Ring', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(192, NULL, '020608', 'Paper Holder', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(193, NULL, '020609', 'Shower Spray', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(194, NULL, '020611', 'Jet Washer', 'Unit', 'ENABLE', '2019-01-24 06:21:41', NULL, NULL),
(195, NULL, '020612', 'Bathub', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(196, NULL, '020613', 'Soap Dispenser', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(197, NULL, '020614', 'Soap Holder', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(198, NULL, '020615', 'Clean Out', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(199, NULL, '020616', 'Floordrain', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(200, NULL, '020617', 'Kitchen Zink', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(201, NULL, '020618', 'Shower Box', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(202, NULL, '020619', 'Cermin', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(203, NULL, '020621', 'Shower screen', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(204, NULL, '020622', 'hand dryer', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(205, NULL, '020623', 'Shower door handle', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(206, NULL, '020624', 'Hand shower', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(207, NULL, '020625', 'Sliding rail', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(208, NULL, '020626', 'Robe hook', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(209, NULL, '020627', 'single lever shower mixer', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(210, NULL, '020628', 'Head shower', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(211, NULL, '020629', 'Fixed shower', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(212, NULL, '020631', 'penebalan dinding closet', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(213, NULL, '020632', 'Janitor', 'Set', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(214, NULL, '020633', 'Meja Wastafel/Vanity counter', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(215, NULL, '020634', 'Shower Set', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(216, NULL, '020701', 'Anti Rayap', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(217, NULL, '020702', 'Waterproofing Coating', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(218, NULL, '020703', 'Waterproofing Membran', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(219, NULL, '020704', 'Waterstop', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(220, NULL, '020705', 'Floor Hardener', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(221, NULL, '020706', 'Rigid Insullation / Sound Proof', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(222, NULL, '020707', 'Fire Proofing', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(223, NULL, '020708', 'Epoxy', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(224, NULL, '020709', 'U-Crete', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(225, NULL, '020711', 'Protector Guard Kolom', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(226, NULL, '020712', 'Protector Guard Dinding', 'M''', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(227, NULL, '020713', 'Waterproofing integral', 'M3', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(228, NULL, '020714', 'Toping Concrate', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(229, NULL, '020715', 'Corner Guard 1000', 'Unit', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(230, NULL, '020716', 'PVC Wood', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(231, NULL, '020717', 'Proteksi Lantai', 'M2', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(232, NULL, '020718', 'Dilatasi Lantai', 'M''', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(233, NULL, '020719', 'Injeksi Beton', 'Ttk', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(234, NULL, '020721', 'Urethane', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(235, NULL, '020722', 'Rubber Bumper', 'M''', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(236, NULL, '020801', 'Tangga Kayu', 'M''', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(237, NULL, '020802', 'Tangga Stainless', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(238, NULL, '020803', 'Tangga Besi', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(239, NULL, '020804', 'GRC Cetak', 'M''', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(240, NULL, '020805', 'Furniture', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(241, NULL, '020806', 'Kawat Burung', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(242, NULL, '020807', 'Kawat Nyamuk', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(243, NULL, '020808', 'Kawat Loket', 'Ls', 'ENABLE', '2019-01-24 06:21:42', NULL, NULL),
(244, NULL, '020809', 'Stainless Steel', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(245, NULL, '020811', 'Grouting', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(246, NULL, '020812', 'Tangga Hollow', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(247, NULL, '020813', 'Partisi', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(248, NULL, '020814', 'Jamb Lift', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(249, NULL, '020815', 'Railing', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(250, NULL, '020816', 'Tangga Baja', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(251, NULL, '020817', 'Catwalk', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(252, NULL, '020818', 'Rangka Signage Hollow', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(253, NULL, '020819', 'Tangga Precast', 'unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(254, NULL, '020821', 'Penutup Void Lift', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(255, NULL, '020822', 'Dudukan Facade (Canal C)', 'Kg', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(256, NULL, '020823', 'Terminal Material', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(257, NULL, '020824', 'Scafolding', 'M2', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(258, NULL, '020825', 'Tangga Monyet', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(259, NULL, '020826', 'Tutup Lubang Lift', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(260, NULL, '020827', 'Kerangkeng Pompa', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(261, NULL, '020828', 'Tangki Air', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(262, NULL, '020829', 'Sealant', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(263, NULL, '020831', 'Pembuatan Logo Owner', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(264, NULL, '020832', 'Meja Beton lapis Plywood Melamic', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(265, NULL, '020833', 'Peninggian Lantai Meja Pantry', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(266, NULL, '020834', 'Backing Spandrell', 'Unit', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(267, NULL, '020901', 'Paving Block', 'M2', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(268, NULL, '020902', 'Kansteen', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(269, NULL, '020903', 'Jalan Beton', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(270, NULL, '020904', 'Jalan Aspal', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(271, NULL, '020905', 'Car Stopper', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(272, NULL, '020906', 'Saluran U-ditch', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(273, NULL, '020907', 'Saluran Box Culvert', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(274, NULL, '020908', 'Saluran Buis Beton', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(275, NULL, '020909', 'Saluran Lain-Lain', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(276, NULL, '020911', 'Pagar BRC', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(277, NULL, '020912', 'Pagar Panel Beton', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(278, NULL, '020913', 'Pos Jaga', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(279, NULL, '020914', 'Tiang Bendera', 'Bh', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(280, NULL, '020915', 'Tiang Basket', 'Bh', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(281, NULL, '020916', 'Taman', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(282, NULL, '020917', 'Sarana Olah raga', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(283, NULL, '020918', 'Kolam Air Mancur', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(284, NULL, '020919', 'Menara Air', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(285, NULL, '020921', 'Sersan Ramp', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(286, NULL, '020922', 'Bak Kontrol', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(287, NULL, '020923', 'Biopori', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(288, NULL, '020924', 'Biofilter', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(289, NULL, '020925', 'Pot Bunga', 'M''', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(290, NULL, '020926', 'Bak Pengumpul', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(291, NULL, '020927', 'Bak Pengendap', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(292, NULL, '020928', 'Damster Sampah', 'Ls', 'ENABLE', '2019-01-24 06:21:43', NULL, NULL),
(293, NULL, '020929', NULL, NULL, 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(294, NULL, '020931', 'Gutter ', 'Unit', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(295, NULL, '020932', 'Grill', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(296, NULL, '020933', 'Pipa GIP 2"', 'Btg', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(297, NULL, '020934', 'RCP', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(298, NULL, '020935', 'Lapisan Perkerasan', 'M2', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(299, NULL, '020936', 'Lapisan Perkerasan subbase', 'M2', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(300, NULL, '020937', 'Lapisan Perkerasan base course', 'M2', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(301, NULL, '020938', 'Lapisan Perkerasan abu batu', 'M2', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(302, NULL, '020939', 'Manhole', 'Unit', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(303, NULL, '020941', 'Pagar Hollow/Besi', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(304, NULL, '020942', 'Pasang embeded siku', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(305, NULL, '020943', 'Pembuatan Tanggulan (dari galian - finish)', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(306, NULL, '020944', 'Capping Beton uk. 15x30-40 cm Beton K-175 + Pembesian', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(307, NULL, '020945', 'Cutter Grooving Ramp', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(308, NULL, '020946', 'Finishing Gutter', 'M''', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(309, NULL, '020947', 'Koral Sikat', 'M2', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(310, NULL, '020948', 'GWT Precast', 'Unit', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(311, NULL, '020949', 'Bak Meter Air', 'Unit', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(312, NULL, '020951', NULL, NULL, 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(313, NULL, '020952', 'Loading Dock', 'Unit', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(314, NULL, '020953', 'Retaining Wall', 'M2', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(315, NULL, '020954', 'Gardu PLN', 'Unit', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(316, NULL, '021001', NULL, 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(317, NULL, '021002', NULL, 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(318, NULL, '021003', NULL, 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(319, NULL, '021101', NULL, 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(320, NULL, '021201', NULL, 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(321, NULL, '030101', 'Plumbing', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(322, NULL, '030102', 'Fire Fighter', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(323, NULL, '030103', 'HVAC', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(324, NULL, '030104', 'Lift', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(325, NULL, '030105', 'Gondola', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(326, NULL, '030106', 'STP', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(327, NULL, '030107', 'Deep Wall', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(328, NULL, '030201', 'Listrik', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(329, NULL, '030202', 'Genset', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(330, NULL, '030203', 'Bas', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(331, NULL, '030204', 'Fire Alarm', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(332, NULL, '030205', 'Sound System', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(333, NULL, '030206', 'Telephone', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(334, NULL, '030207', 'MATV', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(335, NULL, '030208', 'CCTV', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(336, NULL, '030209', 'Security System', 'Ls', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(337, NULL, '040101', 'Material Utama', 'Kg', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(338, NULL, '040102', 'Stock', 'Kg', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(339, NULL, '040103', 'Mat. Scrap', 'Kg', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(340, NULL, '040201', 'Angkur Bolt', 'Bh', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(341, NULL, '040202', 'A325', 'Bh', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(342, NULL, '040203', 'UNC/A307', 'Bh', 'ENABLE', '2019-01-24 06:21:44', NULL, NULL),
(343, NULL, '040204', 'Turn Buckle', 'Bh', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(344, NULL, '040205', 'Dinabolt/Studbolt/Trubolt', 'Bh', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(345, NULL, '040206', 'Chemical Anchor', 'Ttk', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(346, NULL, '040207', 'Ringging Point', 'Set', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(347, NULL, '040208', 'Lighting Hanging', 'Set', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(348, NULL, '040209', 'Sub Material Lain-lain', 'Ls', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(349, NULL, '040211', 'Shear Connentor', 'Bh', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(350, NULL, '040301', 'Upah Fabrikasi', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(351, NULL, '040302', 'Packing Fabrikasi', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(352, NULL, '040303', 'Consumable Fabrikasi', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(353, NULL, '040304', 'Testing Pengelasan', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(354, NULL, '040305', 'Variable Cost', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(355, NULL, '040306', 'Fabrikasi Fix', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(356, NULL, '040307', 'Outsourching', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(357, NULL, '040308', 'Bending', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(358, NULL, '040309', 'Galvanis', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(359, NULL, '040311', 'Trial', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(360, NULL, '040312', 'Unloading', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(361, NULL, '040401', 'Cat Primer', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(362, NULL, '040402', 'Cat Finish', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(363, NULL, '040403', 'Thinner', 'Ltr', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(364, NULL, '040404', 'Wirebrush', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(365, NULL, '040405', 'Sweep Blast', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(366, NULL, '040406', 'Power Tool', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(367, NULL, '040407', 'Cat Undercoat', 'Ltr', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(368, NULL, '040408', 'Solar Painting (WSC)', 'Ltr', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(369, NULL, '040409', 'Blast Clean', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(370, NULL, '040501', 'Transportasi ke Site', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(371, NULL, '040502', 'Transportasi Material Import', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(372, NULL, '040503', 'Transportasi Rolled Pipa', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(373, NULL, '040601', 'Upah Erection', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(374, NULL, '040602', 'Tools Erection', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(375, NULL, '040603', 'Consumable Erection', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(376, NULL, '040604', 'Safety', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(377, NULL, '040605', 'Crane+BBM', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(378, NULL, '040606', 'Supervisor', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(379, NULL, '040607', 'Site Expanse', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(380, NULL, '040608', 'Kebersihan', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(381, NULL, '040609', 'Upah Cat Finish Lapangan', 'Kg', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(382, NULL, '040611', 'Steel Deck', 'M2', 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(383, NULL, '040701', 'Cadangan', NULL, 'ENABLE', '2019-01-24 06:21:45', NULL, NULL),
(384, NULL, '050101', 'Tower Crane', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(385, NULL, '050102', 'Crawler Crane/Mobile Crane', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(386, NULL, '050103', 'Alimak', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(387, NULL, '050104', 'Passanger Hoist', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(388, NULL, '050105', 'Concrete Hoist', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(389, NULL, '050106', 'Concrete Pump', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(390, NULL, '050107', 'Concrete Mixer', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(391, NULL, '050108', 'Concrete Vibrator Engine', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(392, NULL, '050109', 'Concrete Vibrator Elektrik', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(393, NULL, '050111', 'Concrete Breaker', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(394, NULL, '050112', 'Gondola', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(395, NULL, '050113', 'Excavator/Loader', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(396, NULL, '050114', 'Truck-Pick up-Dumptruck', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(397, NULL, '050115', 'Road Roller', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(398, NULL, '050116', 'Baby Roller', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(399, NULL, '050117', 'Stamper', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(400, NULL, '050118', 'Kompressor', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(401, NULL, '050119', 'Compactor', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(402, NULL, '050121', 'Generator/Genset', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(403, NULL, '050122', 'Water Pump', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(404, NULL, '050123', 'Mesin Las', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(405, NULL, '050124', 'Mesin Bor', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(406, NULL, '050125', 'Mesin Gerinda', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(407, NULL, '050126', 'Mesin Serut', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(408, NULL, '050127', 'Bar Cutter', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(409, NULL, '050128', 'Bar Bender', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(410, NULL, '050129', 'Scaffolding ', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(411, NULL, '050131', 'Water Pass', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(412, NULL, '050132', 'Auto Level', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(413, NULL, '050133', 'Total Station', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(414, NULL, '050134', 'Power Trowel', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(415, NULL, '050135', 'Dozer', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(416, NULL, '050136', 'Conveyor', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(417, NULL, '050137', 'Dumper', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(418, NULL, '050138', 'Passenger Lift', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(419, NULL, '050139', 'Fork Lift', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(420, NULL, '050141', 'Jack Hammer', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(421, NULL, '050142', 'Cutting Wheel', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(422, NULL, '050143', 'Cutting Machine', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(423, NULL, '050144', 'Cutting Torch', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(424, NULL, '050145', 'Cutting Wall', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(425, NULL, '050146', 'Jet Spray Engine', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(426, NULL, '050147', 'Bahan Bakar Peralatan', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(427, NULL, '050148', ' Bucket cor / Tremie', 'Ls', 'ENABLE', '2019-01-24 06:21:46', NULL, NULL),
(428, NULL, '050149', 'Concrete Cutter', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(429, NULL, '050151', 'Mob Demob Alat', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(430, NULL, '050152', 'Jet Washer', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(431, NULL, '060101', 'Gaji, THR, Bonus, Pajak Karyawan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(432, NULL, '060102', 'Jamuan Makan Lembur/UM Luar Kota', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(433, NULL, '060103', 'Lemburan/Hari Libur', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(434, NULL, '060104', 'Pengobatan Karyawan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(435, NULL, '060105', 'Mob Demob Karyawan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(436, NULL, '060106', 'Seragam ', 'Bh', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(437, NULL, '060107', 'Fasilitas Lain-lain', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(438, NULL, '060108', 'Sewa Mess Karyawan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(439, NULL, '060109', 'Keperluan Mess Karyawan (Incl. Perabotan Mess)', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(440, NULL, '060111', 'Gaji K3 (incl. Lembur)', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(441, NULL, '060112', 'Gaji Security (incl. Lembur)', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(442, NULL, '060113', 'Seragam + Perlengkapan Security', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(443, NULL, '060114', 'Expatriate', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(444, NULL, '060115', 'Peninjauan Pusat', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(445, NULL, '060116', 'Jamsostek Karyawan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(446, NULL, '060117', 'PPh 21 Karyawan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(447, NULL, '060201', 'ATK & Administrasi', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(448, NULL, '060202', 'As Built Drawing', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(449, NULL, '060203', 'Ekspedisi + Import Barang', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(450, NULL, '060204', 'Telpon & Fax', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(451, NULL, '060205', 'Voucher HP', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(452, NULL, '060206', 'Pulsa Internet', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(453, NULL, '060207', 'HT', 'Bh', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(454, NULL, '060208', 'Kendaraan Umum Proyek + Retribusi +BBM', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(455, NULL, '060209', 'Perijinan dan Instalasi PLN', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(456, NULL, '060211', 'Direksi Proyek (MK + Owner)', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(457, NULL, '060212', 'Selamatan-Peresmian Proyek', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(458, NULL, '060213', 'Biaya Kordinasi Aparat dan Lingkungan', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(459, NULL, '060214', 'Sumbangan Proyek', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(460, NULL, '060215', 'Sewa Mesin Fotocopy', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(461, NULL, '060216', 'Konsumsi', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(462, NULL, '060217', 'ID card+Rompi', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(463, NULL, '060218', 'Perjalanan Dinas', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(464, NULL, '060219', 'Panel ', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(465, NULL, '060221', 'Lampu Penerangan', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(466, NULL, '060222', 'Perlengkapan ME', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(467, NULL, '060223', 'MCB', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(468, NULL, '060224', 'Buang Sampah', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(469, NULL, '060225', 'Tes Rebar/Besi', 'Bh', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(470, NULL, '060226', 'Tes Beton', 'Bh', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(471, NULL, '060227', 'Tes CBR', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(472, NULL, '060228', 'Tips Supir Mixer/Teknisi', 'Bln', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(473, NULL, '060229', 'Asuransi Jamsostek', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(474, NULL, '060231', 'Biaya Provisi Bank Garansi', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(475, NULL, '060232', 'Biaya Umum Lain-lain', 'Ls', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(476, NULL, '060301', 'Direksi Keet (incl. MK dan Gudang)', 'M2', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(477, NULL, '060302', 'Bedeng Pekerja & Los Pekerja', 'M2', 'ENABLE', '2019-01-24 06:21:47', NULL, NULL),
(478, NULL, '060303', 'Mob Demob Pekerja', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(479, NULL, '060304', 'Pos Jaga/Menara Jaga', 'M2', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(480, NULL, '060305', 'Rumah Genset', 'M2', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(481, NULL, '060306', 'Jembatan Sementara', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(482, NULL, '060307', 'Jalan Sementara', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(483, NULL, '060308', 'Pagar Sementara', 'M''', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(484, NULL, '060309', 'Saluran Sementara', 'M''', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(485, NULL, '060311', 'Air Kerja', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(486, NULL, '060312', 'Perbaikan Lingkungan', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(487, NULL, '060313', 'Papan Nama Proyek/Logo Perusahaan', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(488, NULL, '060314', 'Bongkar Bangunan Lama', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(489, NULL, '060315', 'Angkutan Material', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(490, NULL, '060316', 'Pembersihan', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(491, NULL, '060317', 'Alat Bantu Kerja ', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(492, NULL, '060318', 'Test dan Penyelidikan', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(493, NULL, '060319', 'Pekerjaan Bouwplank', 'M''', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(494, NULL, '060321', 'Penurunan Material', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(495, NULL, '060401', 'Helm', 'Bh', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(496, NULL, '060402', 'Sepatu Safety', 'Bh', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(497, NULL, '060403', 'Sepatu Rubber', 'Bh', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(498, NULL, '060404', 'Perlengkapan Safety', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(499, NULL, '060405', 'P3K', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(500, NULL, '060406', 'Pengobatan Tenaga Kerja', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(501, NULL, '060407', 'Safety Line/Sign', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(502, NULL, '060408', 'Safety Lain-lain', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(503, NULL, '060501', 'Inventaris Alat Kerja', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(504, NULL, '060502', 'Inventaris Perabotan Kantor', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(505, NULL, '060503', 'Inventaris Perabotan Mess', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(506, NULL, '060504', 'Inventaris Perangkat Elektronik', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(507, NULL, '060601', 'Biaya Survey dll Prapelaksanaan', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(508, NULL, '060602', 'Design / Redesign', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(509, NULL, '060603', 'Penyelesaian kontrak', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(510, NULL, '060604', 'Pengurusan Termyn', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(511, NULL, '060605', 'Masa Pemeliharaan', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(512, NULL, '060606', 'Fee Koordinasi', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(513, NULL, '070101', 'Provisi Tender Bond', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(514, NULL, '070102', 'Provisi Performance Bond   5 %', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(515, NULL, '070103', 'Provisi Advance Payment bond  2.1/2 %', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(516, NULL, '070104', 'Bunga Modal', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(517, NULL, '070105', 'Pinjaman/Kasbon', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(518, NULL, '070105A', 'Kasbon Mandor Proyek', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(519, NULL, '070106', 'Uang Muka', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(520, NULL, '070107', 'PPN ', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(521, NULL, '070108', 'PPh', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(522, NULL, '070109', 'Retensi', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(523, NULL, '070111', 'Selisih Kurs', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(524, NULL, '070112', 'PPh Owner', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(525, NULL, '070113', 'Pinjaman/Kasbon Logistik', 'Ls', 'ENABLE', '2019-01-24 06:21:48', NULL, NULL),
(526, '010000', '010000', 'STRUKTUR', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(527, '010100', '010100', 'TANAH', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(528, '010200', '010200', 'PONDASI', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(529, '010300', '010300', 'PEKERJAAN BEKISTING', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(530, '010400', '010400', 'PEKERJAAN BESI', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(531, '010500', '010500', 'PEKERJAAN BETON', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(532, '020000', '020000', 'ARSITEKTUR', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(533, '020100', '020100', 'DINDING/LANTAI', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(534, '020200', '020200', 'PLAFOND', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(535, '020300', '020300', 'ATAP', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(536, '020400', '020400', 'KUSEN, PINTU & JENDELA', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(537, '020500', '020500', 'CAT', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(538, '020600', '020600', 'SANITAIR', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(539, '020700', '020700', 'PELINDUNG', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(540, '020800', '020800', 'PELENGKAP', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(541, '020900', '020900', 'SARANA LUAR', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(542, '021000', '021000', 'REPAIR & REWORK', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(543, '030000', '030000', 'M/E', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(544, '030100', '030100', 'MECHANICAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(545, '030200', '030200', 'ELEKTRIKAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(546, '040000', '040000', 'BAJA', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(547, '040100', '040100', 'MATERIAL UTAMA', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(548, '040200', '040200', 'SUB MATERIAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(549, '040300', '040300', 'FABRIKASI', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(550, '040400', '040400', 'PAINTING', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(551, '040500', '040500', 'TRANSPORTASI', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(552, '040600', '040600', 'ERECTION', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(553, '050000', '050000', 'PERALATAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(554, '050100', '050100', 'ALAT BERAT', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(555, '060000', '060000', 'PRELIMINARIES/OVERHEAD', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(556, '060100', '060100', 'KARYAWAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(557, '060200', '060200', 'UMUM LAPANGAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(558, '060300', '060300', 'BIAYA PERSIAPAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(559, '060400', '060400', 'BIAYA SAFETY', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(560, '060500', '060500', 'BIAYA INVENTARIS', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL);
INSERT INTO `cost_code` (`id`, `kode_kategori`, `kode_costcontrol`, `deskripsi`, `uom`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(561, '060600', '060600', 'LAIN-LAIN PRA-AKHIR PROYEK', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(562, '070000', '070000', 'KEUANGAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(563, '070100', '070100', 'KEUANGAN LAIN-LAIN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(564, '080000', '080000', 'COMMITED COST', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(565, '080100', '080100', 'COMMITED COST - MATERIAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(566, '080200', '080200', 'COMMITED COST - UPAH', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(567, '021100', '021100', 'CADANGAN SIPIL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(568, '040700', '040700', 'CADANGAN BAJA', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(569, '021200', '021200', 'PROVISIONAL SUM', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(570, '090000', '090000', 'MATERIAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(571, '090100', '090100', 'MATERIAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(572, '100000', '100000', 'WORKSHOP', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(573, '100100', '100100', 'WSC - PRELIMINARIES', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(574, '100200', '100200', 'WSC - MATERIAL', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(575, '100300', '100300', 'WSC - SUBKON', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(576, '100400', '100400', 'WSC - PERALATAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL),
(577, '100500', '100500', 'WSC - KEUANGAN', 'Ls', 'ENABLE', '2019-05-28 14:40:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_dnd`
--

CREATE TABLE IF NOT EXISTS `customer_dnd` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `urutan` int(50) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;

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
(43, '6950c16c9bcc6995f376b297f163175921106.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175921106.jpg', 'user', 12, 'ENABLE', '2018-11-05 11:15:57', NULL),
(46, '', '', '', 'user', 24, 'ENABLE', '2019-01-22 13:51:27', NULL),
(47, '', '', '', 'user', 25, 'ENABLE', '2019-02-18 16:14:44', NULL),
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
(186, '', '', '', 'customer', 16, 'ENABLE', '2019-10-15 09:58:06', NULL),
(187, '', '', '', 'master_siswa', 1, 'ENABLE', '2020-01-07 10:20:59', NULL),
(188, '', '', '', 'pembayaran_spp', 1, 'ENABLE', '2020-01-07 11:10:34', NULL),
(189, '', '', '', 'master_siswa', 2, 'ENABLE', '2020-01-07 11:11:46', NULL),
(190, '', '', '', 'pembayaran_spp', 3, 'ENABLE', '2020-01-07 11:13:11', NULL),
(191, '6950c16c9bcc6995f376b297f163175918635.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175918635.jpg', 'pembayaran_spp', 2, NULL, NULL, '2020-01-07 11:54:15'),
(192, '', '', '', 'master_siswa', 3, 'ENABLE', '2020-01-07 13:32:40', NULL),
(193, '', '', '', 'pembayaran_spp', 4, 'ENABLE', '2020-01-07 13:33:01', NULL),
(194, '', '', '', 'pembayaran_spp', 0, 'ENABLE', '2020-01-07 13:33:15', NULL),
(195, '', '', '', 'master_kelas', 1, 'ENABLE', '2020-01-10 09:29:17', NULL),
(196, '', '', '', 'master_kelas', 2, 'ENABLE', '2020-01-10 09:29:21', NULL),
(197, '', '', '', 'master_kelas', 3, 'ENABLE', '2020-01-10 09:29:26', NULL),
(198, '', '', '', 'master_kategori_agenda', 1, 'ENABLE', '2020-02-06 18:46:20', NULL),
(199, '', '', '', 'master_kategori_agenda', 2, 'ENABLE', '2020-02-06 18:46:28', NULL),
(200, '', '', '', 'master_kategori_agenda', 3, 'ENABLE', '2020-02-06 18:46:43', NULL),
(201, '', '', '', 'master_agenda_role', 1, 'ENABLE', '2020-02-06 18:47:33', NULL),
(202, '', '', '', 'master_agenda_role', 2, 'ENABLE', '2020-02-06 18:47:43', NULL),
(203, '', '', '', 'master_agenda_role', 3, 'ENABLE', '2020-02-06 18:48:01', NULL),
(204, '', '', '', 'master_agenda_role', 4, 'ENABLE', '2020-02-06 18:48:12', NULL),
(205, '', '', '', 'master_agenda_role', 5, 'ENABLE', '2020-02-06 18:48:26', NULL),
(206, '', '', '', 'master_agenda_role', 6, 'ENABLE', '2020-02-06 18:48:37', NULL),
(207, '', '', '', 'master_agenda_role', 7, 'ENABLE', '2020-02-06 18:49:00', NULL),
(208, '', '', '', 'master_agenda_role', 8, 'ENABLE', '2020-02-06 18:49:24', NULL),
(209, '', '', '', 'master_agenda_role', 9, 'ENABLE', '2020-02-06 18:49:35', NULL),
(210, '', '', '', 'master_agenda_role', 10, 'ENABLE', '2020-02-06 18:49:44', NULL),
(211, '', '', '', 'master_agenda_role', 11, 'ENABLE', '2020-02-06 18:49:55', NULL),
(212, '', '', '', 'user', 14, 'ENABLE', '2020-02-07 14:04:54', NULL),
(213, '', '', '', 'user', 15, 'ENABLE', '2020-02-07 14:05:28', NULL),
(214, '', '', '', 'user', 16, 'ENABLE', '2020-02-07 14:06:25', NULL),
(215, '', '', '', 'user', 17, 'ENABLE', '2020-02-07 14:07:19', NULL),
(216, '', '', '', 'user', 18, 'ENABLE', '2020-02-07 14:07:47', NULL),
(217, '', '', '', 'user', 19, 'ENABLE', '2020-02-07 14:08:07', NULL),
(218, '', '', '', 'user', 20, 'ENABLE', '2020-02-07 14:08:30', NULL),
(219, '', '', '', 'master_agenda', 1, 'ENABLE', '2020-02-07 14:29:06', NULL),
(220, '', '', '', 'master_status', 1, 'ENABLE', '2020-02-17 14:47:01', NULL),
(221, '', '', '', 'master_status', 2, 'ENABLE', '2020-02-17 14:47:13', NULL),
(222, '', '', '', 'master_status', 3, 'ENABLE', '2020-02-17 14:47:22', NULL),
(223, '', '', '', 'master_status', 4, 'ENABLE', '2020-02-17 14:47:27', NULL),
(224, '', '', '', 'master_priority', 1, 'ENABLE', '2020-02-17 14:47:35', NULL),
(225, '', '', '', 'master_priority', 2, 'ENABLE', '2020-02-17 14:47:40', NULL),
(226, '', '', '', 'master_kategori', 1, 'ENABLE', '2020-02-17 14:48:12', NULL),
(227, '', '', '', 'master_kategori', 2, 'ENABLE', '2020-02-17 14:48:27', NULL),
(228, '', '', '', 'master_kategori', 3, 'ENABLE', '2020-02-17 14:49:07', NULL),
(229, '', '', '', 'master_kategori', 4, 'ENABLE', '2020-02-17 14:49:40', NULL),
(230, '', '', '', 'master_kategori', 5, 'ENABLE', '2020-02-17 14:49:58', NULL),
(231, '', '', '', 'master_group_head_pic', 1, 'ENABLE', '2020-02-17 14:50:38', NULL),
(232, '', '', '', 'master_group_head_pic', 2, 'ENABLE', '2020-02-17 14:50:44', NULL),
(233, '', '', '', 'master_group_head_pic', 3, 'ENABLE', '2020-02-17 14:51:07', NULL),
(234, '', '', '', 'master_group_head_pic', 4, 'ENABLE', '2020-02-17 14:51:16', NULL),
(235, '', '', '', 'master_group_head_pic', 5, 'ENABLE', '2020-02-17 14:51:35', NULL),
(236, '', '', '', 'master_group', 1, 'ENABLE', '2020-02-17 16:03:46', NULL),
(237, '', '', '', 'master_group', 2, 'ENABLE', '2020-02-17 16:03:53', NULL),
(238, '', '', '', 'user', 21, 'ENABLE', '2020-02-17 22:10:15', NULL),
(239, '', '', '', 'user', 22, 'ENABLE', '2020-02-17 22:34:13', NULL),
(240, '', '', '', 'user', 23, 'ENABLE', '2020-02-17 22:34:54', NULL),
(241, '', '', '', 'user', 24, 'ENABLE', '2020-02-17 22:35:24', NULL),
(242, '', '', '', 'master_kode_rekening', 1, 'ENABLE', '2020-03-04 09:31:16', NULL),
(243, '', '', '', 'master_kode_rekening', 2, 'ENABLE', '2020-03-04 09:31:24', NULL),
(244, '', '', '', 'master_kode_rekening', 3, 'ENABLE', '2020-03-04 09:31:38', NULL),
(245, '', '', '', 'master_kode_rekening_sub', 1, 'ENABLE', '2020-03-04 09:31:51', NULL),
(246, '', '', '', 'master_kode_rekening_sub', 2, 'ENABLE', '2020-03-04 09:31:55', NULL),
(247, '', '', '', 'master_kode_rekening_sub', 3, 'ENABLE', '2020-03-04 09:32:09', NULL),
(248, '', '', '', 'master_kode_rekening_sub', 4, 'ENABLE', '2020-03-04 09:32:20', NULL),
(249, '', '', '', 'master_kode_rekening_sub', 5, 'ENABLE', '2020-03-04 09:32:31', NULL),
(250, '', '', '', 'master_jurnal_sub', 1, 'ENABLE', '2020-03-04 10:30:54', NULL),
(251, '', '', '', 'master_jurnal_sub', 2, 'ENABLE', '2020-03-04 10:32:07', NULL),
(252, '', '', '', 'master_desa', 1, 'ENABLE', '2020-03-17 18:11:03', NULL),
(253, '', '', '', 'master_desa', 2, 'ENABLE', '2020-03-17 18:11:10', NULL),
(254, '', '', '', 'master_jenis_sampah', 1, 'ENABLE', '2020-03-17 18:11:50', NULL),
(255, '', '', '', 'master_jenis_sampah', 2, 'ENABLE', '2020-03-17 18:11:57', NULL),
(256, '', '', '', 'master_jenis_sampah', 3, 'ENABLE', '2020-03-17 18:12:02', NULL),
(257, '', '', '', 'master_jenis_sampah_sub', 1, 'ENABLE', '2020-03-17 18:12:22', NULL),
(258, '', '', '', 'master_jenis_sampah_sub', 2, 'ENABLE', '2020-03-17 18:12:26', NULL),
(259, '', '', '', 'master_jenis_sampah_sub', 3, 'ENABLE', '2020-03-17 18:13:36', NULL),
(260, '', '', '', 'master_jenis_sampah_sub', 4, 'ENABLE', '2020-03-17 18:13:47', NULL),
(261, '', '', '', 'master_jenis_sampah_sub', 5, 'ENABLE', '2020-03-17 18:14:04', NULL),
(262, '', '', '', 'master_jenis_sampah_sub', 6, 'ENABLE', '2020-03-17 18:14:16', NULL),
(263, '', '', '', 'sampah', 1, 'ENABLE', '2020-03-17 18:27:17', NULL),
(264, '', '', '', 'user', 13, 'ENABLE', '2020-03-18 00:53:14', NULL),
(265, '', '', '', 'user', 14, 'ENABLE', '2020-03-18 00:54:09', NULL),
(266, '', '', '', 'user', 15, 'ENABLE', '2020-03-18 01:39:29', NULL),
(267, '', '', '', 'user', 16, 'ENABLE', '2020-03-18 12:28:51', NULL),
(268, '', '', '', 'sampah', 2, 'ENABLE', '2020-03-18 12:47:25', NULL),
(269, '', '', '', 'user', 17, 'ENABLE', '2020-03-18 12:52:04', NULL),
(270, '', '', '', 'user', 18, 'ENABLE', '2020-03-18 12:55:10', NULL),
(271, '', '', '', 'user', 19, 'ENABLE', '2020-03-18 12:55:32', NULL),
(272, '', '', '', 'user', 20, 'ENABLE', '2020-03-18 12:58:03', NULL),
(273, '', '', '', 'sampah', 3, 'ENABLE', '2020-03-18 12:58:19', NULL),
(274, '', '', '', 'master_satuan', 1, 'ENABLE', '2020-04-02 09:27:43', NULL),
(275, '', '', '', 'master_satuan', 2, 'ENABLE', '2020-04-02 09:27:48', NULL),
(276, '', '', '', 'master_satuan', 3, 'ENABLE', '2020-04-02 09:27:54', NULL),
(277, '', '', '', 'master_barang', 1, 'ENABLE', '2020-04-02 09:28:08', NULL),
(278, '', '', '', 'master_barang', 2, 'ENABLE', '2020-04-02 09:28:13', NULL),
(279, '', '', '', 'master_barang', 3, 'ENABLE', '2020-04-02 09:28:23', NULL),
(280, '', '', '', 'master_proyek', 1, 'ENABLE', '2020-04-03 10:08:26', NULL),
(281, '', '', '', 'master_proyek', 2, 'ENABLE', '2020-04-03 10:08:37', NULL),
(282, '6950c16c9bcc6995f376b297f163175936554.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175936554.docx', 'permintaan_barang', 3, 'ENABLE', '2020-04-03 10:23:52', NULL),
(283, '', '', '', 'permintaan_barang', 4, 'ENABLE', '2020-04-03 10:35:15', NULL),
(284, '', '', '', 'master_barang', 4, 'ENABLE', '2020-04-03 10:52:30', NULL),
(285, '', '', '', 'master_barang', 5, 'ENABLE', '2020-04-03 10:52:48', NULL),
(286, '', '', '', 'master_barang', 6, 'ENABLE', '2020-04-03 10:53:12', NULL),
(287, '6950c16c9bcc6995f376b297f163175975009.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175975009.docx', 'permintaan_barang', 5, 'ENABLE', '2020-04-03 10:54:15', NULL),
(288, '', '', '', 'master_persyaratan', 1, 'ENABLE', '2020-04-03 10:59:35', NULL),
(289, '', '', '', 'master_persyaratan', 2, 'ENABLE', '2020-04-03 10:59:46', NULL),
(290, '', '', '', 'master_persyaratan', 3, 'ENABLE', '2020-04-03 10:59:57', NULL),
(291, '', '', '', 'master_persyaratan', 4, 'ENABLE', '2020-04-03 11:00:08', NULL),
(292, '', '', '', 'permintaan_barang', 6, 'ENABLE', '2020-04-03 11:09:25', NULL),
(293, '', '', '', 'master_proyek', 3, 'ENABLE', '2020-04-03 13:15:47', NULL),
(294, '', '', '', 'master_uom', 1, 'ENABLE', '2020-04-09 08:41:07', NULL),
(295, '', '', '', 'master_uom', 2, 'ENABLE', '2020-04-09 08:41:07', NULL),
(296, '', '', '', 'master_uom', 3, 'ENABLE', '2020-04-09 08:41:30', NULL),
(297, '', '', '', 'master_uom', 4, 'ENABLE', '2020-04-09 08:41:39', NULL),
(298, '', '', '', 'master_uom', 5, 'ENABLE', '2020-04-09 08:41:45', NULL),
(299, '', '', '', 'master_uom', 6, 'ENABLE', '2020-04-09 08:42:15', NULL),
(300, '', '', '', 'master_uom', 7, 'ENABLE', '2020-04-09 08:42:24', NULL),
(301, '', '', '', 'master_uom', 8, 'ENABLE', '2020-04-09 08:42:44', NULL),
(302, '', '', '', 'master_uom', 9, 'ENABLE', '2020-04-09 08:43:10', NULL),
(303, '', '', '', 'master_uom', 10, 'ENABLE', '2020-04-09 08:43:19', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grafik`
--

CREATE TABLE IF NOT EXISTS `grafik` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(12) NOT NULL,
  `path` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `keys` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '35d3d08c3d7b7f445ceb8e726a87b26c', '0', '0', '0', '123', '2017-10-12 13:34:33', 'ENABLE', NULL, '2019-02-18 17:04:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfig`
--

CREATE TABLE IF NOT EXISTS `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'E-Surat Permintaan', 'ENABLE', '2019-02-18 15:28:44', '2019-10-01 11:18:04'),
(7, 'LOGO', 'https://www.karyastudio.com/assets/images/logos/favicon.png', 'ENABLE', '2019-02-18 15:29:32', '2019-10-22 11:47:44'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(''https://images.pexels.com/photos/434337/pexels-photo-434337.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2020 <a href="#" target="_blank">PT Jagat Kontruksi</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-black', 'ENABLE', '2019-02-18 15:34:01', '2019-05-01 09:53:50'),
(13, 'TITLE_APPLICATION', 'E-SPB', 'ENABLE', '2019-02-18 15:39:54', NULL),
(14, 'APPLICATION_SMALL', 'E-SPB', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'E-SPB', 'ENABLE', '2019-02-18 15:47:41', NULL),
(17, 'LOGIN_TITLE', '', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '0', 'ENABLE', '2019-02-21 14:12:14', '2019-02-21 16:33:07'),
(25, 'email-template', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n\r\n<head>\r\n    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n    <meta name="viewport" content="width=device-width" />\r\n\r\n\r\n    <style type="text/css">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: ''Avenir Next'', "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class="body-wrap">\r\n        <tr>\r\n            <td class="container">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align="center" class="masthead">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class="content">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align="center">\r\n                                        <p>\r\n                                            <a href="#" class="button">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you''re wondering where you can find more of this fine meaty filler, visit <a href="http://baconipsum.com">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class="container">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class="content footer" align="center">\r\n                            <p>Sent by <a href="#">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href="mailto:">hello@company.com</a> | <a href="#">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL),
(26, 'FAVICON', 'https://www.karyastudio.com/assets/images/logos/favicon.png', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfig_email`
--

CREATE TABLE IF NOT EXISTS `konfig_email` (
  `ke_id` int(11) NOT NULL,
  `ke_slug` varchar(500) NOT NULL,
  `ke_content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `logs` (
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(12, 'api/example/users/1', 'get', 'a:13:{s:2:"id";s:1:"1";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"b95151e2-01cb-48b0-fc71-74788b971014";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426798, 1549430000, '1', 400),
(13, 'api/example/users/1', 'get', 'a:13:{s:2:"id";s:1:"1";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"da6c7ebc-d468-82cd-b107-a43b223e3229";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426847, 1549430000, '1', 400),
(14, 'api/example/users', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"295384ee-de46-448a-ee33-5da93f0ee6d3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426895, 1549430000, '1', 200),
(15, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"9463f032-7a0c-d92f-b412-4fe3b0e3283d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426900, 1549430000, '1', 400),
(16, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"466fe8da-8fb3-03e6-9281-d0d53ff867b5";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426910, 1549430000, '1', 400),
(17, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"a4353c0f-ae54-9d99-82b9-3952449d6589";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426923, 1549430000, '1', 400),
(18, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"4b9ec719-7307-81d5-7700-cc52c1882174";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426931, 1549430000, '1', 400),
(19, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"1a9c3d5a-3eea-1ea0-192d-69d8b0d3bd7e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426934, 1549430000, '1', 400),
(20, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"faf745f8-86a1-6571-45a1-1d5c705857e3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426935, 1549430000, '1', 400),
(21, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"d66bf86e-f241-d6bc-59a8-53e219895de5";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426936, 1549430000, '1', 400),
(22, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"8d1e6190-f1ee-732f-0712-9b86f649431a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426958, 1549430000, '1', 400),
(23, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"d947680b-21bb-f0d0-cb14-816ffd6557e6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426959, 1549430000, '1', 400),
(24, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"196ad13d-5766-c800-4cc0-6521f1f0a5fa";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426967, 1549430000, '1', 400),
(25, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"aa627fb0-cd37-f6b7-1353-a00ab4db601f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426968, 1549430000, '1', 400),
(26, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"5cd4e253-2ef5-0abe-87fd-1c70c0b74460";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426978, 1549430000, '1', 400),
(27, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"313f78a7-c82e-0686-8762-b874535cdcbf";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427000, 1549430000, '1', 400),
(28, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"465eac17-0ecf-a742-60c1-d1bb5aad672c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427018, 1549430000, '1', 400),
(29, 'api/example/users/24', 'get', 'a:13:{s:2:"id";s:2:"24";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"b1a5d762-4c11-9bf5-3a0f-c672375a4477";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427058, 1549430000, '1', 200),
(30, 'api/example/users', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"bc6fbf72-1adf-b4ba-a316-5b75ea6b1cb9";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427061, 1549430000, '1', 200),
(31, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"541c15c3-9e59-a3ec-6a6c-65e6eee16eda";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427100, 1549430000, '1', 200),
(32, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"4ea9e5cc-a4c2-710e-9f72-f921bcd470f7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427157, 1549430000, '1', 200),
(33, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"c58bbf9d-48fe-4890-0e5a-87c7d21f1bcb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427166, 1549430000, '1', 200),
(34, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"a864cc0c-2540-09b1-c9e4-15a3c7791f89";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427177, 1549430000, '1', 200),
(35, 'api/example/users', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"97063f8c-c173-d733-e5b1-eb36b50c6717";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427200, 1549430000, '1', 200),
(36, 'api/example/services', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"d74b25e0-c53c-1b24-ee1e-a456ca5e754a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428325, 1549430000, '1', 0),
(37, 'api/example/services', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"2dcb425a-4947-898b-1c78-91cda05e66a3";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428345, 1549430000, '1', 404),
(38, 'api/example/services', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"ad64360f-e0c5-ec3c-3da3-c50b37fbef7f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428370, 1549430000, '1', 404),
(39, 'api/example/services', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"7c2b7aba-7f85-deed-d309-3d825769427e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428382, 1549430000, '1', 404),
(40, 'api/example/services', 'post', 'a:17:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:3:"337";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"a927b74d-cc4b-7215-9fdd-f3592820fcb0";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:12:"Content-Type";s:68:"multipart/form-data; boundary=----WebKitFormBoundarymV0NNVKnF6IL7z29";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:5:"title";s:3:"tes";s:4:"date";s:10:"2019-01-01";s:7:"content";s:3:"ini";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428413, 1549430000, '1', 200),
(41, 'api/example/services', 'put', 'a:18:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"43";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"612f28dc-dc61-b57a-c9c0-69a5a8262b98";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:5:"title";s:4:"tesa";s:4:"date";s:10:"2019-01-01";s:7:"content";s:3:"ini";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428448, 1549430000, '1', 200),
(42, 'api/example/services-enable', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"391bbf12-fd99-4e28-7fc5-6496dc491b0c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428468, 1549430000, '1', 200),
(43, 'api/example/services-disable', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"d5cbf18b-d9b5-f44d-c232-f84cc4d11db2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428472, 1549430000, '1', 200),
(44, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"16344db9-d25f-e334-9651-333d7e88314e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428480, 1549430000, '1', 200),
(45, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"caef2b39-8710-18ca-6ce5-4fe6b70992a0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428655, 1549430000, '1', 404),
(46, 'api/example/services/1', 'get', 'a:15:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"5c1fc3d5-e1a0-32d4-5577-0da8790112ac";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428659, 1549430000, '1', 404),
(47, 'api/example/services/0', 'get', 'a:15:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"b65e8ad4-2781-d95d-de2c-4c8e8aa447fc";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428662, 1549430000, '1', 404),
(48, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"b6e9a137-e2d0-9180-a433-6216c066a468";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428677, 1549430000, '1', 404),
(49, 'api/example/services/a', 'get', 'a:14:{s:1:"a";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"72518478-f719-4e92-cfe4-bf027a496092";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428680, 1549430000, '1', 404),
(50, 'api/example/services/a', 'get', 'a:14:{s:1:"a";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"faff51a0-75b3-9d5f-3b80-ba00e099b484";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428682, 1549430000, '1', 404),
(51, 'api/example/services/a', 'get', 'a:14:{s:1:"a";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"f20c8e54-9446-4d38-8a0f-219f1d5a561e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428715, 1549430000, '1', 404),
(52, 'api/example/services/a', 'get', 'a:14:{s:1:"a";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"5801b626-9ea3-b456-ae32-9af94267f20c";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428717, 1549430000, '1', 404),
(53, 'api/example/services/a', 'get', 'a:14:{s:1:"a";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"43e761b9-d088-5745-33a6-e6e2c77f8e0a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428725, 1549430000, '1', 0),
(54, 'api/example/services/a', 'get', 'a:14:{s:1:"a";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"dda3a68d-329e-371a-e751-4fd11e3241e7";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428727, 1549430000, '1', 0),
(55, 'api/example/services/aa', 'get', 'a:14:{s:2:"aa";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"c960faa4-1219-26de-d6fe-b7ddc07ec486";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428729, 1549430000, '1', 0),
(56, 'api/example/services/aa', 'get', 'a:14:{s:2:"aa";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"ab82d302-2290-2edd-eb75-0771e0de4f73";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428730, 1549430000, '1', 0),
(57, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"b5495e5a-91ee-67ca-07fd-505c64ac0685";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428734, 1549430000, '1', 0),
(58, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"9923d27a-b199-e900-361a-1d6b440579a1";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428741, 1549430000, '1', 404),
(59, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"0e4e077d-2103-723e-61fb-c5ec2ee8d025";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428742, 1549430000, '1', 404),
(60, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"f47e693b-addb-43f8-7837-ab0c7793c087";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428748, 1549430000, '1', 404),
(61, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"cbbd6ccb-dc98-f683-b919-c56aa9c0e66d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428749, 1549430000, '1', 404),
(62, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"d1976171-7268-0319-2e50-4851a2fd6c22";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428786, 1549430000, '1', 200),
(63, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"fabc78b4-cc98-1a61-3131-0c44475cbcdc";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428800, 1549430000, '1', 404),
(64, 'api/example/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"1ea384ac-8306-2f85-88da-49178e8a7f0e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428801, 1549430000, '1', 404),
(65, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"ab54ff73-1a8a-cb60-b1b0-870b35536d9d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428805, 1549430000, '1', 404),
(66, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"ea261273-b754-5389-5412-58e6beb47631";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428807, 1549430000, '1', 404),
(67, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"9e35cfeb-4c7c-699b-5643-8470aca0fbcb";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428808, 1549430000, '1', 404),
(68, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"04edaf72-fcb9-e17b-2fc6-2986cbbbf741";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428815, 1549430000, '1', 200),
(69, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"2514eb50-6c21-1356-dfa9-e4eac100bf8a";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428816, 1549430000, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(70, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"be916c7e-09f8-5b25-2c50-d09787853210";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428826, 1549430000, '1', 200),
(71, 'api/example/services/disable', 'get', 'a:14:{s:7:"disable";N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"fddcff9d-7292-6c1e-ae51-0e74db0f397e";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428841, 1549430000, '1', 200),
(72, 'api/services', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"bb1329fc-8f5a-bd41-0f66-d7fe899375b6";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434763, 1549430000, '1', 404),
(73, 'api/services/disable', 'get', 'a:13:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"1e145c56-5906-ea88-a56e-a6c2bf9ae277";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434776, 1549430000, '1', 200),
(74, 'api/services', 'post', 'a:17:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:3:"340";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"003e2e9a-9dda-4605-9c78-fedc0f0a57be";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:78:"------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition:_form-data;_name";s:261:""title"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name="date"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name="content"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n";i:0;s:261:""title"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name="date"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name="content"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n";i:1;s:261:""title"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name="date"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name="content"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434796, 1549430000, '1', 200),
(75, 'api/services', 'post', 'a:17:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:3:"340";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"21a992d3-2eab-652c-dd40-fdb1b27632f2";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:12:"Content-Type";s:68:"multipart/form-data; boundary=----WebKitFormBoundaryT4EoJtBkCQ8K6lqn";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:5:"title";s:6:"tes ah";s:4:"date";s:10:"2019-01-01";s:7:"content";s:3:"ini";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434803, 1549430000, '1', 200),
(76, 'api/services/detail', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"e91f5cdb-a803-5c82-de2d-af59bdf0072b";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434820, 1549430000, '1', 200),
(77, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"da4fade1-054f-e5bc-7b3d-7bdfd6dc0890";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434823, 1549430000, '1', 200),
(78, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"216ef3d2-4d51-94bb-4a48-6947f622e27f";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434825, 1549430000, '1', 200),
(79, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"537a295c-f413-84a0-cf08-67482a6c039d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434830, 1549430000, '1', 200),
(80, 'api/services/detail', 'get', 'a:12:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"4f91ad2b-5a8b-947f-efdd-412572cc6296";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434831, 1549430000, '1', 200),
(81, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"15127d88-080d-fb1b-d526-47437f9257d2";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434849, 1549430000, '1', 200),
(82, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Postman-Token";s:36:"b2321b65-d3c7-71b6-c06c-bf8c11305996";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434851, 1549430000, '1', 200),
(83, 'api/services', 'put', 'a:18:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"47";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"d74656c0-5e25-a4c6-7237-23ef9a1ce210";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:5:"title";s:8:"tesah uh";s:4:"date";s:10:"2019-01-01";s:7:"content";s:3:"ini";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434871, 1549430000, '1', 200),
(84, 'api/services/enable/1', 'put', 'a:19:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"47";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"c2454b7a-dddb-d292-306e-ddc176572eb8";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:5:"title";s:8:"tesah uh";s:4:"date";s:10:"2019-01-01";s:7:"content";s:3:"ini";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434936, 1549430000, '1', 200),
(85, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"35291873-7622-cfd6-23b5-c0c943dddcef";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434952, 1549440000, '1', 200),
(86, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"043b2b1f-e7e5-18ca-e0de-b3efa3271808";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434970, 1549440000, '1', 200),
(87, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"6b1ddca4-8512-a1b9-382e-ebc1a7796a91";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434971, 1549440000, '1', 200),
(88, 'api/services/enable', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"d41aed32-18b4-96a0-6158-0d008a068ca1";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434990, 1549440000, '1', 200),
(89, 'api/services/enable', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"bcfb6c42-5e8e-3733-2fe7-bede9320fbd0";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435032, 1549440000, '1', 200),
(90, 'api/services/disable', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"8ba1482d-f892-55a3-293d-faadb1ceb153";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435039, 1549440000, '1', 200),
(91, 'api/services/enable', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"7bd0b329-191e-52a9-d139-a2d7c158cd13";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435046, 1549440000, '1', 200),
(92, 'api/services/delete', 'put', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"643bb8b6-7edb-359a-7151-afb177dc0837";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435056, 1549440000, '1', 200),
(93, 'api/services', 'delete', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"041e4196-2eea-aa15-bad9-20df6c9acb1d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435078, 1549440000, '1', 200),
(94, 'api/services', 'delete', 'a:15:{s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"4";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Postman-Token";s:36:"1f715e2e-ea3b-d008-56b0-946c4f5f4d53";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:45:"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6";s:6:"Cookie";s:43:"ci_session=nkv3g7akvntgcd18ur7a4k02o5pm9rv6";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435084, 1549440000, '1', 200),
(95, 'api/services', 'get', 'a:9:{s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"9eb3274b-e76d-48c9-8398-904cb2c09d56";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '', '118.136.148.201', 1550041680, 0.046937, '0', 403),
(96, 'api/services', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"fac2440a-8f8a-430b-a974-b987f96839ca";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041746, 0.03969, '1', 0),
(97, 'api/customer', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"d183c396-83d6-46f9-8625-9c7e996b1ee6";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041890, 0.0436552, '1', 404),
(98, 'api/customer', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"58030595-56be-4fbe-888c-be60f7e5563c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550042033, 0.3466, '1', 200),
(99, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7fe9cef8-cbb0-4272-80d3-f9900f4a2297";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=00p5toh62fbnfbrapstu4do5pd2m5k1g";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043293, 0.038852, '1', 200),
(100, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"08d7c7d9-094a-41ea-81ef-e36b64bc9014";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043338, 0.038234, '1', 200),
(101, 'api/customer/detail/3', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7df16ff6-d61f-4187-9c17-c5ce6167b3df";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043341, 0.0393689, '1', 200),
(102, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bd5e8835-e313-43fa-af33-d81fe9524a2b";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043345, 0.0416031, '1', 200),
(103, 'api/customer/detail', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"ad35228d-cc4d-49bc-a4bf-8cea06c5e871";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043354, 0.041436, '1', 200),
(104, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"e30dc5a1-111a-4df7-9f68-10b8a01b5d2f";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043357, 0.0402689, '1', 200),
(105, 'api/customer/index_detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"378b4b80-ba76-4700-a7f2-90843fe6d12c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043363, 0.0494442, '1', 200),
(106, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"92d2bfcb-f7c6-4a74-b267-8f7ec2c94079";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043379, 0.045403, '1', 200),
(107, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"3319eaf6-e27f-4fc8-9127-e9f085acca16";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043412, 0.040298, '1', 200),
(108, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"e5354978-963c-47d5-9011-9df26f790075";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043439, 0.0403781, '1', 404),
(109, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6f15e59e-9569-43bc-a36b-6e38d2614227";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:12:"Content-Type";s:80:"multipart/form-data; boundary=--------------------------270277143471167715971007";s:14:"Content-Length";s:3:"583";s:10:"Connection";s:10:"keep-alive";s:4:"name";s:18:"Bayu Briyan El Roy";s:5:"email";s:24:"bayubriyanelroy@gmal.com";s:5:"phone";s:12:"081230008101";s:7:"address";s:56:"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043765, 0.0433841, '1', 200),
(110, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"021b5b57-e343-4b71-8bd7-9eb0ee56608b";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:12:"Content-Type";s:80:"multipart/form-data; boundary=--------------------------241408044604135091511042";s:14:"Content-Length";s:3:"473";s:10:"Connection";s:10:"keep-alive";s:4:"name";s:0:"";s:5:"email";s:0:"";s:7:"address";s:0:"";s:5:"phone";s:0:"";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043819, 0.074012, '1', 200),
(111, 'api/customer', 'put', 'a:17:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"c7c07d35-658f-4bc5-91fe-808d684170b1";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:3:"167";s:10:"Connection";s:10:"keep-alive";s:4:"name";s:18:"Bayu Briyan El Roy";s:5:"email";s:24:"bayubriyanelroy@gmal.com";s:7:"address";s:12:"081230008101";s:5:"phone";s:56:"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048354, 0.0457339, '1', 200),
(112, 'api/customer', 'put', 'a:17:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"891707bc-ee69-4f66-9f9a-d443df828569";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:2:"33";s:10:"Connection";s:10:"keep-alive";s:7:"address";s:0:"";s:5:"phone";s:0:"";s:2:"id";s:1:"2";s:4:"name";s:0:"";s:5:"email";s:0:"";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048393, 0.0788889, '1', 200),
(113, 'api/customer', 'delete', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"20c22bab-e0ff-4ae7-93e9-1b31a76b80fe";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048516, 0.04495, '1', 400),
(114, 'api/customer', 'delete', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"c81411b7-5a9b-412d-bb50-45725d178c11";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"4";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048560, 0.0388892, '1', 200),
(115, 'api/customer', 'delete', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"26396c1a-8e8d-47f3-9602-dc03e8e12fc3";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"4";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048595, 0.0394552, '1', 404),
(116, 'api/customer', 'delete', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"ac36bcce-0e42-4a69-8308-4ede1e1f3561";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"4";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048671, 0.0670228, '1', 200),
(117, 'api/customer', 'delete', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"c407981f-055a-4663-96fd-2d9e281bdff5";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"4";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"2";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048689, 0.04316, '1', 404),
(118, 'api/customer/enable', 'put', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"55701b25-9c14-46aa-ba95-fde151a8281d";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"4";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048728, 0.046968, '1', 200),
(119, 'api/customer/enable', 'put', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"56c42994-6fd9-4291-a637-426d62fa3c6a";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048810, 0.0421109, '1', 200),
(120, 'api/customer', 'get', 'a:10:{s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"55658acd-5e8a-420b-ac48-52cd56478e31";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '', '118.136.101.98', 1553486265, 0.043426, '0', 403),
(121, 'api/customer', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"580bffef-90d3-49fb-b877-2c5a0b3768f6";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486285, 0.0393262, '1', 200),
(122, 'api/customer', 'post', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"74e8aac9-a514-4fd1-a378-7cb584845d45";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486435, 0.0415149, '1', 200),
(123, 'api/customer', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"61ad4f72-a273-4b0c-90d1-776651ee155d";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486456, 0.0401361, '1', 200),
(124, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"f48b46f5-ef2c-4ced-828d-d55dcf4741e4";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486464, 0.0408051, '1', 200),
(125, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"25a837ed-9429-4b7b-adf2-f6a4c5a37024";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486468, 0.0408051, '1', 404),
(126, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"d35dbdaa-e37f-4b92-9b2b-12f285cb0b12";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486471, 0.042562, '1', 200),
(127, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"914bbbda-2ea7-46f7-b9a4-41e60cbcbfcf";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486475, 0.041795, '1', 200),
(128, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"b931dae0-efcf-4311-bad6-6b0281842cf9";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486478, 0.0405412, '1', 200),
(129, 'api/customer', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"776eb3f3-8102-4bd7-b787-1a5c4bcb4795";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486548, 0.0437829, '1', 200),
(130, 'api/customer', 'put', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"28873dba-1b14-4637-916e-8cdb5119f1eb";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486610, 0.0680921, '1', 200),
(131, 'api/customer', 'put', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7e1eac1e-faf7-44dd-b734-af0e471a8dea";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:12:"Content-Type";s:80:"multipart/form-data; boundary=--------------------------132173021837729928827018";s:14:"Content-Length";s:3:"601";s:10:"Connection";s:10:"keep-alive";s:90:"----------------------------132173021837729928827018\r\nContent-Disposition:_form-data;_name";s:510:""id"\r\n\r\n1\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name="name"\r\n\r\nMarcell\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name="email"\r\n\r\nmarcell@gmail.com\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name="phone"\r\n\r\n0\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name="address"\r\n\r\n-\r\n----------------------------132173021837729928827018--\r\n";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486651, 0.0602229, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(132, 'api/customer/index', 'put', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bdc624da-d819-4d43-a638-2841595334cf";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:12:"Content-Type";s:80:"multipart/form-data; boundary=--------------------------058076299379341907803355";s:14:"Content-Length";s:3:"601";s:10:"Connection";s:10:"keep-alive";s:90:"----------------------------058076299379341907803355\r\nContent-Disposition:_form-data;_name";s:510:""id"\r\n\r\n1\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name="name"\r\n\r\nMarcell\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name="email"\r\n\r\nmarcell@gmail.com\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name="phone"\r\n\r\n0\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name="address"\r\n\r\n-\r\n----------------------------058076299379341907803355--\r\n";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486659, 0.0498202, '1', 200),
(133, 'api/customer', 'put', 'a:17:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7017eee3-7f68-470d-b48f-cda8a497db21";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:2:"61";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"1";s:4:"name";s:7:"Marcell";s:5:"email";s:17:"marcell@gmail.com";s:5:"phone";s:1:"0";s:7:"address";s:1:"-";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486677, 0.0547671, '1', 200),
(134, 'api/customer', 'put', 'a:17:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"0919d15c-ab2d-4719-905a-294bab410871";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:2:"72";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"1";s:4:"name";s:7:"Marcell";s:5:"email";s:17:"marcell@gmail.com";s:5:"phone";s:12:"023489234234";s:7:"address";s:1:"-";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486705, 0.067431, '1', 200),
(135, 'api/customer', 'get', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"22946704-6ecb-4ae0-818a-984fe1ebb128";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:14:"Content-Length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486710, 0.0617602, '1', 200),
(136, 'api/service/1', 'get', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36";s:6:"Accept";s:118:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:23:"en-US,en;q=0.9,id;q=0.8";s:6:"Cookie";s:162:"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ikkhl00q5hb0lmtih2p6drde5dd37s1v";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553490057, 0.0625389, '1', 200),
(137, 'api/service/1', 'get', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:4:"Host";s:11:"gatoko1.com";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36";s:6:"Accept";s:118:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:15:"Accept-Language";s:23:"en-US,en;q=0.9,id;q=0.8";s:6:"Cookie";s:162:"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ng0su29jtcb11lv1ee30qq70g9o6j7fs";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553493660, 0.158972, '1', 200),
(138, 'api/example/users', 'get', 'a:9:{s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"0a4c05b5-5bda-4ae6-b446-a56b0f58dd10";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '', '118.136.101.98', 1554794034, 0.0983059, '0', 403),
(139, 'api/example/users', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"10838701-cb4f-4a83-a991-0e05906965ca";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=p051e6s1ql0263n5n3sddmlsk9u8rqs6";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554794302, 0.0760469, '1', 0),
(140, 'api/example/users', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"3a770d89-3c5a-426c-8a88-ab7b2ff71a96";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=cb1hqv00que8cpvs70e1d5895usqu7td";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883642, 0.0705218, '1', 0),
(141, 'api/example', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"48c7470c-04ff-47f0-9e30-e464283234f0";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883651, 0.055877, '1', 0),
(142, 'api/example', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"f5001237-7200-4352-b3f3-4aef64823792";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883678, 0.0204818, '1', 0),
(143, 'api/example', 'get', 'a:11:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"aba6da08-f4f7-4619-99b5-04c6ee8ffc87";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.1";s:6:"Accept";s:3:"*/*";s:4:"Host";s:11:"gatoko1.com";s:6:"Cookie";s:43:"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883745, 0.136361, '1', 200),
(144, 'api/example', 'get', 'a:9:{s:4:"Host";s:11:"gatoko1.com";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:13:"deflate, gzip";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:13:"Cache-Control";s:8:"no-cache";s:13:"postman-token";s:36:"a99bba16-ad49-13bc-4f20-f6991eb24681";s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '103.233.102.8', 1554883924, 0.0799909, '1', 200),
(145, 'api/agenda', 'get', 'a:9:{s:6:"status";s:6:"ENABLE";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"64957500-f314-450a-88ee-7348a5a3d12e";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:15:"accept-encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";}', '', '::1', 1581107206, 0.388589, '0', 403),
(146, 'api/agenda', 'get', 'a:9:{s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"18e1f5fd-d1ed-41cc-8db9-84e288d1b2d3";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=svug2616ig40tacs4ip570qdbk40lhmh";s:15:"accept-encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";}', '', '::1', 1581107290, 0.221693, '0', 403),
(147, 'api/agenda', 'get', 'a:10:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"826c4bf3-f82d-4795-8040-90d3745d49bb";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=svug2616ig40tacs4ip570qdbk40lhmh";s:15:"accept-encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581107298, 0.188079, '1', 200),
(148, 'api/agenda', 'get', 'a:10:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"b6ea18bc-d202-47b6-9518-ff1e92555f34";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=svug2616ig40tacs4ip570qdbk40lhmh";s:15:"accept-encoding";s:13:"gzip, deflate";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581107485, 0.119811, '1', 0),
(149, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"b435f5f1-d482-405e-9c72-34cc7019c802";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=svug2616ig40tacs4ip570qdbk40lhmh";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------681613633344753041997619";s:14:"content-length";s:3:"162";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581107772, 0.171924, '1', 200),
(150, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"c6a1f0a6-af16-46f9-856e-dc373d2eb58f";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------424556575584894607287387";s:14:"content-length";s:3:"162";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581107796, 0.210317, '1', 200),
(151, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"40218baf-f530-4774-b224-9ed9e53cc0f4";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------519331652213454007049437";s:14:"content-length";s:3:"162";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581107848, 0.222481, '1', 200),
(152, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"eab8df73-9a92-4efa-a3f9-3b9db6ee3e9b";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------539476156032771192763629";s:14:"content-length";s:3:"162";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581107895, 0.156217, '1', 200),
(153, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"a174ed1f-4fc6-4643-b7ce-f122966f1af2";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------767302900973670512527769";s:14:"content-length";s:3:"162";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108010, 0.111477, '1', 0),
(154, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"3547ea87-16e9-45a4-9f3a-ddf26bb3d179";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------501420790186009958579429";s:14:"content-length";s:3:"162";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108039, 0.204038, '1', 200),
(155, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bc86e018-e483-4dbb-95ca-628593e98d09";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------410346059560643206528682";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108051, 0.162569, '1', 404),
(156, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6ba5b422-ea70-460f-baf6-447f768d6f35";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------507903723317984818360281";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108066, 0.0873361, '1', 0),
(157, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"05b80c70-952c-45e2-9305-2d54a738f715";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=pgp1b4aoch5h6jen1f6q28umaht73mei";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------497064197050139166403650";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108088, 0.125984, '1', 0),
(158, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"65aa414a-368b-49b2-bc1d-f4dc9e225d36";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=6o1ueau9ft5vrt1thn2tbutjqgh4a8u2";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------642213496888560854859485";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108194, 0.135526, '1', 0),
(159, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"fec4f177-5ab0-484d-8c93-c1265f4c0b8e";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=6o1ueau9ft5vrt1thn2tbutjqgh4a8u2";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------643673087526783132265979";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108201, 0.325349, '1', 200),
(160, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"fb087584-fdb9-492e-9662-4e77e12034cf";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=6o1ueau9ft5vrt1thn2tbutjqgh4a8u2";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------145104156549291941388185";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108284, 0.247431, '1', 0),
(161, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"2425f0f0-6b55-4ac1-8c46-823aa559eb71";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=6o1ueau9ft5vrt1thn2tbutjqgh4a8u2";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------601923227458518789887956";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108333, 0.251942, '1', 200),
(162, 'api/agenda/data', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"81cc9d41-f064-4416-9c46-db7c4a3efd1e";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=6o1ueau9ft5vrt1thn2tbutjqgh4a8u2";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------465608526487360869387210";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108365, 0.246988, '1', 200),
(163, 'api/agenda/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7769e1a9-24b8-4b3c-83fc-d460abc82e3f";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=6o1ueau9ft5vrt1thn2tbutjqgh4a8u2";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------091149469895645945599366";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108444, 0.203635, '1', 200),
(164, 'api/agenda/pencarian', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"5ae55039-53b6-452a-9828-1649ef394bd2";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=290553bhv1oh2hb0oga3kkgm80h9p5tv";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------056388180909865207373419";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:5:"rapat";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108636, 0.133255, '1', 200),
(165, 'api/agenda/pencarian', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"205c4d4f-27ef-4fad-bde8-091b0d22d072";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=290553bhv1oh2hb0oga3kkgm80h9p5tv";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------947447183930638270802627";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"t";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108641, 0.136973, '1', 200),
(166, 'api/agenda/pencarian', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6d78055e-7ef7-4a8a-b7d6-87a2ea4ed7a5";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=290553bhv1oh2hb0oga3kkgm80h9p5tv";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------321197829375541028300671";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:1:"v";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108648, 0.119339, '1', 404),
(167, 'api/agenda/pencarian', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"ec08c6e1-636c-4d31-8139-bce3cdffb9ff";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=290553bhv1oh2hb0oga3kkgm80h9p5tv";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------774340899679243633764898";s:14:"content-length";s:3:"159";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:0:"";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1581108652, 0.144485, '1', 200),
(168, 'api/surat_permintaan/DataAll', 'post', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bc93446d-45a9-46a1-a8dd-0001622abfda";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------702516190458296535200867";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586428590, 0.224177, '1', 0),
(169, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"01a7f8e5-9daa-4dcc-8a23-ee2189e4d9b9";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=2q2fl281t8fv48tnaaigsrc9ddkmj8rg";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------998269360910318782925970";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586428655, 0.0852251, '1', 0),
(170, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"371f86bc-f543-4209-b15d-2f87fbc787ee";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=2q2fl281t8fv48tnaaigsrc9ddkmj8rg";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------783083974699044389868389";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586428710, 0.083322, '1', 0),
(171, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"68be64da-bf64-40f2-805c-ba0d977d016d";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=2q2fl281t8fv48tnaaigsrc9ddkmj8rg";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------907444904286323789709589";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586428736, 0.0926719, '1', 0),
(172, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"5f6ed966-05b4-4c35-b18f-7a936bda7142";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=2q2fl281t8fv48tnaaigsrc9ddkmj8rg";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------532472530188990861218847";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586428916, 0.099184, '1', 0),
(173, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"eee97a44-513c-45b2-8c60-5620b0b496f1";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=el9nfkcmjnsneflugntqqh36mnajqaq0";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------781675935668346249218720";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586428998, 0.10039, '1', 0),
(174, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bbd4b76e-2d7b-4885-9080-fc2714299798";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=el9nfkcmjnsneflugntqqh36mnajqaq0";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------609940348084943701681547";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586429024, 0.513175, '1', 200),
(175, 'api/surat_permintaan/MyData', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"0638589c-297a-48b9-91d3-e062f8703832";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=el9nfkcmjnsneflugntqqh36mnajqaq0";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------641014659543002026665421";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586429181, 0.175626, '1', 404),
(176, 'api/surat_permintaan/MyData', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"e1c5042b-b1d6-441f-bbd0-fa107f9e307b";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=el9nfkcmjnsneflugntqqh36mnajqaq0";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------782090477294049183132026";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"22";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586429203, 0.223719, '1', 404),
(177, 'api/surat_permintaan/MyData', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"1238b0a3-2839-48a2-9efe-be355921f800";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=el9nfkcmjnsneflugntqqh36mnajqaq0";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------518336802090740326690749";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"24";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586429237, 0.262132, '1', 200),
(178, 'api/surat_permintaan/login', 'post', 'a:14:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"d0efcb7c-a3f5-41e1-98bc-1c384fbc4199";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=0iaf566hph79egb4hthuekgaen4njg4s";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------157045119208075659345251";s:14:"content-length";s:3:"276";s:10:"Connection";s:10:"keep-alive";s:8:"username";s:3:"pic";s:8:"password";s:3:"pic";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586429525, 0.154761, '1', 200),
(179, 'api/surat_permintaan/profile', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"59c0a398-91af-419e-a647-a83cbf81f5ac";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=jst8ahip7jhlt3m343ne98bhgs15386q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------724275947747699055432901";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586430232, 0.191172, '1', 200),
(180, 'api/surat_permintaan/profile', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"8cf2c30d-e383-4458-badf-07e1a1557884";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=jst8ahip7jhlt3m343ne98bhgs15386q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------526560640370948233743794";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586430260, 0.156258, '1', 200),
(181, 'api/surat_permintaan/profile', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6585936c-3a4d-46dd-a773-dc5e78bbf92c";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=jst8ahip7jhlt3m343ne98bhgs15386q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------954693708580536047152269";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586430265, 0.165458, '1', 200),
(182, 'api/surat_permintaan/DataAll', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6c127252-010b-4451-b96f-92488437c6f0";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=jst8ahip7jhlt3m343ne98bhgs15386q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------801533360396987548984847";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586430319, 0.186171, '1', 200),
(183, 'api/surat_permintaan/MyData', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"314c956e-8b4e-4cc5-a5dc-e55271be9133";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=jst8ahip7jhlt3m343ne98bhgs15386q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------998234192724845766762062";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"24";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586430332, 0.205954, '1', 200),
(184, 'api/surat_permintaan/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"22754ed2-1704-48ff-b1a1-ce85e6c98343";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=jst8ahip7jhlt3m343ne98bhgs15386q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------169557120151363733868873";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586431784, 0.172238, '1', 200),
(185, 'api/surat_permintaan/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"a6091952-fe01-4071-aa46-92fcfc7f50ae";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ce9ngk0rqjc7mchnc0oji3mftjtorf6c";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------575842250541831635466229";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586431799, NULL, '1', 0),
(186, 'api/surat_permintaan/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"1b4be093-1c71-42ec-a65c-bcbff0db591a";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ce9ngk0rqjc7mchnc0oji3mftjtorf6c";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------304746636062736135764950";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586431885, 0.254558, '1', 200),
(187, 'api/surat_permintaan/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"d9dbb2bd-bb45-45d2-918d-11bfe0e4f465";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ce9ngk0rqjc7mchnc0oji3mftjtorf6c";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------427901206587562133237088";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586431905, 0.380265, '1', 200),
(188, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"86376dfd-e1c2-4846-a00f-2911a004ba0e";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ce9ngk0rqjc7mchnc0oji3mftjtorf6c";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------513633861239079566647661";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586432909, 0.0998471, '1', 0),
(189, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6509a8d7-49fd-4c0d-ab65-935159005e67";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=1sf9rjefai9s69hhdnp64st6ue2bo59u";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------254994047828788952231653";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586432925, 0.216078, '1', 200),
(190, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"baf16a21-ad0c-465c-9fd7-d02b9021bbf0";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=1sf9rjefai9s69hhdnp64st6ue2bo59u";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------640988383687446203426549";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586432936, 0.122979, '1', 200),
(191, 'api/surat_permintaan/dataproyek', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bea9c1a3-2f2d-4bc2-915b-e77cae54a424";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=1sf9rjefai9s69hhdnp64st6ue2bo59u";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------730173379469119911299688";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586432945, 0.213788, '1', 200),
(192, 'api/surat_permintaan/create_sp', 'post', 'a:14:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"dce73c3b-894d-4687-9dc0-a3623cdeeba6";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=1sf9rjefai9s69hhdnp64st6ue2bo59u";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------989166552896737078540004";s:14:"content-length";s:3:"272";s:10:"Connection";s:10:"keep-alive";s:9:"id_proyek";s:1:"1";s:5:"jenis";s:3:"SPB";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586433407, 0.154363, '1', 200),
(193, 'api/surat_permintaan/create_sp', 'post', 'a:15:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"1d0c0c1d-b4d5-4b27-99bc-5d6ae10fd3a2";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=d16gltlc4douvpclgbcf22sh3cl4q5bt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------601869346253840967252753";s:14:"content-length";s:3:"380";s:10:"Connection";s:10:"keep-alive";s:9:"id_proyek";s:1:"1";s:5:"jenis";s:3:"SPB";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586433469, 0.127916, '1', 200),
(194, 'api/surat_permintaan/create_sp', 'post', 'a:15:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"852fc9e1-efd3-4545-82c2-e07140f74ba7";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=d16gltlc4douvpclgbcf22sh3cl4q5bt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------892387604325521320050651";s:14:"content-length";s:3:"380";s:10:"Connection";s:10:"keep-alive";s:9:"id_proyek";s:1:"1";s:5:"jenis";s:3:"SPB";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586433511, 0.137127, '1', 200),
(195, 'api/surat_permintaan/create_sp', 'post', 'a:15:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"f943fd41-ee03-4410-8a61-b0075499b095";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=d16gltlc4douvpclgbcf22sh3cl4q5bt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------098203136206557325746624";s:14:"content-length";s:3:"380";s:10:"Connection";s:10:"keep-alive";s:9:"id_proyek";s:1:"1";s:5:"jenis";s:3:"SPB";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586433640, 0.304915, '1', 200),
(196, 'api/surat_permintaan/create_sp', 'post', 'a:15:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"2fa4e786-0a2c-49fc-9631-7ac5af20c83a";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=d16gltlc4douvpclgbcf22sh3cl4q5bt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------992087814585770288774983";s:14:"content-length";s:3:"380";s:10:"Connection";s:10:"keep-alive";s:9:"id_proyek";s:1:"3";s:5:"jenis";s:3:"SPS";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586433671, 0.424659, '1', 200),
(197, 'api/surat_permintaan/create_item_sp', 'post', 'a:25:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"0a74f76a-c475-4d97-9524-704abd198ef2";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=d16gltlc4douvpclgbcf22sh3cl4q5bt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------206484962206290526700064";s:14:"content-length";s:4:"1615";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"2";}}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586434535, 0.10131, '1', 0);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(198, 'api/surat_permintaan/create_item_sp', 'post', 'a:25:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"49d49e43-0107-406c-918b-8a126189e5fb";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=7okjrl9f31f9b9ggld9orsjn60eilqg4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------201306247167097015784996";s:14:"content-length";s:4:"1615";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"2";}}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586434556, 0.0935121, '1', 0),
(199, 'api/surat_permintaan/create_item_sp', 'post', 'a:25:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"ea497cda-ff06-496b-aa72-0b99378defcc";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=7okjrl9f31f9b9ggld9orsjn60eilqg4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------204522297064872108283875";s:14:"content-length";s:4:"1615";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"2";}}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586434598, 0.087374, '1', 0),
(200, 'api/surat_permintaan/create_item_sp', 'post', 'a:26:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"acb36a7c-4fab-4362-8bab-e92db6690c88";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=7okjrl9f31f9b9ggld9orsjn60eilqg4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------866512191516251532469640";s:14:"content-length";s:4:"1723";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586434608, 0.094692, '1', 0),
(201, 'api/surat_permintaan/create_item_sp', 'post', 'a:26:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"5311baf7-9d24-4149-b92f-2a20f3fb06c7";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=7okjrl9f31f9b9ggld9orsjn60eilqg4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------337766529151761629712955";s:14:"content-length";s:4:"1723";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586434664, 0.224864, '1', 200),
(202, 'api/surat_permintaan/create_item_sp', 'post', 'a:26:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"c9dc05a5-6afa-42ce-97cd-42bb67d42d8a";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------417403220536232219667038";s:14:"content-length";s:4:"1828";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"3";}s:7:"id_user";s:2:"21";s:5:"id_sp";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586477955, 0.568005, '1', 200),
(203, 'api/surat_permintaan/edit_item_sp', 'post', 'a:27:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"f61f8702-4c2b-4ed1-92c3-2c17b431ef86";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=vcm9di2snj072mhner2r97nhfhqtnt0a";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------002333556495250667965439";s:14:"content-length";s:4:"1828";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"4";}s:7:"id_user";s:2:"21";s:5:"id_sp";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478026, 0.214219, '1', 200),
(204, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"5ff08d17-a8a3-48d3-99ed-ae9e10986068";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=vcm9di2snj072mhner2r97nhfhqtnt0a";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------522258624917664068005741";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"6";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478238, 0.189297, '1', 0),
(205, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"88bd5902-bec4-4813-9850-a4580bb39b24";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=vcm9di2snj072mhner2r97nhfhqtnt0a";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------354055032889328621368234";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"6";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478321, 0.325348, '1', 404),
(206, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"b48ac490-3810-4fa7-91be-aa7e26b91674";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------833361163304790543197432";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478365, 0.375828, '1', 404),
(207, 'api/surat_permintaan/create_item_sp', 'post', 'a:26:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"900ca610-187f-497c-a775-4e960edea5d3";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------402400741022229767951971";s:14:"content-length";s:4:"1723";s:10:"Connection";s:10:"keep-alive";s:4:"kode";s:7:"S-AAA-1";s:14:"kode_pekerjaan";s:6:"010209";s:9:"id_barang";s:12:"Lantai Kerja";s:9:"id_satuan";s:2:"M2";s:3:"qty";s:2:"50";s:6:"fungsi";s:0:"";s:6:"target";s:0:"";s:10:"keterangan";s:0:"";s:9:"kapasitas";s:0:"";s:4:"merk";s:0:"";s:15:"waktu_pemakaian";s:0:"";s:17:"waktu_pelaksanaan";s:10:"2020-04-20";s:11:"persyaratan";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478408, 0.612826, '1', 200),
(208, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"fdea4e16-38f4-4709-98fd-3a53f2cb9bd0";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------355097546363243468047553";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478473, 0.211436, '1', 0),
(209, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6eb1d466-f0b3-4bd4-af3a-b8fc53651c70";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------501208655602969406162581";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"7";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478479, 0.110895, '1', 0),
(210, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"8e504ea5-3bd3-4d0c-98a8-aa0ec0f6ff97";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------128068457505343947295407";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"7";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478492, 0.103719, '1', 0),
(211, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"73fdad8c-afcb-470a-a310-6457043caf24";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------860850795837074379513040";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"7";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478502, 0.0954831, '1', 0),
(212, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"1fd713f8-82b0-4f0d-957b-665295407eb1";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------755237894588682889061557";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"7";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478528, 0.0953619, '1', 0),
(213, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"f254dc49-b934-4b90-8d1d-9f5c3942be31";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------035775076607627461404449";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"7";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478576, 0.366466, '1', 200),
(214, 'api/surat_permintaan/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6d003f33-a7fc-4b47-bead-fae959f04066";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=j0h63j1blh461vqtcktv3ijt9rq78e21";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------774334775901121456206710";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478622, 0.24266, '1', 200),
(215, 'api/surat_permintaan/detail', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"03406e18-5f44-45ac-a717-8a8a9864925a";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=nmkb83dchv57uodootq59fr98naa33g4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------345964986123342753383147";s:14:"content-length";s:3:"161";s:10:"Connection";s:10:"keep-alive";s:5:"id_sp";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478652, 0.189314, '1', 200),
(216, 'api/surat_permintaan/detail_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"b97e529d-4e7a-403e-acbb-aeab32741893";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=nmkb83dchv57uodootq59fr98naa33g4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------188700376780394346386550";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"4";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586478976, 0.382303, '1', 200),
(217, 'api/surat_permintaan/edit_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"84cc3bd8-5cf7-48db-b776-eb89d5e11f4d";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=1aavqkn75an4i6hag57b41lqiknp8ohg";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------665632244061672709527823";s:14:"content-length";s:7:"1552895";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586479861, 0.845904, '1', 0),
(218, 'api/surat_permintaan/edit_sp', 'post', 'a:15:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"b4b42bda-95c8-48df-b97e-8b1989c5e5a8";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=l50v45nmj1f32b0eecg0v5ndl0n3og10";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------111339233524764580022608";s:14:"content-length";s:7:"1553112";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"5";s:7:"id_user";s:2:"21";s:9:"role_user";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586479977, 1.07968, '1', 200),
(219, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"05bd76b8-ee25-4526-bd22-2fc106d04663";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=l50v45nmj1f32b0eecg0v5ndl0n3og10";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------524489561919290046010454";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480294, 0.133934, '1', 404),
(220, 'api/surat_permintaan/delete_item_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"dffce028-9af4-4c2b-ae37-612366b20373";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ipq00mbn9k2rk5482cvmj9ik46r80n86";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------934189500783189975423187";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480327, 0.203049, '1', 404),
(221, 'api/surat_permintaan/delete_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"69a2885d-f5ed-496b-a87f-c68e7d9f08d7";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ipq00mbn9k2rk5482cvmj9ik46r80n86";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------174876969303923589210033";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480336, 0.0920758, '1', 0),
(222, 'api/surat_permintaan/delete_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"2b96d8d0-10f2-4d3c-a511-d8c0638dd97f";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ipq00mbn9k2rk5482cvmj9ik46r80n86";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------229029261798759817058157";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"5";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480343, 0.298452, '1', 200),
(223, 'api/surat_permintaan/datacostcode', 'post', 'a:12:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"3cd72323-080f-4512-9fdd-9b0806c905e1";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ipq00mbn9k2rk5482cvmj9ik46r80n86";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------772244330134799906147057";s:14:"content-length";s:1:"0";s:10:"Connection";s:10:"keep-alive";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480504, 0.168313, '1', 404),
(224, 'api/surat_permintaan/datacostcode', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"dfe02a31-2659-4748-b303-a136fe83419f";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ipq00mbn9k2rk5482cvmj9ik46r80n86";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------498405921654291588511047";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480594, 0.0975971, '1', 0),
(225, 'api/surat_permintaan/datacostcode', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7070b1b6-fe59-4e21-8767-28b601a8ba14";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=ipq00mbn9k2rk5482cvmj9ik46r80n86";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------816055436574875553026304";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480638, 0.211142, '1', 200),
(226, 'api/surat_permintaan/datacostcode', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"e60abd16-e0e8-4a6e-8740-90e8b443eee7";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=iq5p9lfcut3f9qh944vkm795ikaa7m6q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------452271152785913805121167";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586480645, 0.150588, '1', 200),
(227, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"d594a2ad-08a3-4bfd-bf65-bac3460816df";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=iq5p9lfcut3f9qh944vkm795ikaa7m6q";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------833787291921320551381063";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481225, 0.166657, '1', 200),
(228, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7a3c2a58-f420-4c68-a15a-ac622885609d";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------372059969737277958387397";s:14:"content-length";s:3:"165";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481289, 0.215115, '1', 200),
(229, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"96cbcd04-1883-4e32-8801-051aa7fe5602";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------245886548694130303883907";s:14:"content-length";s:3:"165";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481350, 0.160315, '1', 200),
(230, 'api/surat_permintaan/datajenis', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"fca8e4e7-fb9d-4a46-b531-816b272f2dba";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------282597143524153256688489";s:14:"content-length";s:3:"165";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481369, 0.315408, '1', 200),
(231, 'api/surat_permintaan/dataproyek', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"c8095487-b0ed-438f-840a-a31cc1ef786f";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------254016554092119694080290";s:14:"content-length";s:3:"165";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481408, 0.170977, '1', 404),
(232, 'api/surat_permintaan/dataproyek', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"a08dff21-1061-4c18-9b36-2b33cbbd91ce";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------782400425685370005174817";s:14:"content-length";s:3:"165";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481425, 0.170145, '1', 200),
(233, 'api/surat_permintaan/dataproyek', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"973bd9cb-fd8d-4e90-80e4-daeda57778a8";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------361343787201618691342528";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481438, 0.138797, '1', 200),
(234, 'api/surat_permintaan/verifikasi_sp', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"7bffcd76-5bc7-4230-90e8-728981e38019";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=or05b1bm2rhb41nthjq9hc3uvgnad9o5";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------083643147203713953375660";s:14:"content-length";s:3:"164";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"22";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586481921, 0.253728, '1', 200),
(235, 'api/surat_permintaan/verifikasi_sp', 'post', 'a:15:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"ec261873-ca1e-4fdc-84a6-bd3f7fecf193";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=62os116hku3tn2boijms4p125gjtl6tt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------583933409530863247673536";s:14:"content-length";s:3:"372";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"22";s:2:"id";s:1:"4";s:6:"status";s:1:"0";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586482003, 0.805843, '1', 200),
(236, 'api/surat_permintaan/ajukan_sp', 'post', 'a:14:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"d9e35ff3-4b18-469d-8051-8ff6d011c291";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=62os116hku3tn2boijms4p125gjtl6tt";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------360383676292257432645739";s:14:"content-length";s:3:"266";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";s:2:"id";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586482337, 0.910936, '1', 200),
(237, 'api/surat_permintaan/batalkan_sp', 'post', 'a:14:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"40d67577-bc59-4889-9a98-0981b957d0f8";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=719rpsgmrnrskpt4dco0rl0dler1mcra";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------277146198231701252072515";s:14:"content-length";s:3:"266";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";s:2:"id";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586482517, 0.237476, '1', 0),
(238, 'api/surat_permintaan/batalkan_sp', 'post', 'a:14:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"3e8be794-f921-4b51-9854-de9488b054e3";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=719rpsgmrnrskpt4dco0rl0dler1mcra";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------831231315630189762494896";s:14:"content-length";s:3:"266";s:10:"Connection";s:10:"keep-alive";s:7:"id_user";s:2:"21";s:2:"id";s:1:"3";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586482543, 0.795718, '1', 200),
(239, 'api/surat_permintaan/datapersyaratan', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"0765b53a-2961-4da0-ac1e-dc2e5f6b1bd4";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=719rpsgmrnrskpt4dco0rl0dler1mcra";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------148982040859674780565366";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586489259, 0.395856, '1', 0),
(240, 'api/surat_permintaan/datapersyaratan', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"de5d45d5-e56b-4e3f-b72b-7ee1f6a97908";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=0jqb9kumo6hah1vusr4qke0eec111ks4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------648038589044085861801878";s:14:"content-length";s:3:"160";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:3:"all";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586489273, 0.178705, '1', 200),
(241, 'api/surat_permintaan/datapersyaratan', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"fcb8164f-5fa9-4916-b059-be0c4a52ff7d";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=0jqb9kumo6hah1vusr4qke0eec111ks4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------899512413601777568273261";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586489285, 0.164816, '1', 200),
(242, 'api/surat_permintaan/datauom', 'post', 'a:13:{s:8:"x-sm-key";s:32:"35d3d08c3d7b7f445ceb8e726a87b26c";s:13:"cache-control";s:8:"no-cache";s:13:"Postman-Token";s:36:"bf558fd8-58b5-438f-99b2-4864d245c5f3";s:13:"Authorization";s:38:"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==";s:10:"User-Agent";s:20:"PostmanRuntime/7.6.0";s:6:"Accept";s:3:"*/*";s:4:"Host";s:9:"localhost";s:6:"cookie";s:43:"ci_session=0jqb9kumo6hah1vusr4qke0eec111ks4";s:15:"accept-encoding";s:13:"gzip, deflate";s:12:"content-type";s:80:"multipart/form-data; boundary=--------------------------291252813757003606892200";s:14:"content-length";s:3:"158";s:10:"Connection";s:10:"keep-alive";s:2:"id";s:1:"1";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '::1', 1586492743, 0.171889, '1', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE IF NOT EXISTS `log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_created_at` datetime NOT NULL,
  `log_created_by` int(11) DEFAULT NULL,
  `log_action` varchar(500) NOT NULL,
  `log_tablename` varchar(500) NOT NULL,
  `log_jsondata` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=873 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(1, '2019-09-30 16:36:09', 1, 'deleteData', 'contohmaster', '{"cm_id":"3","cm_nama":"ddfdf","cm_data":"dfdfdf","status":"DISABLE","created_at":"2019-09-30 16:25:21","updated_at":null}'),
(2, '2019-10-01 10:22:47', 1, 'deleteData', 'contohmaster', '{"conn_id":{"affected_rows":null,"client_info":null,"client_version":null,"connect_errno":null,"connect_error":null,"errno":null,"error":null,"error_list":null,"field_count":null,"host_info":null,"info":null,"insert_id":null,"server_info":null,"server_version":null,"stat":null,"sqlstate":null,"protocol_version":null,"thread_id":null,"warning_count":null},"result_id":{"current_field":null,"field_count":null,"lengths":null,"num_rows":null,"type":null},"result_array":[],"result_object":[],"custom_result_object":[],"current_row":0,"num_rows":null,"row_data":null}'),
(3, '2019-10-01 10:29:38', 1, 'deleteData', 'contohmaster', '{"cm_id":"6","cm_nama":"tes","cm_data":"asdsd","status":"ENABLE","created_at":"2019-10-01 10:27:04","updated_at":null}{"cm_id":"7","cm_nama":"dssd","cm_data":"ddssd","status":"ENABLE","created_at":"2019-10-01 10:27:10","updated_at":null}'),
(4, '2019-10-01 10:35:34', 1, 'deleteData', 'contohmaster', '{"cm_id":"8","cm_nama":"sddssd","cm_data":"ssd","status":"ENABLE","created_at":"2019-10-01 10:33:35","updated_at":null}'),
(5, '2019-10-01 10:43:29', 1, 'updateData', 'contohmaster', '{"cm_id":"8","cm_nama":"sddssd","cm_data":"ssd","status":"ENABLE","created_at":"2019-10-01 10:33:35","updated_at":"2019-10-01 10:35:34"}'),
(6, '2019-10-01 10:43:35', 1, 'updateData', 'contohmaster', '{"cm_id":"8","cm_nama":"sddssd","cm_data":"ssd","status":"ENABLE","created_at":"2019-10-01 10:33:35","updated_at":"2019-10-01 10:43:29"}'),
(7, '2019-10-01 10:56:08', 1, 'updateData', 'contohmaster', '{"cm_id":"8","cm_nama":"sdsd","cm_data":"ssd","status":"ENABLE","created_at":"2019-10-01 10:33:35","updated_at":"2019-10-01 10:43:35"}'),
(8, '2019-10-01 10:56:51', 1, 'updateData', 'contohmaster', '{"cm_id":"8","cm_nama":"sdsd","cm_data":"ssd","status":"ENABLE","created_at":"2019-10-01 10:33:35","updated_at":"2019-10-01 10:56:08"}'),
(9, '2019-10-01 10:56:54', 1, 'updateData', 'contohmaster', '{"cm_id":"8","cm_nama":"sdsd","cm_data":"ssdssa","status":"ENABLE","created_at":"2019-10-01 10:33:35","updated_at":"2019-10-01 10:56:51"}'),
(10, '2019-10-01 10:57:18', 1, 'deleteData', 'contohmaster', '{"cm_id":"8","cm_nama":"sdsd","cm_data":"ssdssa","status":"DISABLE","created_at":"2019-10-01 10:33:35","updated_at":"2019-10-01 10:56:51"}'),
(11, '2019-10-01 10:58:10', 1, 'updateData', 'contohmaster', '{"cm_id":"9","cm_nama":"tes","cm_data":"sdsd","status":"ENABLE","created_at":"2019-10-01 10:33:41","updated_at":null}'),
(12, '2019-10-01 10:58:15', 1, 'deleteData', 'contohmaster', '{"cm_id":"9","cm_nama":"tes","cm_data":"sdsd","status":"DISABLE","created_at":"2019-10-01 10:33:41","updated_at":null}'),
(13, '2019-10-01 11:18:04', 1, 'updateData', 'konfig', '{"id":"6","slug":"APPLICATION","value":"SMARTSOFT SOP","status":"ENABLE","created_at":"2019-02-18 15:28:44","updated_at":"2019-06-26 13:56:36"}'),
(14, '2019-10-01 14:21:22', 1, 'updateData', 'user', '{"id":"11","nip":"oplos","name":"Oplos","email":"oplos@oplos.com","password":"0192023a7bbd73250516f069df18b500","role_id":"18","desc":"-\\r\\n","status":"0","created_at":"2018-11-15 16:47:11","updated_at":"2019-06-26 11:36:03"}'),
(15, '2019-10-01 14:23:04', 1, 'updateData', 'customer', '{"id":"5","nama":"Bayu Briyan El Roy","email":"bayubriyanelroy@gmail.com","telp":"08123000801","alamat":"address","status":"ENABLE","created_at":"2019-08-15 07:44:50","updated_at":"2019-08-15 07:48:37"}'),
(16, '2019-10-01 14:27:47', 1, 'updateData', 'customer', '{"id":"6","nama":"kjs","email":"a@gmial.com","telp":"898","alamat":"jdf","status":"ENABLE","created_at":"2019-08-15 07:54:51","updated_at":"2019-08-15 09:46:19"}'),
(17, '2019-10-01 15:17:03', 1, 'updateData', 'customer', '{"id":"7","nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:15:09","updated_at":null}'),
(18, '2019-10-01 15:17:09', 1, 'deleteData', 'file', '{"id":"177","name":"","mime":"","dir":"","table":"customer","table_id":"7","status":"ENABLE","created_at":"2019-10-01 15:15:09","updated_at":null}'),
(19, '2019-10-01 15:17:09', 1, 'deleteData', 'customer', '{"id":"7","nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:15:09","updated_at":null}'),
(20, '2019-10-01 15:19:31', 1, 'updateData', 'customer', '{"id":"8","nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:19:10","updated_at":null}'),
(21, '2019-10-01 15:19:37', 1, 'deleteData', 'file', '{"id":"178","name":"","mime":"","dir":"","table":"customer","table_id":"8","status":"ENABLE","created_at":"2019-10-01 15:19:10","updated_at":null}'),
(22, '2019-10-01 15:19:37', 1, 'deleteData', 'customer', '{"id":"8","nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:19:10","updated_at":null}'),
(23, '2019-10-01 15:21:15', 1, 'insertData', 'customer', '{"nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 15:21:15","status":"ENABLE"}'),
(24, '2019-10-01 15:21:15', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":9,"status":"ENABLE","created_at":"2019-10-01 15:21:15"}'),
(25, '2019-10-01 15:21:27', 1, 'insertData', 'customer', '{"nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 15:21:27","status":"ENABLE"}'),
(26, '2019-10-01 15:21:27', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":10,"status":"ENABLE","created_at":"2019-10-01 15:21:27"}'),
(27, '2019-10-01 15:21:59', 1, 'insertData', 'customer', '{"nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 15:21:59","status":"ENABLE"}'),
(28, '2019-10-01 15:21:59', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":11,"status":"ENABLE","created_at":"2019-10-01 15:21:59"}'),
(29, '2019-10-01 15:22:01', 1, 'insertData', 'customer', '{"nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 15:22:01","status":"ENABLE"}'),
(30, '2019-10-01 15:22:01', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":12,"status":"ENABLE","created_at":"2019-10-01 15:22:01"}'),
(31, '2019-10-01 15:22:20', 1, 'insertData', 'customer', '{"nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 15:22:20","status":"ENABLE"}'),
(32, '2019-10-01 15:22:21', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":13,"status":"ENABLE","created_at":"2019-10-01 15:22:21"}'),
(33, '2019-10-01 15:23:02', 1, 'updateData', 'customer', '{"id":"13","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:22:20","updated_at":null}'),
(34, '2019-10-01 15:23:04', 1, 'updateData', 'customer', '{"id":"12","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:22:01","updated_at":null}'),
(35, '2019-10-01 15:23:05', 1, 'updateData', 'customer', '{"id":"11","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:21:59","updated_at":null}'),
(36, '2019-10-01 15:23:06', 1, 'updateData', 'customer', '{"id":"10","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:21:27","updated_at":null}'),
(37, '2019-10-01 15:23:08', 1, 'updateData', 'customer', '{"id":"9","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:21:15","updated_at":null}'),
(38, '2019-10-01 15:23:12', 1, 'deleteData', 'file', '{"id":"179","name":"","mime":"","dir":"","table":"customer","table_id":"9","status":"ENABLE","created_at":"2019-10-01 15:21:15","updated_at":null}'),
(39, '2019-10-01 15:23:12', 1, 'deleteData', 'customer', '{"id":"9","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:21:15","updated_at":null}'),
(40, '2019-10-01 15:24:27', 1, 'deleteData', 'file', '{"id":"183","name":"","mime":"","dir":"","table":"customer","table_id":"13","status":"ENABLE","created_at":"2019-10-01 15:22:21","updated_at":null}'),
(41, '2019-10-01 15:24:27', 1, 'deleteData', 'customer', '{"id":"13","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:22:20","updated_at":null}'),
(42, '2019-10-01 15:25:05', 1, 'deleteData', 'file', '{"id":"182","name":"","mime":"","dir":"","table":"customer","table_id":"12","status":"ENABLE","created_at":"2019-10-01 15:22:01","updated_at":null}'),
(43, '2019-10-01 15:25:05', 1, 'deleteData', 'customer', '{"id":"12","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:22:01","updated_at":null}'),
(44, '2019-10-01 15:25:32', 1, 'deleteData', 'file', '{"id":"180","name":"","mime":"","dir":"","table":"customer","table_id":"10","status":"ENABLE","created_at":"2019-10-01 15:21:27","updated_at":null}'),
(45, '2019-10-01 15:25:32', 1, 'deleteData', 'customer', '{"id":"10","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:21:27","updated_at":null}'),
(46, '2019-10-01 15:25:36', 1, 'deleteData', 'file', '{"id":"181","name":"","mime":"","dir":"","table":"customer","table_id":"11","status":"ENABLE","created_at":"2019-10-01 15:21:59","updated_at":null}'),
(47, '2019-10-01 15:25:36', 1, 'deleteData', 'customer', '{"id":"11","nama":"Rahmatss","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:21:59","updated_at":null}'),
(48, '2019-10-01 15:28:17', 1, 'insertData', 'customer', '{"nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 15:28:17","status":"ENABLE"}'),
(49, '2019-10-01 15:28:17', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":14,"status":"ENABLE","created_at":"2019-10-01 15:28:17"}'),
(50, '2019-10-01 15:30:39', 1, 'updateData', 'customer', '{"id":"14","nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 15:28:17","updated_at":null}'),
(51, '2019-10-01 15:31:05', 1, 'deleteData', 'file', '{"id":"184","name":"","mime":"","dir":"","table":"customer","table_id":"14","status":"ENABLE","created_at":"2019-10-01 15:28:17","updated_at":null}'),
(52, '2019-10-01 15:31:05', 1, 'deleteData', 'customer', '{"id":"14","nama":"Rahmat","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 15:28:17","updated_at":null}'),
(53, '2019-10-01 17:09:44', 1, 'insertData', 'customer', '{"nama":"tes tamba","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","created_at":"2019-10-01 17:09:44","status":"ENABLE"}'),
(54, '2019-10-01 17:09:44', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":15,"status":"ENABLE","created_at":"2019-10-01 17:09:44"}'),
(55, '2019-10-01 17:09:50', 1, 'updateData', 'customer', '{"id":"15","nama":"tes tamba","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"ENABLE","created_at":"2019-10-01 17:09:44","updated_at":null}'),
(56, '2019-10-01 17:09:55', 1, 'deleteData', 'file', '{"id":"185","name":"","mime":"","dir":"","table":"customer","table_id":"15","status":"ENABLE","created_at":"2019-10-01 17:09:44","updated_at":null}'),
(57, '2019-10-01 17:09:55', 1, 'deleteData', 'customer', '{"id":"15","nama":"tes tamba","email":"hmdrahmat8@gmail.com","telp":"0032880","alamat":"test","status":"DISABLE","created_at":"2019-10-01 17:09:44","updated_at":null}'),
(58, '2019-10-15 09:53:06', 1, 'deleteData', 'customer', '{"id":"5","nama":"Bayu Briyan El Roy","email":"bayubriyanelroy@gmail.com","telp":"08123000801","alamat":"address","status":"ENABLE","created_at":"2019-08-15 07:44:50","updated_at":"2019-10-01 14:23:04"}'),
(59, '2019-10-15 09:58:06', 1, 'insertData', 'customer', '{"nama":"Iqbal luthfi","email":"sistem.mikir@gmail.com","telp":"2342","alamat":"asdfadsf","created_at":"2019-10-15 09:58:06","status":"ENABLE"}'),
(60, '2019-10-15 09:58:06', 1, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"customer","table_id":16,"status":"ENABLE","created_at":"2019-10-15 09:58:06"}'),
(61, '2019-10-22 11:47:44', 1, 'updateData', 'konfig', '{"id":"7","slug":"LOGO","value":"http:\\/\\/www.pertanian.go.id\\/img\\/logo.png","status":"ENABLE","created_at":"2019-02-18 15:29:32","updated_at":"2019-04-29 10:56:09"}'),
(62, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{"nama":"Solihun","email":"solihun@gmail.com","telp":"089182491928","alamat":"-","status":"ENABLE","urutan":0}'),
(63, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{"nama":"Gatot","email":"gatot@gmail.com","telp":"089128498129","alamat":"-","status":"ENABLE","urutan":1}'),
(64, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{"nama":"","email":"","telp":"","alamat":"","status":"ENABLE","urutan":2}'),
(65, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{"nama":"Soleh","email":"soleh@gmail.com","telp":"081249812947","alamat":"-","status":"ENABLE","urutan":3}'),
(66, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{"nama":"Soleh","email":"soleh@gmail.com","telp":"081249812947","alamat":"-","status":"ENABLE","urutan":0}'),
(67, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{"nama":"Solihun","email":"solihun@gmail.com","telp":"089182491928","alamat":"-","status":"ENABLE","urutan":1}'),
(68, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{"nama":"Gatot","email":"gatot@gmail.com","telp":"089128498129","alamat":"-","status":"ENABLE","urutan":2}'),
(69, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{"nama":"","email":"","telp":"","alamat":"","status":"ENABLE","urutan":3}'),
(70, '2019-10-22 13:26:52', 1, 'updateData', 'customer', '{"id":"6","nama":"kjs","email":"a@gmial.com","telp":"898","alamat":"jdf","status":"ENABLE","created_at":"2019-08-15 07:54:51","updated_at":"2019-10-01 14:27:47"}'),
(71, '2019-10-22 13:27:06', 1, 'updateData', 'customer', '{"id":"3","nama":"Gatot","email":"gatot@gmail.com","telp":"238137","alamat":"-","status":"ENABLE","created_at":null,"updated_at":"2019-08-15 07:42:48"}'),
(72, '2019-10-22 13:35:26', 1, 'deleteData', 'customer', '{"id":"6","nama":"kjs","email":"a@gmial.com","telp":"898","alamat":"18","status":"ENABLE","created_at":"2019-08-15 07:54:51","updated_at":"2019-10-22 13:26:52"}'),
(73, '2019-10-22 13:35:47', 1, 'updateData', 'customer', '{"id":"16","nama":"Iqbal luthfi","email":"sistem.mikir@gmail.com","telp":"2342","alamat":"asdfadsf","status":"ENABLE","created_at":"2019-10-15 09:58:06","updated_at":null}'),
(74, '2019-10-22 13:35:57', 1, 'updateData', 'customer', '{"id":"16","nama":"Iqbal luthfi","email":"sistem.mikir@gmail.com","telp":"2342","alamat":"asdfadsf","status":"ENABLE","created_at":"2019-10-15 09:58:06","updated_at":"2019-10-22 13:35:47"}'),
(75, '2019-10-22 13:36:30', 1, 'updateData', 'customer', '{"id":"16","nama":"Iqbal luthfi","email":"sistem.mikir@gmail.com","telp":"2342","alamat":"asem","status":"ENABLE","created_at":"2019-10-15 09:58:06","updated_at":"2019-10-22 13:35:57"}'),
(76, '2019-11-02 15:49:56', 1, 'deleteData', 'access', '{"id":"2","access_control_id":"94","role_id":"17","status":"active"}'),
(77, '2019-11-02 15:50:26', 1, 'deleteData', 'access', '{"id":"3","access_control_id":"94","role_id":"17","status":"active"}{"id":"4","access_control_id":"293","role_id":"17","status":"active"}{"id":"5","access_control_id":"294","role_id":"17","status":"active"}'),
(78, '2019-11-02 15:50:43', 1, 'insertData', 'customer', '{"nama":"1","email":"2","telp":"3","alamat":"17","created_at":"2019-11-02 15:50:43","status":"ENABLE"}'),
(79, '2019-11-02 15:51:31', 1, 'deleteData', 'access', '{"id":"8","access_control_id":"149","role_id":"17","status":"active"}{"id":"7","access_control_id":"147","role_id":"17","status":"active"}{"id":"6","access_control_id":"94","role_id":"17","status":"active"}'),
(80, '2019-11-02 15:51:48', 1, 'deleteData', 'access', '{"id":"11","access_control_id":"147","role_id":"17","status":"active"}{"id":"10","access_control_id":"146","role_id":"17","status":"active"}{"id":"9","access_control_id":"94","role_id":"17","status":"active"}{"id":"12","access_control_id":"149","role_id":"17","status":"active"}'),
(81, '2019-11-08 09:48:39', 1, 'insertData', 'customer', '{"nama":"Tesing","email":"testing@gmail.com","telp":"1","alamat":"1","created_at":"2019-11-08 09:48:39","status":"ENABLE"}'),
(82, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{"nama":"Soleh","email":"soleh@gmail.com","telp":"081249812947","alamat":"-","status":"ENABLE","urutan":0}'),
(83, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{"nama":"Solihun","email":"solihun@gmail.com","telp":"089182491928","alamat":"-","status":"ENABLE","urutan":1}'),
(84, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{"nama":"Gatot","email":"gatot@gmail.com","telp":"089128498129","alamat":"-","status":"ENABLE","urutan":2}'),
(85, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{"nama":"","email":"","telp":"","alamat":"","status":"ENABLE","urutan":3}'),
(86, '2020-01-07 10:20:59', 12, 'insertData', 'master_siswa', '{"nis":"091823981927","nama_lengkap":"Arvin Fairuz","tempat_lahir":"Malang","tanggal_lahir":"1997-08-02","nama_wali":"Wali","created_by":"12","created_at":"2020-01-07 10:20:59","status":"ENABLE"}'),
(87, '2020-01-07 10:20:59', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_siswa","table_id":1,"status":"ENABLE","created_at":"2020-01-07 10:20:59"}'),
(88, '2020-01-07 10:26:52', 12, 'updateData', 'role', '{"id":"17","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"13\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2019-07-01 09:03:03"}'),
(89, '2020-01-07 10:27:04', 12, 'updateData', 'role', '{"id":"18","role":"Operation","status":"ENABLE","menu":null,"created_at":"2018-10-24 10:29:54","updated_at":null}'),
(90, '2020-01-07 10:27:13', 12, 'updateData', 'role', '{"id":"18","role":"Wali Murid","status":"ENABLE","menu":"null","created_at":"2018-10-24 10:29:54","updated_at":"2020-01-07 10:27:04"}'),
(91, '2020-01-07 10:57:08', 1, 'updateData', 'role', '{"id":"18","role":"Wali Murid","status":"ENABLE","menu":"[\\"1\\",\\"14\\",\\"15\\"]","created_at":"2018-10-24 10:29:54","updated_at":"2020-01-07 10:27:13"}'),
(92, '2020-01-07 11:09:41', 12, 'insertData', 'pembayaran_spp', '{"bulan":"01-2020-01","biaya":"300000","id_siswa":null,"created_by":"12","created_at":"2020-01-07 11:09:41","status":"ENABLE"}'),
(93, '2020-01-07 11:09:45', 12, 'insertData', 'pembayaran_spp', '{"bulan":"01-2020-01","biaya":"300000","id_siswa":null,"created_by":"12","created_at":"2020-01-07 11:09:45","status":"ENABLE"}'),
(94, '2020-01-07 11:10:34', 12, 'insertData', 'pembayaran_spp', '{"bulan":"01-2020-01","biaya":"300000","id_siswa":"1","created_by":"12","created_at":"2020-01-07 11:10:34","status":"ENABLE"}'),
(95, '2020-01-07 11:10:34', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"pembayaran_spp","table_id":1,"status":"ENABLE","created_at":"2020-01-07 11:10:34"}'),
(96, '2020-01-07 11:11:46', 12, 'insertData', 'master_siswa', '{"nis":"019283901283","nama_lengkap":"Sodron","tempat_lahir":"Pakis","tanggal_lahir":"1997-09-02","nama_wali":"Sudrung","created_by":"12","created_at":"2020-01-07 11:11:46","status":"ENABLE"}'),
(97, '2020-01-07 11:11:46', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_siswa","table_id":2,"status":"ENABLE","created_at":"2020-01-07 11:11:46"}'),
(98, '2020-01-07 11:13:11', 12, 'insertData', 'pembayaran_spp', '{"bulan":"2020-01-01","biaya":"300000","id_siswa":"1","created_by":"12","created_at":"2020-01-07 11:13:11","status":"ENABLE"}'),
(99, '2020-01-07 11:13:11', 12, 'insertData', 'pembayaran_spp', '{"bulan":"2020-01-01","biaya":"300000","id_siswa":"2","created_by":"12","created_at":"2020-01-07 11:13:11","status":"ENABLE"}'),
(100, '2020-01-07 11:13:11', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"pembayaran_spp","table_id":3,"status":"ENABLE","created_at":"2020-01-07 11:13:11"}'),
(101, '2020-01-07 11:30:27', 1, 'updateData', 'role', '{"id":"18","role":"Wali Murid","status":"ENABLE","menu":"[\\"1\\"]","created_at":"2018-10-24 10:29:54","updated_at":"2020-01-07 10:57:08"}'),
(102, '2020-01-07 11:47:58', 1, 'insertData', 'file', '{"name":"6950c16c9bcc6995f376b297f163175966271.jpg","mime":"image\\/jpeg","dir":"webfile\\/6950c16c9bcc6995f376b297f163175966271.jpg","table":"pembayaran_spp","table_id":"2","updated_at":"2020-01-07 11:47:58"}'),
(103, '2020-01-07 11:47:58', 1, 'updateData', 'pembayaran_spp', '{"id":"2","id_siswa":"1","bulan":"2020-01-01","biaya":"300000","tanggal_pembayaran":"0000-00-00 00:00:00","tanggal_validasi":"0000-00-00 00:00:00","status":"ENABLE","created_at":"2020-01-07 11:13:11","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(104, '2020-01-07 11:54:15', 1, 'updateData', 'file', '{"id":"191","name":"6950c16c9bcc6995f376b297f163175966271.jpg","mime":"image\\/jpeg","dir":"webfile\\/6950c16c9bcc6995f376b297f163175966271.jpg","table":"pembayaran_spp","table_id":"2","status":null,"created_at":null,"updated_at":"2020-01-07 11:47:58"}'),
(105, '2020-01-07 11:54:15', 1, 'updateData', 'pembayaran_spp', '{"id":"2","id_siswa":"1","bulan":"2020-01-01","biaya":"300000","tanggal_pembayaran":"0000-00-00 00:00:00","tanggal_validasi":"0000-00-00 00:00:00","status":"ENABLE","created_at":"2020-01-07 11:13:11","updated_at":"2020-01-07 11:47:58","created_by":"12"}'),
(106, '2020-01-07 13:21:01', 12, 'updateData', 'pembayaran_spp', '{"id":"2","id_siswa":"1","bulan":"2020-01-01","biaya":"300000","tanggal_pembayaran":"2020-01-07 11:54:15","tanggal_validasi":"0000-00-00 00:00:00","status":"ENABLE","created_at":"2020-01-07 11:13:11","updated_at":"2020-01-07 11:54:15","created_by":"12"}'),
(107, '2020-01-07 13:32:40', 12, 'insertData', 'master_siswa', '{"nis":"0192301983290","nama_lengkap":"Lala","tempat_lahir":"Malang","tanggal_lahir":"1997-08-09","nama_wali":"Lili","created_by":"12","created_at":"2020-01-07 13:32:40","status":"ENABLE"}'),
(108, '2020-01-07 13:32:40', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_siswa","table_id":3,"status":"ENABLE","created_at":"2020-01-07 13:32:40"}'),
(109, '2020-01-07 13:33:01', 12, 'insertData', 'pembayaran_spp', '{"bulan":"2020-01-01","biaya":"300000","id_siswa":"3","created_by":"12","created_at":"2020-01-07 13:33:01","status":"ENABLE"}'),
(110, '2020-01-07 13:33:01', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"pembayaran_spp","table_id":4,"status":"ENABLE","created_at":"2020-01-07 13:33:01"}'),
(111, '2020-01-07 13:33:15', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"pembayaran_spp","table_id":0,"status":"ENABLE","created_at":"2020-01-07 13:33:15"}'),
(112, '2020-01-07 13:56:28', 12, 'updateData', 'report', '{"id":"3","name":"Statistik","query":"SELECT pembayaran_spp.bulan, a.belum_bayar, b.belum_validasi, c.sudah_bayar, d.sudah_validasi\\r\\nFROM pembayaran_spp\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_bayar\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_pembayaran = ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) a\\r\\nON pembayaran_spp.bulan = a.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_validasi\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_validasi = ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) b\\r\\nON pembayaran_spp.bulan = b.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_bayar\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_pembayaran != ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) c\\r\\nON pembayaran_spp.bulan = c.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_validasi\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_validasi != ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) d\\r\\nON pembayaran_spp.bulan = d.bulan\\r\\nGROUP BY pembayaran_spp.bulan","header":null,"status":"ENABLE","created_at":"2020-01-07 13:56:11","updated_at":null}'),
(113, '2020-01-07 13:57:34', 12, 'updateData', 'report', '{"id":"3","name":"Statistik","query":"SELECT pembayaran_spp.bulan, a.belum_bayar, b.belum_validasi, c.sudah_bayar, d.sudah_validasi\\r\\nFROM pembayaran_spp\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_bayar\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_pembayaran = ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) a\\r\\nON pembayaran_spp.bulan = a.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_validasi\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_validasi = ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) b\\r\\nON pembayaran_spp.bulan = b.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_bayar\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_pembayaran != ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) c\\r\\nON pembayaran_spp.bulan = c.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_validasi\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_validasi != ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) d\\r\\nON pembayaran_spp.bulan = d.bulan\\r\\nGROUP BY pembayaran_spp.bulan","header":"[\\"bulan\\",\\"belum_bayar\\",\\"belum_validasi\\",\\"sudah_bayar\\",\\"sudah_validasi\\"]","status":"ENABLE","created_at":"2020-01-07 13:56:11","updated_at":"2020-01-07 13:56:28"}'),
(114, '2020-01-07 13:58:08', 12, 'updateData', 'report', '{"id":"3","name":"Statistik","query":"SELECT date_format(pembayaran_spp.bulan, ''%M %Y'') as bulan, a.belum_bayar, b.belum_validasi, c.sudah_bayar, d.sudah_validasi\\r\\nFROM pembayaran_spp\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_bayar\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_pembayaran = ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) a\\r\\nON pembayaran_spp.bulan = a.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_validasi\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_validasi = ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) b\\r\\nON pembayaran_spp.bulan = b.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_bayar\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_pembayaran != ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) c\\r\\nON pembayaran_spp.bulan = c.bulan\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_validasi\\r\\n        FROM pembayaran_spp\\r\\n        WHERE pembayaran_spp.tanggal_validasi != ''0000-00-00 00:00:00''\\r\\n        GROUP BY pembayaran_spp.bulan\\r\\n        ) d\\r\\nON pembayaran_spp.bulan = d.bulan\\r\\nGROUP BY pembayaran_spp.bulan","header":"[\\"bulan\\",\\"belum_bayar\\",\\"belum_validasi\\",\\"sudah_bayar\\",\\"sudah_validasi\\"]","status":"ENABLE","created_at":"2020-01-07 13:56:11","updated_at":"2020-01-07 13:57:34"}'),
(115, '2020-01-10 09:28:03', 12, 'updateData', 'role', '{"id":"17","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"14\\",\\"15\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-01-07 10:26:52"}'),
(116, '2020-01-10 09:28:15', 12, 'updateData', 'menu_master', '{"id":"16","name":"Master","icon":"fa fa-times","link":"#","urutan":"7","parent":"0","notif":"","status":"ENABLE","created_at":"2020-01-10 09:27:29","updated_at":null}'),
(117, '2020-01-10 09:29:17', 12, 'insertData', 'master_kelas', '{"value":"A","created_by":"12","created_at":"2020-01-10 09:29:17","status":"ENABLE"}'),
(118, '2020-01-10 09:29:17', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kelas","table_id":1,"status":"ENABLE","created_at":"2020-01-10 09:29:17"}'),
(119, '2020-01-10 09:29:21', 12, 'insertData', 'master_kelas', '{"value":"B","created_by":"12","created_at":"2020-01-10 09:29:21","status":"ENABLE"}'),
(120, '2020-01-10 09:29:21', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kelas","table_id":2,"status":"ENABLE","created_at":"2020-01-10 09:29:21"}'),
(121, '2020-01-10 09:29:26', 12, 'insertData', 'master_kelas', '{"value":"V","created_by":"12","created_at":"2020-01-10 09:29:26","status":"ENABLE"}'),
(122, '2020-01-10 09:29:26', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kelas","table_id":3,"status":"ENABLE","created_at":"2020-01-10 09:29:26"}'),
(123, '2020-01-10 09:29:32', 12, 'updateData', 'master_kelas', '{"id":"3","value":"V","status":"ENABLE","created_at":"2020-01-10 09:29:26","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(124, '2020-01-10 09:39:35', 12, 'updateData', 'master_siswa', '{"id":"3","nis":"0192301983290","nama_lengkap":"Lala","tempat_lahir":"Malang","tanggal_lahir":"1997-08-09","nama_wali":"Lili","nama_ayah":"","nama_ibu":"","jenis_kelamin":"","alamat_lengkap":"","kelas":"","status":"ENABLE","created_at":"2020-01-07 13:32:40","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(125, '2020-02-06 18:38:06', 12, 'updateData', 'role', '{"id":"17","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"14\\",\\"15\\",\\"16\\",\\"17\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-01-10 09:28:03"}'),
(126, '2020-02-06 18:38:41', 12, 'updateData', 'role', '{"id":"17","role":"Admin","status":"ENABLE","menu":"[\\"1\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-02-06 18:38:06"}'),
(127, '2020-02-06 18:43:03', 12, 'updateData', 'role', '{"id":"17","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-02-06 18:38:41"}'),
(128, '2020-02-06 18:46:20', 12, 'insertData', 'master_kategori_agenda', '{"value":"Audiensi","created_by":"12","created_at":"2020-02-06 18:46:20","status":"ENABLE"}'),
(129, '2020-02-06 18:46:20', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori_agenda","table_id":1,"status":"ENABLE","created_at":"2020-02-06 18:46:20"}'),
(130, '2020-02-06 18:46:27', 12, 'insertData', 'master_kategori_agenda', '{"value":"Bantuan","created_by":"12","created_at":"2020-02-06 18:46:27","status":"ENABLE"}'),
(131, '2020-02-06 18:46:28', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori_agenda","table_id":2,"status":"ENABLE","created_at":"2020-02-06 18:46:28"}'),
(132, '2020-02-06 18:46:43', 12, 'insertData', 'master_kategori_agenda', '{"value":"Gladi\\/Survey","created_by":"12","created_at":"2020-02-06 18:46:43","status":"ENABLE"}'),
(133, '2020-02-06 18:46:43', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori_agenda","table_id":3,"status":"ENABLE","created_at":"2020-02-06 18:46:43"}'),
(134, '2020-02-06 18:47:00', 12, 'updateData', 'master_kategori_agenda', '{"id":"2","value":"Bantuan","status":"ENABLE","created_at":"2020-02-06 18:46:27","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(135, '2020-02-06 18:47:11', 12, 'updateData', 'master_kategori_agenda', '{"id":"3","value":"Gladi\\/Survey","status":"ENABLE","created_at":"2020-02-06 18:46:43","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(136, '2020-02-06 18:47:33', 12, 'insertData', 'master_agenda_role', '{"id_role":"18","value":"Bapak Bupati","created_by":"12","created_at":"2020-02-06 18:47:33","status":"ENABLE"}'),
(137, '2020-02-06 18:47:33', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":1,"status":"ENABLE","created_at":"2020-02-06 18:47:33"}'),
(138, '2020-02-06 18:47:43', 12, 'insertData', 'master_agenda_role', '{"id_role":"18","value":"Ibu Bupati","created_by":"12","created_at":"2020-02-06 18:47:43","status":"ENABLE"}'),
(139, '2020-02-06 18:47:43', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":2,"status":"ENABLE","created_at":"2020-02-06 18:47:43"}'),
(140, '2020-02-06 18:48:01', 12, 'insertData', 'master_agenda_role', '{"id_role":"18","value":"Bapak Ibu Bupati","created_by":"12","created_at":"2020-02-06 18:48:01","status":"ENABLE"}'),
(141, '2020-02-06 18:48:01', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":3,"status":"ENABLE","created_at":"2020-02-06 18:48:01"}'),
(142, '2020-02-06 18:48:12', 12, 'insertData', 'master_agenda_role', '{"id_role":"19","value":"Bapak Wakil Bupati","created_by":"12","created_at":"2020-02-06 18:48:12","status":"ENABLE"}'),
(143, '2020-02-06 18:48:12', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":4,"status":"ENABLE","created_at":"2020-02-06 18:48:12"}'),
(144, '2020-02-06 18:48:26', 12, 'insertData', 'master_agenda_role', '{"id_role":"19","value":"Ibu Wakil Bupati","created_by":"12","created_at":"2020-02-06 18:48:26","status":"ENABLE"}'),
(145, '2020-02-06 18:48:26', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":5,"status":"ENABLE","created_at":"2020-02-06 18:48:26"}'),
(146, '2020-02-06 18:48:37', 12, 'insertData', 'master_agenda_role', '{"id_role":"19","value":"Bapak Ibu Wakil Bupati","created_by":"12","created_at":"2020-02-06 18:48:37","status":"ENABLE"}'),
(147, '2020-02-06 18:48:37', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":6,"status":"ENABLE","created_at":"2020-02-06 18:48:37"}'),
(148, '2020-02-06 18:49:00', 12, 'insertData', 'master_agenda_role', '{"id_role":"20","value":"Sekretaris Daerah","created_by":"12","created_at":"2020-02-06 18:49:00","status":"ENABLE"}'),
(149, '2020-02-06 18:49:00', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":7,"status":"ENABLE","created_at":"2020-02-06 18:49:00"}'),
(150, '2020-02-06 18:49:24', 12, 'insertData', 'master_agenda_role', '{"id_role":"21","value":"Assisten I Sekda","created_by":"12","created_at":"2020-02-06 18:49:24","status":"ENABLE"}'),
(151, '2020-02-06 18:49:24', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":8,"status":"ENABLE","created_at":"2020-02-06 18:49:24"}'),
(152, '2020-02-06 18:49:35', 12, 'insertData', 'master_agenda_role', '{"id_role":"22","value":"Assisten II Sekda","created_by":"12","created_at":"2020-02-06 18:49:35","status":"ENABLE"}'),
(153, '2020-02-06 18:49:35', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":9,"status":"ENABLE","created_at":"2020-02-06 18:49:35"}'),
(154, '2020-02-06 18:49:44', 12, 'insertData', 'master_agenda_role', '{"id_role":"17","value":"Assisten III Sekda","created_by":"12","created_at":"2020-02-06 18:49:44","status":"ENABLE"}'),
(155, '2020-02-06 18:49:44', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":10,"status":"ENABLE","created_at":"2020-02-06 18:49:44"}'),
(156, '2020-02-06 18:49:55', 12, 'insertData', 'master_agenda_role', '{"id_role":"24","value":"Protokol","created_by":"12","created_at":"2020-02-06 18:49:55","status":"ENABLE"}'),
(157, '2020-02-06 18:49:55', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda_role","table_id":11,"status":"ENABLE","created_at":"2020-02-06 18:49:55"}'),
(158, '2020-02-07 14:04:04', 12, 'deleteData', 'user', '{"id":"1","nip":"smartsoft","name":"Smartsoft Studio","email":"smartsoftstudio1@mail.com","password":"21232f297a57a5a743894a0e4a801fc3","role_id":"17","desc":"asda","status":"0","created_at":"2018-02-23 16:09:49","updated_at":"2019-02-19 11:02:53"}'),
(159, '2020-02-07 14:04:05', 12, 'deleteData', 'file', '{"id":"40","name":"6950c16c9bcc6995f376b297f16317593930.png","mime":"image\\/png","dir":"webfile\\/6950c16c9bcc6995f376b297f16317593930.png","table":"user","table_id":"1","status":null,"created_at":null,"updated_at":"2019-02-18 16:07:47"}'),
(160, '2020-02-07 14:04:09', 12, 'deleteData', 'user', '{"id":"9","nip":"operator","name":"Operator","email":"","password":"4b583376b2767b923c3e1da60d10de59","role_id":"18","desc":"0","status":"0","created_at":"2018-10-24 10:53:02","updated_at":"2019-02-18 16:18:41"}'),
(161, '2020-02-07 14:04:10', 12, 'deleteData', 'file', '{"id":"48","name":"6950c16c9bcc6995f376b297f163175955554.png","mime":"image\\/png","dir":"webfile\\/6950c16c9bcc6995f376b297f163175955554.png","table":"user","table_id":"9","status":null,"created_at":null,"updated_at":"2019-02-18 16:18:41"}'),
(162, '2020-02-07 14:04:13', 12, 'deleteData', 'user', '{"id":"11","nip":"oplos","name":"Oplos","email":"oplos@oplos.com","password":"0192023a7bbd73250516f069df18b500","role_id":"18","desc":"-\\r\\n","status":"0","created_at":"2018-11-15 16:47:11","updated_at":"2019-10-01 14:21:22"}'),
(163, '2020-02-07 14:04:13', 12, 'deleteData', 'file', '{"id":"45","name":"6950c16c9bcc6995f376b297f163175988920.png","mime":"image\\/png","dir":"webfile\\/6950c16c9bcc6995f376b297f163175988920.png","table":"user","table_id":"11","status":"ENABLE","created_at":"2018-11-15 16:47:11","updated_at":"2019-02-18 16:18:34"}'),
(164, '2020-02-07 14:04:17', 12, 'deleteData', 'user', '{"id":"13","nip":"karya123studio","name":"Karya Studio","email":"karya123studio@gmail.com","password":"356f3bfc360b9018ab724b11064e2ddf","role_id":"17","desc":"-","status":"0","created_at":"2018-02-23 16:09:49","updated_at":"2019-02-19 11:02:53"}'),
(165, '2020-02-07 14:29:06', 14, 'insertData', 'master_agenda', '{"id_role":"1","id_kategori":"1","nama_kegiatan":"Rapat Bulanan","tanggal":"2020-02-07","tempat":"Kantor Bupati","pakaian":"Jas","undangan":"<p>Undangan<\\/p>","peran_pimpinan":"<p>Pimpin<\\/p>","urutan_acara":"<p><ul><li>Makan<\\/li><li>Minum<\\/li><li>Istirahat<\\/li><li>Pulang<\\/li><\\/ul><\\/p>","tata_ruangan":"-","perlengkapan":"-","penyelenggara":"--","petugas_protokol":"-","catatan":"<p>tidak ada<\\/p>","status_kehadiran":"0","perwakilan":"-","created_by":"14","created_at":"2020-02-07 14:29:06","status":"ENABLE"}'),
(166, '2020-02-07 14:29:06', 14, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_agenda","table_id":1,"status":"ENABLE","created_at":"2020-02-07 14:29:06"}'),
(167, '2020-02-07 15:14:04', 14, 'updateData', 'master_agenda', '{"id":"1","id_role":"1","id_kategori":"1","nama_kegiatan":"Rapat Bulanan","tanggal":"2020-02-07","jam":"00:00:00","tempat":"Kantor Bupati","pakaian":"Jas","undangan":"<p>Undangan<\\/p>","peran_pimpinan":"<p>Pimpin<\\/p>","urutan_acara":"<p><ul><li>Makan<\\/li><li>Minum<\\/li><li>Istirahat<\\/li><li>Pulang<\\/li><\\/ul><\\/p>","tata_ruangan":"-","perlengkapan":"-","penyelenggara":"--","petugas_protokol":"-","catatan":"<p>tidak ada<\\/p>","status_kehadiran":"0","perwakilan":"-","status":"ENABLE","created_at":"2020-02-07 14:29:06","updated_at":"0000-00-00 00:00:00","created_by":"14"}'),
(168, '2020-02-07 15:16:04', 14, 'updateData', 'role', '{"id":"18","role":"Bupati","status":"ENABLE","menu":"[\\"1\\",\\"18\\",\\"16\\",\\"20\\",\\"19\\"]","created_at":"2018-10-24 10:29:54","updated_at":"2020-01-07 11:30:27"}'),
(169, '2020-02-17 14:17:56', 12, 'updateData', 'role', '{"id":"0","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"18\\",\\"16\\",\\"20\\",\\"19\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-02-06 18:43:03"}'),
(170, '2020-02-17 14:45:20', 12, 'updateData', 'role', '{"id":"0","role":"Admin","status":"ENABLE","menu":"[\\"1\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-02-17 14:17:56"}'),
(171, '2020-02-17 14:47:01', 12, 'insertData', 'master_status', '{"nama_status":"DOne","created_by":"12","created_at":"2020-02-17 14:47:01","status":"ENABLE"}'),
(172, '2020-02-17 14:47:01', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_status","table_id":1,"status":"ENABLE","created_at":"2020-02-17 14:47:01"}'),
(173, '2020-02-17 14:47:07', 12, 'updateData', 'master_status', '{"id":"1","nama_status":"DOne","status":"ENABLE","created_at":"2020-02-17 14:47:01","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(174, '2020-02-17 14:47:12', 12, 'insertData', 'master_status', '{"nama_status":"In Progress","created_by":"12","created_at":"2020-02-17 14:47:12","status":"ENABLE"}'),
(175, '2020-02-17 14:47:13', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_status","table_id":2,"status":"ENABLE","created_at":"2020-02-17 14:47:13"}'),
(176, '2020-02-17 14:47:22', 12, 'insertData', 'master_status', '{"nama_status":"To Be Follow Up","created_by":"12","created_at":"2020-02-17 14:47:22","status":"ENABLE"}'),
(177, '2020-02-17 14:47:22', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_status","table_id":3,"status":"ENABLE","created_at":"2020-02-17 14:47:22"}'),
(178, '2020-02-17 14:47:27', 12, 'insertData', 'master_status', '{"nama_status":"Pending","created_by":"12","created_at":"2020-02-17 14:47:27","status":"ENABLE"}'),
(179, '2020-02-17 14:47:27', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_status","table_id":4,"status":"ENABLE","created_at":"2020-02-17 14:47:27"}'),
(180, '2020-02-17 14:47:34', 12, 'insertData', 'master_priority', '{"priority":"Normal","created_by":"12","created_at":"2020-02-17 14:47:34","status":"ENABLE"}'),
(181, '2020-02-17 14:47:35', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_priority","table_id":1,"status":"ENABLE","created_at":"2020-02-17 14:47:35"}'),
(182, '2020-02-17 14:47:40', 12, 'insertData', 'master_priority', '{"priority":"High","created_by":"12","created_at":"2020-02-17 14:47:40","status":"ENABLE"}'),
(183, '2020-02-17 14:47:40', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_priority","table_id":2,"status":"ENABLE","created_at":"2020-02-17 14:47:40"}'),
(184, '2020-02-17 14:48:12', 12, 'insertData', 'master_kategori', '{"kode_kategori":"SaP","nama_kategori":"Strategy And Performance","created_by":"12","created_at":"2020-02-17 14:48:12","status":"ENABLE"}'),
(185, '2020-02-17 14:48:12', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori","table_id":1,"status":"ENABLE","created_at":"2020-02-17 14:48:12"}'),
(186, '2020-02-17 14:48:27', 12, 'insertData', 'master_kategori', '{"kode_kategori":"Kewenangan","nama_kategori":"Kwng","created_by":"12","created_at":"2020-02-17 14:48:27","status":"ENABLE"}'),
(187, '2020-02-17 14:48:27', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori","table_id":2,"status":"ENABLE","created_at":"2020-02-17 14:48:27"}'),
(188, '2020-02-17 14:48:53', 12, 'updateData', 'master_kategori', '{"id":"2","kode_kategori":"Kewenangan","nama_kategori":"Kwng","status":"ENABLE","created_at":"2020","updated_at":"0","created_by":"12"}'),
(189, '2020-02-17 14:49:07', 12, 'insertData', 'master_kategori', '{"kode_kategori":"ASQ","nama_kategori":"Asset Qualitu","created_by":"12","created_at":"2020-02-17 14:49:07","status":"ENABLE"}'),
(190, '2020-02-17 14:49:07', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori","table_id":3,"status":"ENABLE","created_at":"2020-02-17 14:49:07"}'),
(191, '2020-02-17 14:49:13', 12, 'updateData', 'master_kategori', '{"id":"3","kode_kategori":"ASQ","nama_kategori":"Asset Qualitu","status":"ENABLE","created_at":"2020","updated_at":"0","created_by":"12"}'),
(192, '2020-02-17 14:49:40', 12, 'insertData', 'master_kategori', '{"kode_kategori":"L&C","nama_kategori":"Legal and Compliance","created_by":"12","created_at":"2020-02-17 14:49:40","status":"ENABLE"}'),
(193, '2020-02-17 14:49:40', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori","table_id":4,"status":"ENABLE","created_at":"2020-02-17 14:49:40"}'),
(194, '2020-02-17 14:49:46', 12, 'updateData', 'master_kategori', '{"id":"1","kode_kategori":"SaP","nama_kategori":"Strategy And Performance","status":"ENABLE","created_at":"2020","updated_at":"0","created_by":"12"}'),
(195, '2020-02-17 14:49:58', 12, 'insertData', 'master_kategori', '{"kode_kategori":"HMC","nama_kategori":"Human Capital","created_by":"12","created_at":"2020-02-17 14:49:58","status":"ENABLE"}'),
(196, '2020-02-17 14:49:58', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kategori","table_id":5,"status":"ENABLE","created_at":"2020-02-17 14:49:58"}'),
(197, '2020-02-17 14:50:38', 12, 'insertData', 'master_group_head_pic', '{"kode_group_head_pice":"SPM","nama_group_head_pice":"SPM","created_by":"12","created_at":"2020-02-17 14:50:38","status":"ENABLE"}'),
(198, '2020-02-17 14:50:38', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group_head_pic","table_id":1,"status":"ENABLE","created_at":"2020-02-17 14:50:38"}'),
(199, '2020-02-17 14:50:44', 12, 'insertData', 'master_group_head_pic', '{"kode_group_head_pice":"OCE","nama_group_head_pice":"OCE","created_by":"12","created_at":"2020-02-17 14:50:44","status":"ENABLE"}'),
(200, '2020-02-17 14:50:44', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group_head_pic","table_id":2,"status":"ENABLE","created_at":"2020-02-17 14:50:44"}'),
(201, '2020-02-17 14:51:07', 12, 'insertData', 'master_group_head_pic', '{"kode_group_head_pice":"IR","nama_group_head_pice":"IR","created_by":"12","created_at":"2020-02-17 14:51:07","status":"ENABLE"}'),
(202, '2020-02-17 14:51:07', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group_head_pic","table_id":3,"status":"ENABLE","created_at":"2020-02-17 14:51:07"}'),
(203, '2020-02-17 14:51:16', 12, 'insertData', 'master_group_head_pic', '{"kode_group_head_pice":"Accounting","nama_group_head_pice":"Accounting","created_by":"12","created_at":"2020-02-17 14:51:16","status":"ENABLE"}'),
(204, '2020-02-17 14:51:16', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group_head_pic","table_id":4,"status":"ENABLE","created_at":"2020-02-17 14:51:16"}'),
(205, '2020-02-17 14:51:34', 12, 'insertData', 'master_group_head_pic', '{"kode_group_head_pice":"SMC","nama_group_head_pice":"SMC","created_by":"12","created_at":"2020-02-17 14:51:34","status":"ENABLE"}'),
(206, '2020-02-17 14:51:35', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group_head_pic","table_id":5,"status":"ENABLE","created_at":"2020-02-17 14:51:35"}'),
(207, '2020-02-17 16:03:46', 12, 'insertData', 'master_group', '{"kode_group":"G-A","nama_group":"Group A","created_by":"12","created_at":"2020-02-17 16:03:46","status":"ENABLE"}'),
(208, '2020-02-17 16:03:46', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group","table_id":1,"status":"ENABLE","created_at":"2020-02-17 16:03:46"}'),
(209, '2020-02-17 16:03:53', 12, 'insertData', 'master_group', '{"kode_group":"G-B","nama_group":"Group B","created_by":"12","created_at":"2020-02-17 16:03:53","status":"ENABLE"}'),
(210, '2020-02-17 16:03:53', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_group","table_id":2,"status":"ENABLE","created_at":"2020-02-17 16:03:53"}'),
(211, '2020-02-18 00:36:40', 12, 'insertData', 'agenda_radir', '{"id_parent":"0","kode_agenda":"qw9dy9qw","judul_agenda":"Rapat Besar","id_status":"4","complete":"0","id_priority":"1","tanggal":"2020-02-18","ruangan":"203","description":"harap datang 10 menit sebelum rapat dimulai","kategori":"[{\\"kategori\\":\\"1\\"},{\\"kategori\\":\\"3\\"}]","group_head":"[{\\"group_head\\":\\"1\\",\\"group_head_sub\\":\\"21\\"},{\\"group_head\\":\\"0\\",\\"group_head_sub\\":\\"23\\"}]","group":"[{\\"group\\":\\"1\\"}]","attachment":"{\\"1\\":{\\"files\\":\\"document-1-3mn.pdf\\"}}","start_date":"2020-02-18 08:00","due_date":"2020-02-18 12:00","complete_date":"2020-02-18 12:00","status":"ENABLE","created_at":"2020-02-18 00:36:40","created_by":"12"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(212, '2020-02-18 00:37:01', 12, 'insertData', 'agenda_radir', '{"id_parent":"0","kode_agenda":"qw9dy9qw","judul_agenda":"Rapat Besar","id_status":"4","complete":"0","id_priority":"1","tanggal":"2020-02-18","ruangan":"203","description":"harap datang 10 menit sebelum rapat dimulai","kategori":"[{\\"kategori\\":\\"1\\"},{\\"kategori\\":\\"3\\"}]","group_head_pic":"[{\\"group_head\\":\\"1\\",\\"group_head_sub\\":\\"21\\"},{\\"group_head\\":\\"0\\",\\"group_head_sub\\":\\"23\\"}]","group":"[{\\"group\\":\\"1\\"}]","attachment":"{\\"1\\":{\\"files\\":\\"document-1-3mn.pdf\\"}}","start_date":"2020-02-18 08:00","due_date":"2020-02-18 12:00","complete_date":"2020-02-18 12:00","status":"ENABLE","created_at":"2020-02-18 00:37:01","created_by":"12"}'),
(213, '2020-02-18 00:46:11', 12, 'insertData', 'agenda_radir', '{"id_parent":"0","kode_agenda":"qw9dy9qw","judul_agenda":"Rapat Besar","id_status":"4","complete":"0","id_priority":"1","tanggal":"2020-02-18","ruangan":"203","description":"harap datang 10 menit sebelum rapat dimulai","kategori":"[{\\"kategori\\":\\"1\\"},{\\"kategori\\":\\"3\\"}]","group_head_pic":"[{\\"group_head\\":\\"1\\",\\"group_head_sub\\":\\"21\\"},{\\"group_head\\":\\"0\\",\\"group_head_sub\\":\\"23\\"}]","group":"[{\\"group\\":\\"1\\"}]","attachment":"[{\\"files\\":\\"document-1-1min.pdf\\"},{\\"files\\":\\"document-1-3mn.pdf\\"}]","start_date":"2020-02-18 08:00","due_date":"2020-02-18 12:00","complete_date":"2020-02-18 12:00","status":"ENABLE","created_at":"2020-02-18 00:46:11","created_by":"12"}'),
(214, '2020-02-18 00:47:08', 12, 'insertData', 'agenda_radir', '{"id_parent":"0","kode_agenda":"qw9dy9qw","judul_agenda":"Rapat Besar","id_status":"4","complete":"0","id_priority":"1","tanggal":"2020-02-18","ruangan":"203","description":"harap datang 10 menit sebelum rapat dimulai","kategori":"[{\\"kategori\\":\\"1\\"}]","group_head_pic":"[{\\"group_head\\":\\"1\\",\\"group_head_sub\\":\\"21\\"}]","group":"[{\\"group\\":\\"1\\"}]","attachment":"[{\\"files\\":\\"document-1-1min.pdf\\"},{\\"files\\":\\"document-1-3mn.pdf\\"}]","start_date":"2020-02-18 08:00","due_date":"2020-02-18 12:00","complete_date":"2020-02-18 12:00","status":"ENABLE","created_at":"2020-02-18 00:47:08","created_by":"12"}'),
(215, '2020-02-18 00:47:57', 12, 'insertData', 'agenda_radir', '{"id_parent":"0","kode_agenda":"qw9dy9qw","judul_agenda":"Rapat Besar","id_status":"4","complete":"0","id_priority":"1","tanggal":"2020-02-18","ruangan":"203","description":"harap datang 10 menit sebelum rapat dimulai","kategori":"[{\\"kategori\\":\\"1\\"}]","group_head_pic":"[{\\"group_head\\":\\"1\\",\\"group_head_sub\\":\\"21\\"}]","group":"[{\\"group\\":\\"1\\"}]","attachment":"[{\\"files\\":\\"document-2-1min.pdf\\"},{\\"files\\":\\"document-2-3mn.pdf\\"}]","start_date":"2020-02-18 08:00","due_date":"2020-02-18 12:00","complete_date":"2020-02-18 12:00","status":"ENABLE","created_at":"2020-02-18 00:47:57","created_by":"12"}'),
(216, '2020-02-18 01:12:20', 12, 'insertData', 'agenda_radir', '{"kategori":"null","group_head_pic":"null","group":"null","attachment":"null","start_date":" ","due_date":" ","complete_date":" ","status":"ENABLE","created_at":"2020-02-18 01:12:20","created_by":"12"}'),
(217, '2020-03-04 08:49:09', 12, 'updateData', 'role', '{"id":"0","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"21\\",\\"16\\",\\"22\\",\\"23\\",\\"24\\",\\"25\\",\\"26\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-02-17 14:45:20"}'),
(218, '2020-03-04 09:29:32', 12, 'updateData', 'role', '{"id":"0","role":"Admin","status":"ENABLE","menu":"[\\"1\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-04 08:49:09"}'),
(219, '2020-03-04 09:30:24', 12, 'updateData', 'menu_master', '{"id":"28","name":"Master Kode Rekening Sub","icon":"fa fa-circle","link":"master\\/master_kode_rekening_sub","urutan":"1","parent":"16","notif":"","status":"ENABLE","created_at":"2020-03-04 09:28:43","updated_at":null}'),
(220, '2020-03-04 09:31:15', 12, 'insertData', 'master_kode_rekening', '{"nama":"Aktiva Lancar","created_by":"12","created_at":"2020-03-04 09:31:15","status":"ENABLE"}'),
(221, '2020-03-04 09:31:16', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening","table_id":1,"status":"ENABLE","created_at":"2020-03-04 09:31:16"}'),
(222, '2020-03-04 09:31:24', 12, 'insertData', 'master_kode_rekening', '{"nama":"Aktiva Tetap","created_by":"12","created_at":"2020-03-04 09:31:24","status":"ENABLE"}'),
(223, '2020-03-04 09:31:24', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening","table_id":2,"status":"ENABLE","created_at":"2020-03-04 09:31:24"}'),
(224, '2020-03-04 09:31:38', 12, 'insertData', 'master_kode_rekening', '{"nama":"Akumulasi Penyusulan","created_by":"12","created_at":"2020-03-04 09:31:38","status":"ENABLE"}'),
(225, '2020-03-04 09:31:38', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening","table_id":3,"status":"ENABLE","created_at":"2020-03-04 09:31:38"}'),
(226, '2020-03-04 09:31:50', 12, 'insertData', 'master_kode_rekening_sub', '{"id_main":"1","nama":"Kas","created_by":"12","created_at":"2020-03-04 09:31:50","status":"ENABLE"}'),
(227, '2020-03-04 09:31:51', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening_sub","table_id":1,"status":"ENABLE","created_at":"2020-03-04 09:31:51"}'),
(228, '2020-03-04 09:31:55', 12, 'insertData', 'master_kode_rekening_sub', '{"id_main":"1","nama":"ank","created_by":"12","created_at":"2020-03-04 09:31:55","status":"ENABLE"}'),
(229, '2020-03-04 09:31:55', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening_sub","table_id":2,"status":"ENABLE","created_at":"2020-03-04 09:31:55"}'),
(230, '2020-03-04 09:32:00', 12, 'updateData', 'master_kode_rekening_sub', '{"id":"2","id_main":"1","nama":"ank","status":"ENABLE","created_at":"2020-03-04 09:31:55","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(231, '2020-03-04 09:32:09', 12, 'insertData', 'master_kode_rekening_sub', '{"id_main":"1","nama":"Perlengkapan","created_by":"12","created_at":"2020-03-04 09:32:09","status":"ENABLE"}'),
(232, '2020-03-04 09:32:09', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening_sub","table_id":3,"status":"ENABLE","created_at":"2020-03-04 09:32:09"}'),
(233, '2020-03-04 09:32:20', 12, 'insertData', 'master_kode_rekening_sub', '{"id_main":"1","nama":"Persediaan Bahan Baku","created_by":"12","created_at":"2020-03-04 09:32:20","status":"ENABLE"}'),
(234, '2020-03-04 09:32:20', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening_sub","table_id":4,"status":"ENABLE","created_at":"2020-03-04 09:32:20"}'),
(235, '2020-03-04 09:32:31', 12, 'insertData', 'master_kode_rekening_sub', '{"id_main":"1","nama":"Persediaan Barang Dagang","created_by":"12","created_at":"2020-03-04 09:32:31","status":"ENABLE"}'),
(236, '2020-03-04 09:32:31', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_kode_rekening_sub","table_id":5,"status":"ENABLE","created_at":"2020-03-04 09:32:31"}'),
(237, '2020-03-04 10:30:34', 12, 'insertData', 'master_jurnal_sub', '{"kode_transaksi":"20200304-W80RU","id_rekening":"1","debet":"5000","kredit":"4000","created_by":"12","created_at":"2020-03-04 10:30:34","status":"ENABLE"}'),
(238, '2020-03-04 10:30:34', 12, 'insertData', 'master_jurnal_sub', '{"kode_transaksi":"20200304-W80RU","id_rekening":"3","debet":"3000","kredit":"2500","created_by":"12","created_at":"2020-03-04 10:30:34","status":"ENABLE"}'),
(239, '2020-03-04 10:30:35', 12, 'insertData', 'master_jurnal', '{"kode_transaksi":"20200304-W80RU","tanggal_transaksi":"2020-03-04 10:30:35","nama_transaksi":"","total_debet":null,"total_kredit":null,"created_by":"12","created_at":"2020-03-04 10:30:35","status":"ENABLE"}'),
(240, '2020-03-04 10:30:53', 12, 'insertData', 'master_jurnal_sub', '{"kode_transaksi":"20200304-42CX3","id_rekening":"1","debet":"5000","kredit":"4000","created_by":"12","created_at":"2020-03-04 10:30:53","status":"ENABLE"}'),
(241, '2020-03-04 10:30:54', 12, 'insertData', 'master_jurnal_sub', '{"kode_transaksi":"20200304-42CX3","id_rekening":"3","debet":"3000","kredit":"2500","created_by":"12","created_at":"2020-03-04 10:30:54","status":"ENABLE"}'),
(242, '2020-03-04 10:30:54', 12, 'insertData', 'master_jurnal', '{"kode_transaksi":"20200304-42CX3","tanggal_transaksi":"2020-03-04 10:30:54","nama_transaksi":"","total_debet":"8000","total_kredit":"6500","created_by":"12","created_at":"2020-03-04 10:30:54","status":"ENABLE"}'),
(243, '2020-03-04 10:30:54', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jurnal_sub","table_id":1,"status":"ENABLE","created_at":"2020-03-04 10:30:54"}'),
(244, '2020-03-04 10:32:06', 12, 'insertData', 'master_jurnal_sub', '{"kode_transaksi":"20200304-LK21K","id_rekening":"2","debet":"5000","kredit":"4000","created_by":"12","created_at":"2020-03-04 10:32:06","status":"ENABLE"}'),
(245, '2020-03-04 10:32:07', 12, 'insertData', 'master_jurnal_sub', '{"kode_transaksi":"20200304-LK21K","id_rekening":"4","debet":"3000","kredit":"2000","created_by":"12","created_at":"2020-03-04 10:32:07","status":"ENABLE"}'),
(246, '2020-03-04 10:32:07', 12, 'insertData', 'master_jurnal', '{"kode_transaksi":"20200304-LK21K","tanggal_transaksi":"2020-03-04 10:32:07","nama_transaksi":"Coba 2","total_debet":"8000","total_kredit":"6000","created_by":"12","created_at":"2020-03-04 10:32:07","status":"ENABLE"}'),
(247, '2020-03-04 10:32:07', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jurnal_sub","table_id":2,"status":"ENABLE","created_at":"2020-03-04 10:32:07"}'),
(248, '2020-03-05 07:20:18', 12, 'updateData', 'menu_master', '{"id":"29","name":"Jurnal","icon":"fa fa-archive","link":"master\\/master_jurnal_sub","urutan":"1","parent":"0","notif":"","status":"ENABLE","created_at":"2020-03-04 09:29:21","updated_at":null}'),
(249, '2020-03-17 15:33:19', 12, 'updateData', 'role', '{"id":"0","role":"Superadmin","status":"ENABLE","menu":"[\\"1\\",\\"29\\",\\"16\\",\\"28\\",\\"27\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-04 09:29:32"}'),
(250, '2020-03-17 18:10:06', 12, 'updateData', 'role', '{"id":"0","role":"Superadmin","status":"ENABLE","menu":"[\\"1\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-17 15:33:19"}'),
(251, '2020-03-17 18:10:33', 12, 'updateData', 'menu_master', '{"id":"32","name":"Desa","icon":"fa fa-map-marker","link":"master\\/master_desa","urutan":"0","parent":"0","notif":"","status":"ENABLE","created_at":"2020-03-17 18:04:28","updated_at":null}'),
(252, '2020-03-17 18:11:03', 12, 'insertData', 'master_desa', '{"nama":"Desa A","alamat":"Jalan Diponegoro nomor 21 Surabaya","created_by":"12","created_at":"2020-03-17 18:11:03","status":"ENABLE"}'),
(253, '2020-03-17 18:11:03', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_desa","table_id":1,"status":"ENABLE","created_at":"2020-03-17 18:11:03"}'),
(254, '2020-03-17 18:11:10', 12, 'insertData', 'master_desa', '{"nama":"Desa B","alamat":"Jalan Diponegoro nomor 56 Surabaya","created_by":"12","created_at":"2020-03-17 18:11:10","status":"ENABLE"}'),
(255, '2020-03-17 18:11:10', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_desa","table_id":2,"status":"ENABLE","created_at":"2020-03-17 18:11:10"}'),
(256, '2020-03-17 18:11:50', 12, 'insertData', 'master_jenis_sampah', '{"nama":"Plastik","created_by":"12","created_at":"2020-03-17 18:11:50","status":"ENABLE"}'),
(257, '2020-03-17 18:11:50', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah","table_id":1,"status":"ENABLE","created_at":"2020-03-17 18:11:50"}'),
(258, '2020-03-17 18:11:57', 12, 'insertData', 'master_jenis_sampah', '{"nama":"Kertas","created_by":"12","created_at":"2020-03-17 18:11:57","status":"ENABLE"}'),
(259, '2020-03-17 18:11:57', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah","table_id":2,"status":"ENABLE","created_at":"2020-03-17 18:11:57"}'),
(260, '2020-03-17 18:12:02', 12, 'insertData', 'master_jenis_sampah', '{"nama":"Logam","created_by":"12","created_at":"2020-03-17 18:12:02","status":"ENABLE"}'),
(261, '2020-03-17 18:12:02', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah","table_id":3,"status":"ENABLE","created_at":"2020-03-17 18:12:02"}'),
(262, '2020-03-17 18:12:22', 12, 'insertData', 'master_jenis_sampah_sub', '{"id_jenis":"1","nama":"PP","created_by":"12","created_at":"2020-03-17 18:12:22","status":"ENABLE"}'),
(263, '2020-03-17 18:12:22', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah_sub","table_id":1,"status":"ENABLE","created_at":"2020-03-17 18:12:22"}'),
(264, '2020-03-17 18:12:26', 12, 'insertData', 'master_jenis_sampah_sub', '{"id_jenis":"1","nama":"HD","created_by":"12","created_at":"2020-03-17 18:12:26","status":"ENABLE"}'),
(265, '2020-03-17 18:12:26', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah_sub","table_id":2,"status":"ENABLE","created_at":"2020-03-17 18:12:26"}'),
(266, '2020-03-17 18:13:13', 12, 'updateData', 'master_jenis_sampah_sub', '{"id":"1","id_jenis":"1","nama":"PP","harga":"0","status":"ENABLE","created_at":"2020-03-17 18:12:22","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(267, '2020-03-17 18:13:19', 12, 'updateData', 'master_jenis_sampah_sub', '{"id":"2","id_jenis":"1","nama":"HD","harga":"0","status":"ENABLE","created_at":"2020-03-17 18:12:26","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(268, '2020-03-17 18:13:35', 12, 'insertData', 'master_jenis_sampah_sub', '{"id_jenis":"2","nama":"Kardus","harga":"20000","created_by":"12","created_at":"2020-03-17 18:13:35","status":"ENABLE"}'),
(269, '2020-03-17 18:13:36', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah_sub","table_id":3,"status":"ENABLE","created_at":"2020-03-17 18:13:36"}'),
(270, '2020-03-17 18:13:47', 12, 'insertData', 'master_jenis_sampah_sub', '{"id_jenis":"2","nama":"HVS","harga":"10000","created_by":"12","created_at":"2020-03-17 18:13:47","status":"ENABLE"}'),
(271, '2020-03-17 18:13:47', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah_sub","table_id":4,"status":"ENABLE","created_at":"2020-03-17 18:13:47"}'),
(272, '2020-03-17 18:14:04', 12, 'insertData', 'master_jenis_sampah_sub', '{"id_jenis":"1","nama":"Besi","harga":"35000","created_by":"12","created_at":"2020-03-17 18:14:04","status":"ENABLE"}'),
(273, '2020-03-17 18:14:04', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah_sub","table_id":5,"status":"ENABLE","created_at":"2020-03-17 18:14:04"}'),
(274, '2020-03-17 18:14:16', 12, 'insertData', 'master_jenis_sampah_sub', '{"id_jenis":"3","nama":"Alumunium","harga":"45000","created_by":"12","created_at":"2020-03-17 18:14:16","status":"ENABLE"}'),
(275, '2020-03-17 18:14:16', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_jenis_sampah_sub","table_id":6,"status":"ENABLE","created_at":"2020-03-17 18:14:16"}'),
(276, '2020-03-17 18:14:23', 12, 'updateData', 'master_jenis_sampah_sub', '{"id":"5","id_jenis":"1","nama":"Besi","harga":"35000","status":"ENABLE","created_at":"2020-03-17 18:14:04","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(277, '2020-03-17 18:26:09', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-51FA5","id_jenis":"2","id_jenis_id_jenis_sub":"3","harga":"20000","berat":"20","created_at":"2020-03-17 18:26:09","status":"ENABLE","created_by":"12"}'),
(278, '2020-03-17 18:26:26', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-EXI7H","id_jenis":"2","id_jenis_sub":"3","harga":"20000","berat":"20","created_at":"2020-03-17 18:26:26","status":"ENABLE","created_by":"12"}'),
(279, '2020-03-17 18:26:26', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-EXI7H","id_jenis":"3","id_jenis_sub":null,"harga":"35000","berat":"15","created_at":"2020-03-17 18:26:26","status":"ENABLE","created_by":"12"}'),
(280, '2020-03-17 18:27:16', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-AIZJ5","id_jenis":"2","id_jenis_sub":"3","harga":"20000","berat":"20","created_at":"2020-03-17 18:27:16","status":"ENABLE","created_by":"12"}'),
(281, '2020-03-17 18:27:17', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-AIZJ5","id_jenis":"3","id_jenis_sub":"5","harga":"35000","berat":"15","created_at":"2020-03-17 18:27:17","status":"ENABLE","created_by":"12"}'),
(282, '2020-03-17 18:27:17', 12, 'insertData', 'sampah', '{"id_masyarakat":"12","total":"925000","kode":"20200317-AIZJ5","created_by":"12","created_at":"2020-03-17 18:27:16","status":"ENABLE","status_1":0}'),
(283, '2020-03-17 18:27:17', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"sampah","table_id":1,"status":"ENABLE","created_at":"2020-03-17 18:27:17"}'),
(284, '2020-03-17 19:07:46', 12, 'insertData', 'sampah_sub', '{"kode":null,"id_jenis":"2","id_jenis_sub":"4","harga":"10000","berat":"20","created_at":"2020-03-17 19:07:46","status":"ENABLE","created_by":"12"}'),
(285, '2020-03-17 19:10:05', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-AIZJ5","id_jenis":"2","id_jenis_sub":"3","harga":"20000","berat":"20","created_at":"2020-03-17 19:10:05","status":"ENABLE","created_by":"12"}'),
(286, '2020-03-17 19:10:06', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-AIZJ5","id_jenis":"1","id_jenis_sub":"1","harga":"10000","berat":"10","created_at":"2020-03-17 19:10:06","status":"ENABLE","created_by":"12"}'),
(287, '2020-03-17 19:10:06', 12, 'insertData', 'sampah_sub', '{"kode":"20200317-AIZJ5","id_jenis":"3","id_jenis_sub":"5","harga":"35000","berat":"20","created_at":"2020-03-17 19:10:06","status":"ENABLE","created_by":"12"}'),
(288, '2020-03-18 00:47:37', 12, 'insertData', 'user', '{"nip":"admindesaA","name":"admindesaA","email":"admindesaA@gmail.com","password":"bc459fa8ad966303aac66c1db0702cd2","role_id":"1","sub_role_id":"1","desc":"-","created_by":"12","created_at":"2020-03-18 00:47:37","status":"ENABLE"}'),
(289, '2020-03-18 00:52:16', 12, 'insertData', 'user', '{"nip":"admindesaA","name":"admindesaA","email":"admindesaA@gmail.com","password":"bc459fa8ad966303aac66c1db0702cd2","role_id":"1","sub_role_id":"1","desc":"-","created_by":"12","created_at":"2020-03-18 00:52:16","status":"ENABLE"}'),
(290, '2020-03-18 00:53:14', 12, 'insertData', 'user', '{"nip":"admindesaA","name":"admindesaA","email":"admindesaA@gmail.com","password":"bc459fa8ad966303aac66c1db0702cd2","role_id":"1","sub_role_id":"1","desc":"-","created_by":"12","created_at":"2020-03-18 00:53:14","status":"ENABLE"}'),
(291, '2020-03-18 00:53:14', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":13,"status":"ENABLE","created_at":"2020-03-18 00:53:14"}'),
(292, '2020-03-18 00:54:08', 12, 'insertData', 'user', '{"nip":"gudangdesaA","name":"gudangdesaA","email":"gudangdesaA@gmail.com","password":"e45f020b4b1993137bdd8e6459bcadd3","role_id":"3","sub_role_id":"1","desc":"-","created_by":"12","created_at":"2020-03-18 00:54:08","status":"ENABLE"}'),
(293, '2020-03-18 00:54:09', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":14,"status":"ENABLE","created_at":"2020-03-18 00:54:09"}'),
(294, '2020-03-18 01:33:43', 12, 'updateData', 'role', '{"id":"0","role":"Superadmin","status":"ENABLE","menu":"[\\"32\\",\\"1\\",\\"33\\",\\"16\\",\\"30\\",\\"31\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-17 18:10:06"}'),
(295, '2020-03-18 01:33:57', 12, 'updateData', 'role', '{"id":"1","role":"Admin Desa","status":"ENABLE","menu":"[\\"1\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-04 09:29:32"}'),
(296, '2020-03-18 01:34:15', 12, 'updateData', 'role', '{"id":"3","role":"Petugas Gudang","status":"ENABLE","menu":"[\\"1\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-04 09:29:32"}'),
(297, '2020-03-18 01:34:26', 12, 'updateData', 'role', '{"id":"2","role":"Petugas Penjemput","status":"ENABLE","menu":"[\\"1\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-04 09:29:32"}'),
(298, '2020-03-18 01:34:31', 12, 'updateData', 'role', '{"id":"3","role":"Petugas Gudang","status":"ENABLE","menu":"[\\"1\\",\\"33\\",\\"34\\",\\"16\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-18 01:34:15"}'),
(299, '2020-03-18 01:39:29', 12, 'insertData', 'user', '{"nip":"09128390182390180","name":"Sulestiawati","email":"Sulestiawati@@gmail.com","password":"0fabeca279ba9ebd1f529f1f4ec8cb44","role_id":"4","sub_role_id":"1","desc":"-","created_by":"12","created_at":"2020-03-18 01:39:29","status":"ENABLE"}'),
(300, '2020-03-18 01:39:29', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":15,"status":"ENABLE","created_at":"2020-03-18 01:39:29"}'),
(301, '2020-03-18 02:01:55', 12, 'updateData', 'report', '{"id":"4","name":"Pengguna per desa","query":"SELECT master_desa.nama, COALESCE(a.jumlah, 0) as admin, COALESCE(b.jumlah, 0) as jemput, COALESCE(c.jumlah, 0) as gudang,\\r\\nCOALESCE(d.jumlah, 0) as masyarakat\\r\\nFROM master_desa\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\\r\\n        WHERE user.role_id = 1\\r\\n        ) a\\r\\nON master_desa.id = a.sub_role_id\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\\r\\n        WHERE user.role_id = 2\\r\\n        ) b\\r\\nON master_desa.id = b.sub_role_id\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\\r\\n        WHERE user.role_id = 3\\r\\n        ) c\\r\\nON master_desa.id = c.sub_role_id\\r\\nLEFT JOIN\\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\\r\\n        WHERE user.role_id = 4\\r\\n        ) d\\r\\nON master_desa.id = d.sub_role_id","header":null,"status":"ENABLE","created_at":"2020-03-18 02:01:42","updated_at":null}'),
(302, '2020-03-18 12:10:13', 12, 'updateData', 'report', '{"id":"5","name":"Transaksi per Desa","query":"SELECT nama, COALESCE(a.jumlah, 0) as semua, COALESCE(b.jumlah, 0) as pending, COALESCE(c.jumlah, 0) as diterima, COALESCE(d.jumlah, 0) as ditolak\\r\\nFROM master_desa\\r\\nLEFT JOIN \\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \\r\\n        FROM sampah\\r\\n        LEFT JOIN user on sampah.id_masyarakat = user.id\\r\\n        ) a\\r\\nON master_desa.id = a.sub_role_id\\r\\nLEFT JOIN \\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \\r\\n        FROM sampah\\r\\n        LEFT JOIN user on sampah.id_masyarakat = user.id\\r\\n        WHERE sampah.status_1 = 1\\r\\n        ) b\\r\\nON master_desa.id = b.sub_role_id\\r\\nLEFT JOIN \\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \\r\\n        FROM sampah\\r\\n        LEFT JOIN user on sampah.id_masyarakat = user.id\\r\\n        WHERE sampah.status_2 = 1\\r\\n        ) c\\r\\nON master_desa.id = c.sub_role_id\\r\\nLEFT JOIN \\r\\n\\t(\\r\\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \\r\\n        FROM sampah\\r\\n        LEFT JOIN user on sampah.id_masyarakat = user.id\\r\\n        WHERE sampah.status_2 = 2\\r\\n        ) d\\r\\nON master_desa.id = d.sub_role_id","header":null,"status":"ENABLE","created_at":"2020-03-18 12:10:01","updated_at":null}'),
(303, '2020-03-18 12:13:38', 12, 'updateData', 'role', '{"id":"0","role":"Superadmin","status":"ENABLE","menu":"[\\"1\\",\\"32\\",\\"33\\",\\"34\\",\\"16\\",\\"30\\",\\"31\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-18 01:33:43"}'),
(304, '2020-03-18 12:14:01', 12, 'updateData', 'menu_master', '{"id":"35","name":"Laporan","icon":"fa fa-line-chart","link":"#","urutan":"4","parent":"0","notif":"","status":"ENABLE","created_at":"2020-03-18 12:11:46","updated_at":null}'),
(305, '2020-03-18 12:14:16', 12, 'updateData', 'menu_master', '{"id":"35","name":"Laporan","icon":"fa fa-area-chart","link":"#","urutan":"4","parent":"0","notif":"","status":"ENABLE","created_at":"2020-03-18 12:11:46","updated_at":"2020-03-18 12:14:01"}'),
(306, '2020-03-18 12:14:57', 12, 'updateData', 'menu_master', '{"id":"16","name":"Pengaturan","icon":"fa fa-th","link":"#","urutan":"7","parent":"0","notif":"","status":"ENABLE","created_at":"2020-01-10 09:27:29","updated_at":"2020-01-10 09:28:15"}'),
(307, '2020-03-18 12:28:51', 13, 'insertData', 'user', '{"nip":"penjemputdesaA","name":"penjemputdesaA","email":"penjemputdesaA@gmail.com","password":"a1eea1353012d034e82388726ab8f9d4","role_id":"2","sub_role_id":"1","desc":"-","created_by":"13","created_at":"2020-03-18 12:28:51","status":"ENABLE"}'),
(308, '2020-03-18 12:28:51', 13, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":16,"status":"ENABLE","created_at":"2020-03-18 12:28:51"}'),
(309, '2020-03-18 12:47:25', 16, 'insertData', 'sampah_sub', '{"kode":"20200318-TYAQB","id_jenis":"1","id_jenis_sub":"1","harga":"10000","berat":"5","created_at":"2020-03-18 12:47:25","status":"ENABLE","created_by":"16"}'),
(310, '2020-03-18 12:47:25', 16, 'insertData', 'sampah_sub', '{"kode":"20200318-TYAQB","id_jenis":"2","id_jenis_sub":"3","harga":"20000","berat":"20","created_at":"2020-03-18 12:47:25","status":"ENABLE","created_by":"16"}'),
(311, '2020-03-18 12:47:25', 16, 'insertData', 'sampah', '{"id_masyarakat":"15","total":"450000","kode":"20200318-TYAQB","created_by":"16","created_at":"2020-03-18 12:47:25","status":"ENABLE","status_1":1,"status_2":0}'),
(312, '2020-03-18 12:47:25', 16, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"sampah","table_id":2,"status":"ENABLE","created_at":"2020-03-18 12:47:25"}'),
(313, '2020-03-18 12:52:04', 12, 'insertData', 'user', '{"nip":"admindesaB","name":"admindesaB","email":"admindesaB@gmail.com","password":"d2714e9a415c3323a900c06190f256dd","role_id":"1","sub_role_id":"2","desc":"-","created_by":"12","created_at":"2020-03-18 12:52:04","status":"ENABLE"}'),
(314, '2020-03-18 12:52:04', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":17,"status":"ENABLE","created_at":"2020-03-18 12:52:04"}'),
(315, '2020-03-18 12:55:10', 17, 'insertData', 'user', '{"nip":"penjemputdesaB","name":"penjemputdesaB","email":"penjemputdesaB@gmail.com","password":"e293c41636db74cc2b7b7419d0f80e68","role_id":"2","sub_role_id":"2","desc":"-","created_by":"17","created_at":"2020-03-18 12:55:10","status":"ENABLE"}'),
(316, '2020-03-18 12:55:10', 17, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":18,"status":"ENABLE","created_at":"2020-03-18 12:55:10"}'),
(317, '2020-03-18 12:55:32', 17, 'insertData', 'user', '{"nip":"gudangdesaB","name":"gudangdesaB","email":"gudangdesaB@gmail.com","password":"1dccddeb332ab6ad470fee65f8973fcb","role_id":"3","sub_role_id":"2","desc":"-","created_by":"17","created_at":"2020-03-18 12:55:32","status":"ENABLE"}'),
(318, '2020-03-18 12:55:32', 17, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":19,"status":"ENABLE","created_at":"2020-03-18 12:55:32"}'),
(319, '2020-03-18 12:58:03', 18, 'insertData', 'user', '{"nip":"12379182739870","name":"Bejo","email":"bejo@gmail.com","password":"9d193036a37c589a278ac9826b4a8381","role_id":"4","sub_role_id":"2","desc":"-","created_by":"18","created_at":"2020-03-18 12:58:03","status":"ENABLE"}'),
(320, '2020-03-18 12:58:03', 18, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"user","table_id":20,"status":"ENABLE","created_at":"2020-03-18 12:58:03"}'),
(321, '2020-03-18 12:58:19', 18, 'insertData', 'sampah_sub', '{"kode":"20200318-73TV2","id_jenis":"1","id_jenis_sub":"2","harga":"10500","berat":"10","created_at":"2020-03-18 12:58:19","status":"ENABLE","created_by":"18"}'),
(322, '2020-03-18 12:58:19', 18, 'insertData', 'sampah_sub', '{"kode":"20200318-73TV2","id_jenis":"2","id_jenis_sub":"3","harga":"20000","berat":"20","created_at":"2020-03-18 12:58:19","status":"ENABLE","created_by":"18"}'),
(323, '2020-03-18 12:58:19', 18, 'insertData', 'sampah', '{"id_masyarakat":"20","total":"505000","kode":"20200318-73TV2","created_by":"18","created_at":"2020-03-18 12:58:19","status":"ENABLE","status_1":1,"status_2":0}'),
(324, '2020-03-18 12:58:19', 18, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"sampah","table_id":3,"status":"ENABLE","created_at":"2020-03-18 12:58:19"}'),
(325, '2020-03-18 12:58:33', 18, 'insertData', 'sampah_sub', '{"kode":"20200318-73TV2","id_jenis":"1","id_jenis_sub":"2","harga":"10500","berat":"10","created_at":"2020-03-18 12:58:33","status":"ENABLE","created_by":"18"}'),
(326, '2020-03-18 12:58:33', 18, 'insertData', 'sampah_sub', '{"kode":"20200318-73TV2","id_jenis":"2","id_jenis_sub":"3","harga":"20000","berat":"30","created_at":"2020-03-18 12:58:33","status":"ENABLE","created_by":"18"}'),
(327, '2020-03-18 13:05:43', 12, 'updateData', 'report', '{"id":"6","name":"Jenis Sampah per Desa","query":"SELECT * FROM sampah","header":null,"status":"ENABLE","created_at":"2020-03-18 13:05:31","updated_at":null}'),
(328, '2020-04-02 09:23:02', 12, 'updateData', 'role', '{"id":"3","role":"Cost Control","status":"ENABLE","menu":"","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-18 01:34:31"}'),
(329, '2020-04-02 09:26:31', 12, 'updateData', 'role', '{"id":"0","role":"Superadmin","status":"ENABLE","menu":"[\\"1\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-18 12:13:38"}'),
(330, '2020-04-02 09:27:43', 12, 'insertData', 'master_satuan', '{"nama":"Lembar","created_by":"12","created_at":"2020-04-02 09:27:43","status":"ENABLE"}'),
(331, '2020-04-02 09:27:43', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_satuan","table_id":1,"status":"ENABLE","created_at":"2020-04-02 09:27:43"}'),
(332, '2020-04-02 09:27:48', 12, 'insertData', 'master_satuan', '{"nama":"Roll","created_by":"12","created_at":"2020-04-02 09:27:48","status":"ENABLE"}'),
(333, '2020-04-02 09:27:48', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_satuan","table_id":2,"status":"ENABLE","created_at":"2020-04-02 09:27:48"}'),
(334, '2020-04-02 09:27:54', 12, 'insertData', 'master_satuan', '{"nama":"Buah","created_by":"12","created_at":"2020-04-02 09:27:54","status":"ENABLE"}'),
(335, '2020-04-02 09:27:54', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_satuan","table_id":3,"status":"ENABLE","created_at":"2020-04-02 09:27:54"}'),
(336, '2020-04-02 09:28:08', 12, 'insertData', 'master_barang', '{"id_satuan":"1","nama":"Barang A","created_by":"12","created_at":"2020-04-02 09:28:08","status":"ENABLE"}'),
(337, '2020-04-02 09:28:08', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_barang","table_id":1,"status":"ENABLE","created_at":"2020-04-02 09:28:08"}'),
(338, '2020-04-02 09:28:13', 12, 'insertData', 'master_barang', '{"id_satuan":"1","nama":"Barang B","created_by":"12","created_at":"2020-04-02 09:28:13","status":"ENABLE"}'),
(339, '2020-04-02 09:28:13', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_barang","table_id":2,"status":"ENABLE","created_at":"2020-04-02 09:28:13"}'),
(340, '2020-04-02 09:28:23', 12, 'insertData', 'master_barang', '{"id_satuan":"2","nama":"Barang C","created_by":"12","created_at":"2020-04-02 09:28:23","status":"ENABLE"}'),
(341, '2020-04-02 09:28:23', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_barang","table_id":3,"status":"ENABLE","created_at":"2020-04-02 09:28:23"}'),
(342, '2020-04-02 10:07:21', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"20200402-LGXOM","id_barang":"1","kode_pekerjaan":"","id_satuan":"1","qty":"5","fungsi":"-","target":"2020-04-09","keterangan":"-","created_at":"2020-04-02 10:07:21","status":"ENABLE","created_by":"12"}'),
(343, '2020-04-02 10:07:21', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"20200402-LGXOM","id_barang":"3","kode_pekerjaan":"","id_satuan":"2","qty":"10","fungsi":"-","target":null,"keterangan":"-","created_at":"2020-04-02 10:07:21","status":"ENABLE","created_by":"12"}'),
(344, '2020-04-02 10:08:13', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"20200402-99XK5","id_barang":"1","kode_pekerjaan":"","id_satuan":"1","qty":"5","fungsi":"-","target":"2020-04-09","keterangan":"-","created_at":"2020-04-02 10:08:13","status":"ENABLE","created_by":"12"}'),
(345, '2020-04-02 10:08:14', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"20200402-99XK5","id_barang":"3","kode_pekerjaan":"","id_satuan":"2","qty":"10","fungsi":"-","target":"2020-04-09","keterangan":"-","created_at":"2020-04-02 10:08:14","status":"ENABLE","created_by":"12"}'),
(346, '2020-04-02 10:08:14', 12, 'insertData', 'permintaan_barang', '{"nama_proyek":"Proyek 1","lokasi":"Pabrik 1","cost_control":"","no_proyek":"","catatan":"","kode":"20200402-99XK5","created_by":"12","created_at":"2020-04-02 10:08:13","status":"ENABLE","status_1":0,"status_2":0,"status_3":0,"status_4":0,"status_5":0}'),
(347, '2020-04-02 10:08:19', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"20200402-XAEQQ","id_barang":"1","kode_pekerjaan":"","id_satuan":"1","qty":"5","fungsi":"-","target":"2020-04-09","keterangan":"-","created_at":"2020-04-02 10:08:19","status":"ENABLE","created_by":"12"}'),
(348, '2020-04-02 10:08:19', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"20200402-XAEQQ","id_barang":"3","kode_pekerjaan":"","id_satuan":"2","qty":"10","fungsi":"-","target":"2020-04-09","keterangan":"-","created_at":"2020-04-02 10:08:19","status":"ENABLE","created_by":"12"}'),
(349, '2020-04-02 10:08:19', 12, 'insertData', 'permintaan_barang', '{"nama_proyek":"Proyek 1","lokasi":"Pabrik 1","cost_control":"","no_proyek":"","catatan":"","kode":"20200402-XAEQQ","created_by":"12","created_at":"2020-04-02 10:08:19","status":"ENABLE","status_1":0,"status_2":0,"status_3":0,"status_4":0,"status_5":0}'),
(350, '2020-04-03 10:08:08', 12, 'updateData', 'role', '{"id":"0","role":"Superadmin","status":"ENABLE","menu":"[\\"1\\",\\"41\\",\\"34\\",\\"16\\",\\"40\\",\\"39\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-04-02 09:26:31"}'),
(351, '2020-04-03 10:08:26', 12, 'insertData', 'master_proyek', '{"kode":"AAA","nama":"Proyek A","lokasi":"Pabrik A","created_by":"12","created_at":"2020-04-03 10:08:26","status":"ENABLE"}'),
(352, '2020-04-03 10:08:26', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_proyek","table_id":1,"status":"ENABLE","created_at":"2020-04-03 10:08:26"}'),
(353, '2020-04-03 10:08:37', 12, 'insertData', 'master_proyek', '{"kode":"BBB","nama":"Proyek B","lokasi":"Pabrik B","created_by":"12","created_at":"2020-04-03 10:08:37","status":"ENABLE"}'),
(354, '2020-04-03 10:08:37', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_proyek","table_id":2,"status":"ENABLE","created_at":"2020-04-03 10:08:37"}'),
(355, '2020-04-03 10:22:52', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-3","id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"26","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:22:52","status":"ENABLE","created_by":"12"}'),
(356, '2020-04-03 10:22:52', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-3","id_barang":"3","kode_pekerjaan":"0","id_satuan":"3","qty":"23","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:22:52","status":"ENABLE","created_by":"12"}'),
(357, '2020-04-03 10:22:53', 12, 'insertData', 'permintaan_barang', '{"id_proyek":"2","lokasi":"Pabrik B","cost_control":"","no_proyek":"","catatan":"-","kode":"B-BBB-3","created_by":"12","created_at":"2020-04-03 10:22:52","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(358, '2020-04-03 10:23:03', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-3","id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"26","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:23:03","status":"ENABLE","created_by":"12"}'),
(359, '2020-04-03 10:23:04', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-3","id_barang":"3","kode_pekerjaan":"0","id_satuan":"3","qty":"23","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:23:04","status":"ENABLE","created_by":"12"}'),
(360, '2020-04-03 10:23:04', 12, 'insertData', 'permintaan_barang', '{"id_proyek":"2","lokasi":"Pabrik B","cost_control":"","no_proyek":"","catatan":"-","kode":"B-BBB-3","created_by":"12","created_at":"2020-04-03 10:23:03","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(361, '2020-04-03 10:23:51', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-3","id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"26","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:23:51","status":"ENABLE","created_by":"12"}'),
(362, '2020-04-03 10:23:51', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-3","id_barang":"3","kode_pekerjaan":"0","id_satuan":"3","qty":"23","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:23:51","status":"ENABLE","created_by":"12"}'),
(363, '2020-04-03 10:23:51', 12, 'insertData', 'permintaan_barang', '{"id_proyek":"2","lokasi":"Pabrik B","cost_control":"","no_proyek":"","catatan":"-","kode":"B-BBB-3","created_by":"12","created_at":"2020-04-03 10:23:51","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(364, '2020-04-03 10:23:52', 12, 'insertData', 'file', '{"id":"","name":"6950c16c9bcc6995f376b297f163175936554.docx","mime":"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document","dir":"webfile\\/6950c16c9bcc6995f376b297f163175936554.docx","table":"permintaan_barang","table_id":3,"status":"ENABLE","created_at":"2020-04-03 10:23:52"}'),
(365, '2020-04-03 10:35:14', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-4","id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"115","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:35:14","status":"ENABLE","created_by":"12"}'),
(366, '2020-04-03 10:35:15', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-4","id_barang":"3","kode_pekerjaan":"0","id_satuan":"2","qty":"340","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 10:35:15","status":"ENABLE","created_by":"12"}'),
(367, '2020-04-03 10:35:15', 12, 'insertData', 'permintaan_barang', '{"id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","kode":"B-AAA-4","created_by":"12","created_at":"2020-04-03 10:35:14","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1,"log":"{\\"kode\\":\\"B-AAA-4\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"115\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"340\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(368, '2020-04-03 10:35:15', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"permintaan_barang","table_id":4,"status":"ENABLE","created_at":"2020-04-03 10:35:15"}'),
(369, '2020-04-03 10:52:30', 12, 'insertData', 'master_barang', '{"kode_pekerjaan":"ASKDQO","id_satuan":"1","nama":"Alat A","jenis":"SPA","created_by":"12","created_at":"2020-04-03 10:52:30","status":"ENABLE"}'),
(370, '2020-04-03 10:52:30', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_barang","table_id":4,"status":"ENABLE","created_at":"2020-04-03 10:52:30"}'),
(371, '2020-04-03 10:52:47', 12, 'insertData', 'master_barang', '{"kode_pekerjaan":"ASDKJ","id_satuan":"3","nama":"Alat B","jenis":"SPA","created_by":"12","created_at":"2020-04-03 10:52:47","status":"ENABLE"}'),
(372, '2020-04-03 10:52:48', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_barang","table_id":5,"status":"ENABLE","created_at":"2020-04-03 10:52:48"}'),
(373, '2020-04-03 10:53:11', 12, 'insertData', 'master_barang', '{"kode_pekerjaan":"SUWEW","id_satuan":"3","nama":"Subkon A","jenis":"SPS","created_by":"12","created_at":"2020-04-03 10:53:11","status":"ENABLE"}'),
(374, '2020-04-03 10:53:12', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_barang","table_id":6,"status":"ENABLE","created_at":"2020-04-03 10:53:12"}'),
(375, '2020-04-03 10:54:14', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-1","id_barang":"5","kode_pekerjaan":"0","id_satuan":"3","qty":"23","kapasitas":"34","merk":"-","waktu_pemakaian":"2020-04-07","keterangan":"-","created_at":"2020-04-03 10:54:14","status":"ENABLE","created_by":"12"}'),
(376, '2020-04-03 10:54:14', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-1","id_barang":"4","kode_pekerjaan":"0","id_satuan":"2","qty":"26","kapasitas":"22","merk":"-","waktu_pemakaian":"2020-04-07","keterangan":"-","created_at":"2020-04-03 10:54:14","status":"ENABLE","created_by":"12"}'),
(377, '2020-04-03 10:54:15', 12, 'insertData', 'permintaan_barang', '{"id_proyek":"2","lokasi":"Pabrik B","cost_control":"","no_proyek":"","catatan":"-","kode":"A-BBB-1","created_by":"12","created_at":"2020-04-03 10:54:14","status":"ENABLE","id_pic":"12","jenis":"SPA","status_permintaan":1,"log":"[{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":\\"2\\",\\"lokasi\\":\\"Pabrik B\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-03 10:54:15\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"23\\",\\"kapasitas\\":\\"34\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:54:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"26\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:54:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(378, '2020-04-03 10:54:15', 12, 'insertData', 'file', '{"id":"","name":"6950c16c9bcc6995f376b297f163175975009.docx","mime":"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document","dir":"webfile\\/6950c16c9bcc6995f376b297f163175975009.docx","table":"permintaan_barang","table_id":5,"status":"ENABLE","created_at":"2020-04-03 10:54:15"}'),
(379, '2020-04-03 10:59:35', 12, 'insertData', 'master_persyaratan', '{"kode":"AK","nama":"Alat Kerja","created_by":"12","created_at":"2020-04-03 10:59:35","status":"ENABLE"}'),
(380, '2020-04-03 10:59:35', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_persyaratan","table_id":1,"status":"ENABLE","created_at":"2020-04-03 10:59:35"}'),
(381, '2020-04-03 10:59:46', 12, 'insertData', 'master_persyaratan', '{"kode":"TK","nama":"Tenaga Kerja","created_by":"12","created_at":"2020-04-03 10:59:46","status":"ENABLE"}'),
(382, '2020-04-03 10:59:46', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_persyaratan","table_id":2,"status":"ENABLE","created_at":"2020-04-03 10:59:46"}'),
(383, '2020-04-03 10:59:56', 12, 'insertData', 'master_persyaratan', '{"kode":"MT","nama":"Metode","created_by":"12","created_at":"2020-04-03 10:59:56","status":"ENABLE"}'),
(384, '2020-04-03 10:59:57', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_persyaratan","table_id":3,"status":"ENABLE","created_at":"2020-04-03 10:59:57"}'),
(385, '2020-04-03 11:00:07', 12, 'insertData', 'master_persyaratan', '{"kode":"LN","nama":"Lainnya","created_by":"12","created_at":"2020-04-03 11:00:07","status":"ENABLE"}'),
(386, '2020-04-03 11:00:08', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_persyaratan","table_id":4,"status":"ENABLE","created_at":"2020-04-03 11:00:08"}'),
(387, '2020-04-03 11:09:24', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-1","id_barang":"6","kode_pekerjaan":"0","id_satuan":"1","qty":"34","waktu_pelaksanaan":"2020-04-06","keterangan":"-","created_at":"2020-04-03 11:09:24","status":"ENABLE","created_by":"12"}'),
(388, '2020-04-03 11:09:24', 12, 'insertData', 'permintaan_barang', '{"id_proyek":"2","lokasi":"Pabrik B","cost_control":"","no_proyek":"","catatan":"-","kode":"B-BBB-1","created_by":"12","created_at":"2020-04-03 11:09:24","status":"ENABLE","id_pic":"12","jenis":"SPS","status_permintaan":1,"log":"{\\"kode\\":\\"B-BBB-1\\",\\"id_proyek\\":\\"2\\",\\"lokasi\\":\\"Pabrik B\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPS\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-03 11:09:24\\",\\"sub\\":[{\\"kode\\":\\"B-BBB-1\\",\\"id_barang\\":\\"6\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"34\\",\\"waktu_pelaksanaan\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 11:09:24\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(389, '2020-04-03 11:09:25', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"permintaan_barang","table_id":6,"status":"ENABLE","created_at":"2020-04-03 11:09:25"}'),
(390, '2020-04-03 12:45:52', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"20200402-99XK5","id_proyek":"1","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"0","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","status":"ENABLE","created_at":"2020-04-02 10:08:13","updated_at":"0000-00-00 00:00:00","created_by":"12","log":""}'),
(391, '2020-04-03 13:15:47', 12, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"1","id_user":"21","created_at":"2020-04-03 13:15:47","status":"ENABLE","created_by":"12"}'),
(392, '2020-04-03 13:15:47', 12, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"2","id_user":"22","created_at":"2020-04-03 13:15:47","status":"ENABLE","created_by":"12"}'),
(393, '2020-04-03 13:15:47', 12, 'insertData', 'master_proyek', '{"kode":"CCC","nama":"Proyek C","lokasi":"Pabrik C","created_by":"12","created_at":"2020-04-03 13:15:47","status":"ENABLE"}'),
(394, '2020-04-03 13:15:47', 12, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_proyek","table_id":3,"status":"ENABLE","created_at":"2020-04-03 13:15:47"}'),
(395, '2020-04-03 13:22:27', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"1","id_user":"21","created_at":"2020-04-03 13:22:27","status":"ENABLE","created_by":"12"}'),
(396, '2020-04-03 13:22:27', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"2","id_user":"22","created_at":"2020-04-03 13:22:27","status":"ENABLE","created_by":"12"}'),
(397, '2020-04-03 13:22:27', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"3","id_user":"23","created_at":"2020-04-03 13:22:27","status":"ENABLE","created_by":"12"}'),
(398, '2020-04-03 13:22:27', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"4","id_user":"24","created_at":"2020-04-03 13:22:27","status":"ENABLE","created_by":"12"}'),
(399, '2020-04-03 13:22:28', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"5","id_user":"25","created_at":"2020-04-03 13:22:28","status":"ENABLE","created_by":"12"}'),
(400, '2020-04-03 13:22:28', 12, 'updateData', 'master_proyek', '{"id":"1","kode":"AAA","nama":"Proyek A","lokasi":"Pabrik A","status":"ENABLE","created_at":"2020-04-03 10:08:26","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(401, '2020-04-03 15:21:34', 12, 'updateData', 'menu_master', '{"id":"41","name":"Permintaan Barang","icon":"fa fa-archive","link":"master\\/permintaan_barang","urutan":"1","parent":"0","notif":"","status":"ENABLE","created_at":"2020-04-02 09:26:15","updated_at":null}'),
(402, '2020-04-03 15:31:51', 12, 'insertData', 'permintaan_barang_sub', '{"kode":null,"id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"115","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 15:31:51","status":"ENABLE","created_by":"12"}'),
(403, '2020-04-03 15:32:00', 12, 'insertData', 'permintaan_barang_sub', '{"kode":null,"id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"115","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 15:32:00","status":"ENABLE","created_by":"12"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(404, '2020-04-03 15:32:44', 12, 'updateData', 'permintaan_barang', '{"id":"4","kode":"B-AAA-4","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","status":"ENABLE","created_at":"2020-04-03 10:35:14","updated_at":"0000-00-00 00:00:00","created_by":"12","log":"{\\"kode\\":\\"B-AAA-4\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"115\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"340\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(405, '2020-04-03 15:33:50', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-4","id_barang":"1","kode_pekerjaan":"0","id_satuan":"2","qty":"45","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 15:33:50","status":"ENABLE","created_by":"12"}'),
(406, '2020-04-03 15:33:50', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-4","id_barang":"2","kode_pekerjaan":"0","id_satuan":"2","qty":"23","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 15:33:50","status":"ENABLE","created_by":"12"}'),
(407, '2020-04-03 15:33:51', 12, 'updateData', 'permintaan_barang', '{"id":"4","kode":"B-AAA-4","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","status":"ENABLE","created_at":"2020-04-03 10:35:14","updated_at":"2020-04-03 15:32:44","created_by":"12","log":"{\\"kode\\":\\"B-AAA-4\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"115\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"340\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(408, '2020-04-03 15:35:17', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-4","id_barang":"1","kode_pekerjaan":"0","id_satuan":"2","qty":"45","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 15:35:17","status":"ENABLE","created_by":"12"}'),
(409, '2020-04-03 15:35:18', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-4","id_barang":"2","kode_pekerjaan":"0","id_satuan":"2","qty":"23","fungsi":"-","target":"2020-04-06","keterangan":"-","created_at":"2020-04-03 15:35:18","status":"ENABLE","created_by":"12"}'),
(410, '2020-04-03 15:35:18', 12, 'updateData', 'permintaan_barang', '{"id":"4","kode":"B-AAA-4","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","status":"ENABLE","created_at":"2020-04-03 10:35:14","updated_at":"2020-04-03 15:33:51","created_by":"12","log":"{\\"kode\\":\\"B-AAA-4\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"115\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-AAA-4\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"340\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-06\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-03 10:35:15\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(411, '2020-04-03 15:40:58', 12, 'insertData', 'permintaan_barang_sub', '{"kode":null,"id_barang":"5","kode_pekerjaan":"0","id_satuan":"3","qty":"23","fungsi":null,"target":null,"keterangan":"-","created_at":"2020-04-03 15:40:58","status":"ENABLE","created_by":"12"}'),
(412, '2020-04-03 15:41:55', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-1","id_barang":"5","kode_pekerjaan":"0","id_satuan":"3","qty":"23","kapasitas":"34","merk":"-","waktu_pemakaian":"2020-04-07","keterangan":"-","created_at":"2020-04-03 15:41:55","status":"ENABLE","created_by":"12"}'),
(413, '2020-04-03 15:41:55', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-1","id_barang":"4","kode_pekerjaan":"0","id_satuan":"2","qty":"26","kapasitas":"22","merk":"-","waktu_pemakaian":"2020-04-07","keterangan":"-","created_at":"2020-04-03 15:41:55","status":"ENABLE","created_by":"12"}'),
(414, '2020-04-06 05:43:44', 12, 'insertData', 'permintaan_barang', '{"kode":"B-5","created_by":"12","created_at":"2020-04-06 05:43:44","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(415, '2020-04-06 05:50:53', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"0","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"0000-00-00 00:00:00","created_by":"12","log":""}'),
(416, '2020-04-06 05:52:13', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"0","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 05:50:53","created_by":"12","log":"{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"0\\",\\"lokasi\\":\\"\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 05:50:53\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"0\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"0\\",\\"qty\\":\\"\\",\\"fungsi\\":\\"\\",\\"target\\":\\"\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-06 05:50:53\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"0\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"0\\",\\"qty\\":\\"\\",\\"fungsi\\":\\"\\",\\"target\\":\\"\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-06 05:50:53\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(417, '2020-04-06 05:56:07', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"0","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 05:52:13","created_by":"12","log":"{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"0\\",\\"lokasi\\":\\"\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 05:52:13\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"0\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"0\\",\\"qty\\":\\"\\",\\"fungsi\\":\\"\\",\\"target\\":\\"\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-06 05:52:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"45\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 05:52:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(418, '2020-04-06 06:01:47', 12, 'insertData', 'permintaan_barang_sub', '{"kode":null,"id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"23","fungsi":"-","target":"","keterangan":"-","created_at":"2020-04-06 06:01:47","status":"ENABLE","created_by":"12"}'),
(419, '2020-04-06 06:02:10', 12, 'insertData', 'permintaan_barang_sub', '{"kode":null,"id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"23","fungsi":"-","target":"","keterangan":"-","created_at":"2020-04-06 06:02:10","status":"ENABLE","created_by":"12"}'),
(420, '2020-04-06 06:03:10', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-5","id_barang":"1","kode_pekerjaan":"0","id_satuan":"2","qty":"23","fungsi":"-","target":"2020-04-07","keterangan":"-","created_at":"2020-04-06 06:03:10","status":"ENABLE","created_by":"12"}'),
(421, '2020-04-06 06:03:17', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-5","id_barang":"1","kode_pekerjaan":"0","id_satuan":"2","qty":"23","fungsi":"-","target":"2020-04-07","keterangan":"-","created_at":"2020-04-06 06:03:17","status":"ENABLE","created_by":"12"}'),
(422, '2020-04-06 06:04:56', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-5","id_barang":"2","kode_pekerjaan":"0","id_satuan":"1","qty":"20","fungsi":"-","target":"2020-04-07","keterangan":"-","created_at":"2020-04-06 06:04:56","status":"ENABLE","created_by":"12"}'),
(423, '2020-04-06 06:05:24', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-5","id_barang":"1","kode_pekerjaan":"0","id_satuan":"2","qty":"15","fungsi":"-","target":"2020-04-07","keterangan":"-","created_at":"2020-04-06 06:05:24","status":"ENABLE","created_by":"12"}'),
(424, '2020-04-06 06:11:45', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"0","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 05:56:07","created_by":"12","log":"{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"0\\",\\"lokasi\\":\\"\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 05:56:07\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"0\\",\\"qty\\":\\"\\",\\"fungsi\\":\\"\\",\\"target\\":\\"\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-06 05:56:07\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}"}'),
(425, '2020-04-06 06:15:46', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:11:45","created_by":"12","log":"{\\"\\":{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:11:45\\",\\"sub\\":null}}"}'),
(426, '2020-04-06 06:19:10', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"B-5","id_barang":"3","kode_pekerjaan":"0","id_satuan":"3","qty":"11","fungsi":"-","target":"2020-04-07","keterangan":"-","created_at":"2020-04-06 06:19:10","status":"ENABLE","created_by":"12"}'),
(427, '2020-04-06 06:35:48', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:15:46","created_by":"12","log":""}'),
(428, '2020-04-06 06:40:58', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:35:48","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(429, '2020-04-06 06:58:45', 12, 'insertData', 'permintaan_barang', '{"kode":"A-2","created_by":"12","created_at":"2020-04-06 06:58:45","status":"ENABLE","id_pic":"12","jenis":"SPA","status_permintaan":1}'),
(430, '2020-04-06 07:03:47', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"A-2","id_barang":"4","kode_pekerjaan":"0","id_satuan":"2","qty":"5","kapasitas":"22","merk":"-","waktu_pemakaian":"2020-04-07","keterangan":"-","created_at":"2020-04-06 07:03:47","status":"ENABLE","created_by":"12"}'),
(431, '2020-04-06 07:04:56', 12, 'updateData', 'permintaan_barang', '{"id":"8","kode":"A-2","id_proyek":"0","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-06 06:58:45","updated_at":"0000-00-00 00:00:00","created_by":"12","log":""}'),
(432, '2020-04-06 07:07:14', 12, 'updateData', 'permintaan_barang', '{"id":"8","kode":"A-2","id_proyek":"3","lokasi":"","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-06 06:58:45","updated_at":"2020-04-06 07:04:56","created_by":"12","log":"[{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":null,\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(433, '2020-04-06 07:07:56', 12, 'updateData', 'permintaan_barang', '{"id":"8","kode":"A-2","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-06 06:58:45","updated_at":"2020-04-06 07:07:14","created_by":"12","log":"[{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":null,\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(434, '2020-04-06 07:08:17', 12, 'updateData', 'permintaan_barang', '{"id":"8","kode":"A-2","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-06 06:58:45","updated_at":"2020-04-06 07:07:56","created_by":"12","log":"[{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":null,\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(435, '2020-04-06 07:09:16', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"A-2","id_barang":"5","kode_pekerjaan":"0","id_satuan":"3","qty":"3","kapasitas":"22","merk":"-","waktu_pemakaian":"2020-04-07","keterangan":"-","created_at":"2020-04-06 07:09:16","status":"ENABLE","created_by":"12"}'),
(436, '2020-04-06 07:09:18', 12, 'updateData', 'permintaan_barang', '{"id":"8","kode":"A-2","id_proyek":"1","lokasi":"Pabrik A","cost_control":"","no_proyek":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-06 06:58:45","updated_at":"2020-04-06 07:08:17","created_by":"12","log":"[{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":null,\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:08:17\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:08:17\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(437, '2020-04-06 07:20:47', 12, 'insertData', 'permintaan_barang', '{"kode":"S-2","created_by":"12","created_at":"2020-04-06 07:20:47","status":"ENABLE","id_pic":"12","jenis":"SPS","status_permintaan":1}'),
(438, '2020-04-06 07:24:25', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"S-2","id_barang":"6","kode_pekerjaan":"0","id_satuan":"2","qty":"24","kapasitas":null,"merk":null,"waktu_pemakaian":null,"keterangan":"-","created_at":"2020-04-06 07:24:25","status":"ENABLE","created_by":"12"}'),
(439, '2020-04-06 07:24:55', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"S-2","id_barang":"6","kode_pekerjaan":"0","id_satuan":"3","qty":"23","waktu_pelaksanaan":"2020-04-07","keterangan":"-","created_at":"2020-04-06 07:24:55","status":"ENABLE","created_by":"12"}'),
(440, '2020-04-06 07:25:03', 12, 'updateData', 'permintaan_barang', '{"id":"9","kode":"S-2","id_proyek":"0","lokasi":"","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-06 07:20:47","updated_at":"0000-00-00 00:00:00","created_by":"12","log":""}'),
(441, '2020-04-06 08:34:24', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"S-2","id_barang":"6","kode_pekerjaan":"0","id_satuan":"2","qty":"34","waktu_pelaksanaan":"2020-04-07","persyaratan":"\\"1\\"","keterangan":"","created_at":"2020-04-06 08:34:24","status":"ENABLE","created_by":"12"}'),
(442, '2020-04-06 08:39:54', 12, 'deleteData', 'permintaan_barang_sub', '{"id":"30","kode":"S-2","kode_pekerjaan":"0","id_barang":"6","qty":"23","id_satuan":"3","fungsi":"","target":"0000-00-00","keterangan":"-","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"2020-04-07","persyaratan":"","status":"ENABLE","created_at":"2020-04-06 07:24:55","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(443, '2020-04-06 08:40:09', 12, 'deleteData', 'permintaan_barang_sub', '{"id":"31","kode":"S-2","kode_pekerjaan":"0","id_barang":"6","qty":"34","id_satuan":"2","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"2020-04-07","persyaratan":"\\"1\\"","status":"ENABLE","created_at":"2020-04-06 08:34:24","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(444, '2020-04-06 08:40:34', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"S-2","id_barang":"6","kode_pekerjaan":"0","id_satuan":"1","qty":"23","waktu_pelaksanaan":"2020-04-07","persyaratan":"\\"2\\"","keterangan":"-","created_at":"2020-04-06 08:40:34","status":"ENABLE","created_by":"12"}'),
(445, '2020-04-06 08:41:22', 12, 'deleteData', 'permintaan_barang_sub', '{"id":"32","kode":"S-2","kode_pekerjaan":"0","id_barang":"6","qty":"23","id_satuan":"1","fungsi":"","target":"0000-00-00","keterangan":"-","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"2020-04-07","persyaratan":"\\"2\\"","status":"ENABLE","created_at":"2020-04-06 08:40:34","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(446, '2020-04-06 08:41:32', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"S-2","id_barang":"6","kode_pekerjaan":"0","id_satuan":"2","qty":"34","waktu_pelaksanaan":"2020-04-06","persyaratan":"[{\\"persyaratan\\":\\"2\\"}]","keterangan":"","created_at":"2020-04-06 08:41:32","status":"ENABLE","created_by":"12"}'),
(447, '2020-04-06 08:42:01', 12, 'deleteData', 'permintaan_barang_sub', '{"id":"33","kode":"S-2","kode_pekerjaan":"0","id_barang":"6","qty":"34","id_satuan":"2","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"2020-04-06","persyaratan":"[{\\"persyaratan\\":\\"2\\"}]","status":"ENABLE","created_at":"2020-04-06 08:41:32","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(448, '2020-04-06 08:42:11', 12, 'insertData', 'permintaan_barang_sub', '{"kode":"S-2","id_barang":"6","kode_pekerjaan":"0","id_satuan":"2","qty":"12","waktu_pelaksanaan":"2020-04-08","persyaratan":"[{\\"persyaratan\\":\\"2\\"},{\\"persyaratan\\":\\"3\\"}]","keterangan":"-","created_at":"2020-04-06 08:42:11","status":"ENABLE","created_by":"12"}'),
(449, '2020-04-06 09:14:06', 12, 'insertData', 'permintaan_barang', '{"kode":"B-6","created_by":"12","created_at":"2020-04-06 09:14:06","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(450, '2020-04-06 09:14:58', 12, 'insertData', 'permintaan_barang', '{"kode":"B-6","created_by":"12","created_at":"2020-04-06 09:14:58","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(451, '2020-04-06 09:16:16', 12, 'insertData', 'permintaan_barang', '{"kode":"B-AAA6","created_by":"12","created_at":"2020-04-06 09:16:16","status":"ENABLE","id_pic":"12","jenis":"SPB","status_permintaan":1}'),
(452, '2020-04-06 09:20:53', 12, 'updateData', 'menu_master', '{"id":"34","name":"Pengguna","icon":"fa fa-users","link":"master\\/user","urutan":"3","parent":"0","notif":"","status":"ENABLE","created_at":"2020-03-18 01:33:32","updated_at":null}'),
(453, '2020-04-06 09:21:06', 12, 'updateData', 'menu_master', '{"id":"34","name":"Pengguna","icon":"fa fa-users","link":"master\\/user","urutan":"3","parent":"16","notif":"","status":"ENABLE","created_at":"2020-03-18 01:33:32","updated_at":"2020-04-06 09:20:53"}'),
(454, '2020-04-06 12:23:37', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan telah disetujui olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:23:37","created_by":"12"}'),
(455, '2020-04-06 12:23:38', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(456, '2020-04-06 12:24:07', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan telah disetujui olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:24:07","created_by":"12"}'),
(457, '2020-04-06 12:24:08', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(458, '2020-04-06 12:26:12', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah disetujui olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:26:12","created_by":"12"}'),
(459, '2020-04-06 12:26:12', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(460, '2020-04-06 12:26:38', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah disetujui olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:26:38","created_by":"12"}'),
(461, '2020-04-06 12:26:38', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"-","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(462, '2020-04-06 12:27:12', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah disetujui olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:27:12","created_by":"12"}'),
(463, '2020-04-06 12:29:20', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah ditolak olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:29:20","created_by":"12"}'),
(464, '2020-04-06 12:29:39', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah ditolak olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:29:39","created_by":"12"}'),
(465, '2020-04-06 12:29:39', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"catatan ku","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(466, '2020-04-06 12:30:27', 12, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah ditolak olehSuperadmin","id_user":"12","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 12:30:27","created_by":"12"}'),
(467, '2020-04-06 12:30:27', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"catatan ku","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(468, '2020-04-06 13:13:22', 12, 'updateData', 'permintaan_barang', '{"id":"9","kode":"S-2","id_proyek":"1","lokasi":"Pabrik A","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-06 07:20:47","updated_at":"2020-04-06 07:25:03","created_by":"12","log":"[{\\"kode\\":\\"S-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":\\"0\\",\\"id_cc\\":\\"0\\",\\"id_pd\\":\\"0\\",\\"id_lp\\":\\"0\\",\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:25:03\\",\\"sub\\":[{\\"kode\\":\\"S-2\\",\\"id_barang\\":\\"6\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"23\\",\\"waktu_pelaksanaan\\":\\"2020-04-07\\",\\"persyaratan\\":\\"\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:25:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(469, '2020-04-06 13:34:30', 22, 'insertData', 'notifikasi', '{"keterangan":"Surat Permintaan dengan kode B-5telah disetujui olehPM Proyek","id_user":"22","id_permintaan":"7","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-06 13:34:30","created_by":"22"}'),
(470, '2020-04-06 13:34:30', 22, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"catatan ku","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":2,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"24\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(471, '2020-04-06 13:50:14', 23, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Proyek C","catatan":"catatan ku","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 06:40:58","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":2,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"24\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(472, '2020-04-06 13:54:15', 23, 'updateData', 'permintaan_barang', '{"id":"8","kode":"A-2","id_proyek":"1","lokasi":"Pabrik A","catatan":"","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-06 06:58:45","updated_at":"2020-04-06 07:09:18","created_by":"12","log":"[{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":null,\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:04:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":null,\\"no_proyek\\":null,\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"catatan\\":null,\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:07:56\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:07:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:08:17\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:08:17\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"A-2\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPA\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 07:09:18\\",\\"sub\\":[{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"4\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:09:18\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"A-2\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"3\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 07:09:18\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]}]"}'),
(473, '2020-04-07 07:44:00', 12, 'updateData', 'permintaan_barang', '{"id":"7","kode":"B-5","id_proyek":"3","lokasi":"Pabrik C","catatan":"catatan ku","id_pic":"12","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPB","file":"SP-SPB-7-B-5.doc","status":"ENABLE","created_at":"2020-04-06 05:43:44","updated_at":"2020-04-06 13:50:14","created_by":"12","log":"[{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"1\\",\\"lokasi\\":\\"Pabrik A\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:35:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"cost_control\\":\\"\\",\\"no_proyek\\":\\"\\",\\"catatan\\":\\"-\\",\\"id_pic\\":\\"12\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":2,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"24\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 06:40:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"12\\"}]},{\\"kode\\":\\"B-5\\",\\"id_proyek\\":\\"3\\",\\"lokasi\\":\\"Pabrik C\\",\\"id_pic\\":\\"23\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"23\\",\\"created_at\\":\\"2020-04-06 13:50:14\\",\\"sub\\":[{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"2\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"keterangan\\",\\"created_at\\":\\"2020-04-06 13:50:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"23\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"15\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 13:50:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"23\\"},{\\"kode\\":\\"B-5\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"11\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-07\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-06 13:50:14\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"23\\"}]}]"}'),
(474, '2020-04-07 08:23:23', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-1","created_by":"21","created_at":"2020-04-07 08:23:23","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":1}'),
(475, '2020-04-07 08:23:23', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":1,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-07 08:23:23","created_by":"21"}'),
(476, '2020-04-07 08:23:47', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-2","created_by":"21","created_at":"2020-04-07 08:23:47","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":1}'),
(477, '2020-04-07 08:23:48', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-2 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":2,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-07 08:23:48","created_by":"21"}'),
(478, '2020-04-07 08:24:16', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-1","created_by":"21","created_at":"2020-04-07 08:24:16","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":1}'),
(479, '2020-04-07 08:24:16', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":1,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-07 08:24:16","created_by":"21"}'),
(480, '2020-04-07 08:25:39', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"1","kode_pekerjaan":"0","id_satuan":"1","qty":"32","fungsi":"-","target":"2020-04-10","keterangan":"-","created_at":"2020-04-07 08:25:39","status":"ENABLE","created_by":"21"}'),
(481, '2020-04-07 08:26:55', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"3","kode_pekerjaan":"0","id_satuan":"3","qty":"34","fungsi":"-","target":"2020-04-10","keterangan":"","created_at":"2020-04-07 08:26:55","status":"ENABLE","created_by":"21"}'),
(482, '2020-04-07 08:26:58', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 08:26:58","created_by":"21"}'),
(483, '2020-04-07 08:26:59', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(484, '2020-04-07 08:27:54', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 08:27:54","created_by":"22"}'),
(485, '2020-04-07 08:27:54', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"2020-04-07 08:26:59","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(486, '2020-04-07 08:28:29', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1telah disetujui olehpm(PM Proyek)","keterangan":"Pengajuan diterima olehpm(PM Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"verifikasi","status":"ENABLE","created_at":"2020-04-07 08:28:29","created_by":"22"}'),
(487, '2020-04-07 08:28:29', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"2020-04-07 08:27:54","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(488, '2020-04-07 09:37:36', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 09:37:36","created_by":"22"}'),
(489, '2020-04-07 09:37:36', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"2020-04-07 08:27:54","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(490, '2020-04-07 10:23:54', 22, 'insertData', 'permintaan_barang', '{"kode":"B-BBB-1","id_proyek":"2","created_by":"22","created_at":"2020-04-07 10:23:54","status":"ENABLE","id_pic":"22","jenis":"SPB","status_permintaan":1}'),
(491, '2020-04-07 10:23:55', 22, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-BBB-1 telah diubah oleh pm(PM Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":2,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-07 10:23:55","created_by":"22"}'),
(492, '2020-04-07 10:26:40', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-BBB-1","id_barang":"3","kode_pekerjaan":"0","id_satuan":"2","qty":"50","fungsi":"-","target":"2020-04-15","keterangan":"-","created_at":"2020-04-07 10:26:40","status":"ENABLE","created_by":"21"}'),
(493, '2020-04-07 10:26:50', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 10:26:50","created_by":"21"}'),
(494, '2020-04-07 10:26:50', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"B-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"22","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-07 10:23:54","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(495, '2020-04-07 10:32:28', 21, 'insertData', 'permintaan_barang', '{"kode":"S-AAA-1","id_proyek":"1","created_by":"21","created_at":"2020-04-07 10:32:28","status":"ENABLE","id_pic":"21","jenis":"SPS","status_permintaan":1}'),
(496, '2020-04-07 10:32:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode S-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":3,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-07 10:32:28","created_by":"21"}'),
(497, '2020-04-07 10:32:45', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"S-AAA-1","id_barang":"6","kode_pekerjaan":"0","id_satuan":"2","qty":"33","waktu_pelaksanaan":"2020-04-09","persyaratan":"[{\\"persyaratan\\":\\"1\\"},{\\"persyaratan\\":\\"2\\"}]","keterangan":"-","created_at":"2020-04-07 10:32:45","status":"ENABLE","created_by":"21"}'),
(498, '2020-04-07 10:32:48', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 10:32:48","created_by":"21"}'),
(499, '2020-04-07 10:32:48', 21, 'updateData', 'permintaan_barang', '{"id":"3","kode":"S-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-07 10:32:28","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(500, '2020-04-07 10:38:38', 21, 'insertData', 'permintaan_barang', '{"kode":"A-CCC-1","id_proyek":"3","created_by":"21","created_at":"2020-04-07 10:38:38","status":"ENABLE","id_pic":"21","jenis":"SPA","status_permintaan":1}'),
(501, '2020-04-07 10:38:38', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode A-CCC-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":4,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-07 10:38:38","created_by":"21"}'),
(502, '2020-04-07 10:38:55', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-CCC-1","id_barang":"5","kode_pekerjaan":"0","id_satuan":"1","qty":"20","kapasitas":"22","merk":"-","waktu_pemakaian":"2020-04-08","keterangan":"-","created_at":"2020-04-07 10:38:55","status":"ENABLE","created_by":"21"}'),
(503, '2020-04-07 10:38:59', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-CCC-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"4","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 10:38:59","created_by":"21"}'),
(504, '2020-04-07 10:38:59', 21, 'updateData', 'permintaan_barang', '{"id":"4","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-07 10:38:38","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(505, '2020-04-07 10:52:41', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-CCC-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":"4","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 10:52:41","created_by":"22"}'),
(506, '2020-04-07 10:52:41', 22, 'updateData', 'permintaan_barang', '{"id":"4","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-07 10:38:38","updated_at":"2020-04-07 10:38:59","created_by":"21","log":"[{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(507, '2020-04-07 10:53:02', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-CCC-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":"4","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 10:53:02","created_by":"22"}'),
(508, '2020-04-07 10:53:02', 22, 'updateData', 'permintaan_barang', '{"id":"4","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-07 10:38:38","updated_at":"2020-04-07 10:52:41","created_by":"21","log":"[{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 10:52:41\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:52:41\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(509, '2020-04-07 10:54:32', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-CCC-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"4","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-07 10:54:32","created_by":"22"}'),
(510, '2020-04-07 10:54:32', 22, 'updateData', 'permintaan_barang', '{"id":"4","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-07 10:38:38","updated_at":"2020-04-07 10:53:02","created_by":"21","log":"[{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 10:52:41\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:52:41\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 10:53:02\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"ASKDQO\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:53:02\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(511, '2020-04-07 10:54:52', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-07 10:54:52","created_by":"22"}'),
(512, '2020-04-07 10:54:52', 22, 'updateData', 'permintaan_barang', '{"id":"3","kode":"S-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-07 10:32:28","updated_at":"2020-04-07 10:32:48","created_by":"21","log":"[{\\"kode\\":\\"S-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:32:48\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"S-AAA-1\\",\\"id_barang\\":\\"6\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"33\\",\\"waktu_pelaksanaan\\":\\"2020-04-09\\",\\"persyaratan\\":\\"[{\\\\\\"persyaratan\\\\\\":\\\\\\"1\\\\\\"},{\\\\\\"persyaratan\\\\\\":\\\\\\"2\\\\\\"}]\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:32:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(513, '2020-04-07 10:55:04', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"3","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-07 10:55:04","created_by":"22"}'),
(514, '2020-04-07 10:55:04', 22, 'updateData', 'permintaan_barang', '{"id":"3","kode":"S-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-07 10:32:28","updated_at":"2020-04-07 10:54:52","created_by":"21","log":"[{\\"kode\\":\\"S-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:32:48\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"S-AAA-1\\",\\"id_barang\\":\\"6\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"33\\",\\"waktu_pelaksanaan\\":\\"2020-04-09\\",\\"persyaratan\\":\\"[{\\\\\\"persyaratan\\\\\\":\\\\\\"1\\\\\\"},{\\\\\\"persyaratan\\\\\\":\\\\\\"2\\\\\\"}]\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:32:48\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"S-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 10:54:52\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"S-AAA-1\\",\\"id_barang\\":\\"6\\",\\"kode_pekerjaan\\":\\"SUWEW\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"33\\",\\"waktu_pelaksanaan\\":\\"2020-04-09\\",\\"persyaratan\\":\\"[{\\\\\\"persyaratan\\\\\\":\\\\\\"1\\\\\\"},{\\\\\\"persyaratan\\\\\\":\\\\\\"2\\\\\\"}]\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:54:52\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(515, '2020-04-07 11:15:50', 23, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"0","kode_pekerjaan":"0","id_satuan":"0","qty":"","fungsi":"","target":"","keterangan":"","created_at":"2020-04-07 11:15:50","status":"ENABLE","created_by":"23"}'),
(516, '2020-04-07 11:15:51', 23, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"0","kode_pekerjaan":"0","id_satuan":"0","qty":"","fungsi":"","target":"","keterangan":"","created_at":"2020-04-07 11:15:51","status":"ENABLE","created_by":"23"}'),
(517, '2020-04-07 11:15:51', 23, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"0","kode_pekerjaan":"0","id_satuan":"0","qty":"","fungsi":"","target":"","keterangan":"","created_at":"2020-04-07 11:15:51","status":"ENABLE","created_by":"23"}'),
(518, '2020-04-07 11:15:58', 23, 'deleteData', 'permintaan_barang_sub', '{"id":"8","kode":"B-AAA-1","kode_pekerjaan":"0","id_barang":"0","qty":"0","id_satuan":"0","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"0000-00-00","persyaratan":"","status":"ENABLE","created_at":"2020-04-07 11:15:51","updated_at":"0000-00-00 00:00:00","created_by":"23"}'),
(519, '2020-04-07 11:16:02', 23, 'deleteData', 'permintaan_barang_sub', '{"id":"7","kode":"B-AAA-1","kode_pekerjaan":"0","id_barang":"0","qty":"0","id_satuan":"0","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"0000-00-00","persyaratan":"","status":"ENABLE","created_at":"2020-04-07 11:15:51","updated_at":"0000-00-00 00:00:00","created_by":"23"}'),
(520, '2020-04-07 11:16:06', 23, 'deleteData', 'permintaan_barang_sub', '{"id":"6","kode":"B-AAA-1","kode_pekerjaan":"0","id_barang":"0","qty":"0","id_satuan":"0","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"0000-00-00","persyaratan":"","status":"ENABLE","created_at":"2020-04-07 11:15:50","updated_at":"0000-00-00 00:00:00","created_by":"23"}'),
(521, '2020-04-07 12:08:21', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"1","id_user":"21","created_at":"2020-04-07 12:08:21","status":"ENABLE","created_by":"12"}'),
(522, '2020-04-07 12:08:21', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"2","id_user":"22","created_at":"2020-04-07 12:08:21","status":"ENABLE","created_by":"12"}'),
(523, '2020-04-07 12:08:21', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"3","id_user":"23","created_at":"2020-04-07 12:08:21","status":"ENABLE","created_by":"12"}'),
(524, '2020-04-07 12:08:21', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"4","id_user":"24","created_at":"2020-04-07 12:08:21","status":"ENABLE","created_by":"12"}'),
(525, '2020-04-07 12:08:22', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"0","id_user":"25","created_at":"2020-04-07 12:08:22","status":"ENABLE","created_by":"12"}'),
(526, '2020-04-07 12:08:22', 12, 'updateData', 'master_proyek', '{"id":"1","kode":"AAA","nama":"Proyek A","lokasi":"Pabrik A","json":"","file":"","status":"ENABLE","created_at":"2020-04-03 10:08:26","updated_at":"2020-04-03 13:22:28","created_by":"12"}'),
(527, '2020-04-07 12:15:49', 12, 'updateData', 'user', '{"id":"12","nip":"arvin","name":"arvin","email":"arvin","password":"89f6432af2e2bcea9489ad02cd27a134","role_id":"0","jenis":"","desc":null,"file":"","status":"ENABLE","created_at":null,"updated_at":null,"created_by":"0"}'),
(528, '2020-04-07 12:17:12', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"12"}'),
(529, '2020-04-07 12:17:13', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"12"}'),
(530, '2020-04-07 12:17:13', 12, 'updateData', 'user', '{"id":"12","nip":"arvin","name":"arvin","email":"arvin","password":"89f6432af2e2bcea9489ad02cd27a134","role_id":"1","jenis":"","desc":"-","file":"","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 12:15:49","created_by":"0"}'),
(531, '2020-04-07 12:24:25', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"1","id_user":"21","created_at":"2020-04-07 12:24:25","status":"ENABLE","created_by":"12"}'),
(532, '2020-04-07 12:24:25', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"2","id_user":"22","created_at":"2020-04-07 12:24:25","status":"ENABLE","created_by":"12"}'),
(533, '2020-04-07 12:24:25', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"3","id_user":"23","created_at":"2020-04-07 12:24:25","status":"ENABLE","created_by":"12"}'),
(534, '2020-04-07 12:24:26', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"4","id_user":"24","created_at":"2020-04-07 12:24:26","status":"ENABLE","created_by":"12"}'),
(535, '2020-04-07 12:24:26', 12, 'insertData', 'master_proyek_sub', '{"kode":"AAA","id_role":"0","id_user":"0","created_at":"2020-04-07 12:24:26","status":"ENABLE","created_by":"12"}'),
(536, '2020-04-07 12:24:26', 12, 'updateData', 'master_proyek', '{"id":"1","kode":"AAA","nama":"Proyek A","lokasi":"Pabrik A","json":"[{\\"kode\\":\\"AAA\\",\\"id_role\\":\\"1\\",\\"id_user\\":\\"21\\"},{\\"kode\\":\\"AAA\\",\\"id_role\\":\\"2\\",\\"id_user\\":\\"22\\"},{\\"kode\\":\\"AAA\\",\\"id_role\\":\\"3\\",\\"id_user\\":\\"23\\"},{\\"kode\\":\\"AAA\\",\\"id_role\\":\\"4\\",\\"id_user\\":\\"24\\"},{\\"kode\\":\\"AAA\\",\\"id_role\\":\\"0\\",\\"id_user\\":\\"25\\"}]","file":"","status":"ENABLE","created_at":"2020-04-03 10:08:26","updated_at":"2020-04-07 12:08:22","created_by":"12"}'),
(537, '2020-04-07 12:33:54', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"12"}'),
(538, '2020-04-07 12:33:54', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"12"}'),
(539, '2020-04-07 12:33:54', 12, 'updateData', 'user', '{"id":"12","nip":"arvin","name":"arvin","email":"arvin","password":"89f6432af2e2bcea9489ad02cd27a134","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"","ttd":"","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 12:17:13","created_by":"0"}'),
(540, '2020-04-07 12:35:14', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"12"}'),
(541, '2020-04-07 12:35:14', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"12"}'),
(542, '2020-04-07 12:35:14', 12, 'updateData', 'user', '{"id":"12","nip":"arvin","name":"arvin","email":"arvin","password":"89f6432af2e2bcea9489ad02cd27a134","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-12.png","ttd":"user-file-121.png","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 12:33:54","created_by":"0"}'),
(543, '2020-04-07 12:36:27', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"12"}'),
(544, '2020-04-07 12:36:27', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"12"}'),
(545, '2020-04-07 12:37:21', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"12"}'),
(546, '2020-04-07 12:37:21', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"12"}'),
(547, '2020-04-07 12:37:22', 12, 'updateData', 'user', '{"id":"12","nip":"arvin","name":"arvin","email":"arvin","password":"89f6432af2e2bcea9489ad02cd27a134","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-12.png","ttd":"user-file-121.png","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 12:35:14","created_by":"0"}'),
(548, '2020-04-07 12:39:17', 12, 'insertData', 'user', '{"nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:39:17","status":"ENABLE"}'),
(549, '2020-04-07 12:39:17', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":26}'),
(550, '2020-04-07 12:39:17', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":26}'),
(551, '2020-04-07 12:39:17', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":26}'),
(552, '2020-04-07 12:39:17', 12, 'updateData', 'user', '{"id":"26","nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","desc":"-","file":"","ttd":"","status":"ENABLE","created_at":"2020-04-07 12:39:17","updated_at":null,"created_by":"12"}'),
(553, '2020-04-07 12:40:21', 12, 'insertData', 'user', '{"nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:40:21","status":"ENABLE"}'),
(554, '2020-04-07 12:40:21', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":27}'),
(555, '2020-04-07 12:40:21', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":27}'),
(556, '2020-04-07 12:40:21', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":27}'),
(557, '2020-04-07 12:40:21', 12, 'updateData', 'user', '{"id":"27","nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","desc":"-","file":"","ttd":"","status":"ENABLE","created_at":"2020-04-07 12:40:21","updated_at":null,"created_by":"12"}'),
(558, '2020-04-07 12:43:01', 12, 'insertData', 'user', '{"nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:43:01","status":"ENABLE"}'),
(559, '2020-04-07 12:43:02', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":28}'),
(560, '2020-04-07 12:43:02', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":28}'),
(561, '2020-04-07 12:43:02', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":28}'),
(562, '2020-04-07 12:43:48', 12, 'insertData', 'user', '{"nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:43:48","status":"ENABLE"}'),
(563, '2020-04-07 12:43:49', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":29}'),
(564, '2020-04-07 12:43:49', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":29}'),
(565, '2020-04-07 12:43:49', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":29}'),
(566, '2020-04-07 12:45:09', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"29"}'),
(567, '2020-04-07 12:45:09', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"29"}'),
(568, '2020-04-07 12:45:09', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":"29"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(569, '2020-04-07 12:45:09', 12, 'updateData', 'user', '{"id":"29","nip":"superadmin","name":"superadmin","email":"superadmin@gmail.com","password":"ac497cfaba23c4184cb03b97e8c51e0a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"},{\\"jenis\\":\\"3\\"}]","desc":"-","file":"user-file-29.png","ttd":"user-file-29.jpg","status":"ENABLE","created_at":"2020-04-07 12:43:48","updated_at":null,"created_by":"12"}'),
(570, '2020-04-07 12:47:00', 12, 'insertData', 'user', '{"nip":"peno","name":"peno","email":"peno@gmail.com","password":"b3bdc4529c34a506531895e2ff317abd","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:47:00","status":"ENABLE"}'),
(571, '2020-04-07 12:47:00', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":30}'),
(572, '2020-04-07 12:48:25', 12, 'insertData', 'user', '{"nip":"peno","name":"peno","email":"peno@gmail.com","password":"b3bdc4529c34a506531895e2ff317abd","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:48:25","status":"ENABLE"}'),
(573, '2020-04-07 12:48:25', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":31}'),
(574, '2020-04-07 12:50:06', 12, 'insertData', 'user', '{"nip":"peno","name":"peno","email":"peno@gmail.com","password":"b3bdc4529c34a506531895e2ff317abd","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:50:06","status":"ENABLE"}'),
(575, '2020-04-07 12:50:06', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":32}'),
(576, '2020-04-07 12:51:08', 12, 'insertData', 'user', '{"nip":"peno","name":"peno","email":"peno@gmail.com","password":"b3bdc4529c34a506531895e2ff317abd","role_id":"1","desc":"-","jenis":"[{\\"jenis\\":\\"3\\"}]","created_by":"12","created_at":"2020-04-07 12:51:08","status":"ENABLE"}'),
(577, '2020-04-07 12:51:08', 12, 'insertData', 'user_jenis', '{"jenis":"3","id_user":33}'),
(578, '2020-04-07 12:54:09', 12, 'insertData', 'master_proyek_sub', '{"kode":"BBB","id_role":"1","id_user":"21","created_at":"2020-04-07 12:54:09","status":"ENABLE","created_by":"12"}'),
(579, '2020-04-07 12:54:09', 12, 'insertData', 'master_proyek_sub', '{"kode":"BBB","id_role":"2","id_user":"22","created_at":"2020-04-07 12:54:09","status":"ENABLE","created_by":"12"}'),
(580, '2020-04-07 12:54:09', 12, 'insertData', 'master_proyek_sub', '{"kode":"BBB","id_role":"3","id_user":"23","created_at":"2020-04-07 12:54:09","status":"ENABLE","created_by":"12"}'),
(581, '2020-04-07 12:54:09', 12, 'insertData', 'master_proyek_sub', '{"kode":"BBB","id_role":"4","id_user":"24","created_at":"2020-04-07 12:54:09","status":"ENABLE","created_by":"12"}'),
(582, '2020-04-07 12:54:09', 12, 'updateData', 'master_proyek', '{"id":"2","kode":"BBB","nama":"Proyek B","lokasi":"Pabrik B","json":"","file":"","status":"ENABLE","created_at":"2020-04-03 10:08:37","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(583, '2020-04-07 12:56:30', 21, 'updateData', 'report', '{"id":"7","name":"Surat Permintaan","query":"SELECT  * FROM permintaan_barang","header":null,"status":"ENABLE","created_at":"2020-04-07 12:56:06","updated_at":null}'),
(584, '2020-04-07 13:00:31', 21, 'updateData', 'report', '{"id":"7","name":"Surat Permintaan","query":"SELECT  * FROM permintaan_barang","header":"[\\"kode\\",\\"id_proyek\\",\\"lokasi\\",\\"catatan\\",\\"status_permintaan\\"]","status":"ENABLE","created_at":"2020-04-07 12:56:06","updated_at":"2020-04-07 12:56:30"}'),
(585, '2020-04-07 13:00:39', 21, 'updateData', 'report', '{"id":"7","name":"Surat Permintaan","query":"SELECT  * FROM permintaan_barang","header":"[\\"kode\\",\\"id_proyek\\",\\"lokasi\\",\\"catatan\\",\\"status_permintaan\\",\\"jenis\\"]","status":"ENABLE","created_at":"2020-04-07 12:56:06","updated_at":"2020-04-07 13:00:31"}'),
(586, '2020-04-07 13:25:53', 12, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(587, '2020-04-07 13:25:54', 12, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(588, '2020-04-07 13:25:54', 12, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"","desc":null,"file":"","ttd":"","status":"ENABLE","created_at":null,"updated_at":null,"created_by":"0"}'),
(589, '2020-04-07 21:37:25', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(590, '2020-04-07 21:37:26', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(591, '2020-04-07 21:37:26', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"","ttd":"","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 13:25:54","created_by":"0"}'),
(592, '2020-04-07 21:39:10', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(593, '2020-04-07 21:39:10', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(594, '2020-04-07 21:39:11', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21.png","ttd":"user-file-21.jpg","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 21:37:26","created_by":"0"}'),
(595, '2020-04-07 22:50:48', 22, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"22"}'),
(596, '2020-04-07 22:50:48', 22, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"22"}'),
(597, '2020-04-07 22:50:48', 22, 'insertData', 'user_jenis', '{"jenis":"3","id_user":"22"}'),
(598, '2020-04-07 22:50:48', 22, 'updateData', 'user', '{"id":"22","nip":"pm","name":"pm","email":"pm","password":"5109d85d95fece7816d9704e6e5b1279","role_id":"2","jenis":"","desc":null,"file":"","ttd":"","status":"ENABLE","created_at":null,"updated_at":null,"created_by":"0"}'),
(599, '2020-04-07 22:52:38', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-BBB-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-07 22:52:38","created_by":"22"}'),
(600, '2020-04-07 22:52:38', 22, 'updateData', 'permintaan_barang', '{"id":"2","kode":"B-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"0","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"1","jenis":"SPB","file":"SP-SPB-2-B-BBB-1.docx","status":"ENABLE","created_at":"2020-04-07 10:23:54","updated_at":"2020-04-07 10:26:50","created_by":"21","log":"[{\\"kode\\":\\"B-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:26:50\\",\\"file\\":\\"SP-SPB-2-B-BBB-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-BBB-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"2\\",\\"qty\\":\\"50\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:26:50\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(601, '2020-04-07 23:11:24', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(602, '2020-04-07 23:11:24', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(603, '2020-04-07 23:11:24', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21.png","ttd":"user-ttd-21.jpg","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 21:39:11","created_by":"0"}'),
(604, '2020-04-07 23:12:16', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(605, '2020-04-07 23:12:16', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(606, '2020-04-07 23:12:16', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21.png","ttd":"user-ttd-211.jpg","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 23:11:24","created_by":"0"}'),
(607, '2020-04-07 23:16:42', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(608, '2020-04-07 23:16:42', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(609, '2020-04-07 23:16:42', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21.png","ttd":"user-ttd-21.jpg","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 23:12:16","created_by":"0"}'),
(610, '2020-04-07 23:17:44', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(611, '2020-04-07 23:17:45', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(612, '2020-04-07 23:17:45', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21.png","ttd":"user-ttd-211.png","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 23:16:42","created_by":"0"}'),
(613, '2020-04-07 23:18:07', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(614, '2020-04-07 23:18:07', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(615, '2020-04-07 23:18:36', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(616, '2020-04-07 23:18:36', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(617, '2020-04-07 23:18:55', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(618, '2020-04-07 23:18:56', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(619, '2020-04-07 23:20:27', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(620, '2020-04-07 23:20:28', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(621, '2020-04-07 23:20:40', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(622, '2020-04-07 23:20:40', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(623, '2020-04-07 23:21:20', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(624, '2020-04-07 23:21:20', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(625, '2020-04-07 23:23:26', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(626, '2020-04-07 23:23:26', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(627, '2020-04-07 23:24:26', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(628, '2020-04-07 23:24:26', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(629, '2020-04-07 23:54:30', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(630, '2020-04-07 23:54:30', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(631, '2020-04-08 05:12:23', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(632, '2020-04-08 05:12:23', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(633, '2020-04-08 05:15:03', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(634, '2020-04-08 05:15:03', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(635, '2020-04-08 05:15:28', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(636, '2020-04-08 05:15:28', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(637, '2020-04-08 05:15:36', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(638, '2020-04-08 05:15:36', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(639, '2020-04-08 05:15:51', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(640, '2020-04-08 05:15:51', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(641, '2020-04-08 05:15:51', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21.png","ttd":"user-ttd-212.png","status":"ENABLE","created_at":null,"updated_at":"2020-04-07 23:17:45","created_by":"0"}'),
(642, '2020-04-08 08:23:57', 12, 'deleteData', 'master_proyek_sub', '{"id":"17","kode":"AAA","id_role":"0","id_user":"0","status":"ENABLE","created_at":"2020-04-07 12:24:26","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(643, '2020-04-09 03:25:26', 21, 'insertData', 'permintaan_barang', '{"kode":"B--1","id_proyek":"0","created_by":"21","created_at":"2020-04-09 03:25:26","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":1}'),
(644, '2020-04-09 03:25:26', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B--1 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":5,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 03:25:26","created_by":"21"}'),
(645, '2020-04-09 04:23:20', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"","id_barang":"2","kode_pekerjaan":"CCCCC","id_satuan":"2","qty":"115","fungsi":"-","target":"2020-04-10","keterangan":"-","created_at":"2020-04-09 04:23:20","status":"ENABLE","created_by":"21"}'),
(646, '2020-04-09 04:26:52', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"2","kode_pekerjaan":"CCCCC","id_satuan":"3","qty":"38","fungsi":"-","target":"2020-04-10","keterangan":"-","created_at":"2020-04-09 04:26:52","status":"ENABLE","created_by":"21"}'),
(647, '2020-04-09 04:34:29', 21, 'deleteData', 'permintaan_barang_sub', '{"id":"7","kode":"B-AAA-1","kode_pekerjaan":"CCCCC","id_barang":"2","qty":"38","id_satuan":"3","fungsi":"-","target":"2020-04-10","keterangan":"-","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"0000-00-00","persyaratan":"","status":"ENABLE","created_at":"2020-04-09 04:26:52","updated_at":"0000-00-00 00:00:00","created_by":"21"}'),
(648, '2020-04-09 05:07:33', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"S-AAA-1","id_barang":"5","kode_pekerjaan":"010101","id_satuan":"1","qty":"115","waktu_pelaksanaan":"2020-04-10","persyaratan":"[{\\"persyaratan\\":\\"1\\"},{\\"persyaratan\\":\\"2\\"}]","keterangan":"","created_at":"2020-04-09 05:07:33","status":"ENABLE","created_by":"21"}'),
(649, '2020-04-09 05:25:02', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-CCC-1","id_barang":"9","kode_pekerjaan":"010206","id_satuan":"3","qty":"5","kapasitas":"-","merk":"-","waktu_pemakaian":"2020-04-10","keterangan":"","created_at":"2020-04-09 05:25:02","status":"ENABLE","created_by":"21"}'),
(650, '2020-04-09 05:25:22', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-CCC-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"4","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 05:25:22","created_by":"21"}'),
(651, '2020-04-09 05:25:22', 21, 'updateData', 'permintaan_barang', '{"id":"4","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-07 10:38:38","updated_at":"2020-04-07 10:53:02","created_by":"21","log":"[{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:38:59\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 10:52:41\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:52:41\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 10:53:02\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"5\\",\\"kode_pekerjaan\\":\\"ASKDQO\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"20\\",\\"kapasitas\\":\\"22\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-08\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 10:53:02\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(652, '2020-04-09 08:40:26', 21, 'updateData', 'menu_master', '{"id":"39","name":"Barang","icon":"fa fa-circle","link":"master\\/master_barang","urutan":"0","parent":"16","notif":"","status":"ENABLE","created_at":"2020-04-02 09:25:00","updated_at":null}'),
(653, '2020-04-09 08:40:43', 21, 'updateData', 'menu_master', '{"id":"40","name":"Satuan","icon":"fa fa-circle","link":"master\\/master_satuan","urutan":"1","parent":"16","notif":"","status":"ENABLE","created_at":"2020-04-02 09:25:24","updated_at":null}'),
(654, '2020-04-09 08:41:06', 21, 'insertData', 'master_uom', '{"nama":"Mi","created_by":"21","created_at":"2020-04-09 08:41:06","status":"ENABLE"}'),
(655, '2020-04-09 08:41:07', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":1,"status":"ENABLE","created_at":"2020-04-09 08:41:07"}'),
(656, '2020-04-09 08:41:07', 21, 'insertData', 'master_uom', '{"nama":"Mi","created_by":"21","created_at":"2020-04-09 08:41:07","status":"ENABLE"}'),
(657, '2020-04-09 08:41:07', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":2,"status":"ENABLE","created_at":"2020-04-09 08:41:07"}'),
(658, '2020-04-09 08:41:20', 21, 'updateData', 'master_uom', '{"id":"2","nama":"Mi","status":"ENABLE","created_at":"2020-04-09 08:41:07","updated_at":"0000-00-00 00:00:00","created_by":"21"}'),
(659, '2020-04-09 08:41:26', 21, 'updateData', 'master_uom', '{"id":"1","nama":"Mi","status":"ENABLE","created_at":"2020-04-09 08:41:06","updated_at":"0000-00-00 00:00:00","created_by":"21"}'),
(660, '2020-04-09 08:41:30', 21, 'insertData', 'master_uom', '{"nama":"M2","created_by":"21","created_at":"2020-04-09 08:41:30","status":"ENABLE"}'),
(661, '2020-04-09 08:41:30', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":3,"status":"ENABLE","created_at":"2020-04-09 08:41:30"}'),
(662, '2020-04-09 08:41:39', 21, 'insertData', 'master_uom', '{"nama":"Ls","created_by":"21","created_at":"2020-04-09 08:41:39","status":"ENABLE"}'),
(663, '2020-04-09 08:41:39', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":4,"status":"ENABLE","created_at":"2020-04-09 08:41:39"}'),
(664, '2020-04-09 08:41:45', 21, 'insertData', 'master_uom', '{"nama":"Unit","created_by":"21","created_at":"2020-04-09 08:41:45","status":"ENABLE"}'),
(665, '2020-04-09 08:41:45', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":5,"status":"ENABLE","created_at":"2020-04-09 08:41:45"}'),
(666, '2020-04-09 08:42:15', 21, 'insertData', 'master_uom', '{"nama":"Kg","created_by":"21","created_at":"2020-04-09 08:42:15","status":"ENABLE"}'),
(667, '2020-04-09 08:42:15', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":6,"status":"ENABLE","created_at":"2020-04-09 08:42:15"}'),
(668, '2020-04-09 08:42:24', 21, 'insertData', 'master_uom', '{"nama":"Bh","created_by":"21","created_at":"2020-04-09 08:42:24","status":"ENABLE"}'),
(669, '2020-04-09 08:42:24', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":7,"status":"ENABLE","created_at":"2020-04-09 08:42:24"}'),
(670, '2020-04-09 08:42:44', 21, 'insertData', 'master_uom', '{"nama":"Ttk","created_by":"21","created_at":"2020-04-09 08:42:44","status":"ENABLE"}'),
(671, '2020-04-09 08:42:44', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":8,"status":"ENABLE","created_at":"2020-04-09 08:42:44"}'),
(672, '2020-04-09 08:43:10', 21, 'insertData', 'master_uom', '{"nama":"Set","created_by":"21","created_at":"2020-04-09 08:43:10","status":"ENABLE"}'),
(673, '2020-04-09 08:43:10', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":9,"status":"ENABLE","created_at":"2020-04-09 08:43:10"}'),
(674, '2020-04-09 08:43:18', 21, 'insertData', 'master_uom', '{"nama":"Ltr","created_by":"21","created_at":"2020-04-09 08:43:18","status":"ENABLE"}'),
(675, '2020-04-09 08:43:19', 21, 'insertData', 'file', '{"id":"","name":"","mime":"","dir":"","table":"master_uom","table_id":10,"status":"ENABLE","created_at":"2020-04-09 08:43:19"}'),
(676, '2020-04-09 08:55:04', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Galian Tanah","kode_pekerjaan":"010101","id_satuan":"M3","qty":"22","fungsi":"-","target":"2020-04-10","keterangan":"","created_at":"2020-04-09 08:55:04","status":"ENABLE","created_by":"21"}'),
(677, '2020-04-09 09:07:13', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 09:07:13","created_by":"21"}'),
(678, '2020-04-09 09:07:13', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPB","file":"SP-SPB-1-B-AAA-1.docx","draft":"0","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"2020-04-07 09:37:36","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"file\\":\\"SP-SPB-1-B-AAA-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(679, '2020-04-09 09:08:09', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 09:08:09","created_by":"21"}'),
(680, '2020-04-09 09:08:09', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPB","file":"SP-SPB-1-B-AAA-1.docx","draft":"0","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"2020-04-09 09:07:13","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"file\\":\\"SP-SPB-1-B-AAA-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"file\\":\\"SP-SPB-1-B-AAA-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"35\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"22\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(681, '2020-04-09 09:08:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 09:08:28","created_by":"21"}'),
(682, '2020-04-09 09:08:29', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"0","id_pd":"0","id_lp":"0","status_permintaan":"2","jenis":"SPB","file":"SP-SPB-1-B-AAA-1.docx","draft":"0","status":"ENABLE","created_at":"2020-04-07 08:24:16","updated_at":"2020-04-09 09:08:09","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"0\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:26:58\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 08:27:54\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"file\\":\\"SP-SPB-1-B-AAA-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-07 09:37:36\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"file\\":\\"SP-SPB-1-B-AAA-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"35\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"22\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:07:13\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 09:08:09\\",\\"file\\":\\"SP-SPB-1-B-AAA-1.docx\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"1\\",\\"kode_pekerjaan\\":\\"AAAAA\\",\\"id_satuan\\":\\"1\\",\\"qty\\":\\"35\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-09 09:08:09\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"3\\",\\"kode_pekerjaan\\":\\"BBBBB\\",\\"id_satuan\\":\\"3\\",\\"qty\\":\\"34\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:08:09\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"22\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:08:09\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(683, '2020-04-09 09:24:08', 21, 'insertData', 'permintaan_barang', '{"kode":"A-BBB-2","id_proyek":"2","created_by":"21","created_at":"2020-04-09 09:24:08","status":"ENABLE","id_pic":"21","jenis":"SPA","status_permintaan":0}'),
(684, '2020-04-09 09:24:08', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode A-BBB-2 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":6,"status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 09:24:08","created_by":"21"}'),
(685, '2020-04-09 09:24:29', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-2","id_barang":"Bore Pile","kode_pekerjaan":"010202","id_satuan":"M''","qty":"5","kapasitas":"2","merk":"-","waktu_pemakaian":"2020-04-10","keterangan":"","created_at":"2020-04-09 09:24:29","status":"ENABLE","created_by":"21"}'),
(686, '2020-04-09 09:24:50', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-2","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"3","kapasitas":"2","merk":"-","waktu_pemakaian":"2020-04-10","keterangan":"","created_at":"2020-04-09 09:24:50","status":"ENABLE","created_by":"21"}'),
(687, '2020-04-09 09:24:53', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-2 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"6","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 09:24:53","created_by":"21"}'),
(688, '2020-04-09 09:24:53', 21, 'updateData', 'permintaan_barang', '{"id":"6","kode":"A-BBB-2","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","draft":"0","status":"ENABLE","created_at":"2020-04-09 09:24:08","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(689, '2020-04-09 09:34:39', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode A-BBB-2 telah diubah oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"6","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 09:34:39","created_by":"21"}'),
(690, '2020-04-09 09:34:39', 21, 'updateData', 'permintaan_barang', '{"id":"6","kode":"A-BBB-2","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","draft":"0","status":"ENABLE","created_at":"2020-04-09 09:24:08","updated_at":"2020-04-09 09:24:53","created_by":"21","log":"[{\\"kode\\":\\"A-BBB-2\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 09:24:53\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-2\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"2\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:24:53\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"A-BBB-2\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"3\\",\\"kapasitas\\":\\"2\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 09:24:53\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(691, '2020-04-09 09:47:51', 12, 'deleteData', 'master_proyek_sub', '{"id":"22","kode":"BBB","id_role":"1","id_user":"33","status":"ENABLE","created_at":"2020-04-07 12:54:09","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(692, '2020-04-09 09:48:12', 12, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"1","id_user":"33","created_at":"2020-04-09 09:48:12","status":"ENABLE","created_by":"12"}'),
(693, '2020-04-09 09:48:12', 12, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"1","id_user":"21","created_at":"2020-04-09 09:48:12","status":"ENABLE","created_by":"12"}'),
(694, '2020-04-09 09:48:12', 12, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"3","id_user":"23","created_at":"2020-04-09 09:48:12","status":"ENABLE","created_by":"12"}'),
(695, '2020-04-09 09:48:13', 12, 'updateData', 'master_proyek', '{"id":"3","kode":"CCC","nama":"Proyek C","lokasi":"Pabrik C","json":"","file":"","status":"ENABLE","created_at":"2020-04-03 13:15:47","updated_at":"0000-00-00 00:00:00","created_by":"12"}'),
(696, '2020-04-09 10:01:58', 33, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"33"}'),
(697, '2020-04-09 10:01:58', 33, 'insertData', 'user_jenis', '{"jenis":"3","id_user":"33"}'),
(698, '2020-04-09 10:01:58', 33, 'updateData', 'user', '{"id":"33","nip":"peno","name":"peno","email":"peno@gmail.com","password":"b3bdc4529c34a506531895e2ff317abd","role_id":"1","jenis":"[{\\"jenis\\":\\"3\\"}]","desc":"-","file":"user-file-33.png","ttd":"user-ttd-33.jpg","status":"ENABLE","created_at":"2020-04-07 12:51:08","updated_at":null,"created_by":"12"}'),
(699, '2020-04-09 11:21:11', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"21"}'),
(700, '2020-04-09 11:21:11', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"21"}'),
(701, '2020-04-09 11:21:11', 21, 'insertData', 'user_jenis', '{"jenis":"3","id_user":"21"}'),
(702, '2020-04-09 11:21:12', 21, 'updateData', 'user', '{"id":"21","nip":"pic","name":"pic","email":"pic","password":"ed09636a6ea24a292460866afdd7a89a","role_id":"1","jenis":"[{\\"jenis\\":\\"1\\"},{\\"jenis\\":\\"2\\"}]","desc":"-","file":"user-file-21-6950c16c9bcc6995f376b297f16317593930.png","ttd":"user-ttd-21-ttd.jpg","status":"ENABLE","created_at":null,"updated_at":"2020-04-08 05:15:51","created_by":"0"}'),
(703, '2020-04-09 12:11:03', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-1","id_proyek":"1","created_by":"21","created_at":"2020-04-09 12:11:03","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":0}'),
(704, '2020-04-09 12:11:23', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Bore Pile","kode_pekerjaan":"010202","id_satuan":"M''","qty":"32","fungsi":"-","target":"2020-04-10","keterangan":"","created_at":"2020-04-09 12:11:23","status":"ENABLE","created_by":"21"}'),
(705, '2020-04-09 12:11:44', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Basecourse","kode_pekerjaan":"010109","id_satuan":"M3","qty":"10","fungsi":"-","target":"2020-04-10","keterangan":"","created_at":"2020-04-09 12:11:44","status":"ENABLE","created_by":"21"}'),
(706, '2020-04-09 12:12:45', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:12:45","created_by":"21"}'),
(707, '2020-04-09 12:12:46', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:12:46","created_by":"21"}'),
(708, '2020-04-09 12:12:46', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:12:46","created_by":"21"}'),
(709, '2020-04-09 12:12:46', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:11:03","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(710, '2020-04-09 12:17:29', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah ajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:17:29","created_by":"21"}'),
(711, '2020-04-09 12:17:30', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah ajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:17:30","created_by":"21"}'),
(712, '2020-04-09 12:17:30', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah ajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:17:30","created_by":"21"}'),
(713, '2020-04-09 12:17:30', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:11:03","updated_at":"2020-04-09 12:12:46","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:12:46\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:12:45\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Basecourse\\",\\"kode_pekerjaan\\":\\"010109\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"10\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:12:45\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(714, '2020-04-09 12:19:39', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:19:39","created_by":"22"}'),
(715, '2020-04-09 12:19:39', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:19:39","created_by":"22"}'),
(716, '2020-04-09 12:19:39', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:19:39","created_by":"22"}'),
(717, '2020-04-09 12:19:40', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:11:03","updated_at":"2020-04-09 12:12:46","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:12:46\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"32\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:12:45\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Basecourse\\",\\"kode_pekerjaan\\":\\"010109\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"10\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:12:45\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(718, '2020-04-09 12:26:08', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-1","id_proyek":"1","created_by":"21","created_at":"2020-04-09 12:26:08","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":0}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(719, '2020-04-09 12:26:36', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Galian Tanah","kode_pekerjaan":"010101","id_satuan":"M3","qty":"10","fungsi":"-","target":"2020-04-10","keterangan":"","created_at":"2020-04-09 12:26:36","status":"ENABLE","created_by":"21"}'),
(720, '2020-04-09 12:26:41', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:26:41","created_by":"21"}'),
(721, '2020-04-09 12:26:41', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:26:41","created_by":"21"}'),
(722, '2020-04-09 12:26:41', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:26:41","created_by":"21"}'),
(723, '2020-04-09 12:26:41', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:26:08","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(724, '2020-04-09 12:26:55', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:26:55","created_by":"21"}'),
(725, '2020-04-09 12:26:55', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:26:55","created_by":"21"}'),
(726, '2020-04-09 12:26:55', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:26:55","created_by":"21"}'),
(727, '2020-04-09 12:26:55', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:26:08","updated_at":"2020-04-09 12:26:41","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:26:41\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Galian Tanah\\",\\"kode_pekerjaan\\":\\"010101\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"10\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:26:41\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(728, '2020-04-09 12:27:15', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:27:15","created_by":"22"}'),
(729, '2020-04-09 12:27:15', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:27:15","created_by":"22"}'),
(730, '2020-04-09 12:27:15', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:27:15","created_by":"22"}'),
(731, '2020-04-09 12:27:15', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:26:08","updated_at":"2020-04-09 12:26:41","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:26:41\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Galian Tanah\\",\\"kode_pekerjaan\\":\\"010101\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"10\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:26:41\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(732, '2020-04-09 12:28:15', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-1","id_proyek":"1","created_by":"21","created_at":"2020-04-09 12:28:15","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":0}'),
(733, '2020-04-09 12:28:26', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Urugan Pasir","kode_pekerjaan":"010206","id_satuan":"M3","qty":"5","fungsi":"-","target":"2020-04-10","keterangan":"","created_at":"2020-04-09 12:28:26","status":"ENABLE","created_by":"21"}'),
(734, '2020-04-09 12:28:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:28:28","created_by":"21"}'),
(735, '2020-04-09 12:28:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:28:28","created_by":"21"}'),
(736, '2020-04-09 12:28:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:28:28","created_by":"21"}'),
(737, '2020-04-09 12:28:29', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:28:15","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(738, '2020-04-09 12:28:35', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:28:35","created_by":"21"}'),
(739, '2020-04-09 12:28:35', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:28:35","created_by":"21"}'),
(740, '2020-04-09 12:28:36', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode B-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:28:36","created_by":"21"}'),
(741, '2020-04-09 12:28:36', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:28:15","updated_at":"2020-04-09 12:28:29","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:28:29\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Urugan Pasir\\",\\"kode_pekerjaan\\":\\"010206\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:28:28\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(742, '2020-04-09 12:28:51', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:28:51","created_by":"22"}'),
(743, '2020-04-09 12:28:51', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:28:51","created_by":"22"}'),
(744, '2020-04-09 12:28:51', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:28:51","created_by":"22"}'),
(745, '2020-04-09 12:28:52', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:28:15","updated_at":"2020-04-09 12:28:29","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:28:29\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Urugan Pasir\\",\\"kode_pekerjaan\\":\\"010206\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:28:28\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(746, '2020-04-09 12:29:35', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah ditolak oleh cc(Cost Control)","keterangan":"Pengajuan ditolak oleh cc(Cost Control)","tipe":"verifikasi-tolak","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:29:35","created_by":"23"}'),
(747, '2020-04-09 12:29:35', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah ditolak oleh cc(Cost Control)","keterangan":"Pengajuan ditolak oleh cc(Cost Control)","tipe":"verifikasi-tolak","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:29:35","created_by":"23"}'),
(748, '2020-04-09 12:29:35', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-1 telah ditolak oleh cc(Cost Control)","keterangan":"Pengajuan ditolak oleh cc(Cost Control)","tipe":"verifikasi-tolak","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:29:35","created_by":"23"}'),
(749, '2020-04-09 12:29:35', 23, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"3","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-09 12:28:15","updated_at":"2020-04-09 12:28:29","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:28:29\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Urugan Pasir\\",\\"kode_pekerjaan\\":\\"010206\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:28:28\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(750, '2020-04-09 12:39:13', 21, 'insertData', 'permintaan_barang', '{"kode":"A-BBB-1","id_proyek":"2","created_by":"21","created_at":"2020-04-09 12:39:13","status":"ENABLE","id_pic":"21","jenis":"SPA","status_permintaan":0}'),
(751, '2020-04-09 12:39:29', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-1","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"7","kapasitas":"3","merk":"-","waktu_pemakaian":"2020-04-10","keterangan":"","created_at":"2020-04-09 12:39:29","status":"ENABLE","created_by":"21"}'),
(752, '2020-04-09 12:39:35', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:39:35","created_by":"21"}'),
(753, '2020-04-09 12:39:35', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:39:35","created_by":"21"}'),
(754, '2020-04-09 12:39:35', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:39:35","created_by":"21"}'),
(755, '2020-04-09 12:39:36', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-09 12:39:13","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(756, '2020-04-09 12:40:01', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-BBB-1","id_barang":"Pondasi Batu Kali","kode_pekerjaan":"010205","id_satuan":"M3","qty":"4","kapasitas":"4","merk":"-","waktu_pemakaian":"2020-04-10","keterangan":"","created_at":"2020-04-09 12:40:01","status":"ENABLE","created_by":"21"}'),
(757, '2020-04-09 12:40:03', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:40:03","created_by":"21"}'),
(758, '2020-04-09 12:40:03', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:40:03","created_by":"21"}'),
(759, '2020-04-09 12:40:03', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:40:03","created_by":"21"}'),
(760, '2020-04-09 12:40:04', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-09 12:39:13","updated_at":"2020-04-09 12:39:36","created_by":"21","log":"[{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:39:36\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:39:35\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(761, '2020-04-09 12:40:16', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode A-BBB-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:40:16","created_by":"21"}'),
(762, '2020-04-09 12:40:16', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode A-BBB-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"2","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:40:16","created_by":"21"}'),
(763, '2020-04-09 12:40:17', 21, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode A-BBB-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"2","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-09 12:40:17","created_by":"21"}'),
(764, '2020-04-09 12:40:17', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-09 12:39:13","updated_at":"2020-04-09 12:40:04","created_by":"21","log":"[{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:39:36\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:39:35\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:40:04\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Pondasi Batu Kali\\",\\"kode_pekerjaan\\":\\"010205\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"4\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(765, '2020-04-09 12:40:56', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:40:56","created_by":"22"}'),
(766, '2020-04-09 12:40:56', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"22","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:40:56","created_by":"22"}'),
(767, '2020-04-09 12:40:56', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah diubah oleh pm(PM Proyek)","keterangan":"Edit Data Surat Permintaan oleh pm(PM Proyek)","id_user":"23","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 12:40:56","created_by":"22"}'),
(768, '2020-04-09 12:40:57', 22, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-09 12:39:13","updated_at":"2020-04-09 12:40:04","created_by":"21","log":"[{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:39:36\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:39:35\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:40:04\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Pondasi Batu Kali\\",\\"kode_pekerjaan\\":\\"010205\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"4\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(769, '2020-04-09 12:41:04', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"21","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:41:04","created_by":"22"}'),
(770, '2020-04-09 12:41:04', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:41:04","created_by":"22"}'),
(771, '2020-04-09 12:41:04', 22, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"23","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 12:41:04","created_by":"22"}'),
(772, '2020-04-09 12:41:05', 22, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-09 12:39:13","updated_at":"2020-04-09 12:40:57","created_by":"21","log":"[{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:39:36\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:39:35\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:40:04\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Pondasi Batu Kali\\",\\"kode_pekerjaan\\":\\"010205\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"4\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-09 12:40:57\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"sip\\",\\"created_at\\":\\"2020-04-09 12:40:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Pondasi Batu Kali\\",\\"kode_pekerjaan\\":\\"010205\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"4\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(773, '2020-04-09 12:43:34', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"25"}'),
(774, '2020-04-09 12:43:34', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"25"}'),
(775, '2020-04-09 12:43:35', 21, 'insertData', 'user_jenis', '{"jenis":"3","id_user":"25"}'),
(776, '2020-04-09 12:43:35', 21, 'updateData', 'user', '{"id":"25","nip":"lp","name":"lp","email":"lp","password":"351325a660b25474456af5c9a5606c4e","role_id":"5","jenis":"","desc":null,"file":"","ttd":"","status":"ENABLE","created_at":null,"updated_at":null,"created_by":"0"}'),
(777, '2020-04-09 12:43:53', 21, 'insertData', 'user_jenis', '{"jenis":"1","id_user":"24"}'),
(778, '2020-04-09 12:43:53', 21, 'insertData', 'user_jenis', '{"jenis":"2","id_user":"24"}'),
(779, '2020-04-09 12:43:54', 21, 'insertData', 'user_jenis', '{"jenis":"3","id_user":"24"}'),
(780, '2020-04-09 12:43:54', 21, 'updateData', 'user', '{"id":"24","nip":"pd","name":"pd","email":"pd","password":"b69466b536f8ce43b6356ec1332e05a4","role_id":"4","jenis":"","desc":null,"file":"","ttd":"","status":"ENABLE","created_at":null,"updated_at":null,"created_by":"0"}'),
(781, '2020-04-09 12:44:27', 21, 'updateData', 'role', '{"id":"1","role":"PIC Proyek","status":"ENABLE","menu":"[\\"1\\",\\"41\\",\\"34\\",\\"16\\",\\"40\\",\\"39\\"]","created_at":"2018-10-12 17:03:59","updated_at":"2020-03-18 01:33:57"}'),
(782, '2020-04-09 17:30:18', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh cc(Cost Control)","keterangan":"Pengajuan diterima oleh cc(Cost Control)","tipe":"verifikasi-terima","id_user":"21","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 17:30:18","created_by":"23"}'),
(783, '2020-04-09 17:30:18', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh cc(Cost Control)","keterangan":"Pengajuan diterima oleh cc(Cost Control)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 17:30:18","created_by":"23"}'),
(784, '2020-04-09 17:30:19', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh cc(Cost Control)","keterangan":"Pengajuan diterima oleh cc(Cost Control)","tipe":"verifikasi-terima","id_user":"23","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 17:30:19","created_by":"23"}'),
(785, '2020-04-09 17:30:19', 23, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode A-BBB-1 telah disetujui oleh cc(Cost Control)","keterangan":"Pengajuan diterima oleh cc(Cost Control)","tipe":"verifikasi-terima","id_user":"24","id_permintaan":"2","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-09 17:30:19","created_by":"23"}'),
(786, '2020-04-09 17:30:19', 23, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-BBB-1","id_proyek":"2","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"3","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-09 12:39:13","updated_at":"2020-04-09 12:40:57","created_by":"21","log":"[{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:39:36\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:39:35\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-09 12:40:04\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"7\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Pondasi Batu Kali\\",\\"kode_pekerjaan\\":\\"010205\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"4\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:03\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-BBB-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-09 12:40:57\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"5\\",\\"kapasitas\\":\\"3\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"sip\\",\\"created_at\\":\\"2020-04-09 12:40:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"A-BBB-1\\",\\"id_barang\\":\\"Pondasi Batu Kali\\",\\"kode_pekerjaan\\":\\"010205\\",\\"id_satuan\\":\\"M3\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"4\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-10\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-09 12:40:56\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(787, '2020-04-09 18:17:52', 21, 'insertData', 'permintaan_barang', '{"kode":"S-AAA-1","id_proyek":"1","created_by":"21","created_at":"2020-04-09 18:17:52","status":"ENABLE","id_pic":"21","jenis":"SPS","status_permintaan":0}'),
(788, '2020-04-09 18:18:24', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"S-AAA-1","id_barang":"Perataan Tanah","kode_pekerjaan":"010104","id_satuan":"M2","qty":"20","waktu_pelaksanaan":"2020-04-20","persyaratan":"[{\\"persyaratan\\":\\"1\\"},{\\"persyaratan\\":\\"2\\"},{\\"persyaratan\\":\\"3\\"}]","keterangan":"","created_at":"2020-04-09 18:18:24","status":"ENABLE","created_by":"21"}'),
(789, '2020-04-09 18:18:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 18:18:28","created_by":"21"}'),
(790, '2020-04-09 18:18:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 18:18:28","created_by":"21"}'),
(791, '2020-04-09 18:18:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 18:18:28","created_by":"21"}'),
(792, '2020-04-09 18:18:28', 21, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"24","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-09 18:18:28","created_by":"21"}'),
(793, '2020-04-09 18:18:28', 21, 'updateData', 'permintaan_barang', '{"id":"3","kode":"S-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-09 18:17:52","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(794, '2020-04-10 02:25:21', NULL, 'deleteData', 'permintaan_barang_sub', '{"id":"6","kode":"S-AAA-1","kode_pekerjaan":"010209","id_barang":"Lantai Kerja","qty":"50","id_satuan":"M2","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"2020-04-20","persyaratan":"[{\\"persyaratan\\":\\"1\\"},{\\"persyaratan\\":\\"3\\"}]","status":"ENABLE","created_at":"2020-04-10 02:19:15","updated_at":"0000-00-00 00:00:00","created_by":"21"}'),
(795, '2020-04-10 02:26:05', NULL, 'deleteData', 'permintaan_barang_sub', '{"id":"5","kode":"S-AAA-1","kode_pekerjaan":"010209","id_barang":"Lantai Kerja","qty":"50","id_satuan":"M2","fungsi":"","target":"0000-00-00","keterangan":"","kapasitas":"0","merk":"","waktu_pemakaian":"0000-00-00","waktu_pelaksanaan":"2020-04-20","persyaratan":"[{\\"persyaratan\\":\\"1\\"},{\\"persyaratan\\":\\"4\\"}]","status":"ENABLE","created_at":"2020-04-10 02:20:26","updated_at":"0000-00-00 00:00:00","created_by":"21"}'),
(796, '2020-04-10 02:51:01', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-CCC-1 telah diubah oleh ()","keterangan":"Edit Data Surat Permintaan oleh ()","id_user":"33","id_permintaan":"5","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-10 02:51:01","created_by":null}'),
(797, '2020-04-10 02:52:58', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-CCC-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"33","id_permintaan":"5","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-10 02:52:58","created_by":"21"}'),
(798, '2020-04-10 02:52:58', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-CCC-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"5","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-10 02:52:58","created_by":"21"}'),
(799, '2020-04-10 02:52:58', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-CCC-1 telah diubah oleh pic(PIC Proyek)","keterangan":"Edit Data Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"5","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-10 02:52:58","created_by":"21"}'),
(800, '2020-04-10 02:52:58', NULL, 'updateData', 'permintaan_barang', '{"id":"5","kode":"S-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-09 14:01:11","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(801, '2020-04-10 03:26:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-2 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"21","id_permintaan":"4","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-10 03:26:43","created_by":"22"}'),
(802, '2020-04-10 03:26:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-2 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"22","id_permintaan":"4","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-10 03:26:43","created_by":"22"}'),
(803, '2020-04-10 03:26:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-2 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"23","id_permintaan":"4","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-10 03:26:43","created_by":"22"}'),
(804, '2020-04-10 03:26:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode B-AAA-2 telah disetujui oleh pm(PM Proyek)","keterangan":"Pengajuan diterima oleh pm(PM Proyek)","tipe":"verifikasi-terima","id_user":"24","id_permintaan":"4","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-10 03:26:43","created_by":"22"}'),
(805, '2020-04-10 03:32:17', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode S-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:32:17","created_by":"21"}'),
(806, '2020-04-10 03:32:17', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode S-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:32:17","created_by":"21"}'),
(807, '2020-04-10 03:32:17', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode S-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:32:17","created_by":"21"}'),
(808, '2020-04-10 03:32:17', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Pengajuan Surat Permintaan baru dengan kode S-AAA-1 telah diajukan oleh pic(PIC Proyek)","keterangan":"Pengajuan Surat Permintaan oleh pic(PIC Proyek)","id_user":"24","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:32:17","created_by":"21"}'),
(809, '2020-04-10 03:35:17', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah dibatalkan oleh pic(PIC Proyek)","keterangan":"Surat Permintaan telah dibatalkan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:35:17","created_by":null}'),
(810, '2020-04-10 03:35:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah dibatalkan oleh pic(PIC Proyek)","keterangan":"Surat Permintaan telah dibatalkan oleh pic(PIC Proyek)","id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:35:43","created_by":"21"}'),
(811, '2020-04-10 03:35:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah dibatalkan oleh pic(PIC Proyek)","keterangan":"Surat Permintaan telah dibatalkan oleh pic(PIC Proyek)","id_user":"22","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:35:43","created_by":"21"}'),
(812, '2020-04-10 03:35:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah dibatalkan oleh pic(PIC Proyek)","keterangan":"Surat Permintaan telah dibatalkan oleh pic(PIC Proyek)","id_user":"23","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:35:43","created_by":"21"}'),
(813, '2020-04-10 03:35:43', NULL, 'insertData', 'notifikasi', '{"notifikasi":"Surat Permintaan dengan kode S-AAA-1 telah dibatalkan oleh pic(PIC Proyek)","keterangan":"Surat Permintaan telah dibatalkan oleh pic(PIC Proyek)","id_user":"24","id_permintaan":"3","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-10 03:35:43","created_by":"21"}'),
(814, '2020-04-11 12:39:41', 21, 'insertData', 'permintaan_barang', '{"kode":"B-AAA-1","id_proyek":"1","created_by":"21","created_at":"2020-04-11 12:39:41","status":"ENABLE","id_pic":"21","jenis":"SPB","status_permintaan":0}'),
(815, '2020-04-11 12:39:54', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Bore Pile","kode_pekerjaan":"010202","id_satuan":"M''","qty":"5","fungsi":"-","target":"2020-04-15","keterangan":"","created_at":"2020-04-11 12:39:54","status":"ENABLE","created_by":"21"}'),
(816, '2020-04-11 12:40:55', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-11 12:40:55","created_by":"21"}'),
(817, '2020-04-11 12:40:56', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(818, '2020-04-11 12:49:52', 21, 'insertData', 'notifikasi', '{"keterangan":1,"id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-11 12:49:52","created_by":"21"}'),
(819, '2020-04-11 12:49:52', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:40:56","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(820, '2020-04-11 12:51:33', 21, 'insertData', 'notifikasi', '{"keterangan":1,"id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-11 12:51:33","created_by":"21"}'),
(821, '2020-04-11 12:51:33', 21, 'insertData', 'notifikasi', '{"keterangan":1,"id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-11 12:51:33","created_by":"21"}'),
(822, '2020-04-11 12:51:33', 21, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:40:56","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(823, '2020-04-11 12:52:34', 22, 'insertData', 'permintaan_barang_sub', '{"kode":"B-AAA-1","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"5","fungsi":"-","target":"2020-04-17","keterangan":"-","created_at":"2020-04-11 12:52:34","status":"ENABLE","created_by":"22"}'),
(824, '2020-04-11 12:52:39', 22, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-11 12:52:39","created_by":"22"}'),
(825, '2020-04-11 12:52:40', 22, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","status":"ENABLE","created_at":"2020-04-11 12:52:40","created_by":"22"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(826, '2020-04-11 12:52:40', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:40:56","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(827, '2020-04-11 12:57:26', 22, 'insertData', 'notifikasi', '{"keterangan":4,"tipe":"edit","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 12:57:26","created_by":"22"}'),
(828, '2020-04-11 12:57:27', 22, 'insertData', 'notifikasi', '{"keterangan":4,"tipe":"edit","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 12:57:27","created_by":"22"}'),
(829, '2020-04-11 12:57:27', 22, 'insertData', 'notifikasi', '{"keterangan":4,"tipe":"edit","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 12:57:27","created_by":"22"}'),
(830, '2020-04-11 12:57:27', 22, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"1","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:52:40","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-11 12:52:40\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-17\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(831, '2020-04-11 14:24:52', 23, 'insertData', 'notifikasi', '{"ke":1,"keterangan":3,"tipe":"verifikasi-terima","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:24:52","created_by":"23"}'),
(832, '2020-04-11 14:24:52', 23, 'insertData', 'notifikasi', '{"ke":1,"keterangan":3,"tipe":"verifikasi-terima","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:24:52","created_by":"23"}'),
(833, '2020-04-11 14:24:52', 23, 'insertData', 'notifikasi', '{"ke":1,"keterangan":3,"tipe":"verifikasi-terima","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:24:52","created_by":"23"}'),
(834, '2020-04-11 14:24:52', 23, 'insertData', 'notifikasi', '{"ke":1,"keterangan":3,"tipe":"verifikasi-terima","id_user":"24","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:24:52","created_by":"23"}'),
(835, '2020-04-11 14:24:52', 23, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"3","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:52:40","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-11 12:52:40\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-17\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(836, '2020-04-11 14:26:16', 23, 'insertData', 'notifikasi', '{"ke":2,"keterangan":3,"tipe":"verifikasi-terima","id_user":"21","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:26:16","created_by":"23"}'),
(837, '2020-04-11 14:26:16', 23, 'insertData', 'notifikasi', '{"ke":2,"keterangan":3,"tipe":"verifikasi-terima","id_user":"22","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:26:16","created_by":"23"}'),
(838, '2020-04-11 14:26:16', 23, 'insertData', 'notifikasi', '{"ke":2,"keterangan":3,"tipe":"verifikasi-terima","id_user":"23","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:26:16","created_by":"23"}'),
(839, '2020-04-11 14:26:16', 23, 'insertData', 'notifikasi', '{"ke":2,"keterangan":3,"tipe":"verifikasi-terima","id_user":"24","id_permintaan":"1","status_notifikasi":"0","status":"ENABLE","created_at":"2020-04-11 14:26:16","created_by":"23"}'),
(840, '2020-04-11 14:26:16', 23, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"23","id_pd":"","id_lp":"","status_permintaan":"3","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:52:40","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-11 12:52:40\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-17\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(841, '2020-04-11 14:34:36', 24, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","ke":3,"status":"ENABLE","created_at":"2020-04-11 14:34:36","created_by":"24"}'),
(842, '2020-04-11 14:34:36', 24, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"22","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","ke":3,"status":"ENABLE","created_at":"2020-04-11 14:34:36","created_by":"24"}'),
(843, '2020-04-11 14:34:36', 24, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"23","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","ke":3,"status":"ENABLE","created_at":"2020-04-11 14:34:36","created_by":"24"}'),
(844, '2020-04-11 14:34:37', 24, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"24","id_permintaan":"1","status_notifikasi":"0","tipe":"edit","ke":3,"status":"ENABLE","created_at":"2020-04-11 14:34:37","created_by":"24"}'),
(845, '2020-04-11 14:34:37', 24, 'updateData', 'permintaan_barang', '{"id":"1","kode":"B-AAA-1","id_proyek":"1","lokasi":"","catatan":"","id_pic":"21","id_pm":"22","id_cc":"23","id_pd":"","id_lp":"","status_permintaan":"5","jenis":"SPB","file":"","status":"ENABLE","created_at":"2020-04-11 12:39:41","updated_at":"2020-04-11 12:52:40","created_by":"21","log":"[{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 12:40:56\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:40:55\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"B-AAA-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"22\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\",\\"created_at\\":\\"2020-04-11 12:52:40\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bore Pile\\",\\"kode_pekerjaan\\":\\"010202\\",\\"id_satuan\\":\\"M''\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-15\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"},{\\"kode\\":\\"B-AAA-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"5\\",\\"fungsi\\":\\"-\\",\\"target\\":\\"2020-04-17\\",\\"keterangan\\":\\"-\\",\\"created_at\\":\\"2020-04-11 12:52:39\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"22\\"}]}]","log_status":""}'),
(846, '2020-04-11 14:42:49', 21, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"1","id_user":"33","created_at":"2020-04-11 14:42:49","status":"ENABLE","created_by":"21"}'),
(847, '2020-04-11 14:42:49', 21, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"1","id_user":"21","created_at":"2020-04-11 14:42:49","status":"ENABLE","created_by":"21"}'),
(848, '2020-04-11 14:42:49', 21, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"3","id_user":"23","created_at":"2020-04-11 14:42:49","status":"ENABLE","created_by":"21"}'),
(849, '2020-04-11 14:42:50', 21, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"2","id_user":"22","created_at":"2020-04-11 14:42:50","status":"ENABLE","created_by":"21"}'),
(850, '2020-04-11 14:42:50', 21, 'insertData', 'master_proyek_sub', '{"kode":"CCC","id_role":"4","id_user":"24","created_at":"2020-04-11 14:42:50","status":"ENABLE","created_by":"21"}'),
(851, '2020-04-11 14:42:50', 21, 'updateData', 'master_proyek', '{"id":"3","kode":"CCC","nama":"Proyek C","lokasi":"Pabrik C","json":"[{\\"kode\\":\\"CCC\\",\\"id_role\\":\\"1\\",\\"id_user\\":\\"33\\"},{\\"kode\\":\\"CCC\\",\\"id_role\\":\\"1\\",\\"id_user\\":\\"21\\"},{\\"kode\\":\\"CCC\\",\\"id_role\\":\\"3\\",\\"id_user\\":\\"23\\"}]","file":"","status":"ENABLE","created_at":"2020-04-03 13:15:47","updated_at":"2020-04-09 09:48:13","created_by":"12"}'),
(852, '2020-04-11 14:43:03', 21, 'insertData', 'permintaan_barang', '{"kode":"A-CCC-1","id_proyek":"3","created_by":"21","created_at":"2020-04-11 14:43:03","status":"ENABLE","id_pic":"21","jenis":"SPA","status_permintaan":0}'),
(853, '2020-04-11 14:43:22', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-CCC-1","id_barang":"Sumur Resapan","kode_pekerjaan":"010107","id_satuan":"Unit","qty":"6","kapasitas":"-","merk":"-","waktu_pemakaian":"2020-04-17","keterangan":"","created_at":"2020-04-11 14:43:22","status":"ENABLE","created_by":"21"}'),
(854, '2020-04-11 14:43:27', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"33","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","ke":1,"status":"ENABLE","created_at":"2020-04-11 14:43:27","created_by":"21"}'),
(855, '2020-04-11 14:43:27', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","ke":1,"status":"ENABLE","created_at":"2020-04-11 14:43:27","created_by":"21"}'),
(856, '2020-04-11 14:43:28', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-11 14:43:03","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(857, '2020-04-11 14:44:59', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"A-CCC-1","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"4","kapasitas":"-","merk":"-","waktu_pemakaian":"2020-04-16","keterangan":"","created_at":"2020-04-11 14:44:59","status":"ENABLE","created_by":"21"}'),
(858, '2020-04-11 14:45:01', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"33","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","ke":2,"status":"ENABLE","created_at":"2020-04-11 14:45:01","created_by":"21"}'),
(859, '2020-04-11 14:45:01', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"edit","ke":2,"status":"ENABLE","created_at":"2020-04-11 14:45:01","created_by":"21"}'),
(860, '2020-04-11 14:45:01', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-11 14:43:03","updated_at":"2020-04-11 14:43:28","created_by":"21","log":"[{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 14:43:28\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"Sumur Resapan\\",\\"kode_pekerjaan\\":\\"010107\\",\\"id_satuan\\":\\"Unit\\",\\"qty\\":\\"6\\",\\"kapasitas\\":\\"-\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-17\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 14:43:27\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(861, '2020-04-11 14:45:32', 21, 'insertData', 'notifikasi', '{"keterangan":1,"id_user":"33","id_permintaan":"2","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-11 14:45:32","created_by":"21"}'),
(862, '2020-04-11 14:45:32', 21, 'insertData', 'notifikasi', '{"keterangan":1,"id_user":"21","id_permintaan":"2","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-11 14:45:32","created_by":"21"}'),
(863, '2020-04-11 14:45:32', 21, 'insertData', 'notifikasi', '{"keterangan":1,"id_user":"22","id_permintaan":"2","status_notifikasi":"0","tipe":"create","status":"ENABLE","created_at":"2020-04-11 14:45:32","created_by":"21"}'),
(864, '2020-04-11 14:45:32', 21, 'updateData', 'permintaan_barang', '{"id":"2","kode":"A-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPA","file":"","status":"ENABLE","created_at":"2020-04-11 14:43:03","updated_at":"2020-04-11 14:45:01","created_by":"21","log":"[{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 14:43:28\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"Sumur Resapan\\",\\"kode_pekerjaan\\":\\"010107\\",\\"id_satuan\\":\\"Unit\\",\\"qty\\":\\"6\\",\\"kapasitas\\":\\"-\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-17\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 14:43:27\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]},{\\"kode\\":\\"A-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 14:45:01\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"Sumur Resapan\\",\\"kode_pekerjaan\\":\\"010107\\",\\"id_satuan\\":\\"Unit\\",\\"qty\\":\\"6\\",\\"kapasitas\\":\\"-\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-17\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 14:45:01\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"},{\\"kode\\":\\"A-CCC-1\\",\\"id_barang\\":\\"Bekisting Pile Cap\\",\\"kode_pekerjaan\\":\\"010301\\",\\"id_satuan\\":\\"M2\\",\\"qty\\":\\"4\\",\\"kapasitas\\":\\"-\\",\\"merk\\":\\"-\\",\\"waktu_pemakaian\\":\\"2020-04-16\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 14:45:01\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}'),
(865, '2020-04-11 14:47:05', 21, 'insertData', 'permintaan_barang', '{"kode":"S-CCC-1","id_proyek":"3","created_by":"21","created_at":"2020-04-11 14:47:05","status":"ENABLE","id_pic":"21","jenis":"SPS","status_permintaan":0}'),
(866, '2020-04-11 14:47:22', 21, 'insertData', 'permintaan_barang_sub', '{"kode":"S-CCC-1","id_barang":"Besi Reservoir\\/GWT","kode_pekerjaan":"010412","id_satuan":"Kg","qty":"5","waktu_pelaksanaan":"2020-04-23","persyaratan":"[{\\"persyaratan\\":\\"1\\"}]","keterangan":"","created_at":"2020-04-11 14:47:22","status":"ENABLE","created_by":"21"}'),
(867, '2020-04-11 14:47:24', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"33","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","ke":1,"status":"ENABLE","created_at":"2020-04-11 14:47:24","created_by":"21"}'),
(868, '2020-04-11 14:47:25', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","ke":1,"status":"ENABLE","created_at":"2020-04-11 14:47:25","created_by":"21"}'),
(869, '2020-04-11 14:47:25', 21, 'updateData', 'permintaan_barang', '{"id":"3","kode":"S-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-11 14:47:05","updated_at":"0000-00-00 00:00:00","created_by":"21","log":"","log_status":""}'),
(870, '2020-04-11 15:05:20', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"33","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","ke":2,"status":"ENABLE","created_at":"2020-04-11 15:05:20","created_by":"21"}'),
(871, '2020-04-11 15:05:21', 21, 'insertData', 'notifikasi', '{"keterangan":2,"id_user":"21","id_permintaan":"3","status_notifikasi":"0","tipe":"edit","ke":2,"status":"ENABLE","created_at":"2020-04-11 15:05:21","created_by":"21"}'),
(872, '2020-04-11 15:05:21', 21, 'updateData', 'permintaan_barang', '{"id":"3","kode":"S-CCC-1","id_proyek":"3","lokasi":"","catatan":"","id_pic":"21","id_pm":"","id_cc":"","id_pd":"","id_lp":"","status_permintaan":"0","jenis":"SPS","file":"","status":"ENABLE","created_at":"2020-04-11 14:47:05","updated_at":"2020-04-11 14:47:25","created_by":"21","log":"[{\\"kode\\":\\"S-CCC-1\\",\\"id_proyek\\":null,\\"lokasi\\":null,\\"id_pic\\":\\"21\\",\\"id_pm\\":0,\\"id_cc\\":0,\\"id_pd\\":0,\\"id_lp\\":0,\\"status_permintaan\\":1,\\"jenis\\":\\"SPB\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\",\\"created_at\\":\\"2020-04-11 14:47:25\\",\\"file\\":\\"\\",\\"sub\\":[{\\"kode\\":\\"S-CCC-1\\",\\"id_barang\\":\\"Besi Reservoir\\\\\\/GWT\\",\\"kode_pekerjaan\\":\\"010412\\",\\"id_satuan\\":\\"Kg\\",\\"qty\\":\\"5\\",\\"waktu_pelaksanaan\\":\\"2020-04-23\\",\\"persyaratan\\":\\"[{\\\\\\"persyaratan\\\\\\":\\\\\\"1\\\\\\"}]\\",\\"keterangan\\":\\"\\",\\"created_at\\":\\"2020-04-11 14:47:24\\",\\"status\\":\\"ENABLE\\",\\"created_by\\":\\"21\\"}]}]","log_status":""}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_backupdb`
--

CREATE TABLE IF NOT EXISTS `log_backupdb` (
  `bdb_id` int(11) NOT NULL,
  `bdb_file` varchar(500) NOT NULL,
  `bdb_size` varchar(500) NOT NULL,
  `bdb_sizedisplay` varchar(500) NOT NULL,
  `bdb_created_at` datetime NOT NULL,
  `bdb_created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
-- Struktur dari tabel `master_barang`
--

CREATE TABLE IF NOT EXISTS `master_barang` (
  `id` int(11) NOT NULL,
  `kode_pekerjaan` varchar(255) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_barang`
--

INSERT INTO `master_barang` (`id`, `kode_pekerjaan`, `id_satuan`, `nama`, `jenis`, `file`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'AAAAA', 1, 'Barang A', 'SPB', '', 'ENABLE', '2020-04-02 09:28:08', '0000-00-00 00:00:00', 12),
(2, 'BBBBB', 1, 'Barang B', 'SPB', '', 'ENABLE', '2020-04-02 09:28:13', '0000-00-00 00:00:00', 12),
(3, 'CCCCC', 2, 'Barang C', 'SPB', '', 'ENABLE', '2020-04-02 09:28:23', '0000-00-00 00:00:00', 12),
(4, 'ASKDQO', 1, 'Alat A', 'SPA', '', 'ENABLE', '2020-04-03 10:52:30', '0000-00-00 00:00:00', 12),
(5, 'ASDKJ', 3, 'Alat B', 'SPA', '', 'ENABLE', '2020-04-03 10:52:47', '0000-00-00 00:00:00', 12),
(6, 'SUWEW', 3, 'Subkon A', 'SPS', '', 'ENABLE', '2020-04-03 10:53:11', '0000-00-00 00:00:00', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jenis`
--

CREATE TABLE IF NOT EXISTS `master_jenis` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_jenis`
--

INSERT INTO `master_jenis` (`id`, `value`) VALUES
(1, 'SPB'),
(2, 'SPA'),
(3, 'SPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_notifikasi`
--

CREATE TABLE IF NOT EXISTS `master_notifikasi` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `notifikasi` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_notifikasi`
--

INSERT INTO `master_notifikasi` (`id`, `keterangan`, `notifikasi`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Pengajuan Surat Permintaan', 'Pengajuan Surat Permintaan', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Edit Data', 'Edit Data', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Pengajuan Diterima', 'Pengajuan Diterima', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Pengajuan Ditolak', 'Pengajuan Ditolak', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'Pengajuan Dibatalkan', 'Pengajuan Dibatalkan', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_persyaratan`
--

CREATE TABLE IF NOT EXISTS `master_persyaratan` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_persyaratan`
--

INSERT INTO `master_persyaratan` (`id`, `kode`, `nama`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'AK', 'Alat Kerja', 'ENABLE', '2020-04-03 10:59:35', '0000-00-00 00:00:00', 12),
(2, 'TK', 'Tenaga Kerja', 'ENABLE', '2020-04-03 10:59:46', '0000-00-00 00:00:00', 12),
(3, 'MT', 'Metode', 'ENABLE', '2020-04-03 10:59:56', '0000-00-00 00:00:00', 12),
(4, 'LN', 'Lainnya', 'ENABLE', '2020-04-03 11:00:07', '0000-00-00 00:00:00', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_proyek`
--

CREATE TABLE IF NOT EXISTS `master_proyek` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_proyek`
--

INSERT INTO `master_proyek` (`id`, `kode`, `nama`, `lokasi`, `json`, `file`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'AAA', 'Proyek A', 'Pabrik A', '[{"kode":"AAA","id_role":"1","id_user":"21"},{"kode":"AAA","id_role":"2","id_user":"22"},{"kode":"AAA","id_role":"3","id_user":"23"},{"kode":"AAA","id_role":"4","id_user":"24"},{"kode":"AAA","id_role":"0","id_user":"0"}]', 'proyek-1.docx', 'ENABLE', '2020-04-03 10:08:26', '2020-04-07 12:24:26', 12),
(2, 'BBB', 'Proyek B', 'Pabrik B', '[{"kode":"BBB","id_role":"1","id_user":"21"},{"kode":"BBB","id_role":"2","id_user":"22"},{"kode":"BBB","id_role":"3","id_user":"23"},{"kode":"BBB","id_role":"4","id_user":"24"}]', '', 'ENABLE', '2020-04-03 10:08:37', '2020-04-07 12:54:09', 12),
(3, 'CCC', 'Proyek C', 'Pabrik C', '[{"kode":"CCC","id_role":"1","id_user":"33"},{"kode":"CCC","id_role":"1","id_user":"21"},{"kode":"CCC","id_role":"3","id_user":"23"},{"kode":"CCC","id_role":"2","id_user":"22"},{"kode":"CCC","id_role":"4","id_user":"24"}]', '', 'ENABLE', '2020-04-03 13:15:47', '2020-04-11 14:42:50', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_proyek_sub`
--

CREATE TABLE IF NOT EXISTS `master_proyek_sub` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_proyek_sub`
--

INSERT INTO `master_proyek_sub` (`id`, `kode`, `id_role`, `id_user`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(13, 'AAA', 1, 21, 'ENABLE', '2020-04-07 12:24:25', '0000-00-00 00:00:00', 12),
(14, 'AAA', 2, 22, 'ENABLE', '2020-04-07 12:24:25', '0000-00-00 00:00:00', 12),
(15, 'AAA', 3, 23, 'ENABLE', '2020-04-07 12:24:25', '0000-00-00 00:00:00', 12),
(16, 'AAA', 4, 24, 'ENABLE', '2020-04-07 12:24:26', '0000-00-00 00:00:00', 12),
(18, 'BBB', 1, 21, 'ENABLE', '2020-04-07 12:54:09', '0000-00-00 00:00:00', 12),
(19, 'BBB', 2, 22, 'ENABLE', '2020-04-07 12:54:09', '0000-00-00 00:00:00', 12),
(20, 'BBB', 3, 23, 'ENABLE', '2020-04-07 12:54:09', '0000-00-00 00:00:00', 12),
(21, 'BBB', 4, 24, 'ENABLE', '2020-04-07 12:54:09', '0000-00-00 00:00:00', 12),
(26, 'CCC', 1, 33, 'ENABLE', '2020-04-11 14:42:49', '0000-00-00 00:00:00', 21),
(27, 'CCC', 1, 21, 'ENABLE', '2020-04-11 14:42:49', '0000-00-00 00:00:00', 21),
(28, 'CCC', 3, 23, 'ENABLE', '2020-04-11 14:42:49', '0000-00-00 00:00:00', 21),
(29, 'CCC', 2, 22, 'ENABLE', '2020-04-11 14:42:50', '0000-00-00 00:00:00', 21),
(30, 'CCC', 4, 24, 'ENABLE', '2020-04-11 14:42:50', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_satuan`
--

CREATE TABLE IF NOT EXISTS `master_satuan` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `kode`, `nama`, `file`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Lbr', 'Lembar', '', 'ENABLE', '2020-04-02 09:27:43', '0000-00-00 00:00:00', 12),
(2, 'Roll', 'Roll', '', 'ENABLE', '2020-04-02 09:27:48', '0000-00-00 00:00:00', 12),
(3, 'Bh', 'Buah', '', 'ENABLE', '2020-04-02 09:27:54', '0000-00-00 00:00:00', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_status`
--

CREATE TABLE IF NOT EXISTS `master_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_status`
--

INSERT INTO `master_status` (`id`, `nama`, `value`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(0, 'Draft', 'Draft', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(1, 'Diproses PM', 'Diproses', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'Ditolak PM', 'Ditolak', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Diproses Cost Control', 'Diproses', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Ditolak Cost Control', 'Ditolak', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'Diproses Project Director', 'Diproses', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'Ditolak Project Director', 'Ditolak', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(7, 'Selesai', 'Diproses', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0),
(8, 'Batal', 'Batal', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_uom`
--

CREATE TABLE IF NOT EXISTS `master_uom` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_uom`
--

INSERT INTO `master_uom` (`id`, `nama`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'M3', 'ENABLE', '2020-04-09 08:41:06', '2020-04-09 08:41:26', 21),
(2, 'M''', 'ENABLE', '2020-04-09 08:41:07', '2020-04-09 08:41:20', 21),
(3, 'M2', 'ENABLE', '2020-04-09 08:41:30', '0000-00-00 00:00:00', 21),
(4, 'Ls', 'ENABLE', '2020-04-09 08:41:39', '0000-00-00 00:00:00', 21),
(5, 'Unit', 'ENABLE', '2020-04-09 08:41:45', '0000-00-00 00:00:00', 21),
(6, 'Kg', 'ENABLE', '2020-04-09 08:42:15', '0000-00-00 00:00:00', 21),
(7, 'Bh', 'ENABLE', '2020-04-09 08:42:24', '0000-00-00 00:00:00', 21),
(8, 'Ttk', 'ENABLE', '2020-04-09 08:42:44', '0000-00-00 00:00:00', 21),
(9, 'Set', 'ENABLE', '2020-04-09 08:43:10', '0000-00-00 00:00:00', 21),
(10, 'Ltr', 'ENABLE', '2020-04-09 08:43:18', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_master`
--

CREATE TABLE IF NOT EXISTS `menu_master` (
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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `icon`, `link`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'mdi mdi-monitor-dashboard', '', '0', '0', NULL, 'ENABLE', '2019-01-17 14:33:33', NULL),
(34, 'Pengguna', 'fa fa-circle', 'master/user', '3', '16', '', 'ENABLE', '2020-03-18 01:33:32', '2020-04-06 09:21:06'),
(16, 'Pengaturan', 'fa fa-cogs', '#', '7', '0', '', 'ENABLE', '2020-01-10 09:27:29', '2020-03-18 12:14:57'),
(43, 'Proyek', 'fa fa-building-o', 'master/master_proyek', '1', '0', '', 'ENABLE', '2020-04-03 10:07:59', NULL),
(42, 'Persyaratan', 'fa fa-circle', 'master/master_persyaratan', '2', '16', '', 'ENABLE', '2020-04-03 10:07:21', NULL),
(35, 'Laporan', 'fa fa-bar-chart', '#', '4', '0', '', 'ENABLE', '2020-03-18 12:11:46', '2020-03-18 12:14:16'),
(41, 'Surat Permintaan', 'fa fa-archive', 'master/surat_permintaan', '1', '0', '', 'ENABLE', '2020-04-02 09:26:15', '2020-04-03 15:21:34'),
(40, 'Satuan', 'fa fa-circle', 'master/master_uom', '1', '16', '', 'ENABLE', '2020-04-02 09:25:24', '2020-04-09 08:40:43'),
(39, 'Cost Code', 'fa fa-circle', 'master/cost_code', '0', '16', '', 'ENABLE', '2020-04-02 09:25:00', '2020-04-09 08:40:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE IF NOT EXISTS `notifikasi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_permintaan` int(11) NOT NULL,
  `keterangan` int(11) NOT NULL,
  `status_notifikasi` int(11) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `ke` int(11) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `id_user`, `id_permintaan`, `keterangan`, `status_notifikasi`, `tipe`, `ke`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 21, 1, 2, 0, 'edit', 1, 'ENABLE', '2020-04-11 12:40:55', '0000-00-00 00:00:00', 21),
(3, 21, 1, 1, 0, 'create', 0, 'ENABLE', '2020-04-11 12:51:33', '0000-00-00 00:00:00', 21),
(4, 22, 1, 1, 0, 'create', 0, 'ENABLE', '2020-04-11 12:51:33', '0000-00-00 00:00:00', 21),
(5, 21, 1, 2, 0, 'edit', 2, 'ENABLE', '2020-04-11 12:52:39', '0000-00-00 00:00:00', 22),
(6, 22, 1, 2, 0, 'edit', 2, 'ENABLE', '2020-04-11 12:52:40', '0000-00-00 00:00:00', 22),
(7, 21, 1, 3, 0, 'verifikasi-terima', 1, 'ENABLE', '2020-04-11 12:57:26', '0000-00-00 00:00:00', 22),
(8, 22, 1, 3, 0, 'verifikasi-terima', 1, 'ENABLE', '2020-04-11 12:57:27', '0000-00-00 00:00:00', 22),
(9, 23, 1, 3, 0, 'verifikasi-terima', 1, 'ENABLE', '2020-04-11 12:57:27', '0000-00-00 00:00:00', 22),
(14, 21, 1, 3, 0, 'verifikasi-terima', 2, 'ENABLE', '2020-04-11 14:26:16', '0000-00-00 00:00:00', 23),
(15, 22, 1, 3, 0, 'verifikasi-terima', 2, 'ENABLE', '2020-04-11 14:26:16', '0000-00-00 00:00:00', 23),
(16, 23, 1, 3, 0, 'verifikasi-terima', 2, 'ENABLE', '2020-04-11 14:26:16', '0000-00-00 00:00:00', 23),
(17, 24, 1, 3, 0, 'verifikasi-terima', 2, 'ENABLE', '2020-04-11 14:26:16', '0000-00-00 00:00:00', 23),
(18, 21, 1, 2, 0, 'edit', 3, 'ENABLE', '2020-04-11 14:34:36', '0000-00-00 00:00:00', 24),
(19, 22, 1, 2, 0, 'edit', 3, 'ENABLE', '2020-04-11 14:34:36', '0000-00-00 00:00:00', 24),
(20, 23, 1, 2, 0, 'edit', 3, 'ENABLE', '2020-04-11 14:34:36', '0000-00-00 00:00:00', 24),
(21, 24, 1, 2, 0, 'edit', 3, 'ENABLE', '2020-04-11 14:34:37', '0000-00-00 00:00:00', 24),
(22, 33, 2, 2, 0, 'edit', 1, 'ENABLE', '2020-04-11 14:43:27', '0000-00-00 00:00:00', 21),
(23, 21, 2, 2, 0, 'edit', 1, 'ENABLE', '2020-04-11 14:43:27', '0000-00-00 00:00:00', 21),
(24, 33, 2, 2, 0, 'edit', 2, 'ENABLE', '2020-04-11 14:45:01', '0000-00-00 00:00:00', 21),
(25, 21, 2, 2, 0, 'edit', 2, 'ENABLE', '2020-04-11 14:45:01', '0000-00-00 00:00:00', 21),
(26, 33, 2, 1, 0, 'create', 0, 'ENABLE', '2020-04-11 14:45:32', '0000-00-00 00:00:00', 21),
(27, 21, 2, 1, 0, 'create', 0, 'ENABLE', '2020-04-11 14:45:32', '0000-00-00 00:00:00', 21),
(28, 22, 2, 1, 0, 'create', 0, 'ENABLE', '2020-04-11 14:45:32', '0000-00-00 00:00:00', 21),
(29, 33, 3, 2, 0, 'edit', 1, 'ENABLE', '2020-04-11 14:47:24', '0000-00-00 00:00:00', 21),
(30, 21, 3, 2, 0, 'edit', 1, 'ENABLE', '2020-04-11 14:47:25', '0000-00-00 00:00:00', 21),
(31, 33, 3, 2, 0, 'edit', 2, 'ENABLE', '2020-04-11 15:05:20', '0000-00-00 00:00:00', 21),
(32, 21, 3, 2, 0, 'edit', 2, 'ENABLE', '2020-04-11 15:05:21', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan_barang`
--

CREATE TABLE IF NOT EXISTS `permintaan_barang` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `id_proyek` int(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `catatan` text NOT NULL,
  `id_pic` text NOT NULL,
  `id_pm` text NOT NULL,
  `id_cc` text NOT NULL,
  `id_pd` text NOT NULL,
  `id_lp` text NOT NULL,
  `status_permintaan` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `log` text NOT NULL,
  `log_status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permintaan_barang`
--

INSERT INTO `permintaan_barang` (`id`, `kode`, `id_proyek`, `lokasi`, `catatan`, `id_pic`, `id_pm`, `id_cc`, `id_pd`, `id_lp`, `status_permintaan`, `jenis`, `file`, `status`, `created_at`, `updated_at`, `created_by`, `log`, `log_status`) VALUES
(1, 'B-AAA-1', 1, '', '', '21', '22', '23', '', '', 5, 'SPB', '', 'ENABLE', '2020-04-11 12:39:41', '2020-04-11 14:34:37', 21, '[{"kode":"B-AAA-1","id_proyek":null,"lokasi":null,"id_pic":"21","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"21","created_at":"2020-04-11 12:40:56","file":"","sub":[{"kode":"B-AAA-1","id_barang":"Bore Pile","kode_pekerjaan":"010202","id_satuan":"M''","qty":"5","fungsi":"-","target":"2020-04-15","keterangan":"","created_at":"2020-04-11 12:40:55","status":"ENABLE","created_by":"21"}]},{"kode":"B-AAA-1","id_proyek":null,"lokasi":null,"id_pic":"22","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"22","created_at":"2020-04-11 12:52:40","file":"","sub":[{"kode":"B-AAA-1","id_barang":"Bore Pile","kode_pekerjaan":"010202","id_satuan":"M''","qty":"5","fungsi":"-","target":"2020-04-15","keterangan":"","created_at":"2020-04-11 12:52:39","status":"ENABLE","created_by":"22"},{"kode":"B-AAA-1","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"5","fungsi":"-","target":"2020-04-17","keterangan":"-","created_at":"2020-04-11 12:52:39","status":"ENABLE","created_by":"22"}]},{"kode":"B-AAA-1","id_proyek":null,"lokasi":null,"id_pic":"24","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"24","created_at":"2020-04-11 14:34:37","file":"","sub":[{"kode":"B-AAA-1","id_barang":"Bore Pile","kode_pekerjaan":"010202","id_satuan":"M''","qty":"5","fungsi":"-","target":"2020-04-15","keterangan":"","created_at":"2020-04-11 14:34:36","status":"ENABLE","created_by":"24"},{"kode":"B-AAA-1","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"5","fungsi":"-","target":"2020-04-17","keterangan":"-","created_at":"2020-04-11 14:34:36","status":"ENABLE","created_by":"24"}]}]', ''),
(2, 'A-CCC-1', 3, '', '', '21', '', '', '', '', 1, 'SPA', '', 'ENABLE', '2020-04-11 14:43:03', '2020-04-11 14:45:01', 21, '[{"kode":"A-CCC-1","id_proyek":null,"lokasi":null,"id_pic":"21","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"21","created_at":"2020-04-11 14:43:28","file":"","sub":[{"kode":"A-CCC-1","id_barang":"Sumur Resapan","kode_pekerjaan":"010107","id_satuan":"Unit","qty":"6","kapasitas":"-","merk":"-","waktu_pemakaian":"2020-04-17","keterangan":"","created_at":"2020-04-11 14:43:27","status":"ENABLE","created_by":"21"}]},{"kode":"A-CCC-1","id_proyek":null,"lokasi":null,"id_pic":"21","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"21","created_at":"2020-04-11 14:45:01","file":"","sub":[{"kode":"A-CCC-1","id_barang":"Sumur Resapan","kode_pekerjaan":"010107","id_satuan":"Unit","qty":"6","kapasitas":"-","merk":"-","waktu_pemakaian":"2020-04-17","keterangan":"","created_at":"2020-04-11 14:45:01","status":"ENABLE","created_by":"21"},{"kode":"A-CCC-1","id_barang":"Bekisting Pile Cap","kode_pekerjaan":"010301","id_satuan":"M2","qty":"4","kapasitas":"-","merk":"-","waktu_pemakaian":"2020-04-16","keterangan":"","created_at":"2020-04-11 14:45:01","status":"ENABLE","created_by":"21"}]}]', ''),
(3, 'S-CCC-1', 3, '', '', '21', '', '', '', '', 0, 'SPS', 'SP-SPS-3-S-CCC-1.docx', 'ENABLE', '2020-04-11 14:47:05', '2020-04-11 15:05:21', 21, '[{"kode":"S-CCC-1","id_proyek":null,"lokasi":null,"id_pic":"21","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"21","created_at":"2020-04-11 14:47:25","file":"","sub":[{"kode":"S-CCC-1","id_barang":"Besi Reservoir\\/GWT","kode_pekerjaan":"010412","id_satuan":"Kg","qty":"5","waktu_pelaksanaan":"2020-04-23","persyaratan":"[{\\"persyaratan\\":\\"1\\"}]","keterangan":"","created_at":"2020-04-11 14:47:24","status":"ENABLE","created_by":"21"}]},{"kode":"S-CCC-1","id_proyek":null,"lokasi":null,"id_pic":"21","id_pm":0,"id_cc":0,"id_pd":0,"id_lp":0,"status_permintaan":1,"jenis":"SPB","status":"ENABLE","created_by":"21","created_at":"2020-04-11 15:05:21","file":"SP-SPS-3-S-CCC-1.docx","sub":[{"kode":"S-CCC-1","id_barang":"Besi Reservoir\\/GWT","kode_pekerjaan":"010412","id_satuan":"Kg","qty":"5","waktu_pelaksanaan":"2020-04-23","persyaratan":"[{\\"persyaratan\\":\\"1\\"}]","keterangan":"","created_at":"2020-04-11 15:05:20","status":"ENABLE","created_by":"21"}]}]', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan_barang_sub`
--

CREATE TABLE IF NOT EXISTS `permintaan_barang_sub` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `kode_pekerjaan` varchar(255) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_satuan` varchar(255) NOT NULL,
  `fungsi` varchar(255) NOT NULL,
  `target` date NOT NULL,
  `keterangan` text NOT NULL,
  `kapasitas` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `waktu_pemakaian` date NOT NULL,
  `waktu_pelaksanaan` date NOT NULL,
  `persyaratan` text NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permintaan_barang_sub`
--

INSERT INTO `permintaan_barang_sub` (`id`, `kode`, `kode_pekerjaan`, `id_barang`, `qty`, `id_satuan`, `fungsi`, `target`, `keterangan`, `kapasitas`, `merk`, `waktu_pemakaian`, `waktu_pelaksanaan`, `persyaratan`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'B-AAA-1', '010202', 'Bore Pile', 5, 'M''', '-', '2020-04-15', '', '', '', '0000-00-00', '0000-00-00', '', 'ENABLE', '2020-04-11 12:39:54', '0000-00-00 00:00:00', 21),
(2, 'B-AAA-1', '010301', 'Bekisting Pile Cap', 5, 'M2', '-', '2020-04-17', '-', '', '', '0000-00-00', '0000-00-00', '', 'ENABLE', '2020-04-11 12:52:34', '0000-00-00 00:00:00', 22),
(3, 'A-CCC-1', '010107', 'Sumur Resapan', 6, 'Unit', '', '0000-00-00', '', '-', '-', '2020-04-17', '0000-00-00', '', 'ENABLE', '2020-04-11 14:43:22', '0000-00-00 00:00:00', 21),
(4, 'A-CCC-1', '010301', 'Bekisting Pile Cap', 4, 'M2', '', '0000-00-00', '', '-', '-', '2020-04-16', '0000-00-00', '', 'ENABLE', '2020-04-11 14:44:59', '0000-00-00 00:00:00', 21),
(5, 'S-CCC-1', '010412', 'Besi Reservoir/GWT', 5, 'Kg', '', '0000-00-00', '', '', '', '0000-00-00', '2020-04-23', '[{"persyaratan":"1"}]', 'ENABLE', '2020-04-11 14:47:22', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `header` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `name`, `query`, `header`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'SELECT * FROM user', '["nip","name","email","password","role_id","desc","status","created_at","updated_at"]', 'ENABLE', '2019-03-13 09:57:07', '2019-03-19 17:13:35'),
(2, 'Customer', 'SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= ''customer''', '["nama","email","telp","alamat","status","dir"]', 'ENABLE', '2019-03-25 10:47:39', '2019-07-01 09:01:19'),
(3, 'Statistik', 'SELECT date_format(pembayaran_spp.bulan, ''%M %Y'') as bulan, a.belum_bayar, c.sudah_bayar, b.belum_validasi, d.sudah_validasi\r\nFROM pembayaran_spp\r\nLEFT JOIN\r\n	(\r\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_bayar\r\n        FROM pembayaran_spp\r\n        WHERE pembayaran_spp.tanggal_pembayaran = ''0000-00-00 00:00:00''\r\n        GROUP BY pembayaran_spp.bulan\r\n        ) a\r\nON pembayaran_spp.bulan = a.bulan\r\nLEFT JOIN\r\n	(\r\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as belum_validasi\r\n        FROM pembayaran_spp\r\n        WHERE pembayaran_spp.tanggal_validasi = ''0000-00-00 00:00:00''\r\n        GROUP BY pembayaran_spp.bulan\r\n        ) b\r\nON pembayaran_spp.bulan = b.bulan\r\nLEFT JOIN\r\n	(\r\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_bayar\r\n        FROM pembayaran_spp\r\n        WHERE pembayaran_spp.tanggal_pembayaran != ''0000-00-00 00:00:00''\r\n        GROUP BY pembayaran_spp.bulan\r\n        ) c\r\nON pembayaran_spp.bulan = c.bulan\r\nLEFT JOIN\r\n	(\r\n        SELECT pembayaran_spp.bulan, COUNT(pembayaran_spp.id) as sudah_validasi\r\n        FROM pembayaran_spp\r\n        WHERE pembayaran_spp.tanggal_validasi != ''0000-00-00 00:00:00''\r\n        GROUP BY pembayaran_spp.bulan\r\n        ) d\r\nON pembayaran_spp.bulan = d.bulan\r\nGROUP BY pembayaran_spp.bulan', '["bulan","belum_bayar","belum_validasi","sudah_bayar","sudah_validasi"]', 'ENABLE', '2020-01-07 13:56:11', '2020-01-07 13:58:08'),
(4, 'Pengguna per desa', 'SELECT master_desa.nama, COALESCE(a.jumlah, 0) as admin, COALESCE(b.jumlah, 0) as jemput, COALESCE(c.jumlah, 0) as gudang,\r\nCOALESCE(d.jumlah, 0) as masyarakat\r\nFROM master_desa\r\nLEFT JOIN\r\n	(\r\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\r\n        WHERE user.role_id = 1\r\n        ) a\r\nON master_desa.id = a.sub_role_id\r\nLEFT JOIN\r\n	(\r\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\r\n        WHERE user.role_id = 2\r\n        ) b\r\nON master_desa.id = b.sub_role_id\r\nLEFT JOIN\r\n	(\r\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\r\n        WHERE user.role_id = 3\r\n        ) c\r\nON master_desa.id = c.sub_role_id\r\nLEFT JOIN\r\n	(\r\n        SELECT user.sub_role_id, COUNT(user.id) as jumlah FROM user\r\n        WHERE user.role_id = 4\r\n        ) d\r\nON master_desa.id = d.sub_role_id', '["nama","admin","jemput","gudang","masyarakat"]', 'ENABLE', '2020-03-18 02:01:42', '2020-03-18 02:01:55'),
(5, 'Transaksi per Desa', 'SELECT nama, COALESCE(a.jumlah, 0) as semua, COALESCE(b.jumlah, 0) as pending, COALESCE(c.jumlah, 0) as diterima, COALESCE(d.jumlah, 0) as ditolak\r\nFROM master_desa\r\nLEFT JOIN \r\n	(\r\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \r\n        FROM sampah\r\n        LEFT JOIN user on sampah.id_masyarakat = user.id\r\n        ) a\r\nON master_desa.id = a.sub_role_id\r\nLEFT JOIN \r\n	(\r\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \r\n        FROM sampah\r\n        LEFT JOIN user on sampah.id_masyarakat = user.id\r\n        WHERE sampah.status_1 = 1\r\n        ) b\r\nON master_desa.id = b.sub_role_id\r\nLEFT JOIN \r\n	(\r\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \r\n        FROM sampah\r\n        LEFT JOIN user on sampah.id_masyarakat = user.id\r\n        WHERE sampah.status_2 = 1\r\n        ) c\r\nON master_desa.id = c.sub_role_id\r\nLEFT JOIN \r\n	(\r\n        SELECT user.sub_role_id, COUNT(sampah.id) as jumlah \r\n        FROM sampah\r\n        LEFT JOIN user on sampah.id_masyarakat = user.id\r\n        WHERE sampah.status_2 = 2\r\n        ) d\r\nON master_desa.id = d.sub_role_id', '["nama","semua","pending","diterima","ditolak"]', 'ENABLE', '2020-03-18 12:10:01', '2020-03-18 12:10:13'),
(6, 'Jenis Sampah per Desa', 'SELECT * FROM sampah', '["id","kode","id_masyarakat"]', 'ENABLE', '2020-03-18 13:05:31', '2020-03-18 13:05:43'),
(7, 'Surat Permintaan', 'SELECT  * FROM permintaan_barang', '["kode","id_proyek","lokasi","status_permintaan","jenis"]', 'ENABLE', '2020-04-07 12:56:06', '2020-04-07 13:00:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(0, 'Superadmin', 'ENABLE', '["1","43","41","34","16","42","40","39"]', '2018-10-12 17:03:59', '2020-04-03 10:08:08'),
(1, 'PIC Proyek', 'ENABLE', '["1","41"]', '2018-10-12 17:03:59', '2020-04-09 12:44:27'),
(2, 'PM Proyek', 'ENABLE', '["1","41"]', '2018-10-12 17:03:59', '2020-03-18 01:34:26'),
(3, 'Cost Control', 'ENABLE', '["1","41"]', '2018-10-12 17:03:59', '2020-04-02 09:23:02'),
(4, 'Project Director', 'ENABLE', '["1","41"]', '2018-10-12 17:03:59', '2020-03-04 09:29:32'),
(5, 'Log Pusat', 'ENABLE', '["1","41"]', '2018-10-12 17:03:59', '2020-03-04 09:29:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `site`
--

CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `site` varchar(225) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(255) DEFAULT NULL,
  `jenis` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `ttd` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `password`, `role_id`, `jenis`, `desc`, `file`, `ttd`, `token`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(12, 'arvin', 'arvin', 'arvin', '89f6432af2e2bcea9489ad02cd27a134', 0, '[{"jenis":"1"},{"jenis":"2"}]', '-', 'user-file-12.png', 'user-ttd-12.jpg', '', 'ENABLE', NULL, '2020-04-07 12:37:22', 0),
(21, 'pic', 'pic', 'pic', 'ed09636a6ea24a292460866afdd7a89a', 1, '[{"jenis":"1"},{"jenis":"2"},{"jenis":"3"}]', '-', 'user-file-21-6950c16c9bcc6995f376b297f16317593930.png', 'user-ttd-21-ttd.jpg', '', 'ENABLE', NULL, '2020-04-09 11:21:12', 0),
(22, 'pm', 'pm', 'pm', '5109d85d95fece7816d9704e6e5b1279', 2, '[{"jenis":"1"},{"jenis":"2"},{"jenis":"3"}]', '-', '', '', '', 'ENABLE', NULL, '2020-04-07 22:50:48', 0),
(23, 'cc', 'cc', 'cc', 'e0323a9039add2978bf5b49550572c7c', 3, '[{"jenis":"1"},{"jenis":"2"},{"jenis":"3"}]', NULL, '', '', '', 'ENABLE', NULL, NULL, 0),
(24, 'pd', 'pd', 'pd', 'b69466b536f8ce43b6356ec1332e05a4', 4, '[{"jenis":"1"},{"jenis":"2"},{"jenis":"3"}]', '-', '', '', '', 'ENABLE', NULL, '2020-04-09 12:43:54', 0),
(25, 'lp', 'lp', 'lp', '351325a660b25474456af5c9a5606c4e', 5, '[{"jenis":"1"},{"jenis":"2"},{"jenis":"3"}]', '-', '', '', '', 'ENABLE', NULL, '2020-04-09 12:43:35', 0),
(29, 'superadmin', 'superadmin', 'superadmin@gmail.com', 'ac497cfaba23c4184cb03b97e8c51e0a', 0, '[{"jenis":"1"},{"jenis":"2"},{"jenis":"3"}]', '-', 'user-file-29.png', 'user-ttd-29.jpg', '', 'ENABLE', '2020-04-07 12:43:48', '2020-04-07 12:45:09', 12),
(33, 'peno', 'peno', 'peno@gmail.com', 'b3bdc4529c34a506531895e2ff317abd', 1, '[{"jenis":"2"},{"jenis":"3"}]', '-', 'user-file-33.png', 'user-ttd-33.jpg', '', 'ENABLE', '2020-04-07 12:51:08', '2020-04-09 10:01:58', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_jenis`
--

CREATE TABLE IF NOT EXISTS `user_jenis` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_jenis`
--

INSERT INTO `user_jenis` (`id`, `id_user`, `jenis`) VALUES
(9, 12, '1'),
(10, 12, '2'),
(11, 26, '1'),
(12, 26, '2'),
(13, 26, '3'),
(14, 27, '1'),
(15, 27, '2'),
(16, 27, '3'),
(17, 28, '1'),
(18, 28, '2'),
(19, 28, '3'),
(23, 29, '1'),
(24, 29, '2'),
(25, 29, '3'),
(26, 30, '3'),
(27, 31, '3'),
(28, 32, '3'),
(36, 22, '1'),
(37, 22, '2'),
(38, 22, '3'),
(75, 23, '1'),
(76, 23, '2'),
(77, 23, '3'),
(78, 33, '2'),
(79, 33, '3'),
(80, 21, '1'),
(81, 21, '2'),
(82, 21, '3'),
(83, 25, '1'),
(84, 25, '2'),
(85, 25, '3'),
(86, 24, '1'),
(87, 24, '2'),
(88, 24, '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contohmaster`
--
ALTER TABLE `contohmaster`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `cost_code`
--
ALTER TABLE `cost_code`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `customer_dnd`
--
ALTER TABLE `customer_dnd`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `konfig_email`
--
ALTER TABLE `konfig_email`
  ADD PRIMARY KEY (`ke_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `log_backupdb`
--
ALTER TABLE `log_backupdb`
  ADD PRIMARY KEY (`bdb_id`);

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_jenis`
--
ALTER TABLE `master_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_notifikasi`
--
ALTER TABLE `master_notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_persyaratan`
--
ALTER TABLE `master_persyaratan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_proyek`
--
ALTER TABLE `master_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_proyek_sub`
--
ALTER TABLE `master_proyek_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_uom`
--
ALTER TABLE `master_uom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permintaan_barang`
--
ALTER TABLE `permintaan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permintaan_barang_sub`
--
ALTER TABLE `permintaan_barang_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_jenis`
--
ALTER TABLE `user_jenis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT for table `contohmaster`
--
ALTER TABLE `contohmaster`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cost_code`
--
ALTER TABLE `cost_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=578;
--
-- AUTO_INCREMENT for table `customer_dnd`
--
ALTER TABLE `customer_dnd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `konfig_email`
--
ALTER TABLE `konfig_email`
  MODIFY `ke_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=873;
--
-- AUTO_INCREMENT for table `log_backupdb`
--
ALTER TABLE `log_backupdb`
  MODIFY `bdb_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `master_jenis`
--
ALTER TABLE `master_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_notifikasi`
--
ALTER TABLE `master_notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `master_persyaratan`
--
ALTER TABLE `master_persyaratan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_proyek`
--
ALTER TABLE `master_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_proyek_sub`
--
ALTER TABLE `master_proyek_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_status`
--
ALTER TABLE `master_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `master_uom`
--
ALTER TABLE `master_uom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `permintaan_barang`
--
ALTER TABLE `permintaan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permintaan_barang_sub`
--
ALTER TABLE `permintaan_barang_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `user_jenis`
--
ALTER TABLE `user_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
