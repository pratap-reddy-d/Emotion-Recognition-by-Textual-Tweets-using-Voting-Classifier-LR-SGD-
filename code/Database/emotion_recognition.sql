-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2022 at 08:00 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emotion_recognition`
--
CREATE DATABASE IF NOT EXISTS `emotion_recognition` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emotion_recognition`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0doxd89lelsb62hh61y1u9xvhgis91ks', 'eyJ1c2VyaWQiOjE5fQ:1mDlBs:xxj-bSmT5wd80FZ0QPs9yzR1wUnf-8naNjRRmgbWt-4', '2021-08-25 10:10:28.069873'),
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('au3tqhab9csr4r2g5p8wxgktebzxone0', 'eyJ1c2VyaWQiOjExfQ:1mexd7:BmPTZn93Z2602ApV03LTh7BmDypyoNMN2YRKctHrGF8', '2021-11-08 10:55:01.820399'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('dfyj7ow83db85qlok7wv17cpynte1r4s', 'eyJ1c2VyaWQiOjI1fQ:1mk45o:UkNioViQRXhwMYasTt7UTXfMwAGbA8-sBH0I1Z4Aedg', '2021-11-22 12:49:44.900887'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('fq0czwxzas1e5bjz5cx5pr6ytm8uhejy', 'eyJ1c2VyaWQiOjExfQ:1mfKoD:eQbeRUgZ8NFqCleEdS6fE0NAoRs3zn6_B82CZb4YtiQ', '2021-11-09 11:40:01.472965'),
('h2up0dvopjvwswxnvprj7id9lgrivhus', 'eyJ1c2VyaWQiOjIzfQ:1mfM3f:FAuAUdY-ly6qun6t571yt1pYKVGhXfjbjhiruld5rNs', '2021-11-09 13:00:03.703809'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i530ldontosd9c37rlmr7i190cc8j54c', 'eyJ1c2VyaWQiOjExfQ:1mfGFZ:PSpZPmdPYnGzwCScqY4tYBkDj8BMVATwweZjjxmG5dk', '2021-11-09 06:47:57.629900'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jgcbya9z2s6b6mmldfv28lm18imc73m8', 'eyJ1c2VyaWQiOjIxfQ:1mDnYP:GTRQ2I-UYLdsCCyA0-WsFSAVBNno1wLo6lk4M8JS0OU', '2021-08-25 12:41:53.312085'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('ktjsa2dwmkzggkc8htfro0m1zf2kt78d', 'eyJ1c2VyaWQiOjI0fQ:1mfiev:rUgpc2VOr-8MQnmWwZsSVM_IqXQAA3Bacheqmp_LQ2o', '2021-11-10 13:08:01.503971'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('ockxdsovmqzlbudh5ltjjjtxscly8lfk', 'eyJ1c2VyaWQiOjExfQ:1mk3am:dCCWcOYtoakt-zFLcZc9-0wVzEKYKrm5hUIx1C1Nvvg', '2021-11-22 12:17:40.617512'),
('owqt9fqa6pkheboduh6f4k5p4lkwj0yc', 'eyJ1c2VyaWQiOjExfQ:1mfiXk:Wzn12pygxu_2Z1TzCSC4bKDawuXj_i7_BFLhJjKx-10', '2021-11-10 13:00:36.684741'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('q6hp9a2l9dbrclvox0o02x1aamx1ukj7', 'eyJ1c2VyaWQiOjIyfQ:1mfGz3:wkq7ZgyB738cK3Jugrc0viqb3eI1C0gWhyypHF_DE-A', '2021-11-09 07:34:57.860407'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('rn48bwukkb2yv60kvkacr8nc0njr5xky', 'eyJ1c2VyaWQiOjExfQ:1mfggv:xsbmrrGzxtrEFgspA0Wp7oWTp9qDl0shDSlGG8fHJo4', '2021-11-10 11:01:57.519295'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('tx26u0gjaebi1m6miqvms83dw452rw7c', 'eyJ1c2VyaWQiOjExfQ:1mg01H:i0OHhHK7t2WdfySWwMXXs92TaT7Vn1UQf2i0eZBO70s', '2021-11-11 07:40:15.053714'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('z21h6ujavsyz06cskuixtuvs2cy8ingp', 'eyJ1c2VyaWQiOjExfQ:1nMlsd:3Zm_UJmEOdZ97dnPVCXosGVsGfN_m9Pcgi8xs_JlPBo', '2022-03-09 07:16:07.899857'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`) VALUES
(10, 'Govind', 'Govind.123@gmail.com', 'Govind', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(11, 'Manjunath', 'tmksmanju13@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(12, 'tmksmanju', 'tmksmanju13@gmail.com', 'tmksmanju', '9535866271', 'India', 'Karnataka', 'Bangalore'),
(13, 'Arvind', 'Arvind123@gmail.com', 'Arvind', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(14, 'Amar', 'Amar123@gmail.com', 'Amar', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(15, 'Anil', 'Anil123@gmail.com', 'Anil', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(16, 'Abilash', 'Abilash123@gmail.com', 'Abilash', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(17, 'Kumar', 'Kumar.123@gmail.com', 'Kumar', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(18, 'Gokul', 'Gokul123@gmail.com', 'Gokul', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(19, 'Santosh', 'Santosh123@gmail.com', 'Santosh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(20, 'Amaresh', 'Amaresh123@gmail.com', 'Amaresh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(21, 'Akul', 'Akul123@gmail.com', 'Akul', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(22, 'Suresh', 'Suresh123@gmail.com', 'Suresh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(23, 'Raj', 'Raj123@gmail.com', 'Raj', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(24, 'Roja', 'Roja123@gmail.com', 'Roja', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(25, 'Lingam', 'Lingam123@gmail.com', 'Lingam', '9535866270', 'India', 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(45, 'Naive Bayes', '93.875'),
(46, 'SVM', '95.7'),
(47, 'Logistic Regression', '95.65'),
(48, 'Decision Tree Classifier', '95.19999999999999'),
(49, 'SGD Classifier', '95.72500000000001'),
(50, 'Random Forest Classifier', '95.6');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `remote_user_detection_ratio`
--

INSERT INTO `remote_user_detection_ratio` (`id`, `names`, `ratio`) VALUES
(21, 'Happy', '71.42857142857143'),
(22, 'Un Happy', '28.57142857142857');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_emotion_prediction`
--

CREATE TABLE IF NOT EXISTS `remote_user_emotion_prediction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tweet_Id` varchar(300) NOT NULL,
  `Tweet_Message` varchar(30000) NOT NULL,
  `Emotion_Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `remote_user_emotion_prediction`
--

INSERT INTO `remote_user_emotion_prediction` (`id`, `Tweet_Id`, `Tweet_Message`, `Emotion_Prediction`) VALUES
(1, '8', 'the next school year is the year for exams.Ã°ÂŸÂ˜Â¯ can''t think about that Ã°ÂŸÂ˜Â­ #school #exams   #hate #imagine #actorslife #revolutionschool #girl', 'Happy'),
(2, '17', 'i am thankful for having a paner. #thankful #positive', 'Happy'),
(3, '24', '@user @user lumpy says i am a . prove it lumpy.', 'Happy'),
(4, '78', '@user hey, white people: you can call people ''white'' by @user  #race  #identity #medÃ¢Â€Â¦', 'Un Happy'),
(5, '122', '#cotd   polar bear climb racing: angry polar bear climb racing, the polar bear living in cold places looking ', 'Happy'),
(6, '140', 'our heas, thoughts, prayers go out to the more than 50 people who were murdered @ a gay nightclub in #florida.', 'Happy'),
(7, '83', 'how the #altright uses  &amp; insecurity to lure men into #whitesupremacy    ', 'Un Happy');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_tweet_message_details`
--

CREATE TABLE IF NOT EXISTS `remote_user_tweet_message_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tweet_Id` varchar(300) NOT NULL,
  `Tweet_Label` varchar(300) NOT NULL,
  `Tweet_Message` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=817 ;

--
-- Dumping data for table `remote_user_tweet_message_details`
--

INSERT INTO `remote_user_tweet_message_details` (`id`, `Tweet_Id`, `Tweet_Label`, `Tweet_Message`) VALUES
(409, '1', '0', ' @user when a father is dysfunctional and is so selfish he drags his kids into his dysfunction.   #run'),
(410, '2', '0', '@user @user thanks for #lyft credit i can''t use cause they don''t offer wheelchair vans in pdx.    #disapointed #getthanked'),
(411, '3', '0', '  bihday your majesty'),
(412, '4', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(413, '5', '0', ' factsguide: society now    #motivation'),
(414, '6', '0', '[2/2] huge fan fare and big talking before they leave. chaos and pay disputes when they get there. #allshowandnogo  '),
(415, '7', '0', ' @user camping tomorrow @user @user @user @user @user @user @user dannyÃ¢Â€Â¦'),
(416, '8', '0', 'the next school year is the year for exams.Ã°ÂŸÂ˜Â¯ can''t think about that Ã°ÂŸÂ˜Â­ #school #exams   #hate #imagine #actorslife #revolutionschool #girl'),
(417, '9', '0', 'we won!!! love the land!!! #allin #cavs #champions #cleveland #clevelandcavaliers  Ã¢Â€Â¦ '),
(418, '10', '0', ' @user @user welcome here !  i''m   it''s so #gr8 ! '),
(419, '11', '0', ' Ã¢Â†Â #ireland consumer price index (mom) climbed from previous 0.2% to 0.5% in may   #blog #silver #gold #forex'),
(420, '12', '0', 'we are so selfish. #orlando #standwithorlando #pulseshooting #orlandoshooting #biggerproblems #selfish #heabreaking   #values #love #'),
(421, '13', '0', 'i get to see my daddy today!!   #80days #gettingfed'),
(422, '14', '1', '@user #cnn calls #michigan middle school ''build the wall'' chant '''' #tcot  '),
(423, '15', '1', 'no comment!  in #australia   #opkillingbay #seashepherd #helpcovedolphins #thecove  #helpcovedolphins'),
(424, '16', '0', 'ouch...junior is angryÃ°ÂŸÂ˜Â#got7 #junior #yugyoem   #omg '),
(425, '17', '0', 'i am thankful for having a paner. #thankful #positive     '),
(426, '18', '1', 'retweet if you agree! '),
(427, '19', '0', 'its #friday! Ã°ÂŸÂ˜Â€ smiles all around via ig user: @user #cookies make people   '),
(428, '20', '0', 'as we all know, essential oils are not made of chemicals. '),
(429, '21', '0', '#euro2016 people blaming ha for conceded goal was it fat rooney who gave away free kick knowing bale can hit them from there.  '),
(430, '22', '0', 'sad little dude..   #badday #coneofshame #cats #pissed #funny #laughs '),
(431, '23', '0', 'product of the day: happy man #wine tool  who''s   it''s the #weekend? time to open up &amp; drink up!'),
(432, '24', '1', '@user @user lumpy says i am a . prove it lumpy.'),
(433, '25', '0', ' @user #tgif   #ff to my #gamedev #indiedev #indiegamedev #squad! @user @user @user @user @user'),
(434, '26', '0', 'beautiful sign by vendor 80 for $45.00!! #upsideofflorida #shopalyssas   #love '),
(435, '27', '0', ' @user all #smiles when #media is   !! Ã°ÂŸÂ˜ÂœÃ°ÂŸÂ˜Âˆ #pressconference in #antalya #turkey ! sunday #throwback  love! Ã°ÂŸÂ˜ÂŠÃ°ÂŸÂ˜Â˜Ã¢ÂÂ¤Ã¯Â¸Â '),
(436, '28', '0', 'we had a great panel on the mediatization of the public service   #ica16'),
(437, '29', '0', 'happy father''s day @user Ã°ÂŸÂ’Â“Ã°ÂŸÂ’Â“Ã°ÂŸÂ’Â“Ã°ÂŸÂ’Â“  '),
(438, '30', '0', '50 people went to nightclub to have a good night and 1 man''s actions means those people are lost to their families forever #rip#orlando'),
(439, '31', '0', 'i have never had a chance to vote for a presidential candidate i was excited about and this cycle looks to be no different.  '),
(440, '32', '0', '  #alohafriday #time does #not #exist #positivevibes #hawaiian @user @user @user @user '),
(441, '33', '0', ' @user rip to the fellow nohern ireland fan who sadley passed away tonight!.. gawa, forever singing and cheering on fire  '),
(442, '34', '0', 'it was a hard monday due to cloudy weather. disabling oxygen production for today. #goodnight #badmonday  '),
(443, '35', '1', 'it''s unbelievable that in the 21st century we''d need something like this. again. #neverump  #xenophobia '),
(444, '36', '0', '#taylorswift1989   bull up: you will dominate your bull and you will direct it whatever you want it to do. w '),
(445, '37', '0', 'morning~~ #travelingram #dalat   #ripinkylife '),
(446, '38', '0', '@user once more only one word tells it all: #photoshop.  #enoughisenough #dontphotoshopeverything #wheresallthenaturalphotos  '),
(447, '39', '0', 'oh, #cedarpoint. waited 2 hours in the valravn line and it stopped working. we were so close.  '),
(448, '40', '0', 'i am thankful for sunshine. #thankful #positive     '),
(449, '41', '0', 'when you finally finish a book you''ve been working on for awhile...  #bookworm #ontothenextnovel '),
(450, '42', '0', 'yup, being a knicks fan is hard, so its easier to just be an nba fan when the playoffs roll around Ã°ÂŸÂ˜ÂŽ '),
(451, '43', '0', 'there is life after social networking. embrace each day. be   '),
(452, '44', '0', 'my mom shares the same bihday as @user   bihday snake! see you this weekend Ã°ÂŸÂ™ÂŒÃ°ÂŸÂÂ¼'),
(453, '45', '0', 'lovely echeveria blooms#flowers #grow #gardening #iphonesia #bliss #blooms #basilicabotanica   '),
(454, '46', '0', 'i am amazing. #i_am #positive #affirmation     '),
(455, '47', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(456, '48', '0', '#whenever im   and #something goes #wrong  |  '),
(457, '49', '0', 'feeling blue #illustration   '),
(458, '50', '0', 'the best pa about life is knowing who you are! Ã°ÂŸÂ˜ÂŠÃ¢Â˜Â€Ã¯Â¸ÂÃ°ÂŸÂŒÂ¼Ã°ÂŸÂŒÂ»  Ã¢Â€Â¦ '),
(459, '51', '0', '#abc2020 getting ready 2 remove the victums frm #pulseclub #prayfororlando  '),
(460, '52', '0', 'for her #bihday we got her a #nose #job @user  Ã°ÂŸÂŽÂˆÃ°ÂŸÂÂ¶Ã°ÂŸÂŽÂ‰Ã°ÂŸÂŽÂ‚Ã°ÂŸÂŽÂ    #bihday #petunia we love you Ã°ÂŸÂ™Âƒ '),
(461, '53', '0', 'off to concelebrate at the #albanpilgrimage for the first time.   @user'),
(462, '54', '0', ' @user let the scum-baggery begin..... '),
(463, '55', '0', 'thank you! Ã°ÂŸÂ˜ÂÃ°ÂŸÂ˜Â† super love it! Ã¢ÂÂ¤Ã¯Â¸Â zpamdelacruz   #wedding# @ dolores, capas tarlac. '),
(464, '56', '0', 'a scourge on those playing baroque pieces on piano    beyond belief '),
(465, '57', '1', '@user lets fight against  #love #peace '),
(466, '58', '0', ' happy fatherÃ¢Â€Â™s day, mr. rayos #video   #fathers #day #rayos #world #hotvideo #videos'),
(467, '59', '0', ' @user ascot times with this babe Ã¢ÂÂ¤Ã¯Â¸ÂÃ¢ÂÂ¤Ã¯Â¸Â #ascot #fashion #monochrome #style   #instahappyday '),
(468, '60', '0', 'the weekend..is here!!Ã°ÂŸÂ™ÂŒÃ°ÂŸÂ˜Â‰Ã°ÂŸÂ˜Â˜Ã°ÂŸÂ’Â™Ã°ÂŸÂ˜ÂŠ #selfie   #yolo #xoxo #like4like '),
(469, '61', '0', 'happy at work conference: right'' mindset leads to culture-of-development organizations    #work #mindset'),
(470, '62', '0', 'christina grimmie''s  last performance before being shot...  via @user #christinarip #voice #christinagrimmie  '),
(471, '63', '0', 'we are ready to dance #roar #preschoolers   #students #proudÃ¢Â€Â¦ '),
(472, '64', '0', 'you''ve really hu my feelings :(  '),
(473, '65', '0', '@user my wife whom i adore had to miss your poland show because she had surgery. her name is bridget &amp; she''s my everything.  '),
(474, '66', '0', '@user i am so jealous of you right now.... #chatiado  '),
(475, '67', '0', 'i celebrate every man that has played it''s fatherly role.   father''s day#'),
(476, '68', '0', 'i''m sure they are just as happy.... Ã°ÂŸÂ‘ÂÃ°ÂŸÂÂ½Ã°ÂŸÂ‘ÂÃ°ÂŸÂÂ½Ã°ÂŸÂ‘ÂÃ°ÂŸÂÂ½   hour  '),
(477, '69', '1', 'Ã°ÂŸÂ˜Â©the white establishment can''t have blk folx running around loving themselves and promoting our greatness  '),
(478, '70', '0', 'good morning! the journey begins! Ã°ÂŸÂ˜Â„Ã°ÂŸÂ‘ÂÃ°ÂŸÂÂ»Ã°ÂŸÂ›Â³   #travel #yeah #thejourneybegins #helloÃ¢Â€Â¦ '),
(479, '71', '0', ' @user # if you #luv #hottweets like this from Ã¢Â–Â¶ Ã¢Â™Â¥#venusexchangeÃ¢Â™Â¥ '),
(480, '72', '0', 'our new brochures have arrived! how exciting!! #aworks #solutions   '),
(481, '73', '0', 'so much stuff happening in florida! first #orlando shooting and now #disneygatorattack on a two year old kidÃ°ÂŸÂ˜Â¥Ã°ÂŸÂÂŠ  '),
(482, '74', '0', '@user ferrari will do itÃ°ÂŸÂ’ÂªÃ°ÂŸÂÂ¼ for the sake of the championship. this gp is clearly a turning point rb, ferrari,mercs...Ã°ÂŸÂ˜Â  '),
(483, '75', '0', 'aced my first test!   #proud '),
(484, '76', '0', '  seeks probe into #udtapunjab'' leak, points finger at #amarinder, #aap  '),
(485, '77', '0', '@user wrapping up #senseaboutmaths @user 6th   @user @user @user '),
(486, '78', '1', '@user hey, white people: you can call people ''white'' by @user  #race  #identity #medÃ¢Â€Â¦'),
(487, '79', '0', '@user @user you might be. just have not shown here today. regurgitated talking points and name calling?  '),
(488, '80', '0', 'sometimes you have to raise a few brows to raise the bar. #golfstrengthandconditioning   #strong #felixfoisgolf'),
(489, '81', '0', '  about that Ã°ÂŸÂ˜Â€Ã°ÂŸÂ˜Â€Ã°ÂŸÂ˜Â€ #greathonour #careerconvos @user @user '),
(490, '82', '0', ' @user designing #innovative learning space @user to include #wateringhole #cave #mountaintop #campfire @user   hÃ¢Â€Â¦'),
(491, '83', '1', 'how the #altright uses  &amp; insecurity to lure men into #whitesupremacy    '),
(492, '84', '0', 'carrying a gun wouldn''t of helped if you can''t take it in with you. gun control won''t stop the black market! terrorism will get worse!  '),
(493, '85', '0', 'use the power of your mind to #heal your body!! -     #altwaystoheal #healthy   #peace! '),
(494, '86', '0', 'woohoo!! just over 5 weeks to go!   '),
(495, '87', '0', 'being in a far away place where you have no family members hus  '),
(496, '88', '0', 'ready to rehearse tonight with new music and new videos, look out for the announcement! #midweek #newmusic #watchthisspace #guitar  '),
(497, '89', '0', 'now on monday nights at 8pm on #up channel!!!! i finally get to see what all the fuss is about!!!   '),
(498, '90', '0', 'watching the new episodes of @user on @user  '),
(499, '91', '0', ' @user offline now after a very nice and long night.. Ã°ÂŸÂ˜Âš #snapchat @user   #redhead #vermillionred '),
(500, '92', '0', ' 15 things incredibly   #people do '),
(501, '93', '0', 'yes! received my acceptance letter for my masters so will be back at @user again in october!    #goodtimes #history'),
(502, '94', '0', 'daughter riding her bike around driveway, son playing his guitar for us while we enjoy Ã°ÂŸÂÂº by the campfire... #summeime   #memories'),
(503, '95', '0', 'omg!!! loving this station!!! way to jam out at work!!! while getting work done of course!!!!   #memories @user '),
(504, '96', '0', '@user i''ll always hope that one day i''ll get to hug you, but i don''t think that it''s gonna happen anytime soon... '),
(505, '97', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(506, '98', '0', '  couple having sex fat naked japanese girls  '),
(507, '99', '0', '#hump on that    #hump day #humpersÃ°ÂŸÂ˜Â© @ edwardsville, pennsylvania '),
(508, '100', '0', 'personalised we... gbp 7.99 get here:  #shop #cool   #home #fun '),
(509, '101', '0', 'there are some truly sick ppl out there.   '),
(510, '102', '0', 'trump calling on obama to resign over the orlando shootings? the boy has a point. 8 years and all he did was "talk" about change.  '),
(511, '103', '0', '@user @user @user @user not long now!!!   #nashvilletour2016 #nashvilleforever Ã°ÂŸÂ’Â–Ã°ÂŸÂ’Â–Ã°ÂŸÂ’Â– '),
(512, '104', '0', ' Ã¢Â†Â #eur/usd clears 1.1400 barrier, jumps to fresh 4-week high   #blog #silver #gold #forex'),
(513, '105', '0', 'going to la tomorrow!!!  '),
(514, '106', '0', 'i am thankful for good friends. #thankful #positive     '),
(515, '107', '0', 'i still can not wrap my head around the fact that #christinagrimmie is gone. and the fact that a man destroyed #prayfororlando just  '),
(516, '108', '0', 'just received dis from @user can''t wait to sta baking #eyelids .Ã°ÂŸÂ˜ÂšÃ°ÂŸÂ˜ÂšÃ°ÂŸÂ˜ÂŽÃ°ÂŸÂ˜ÂŽÃ°ÂŸÂ˜ÂŽÃ°ÂŸÂ˜ÂŽ   Ã°ÂŸÂ˜Â‰Ã°ÂŸÂ˜Â‰Ã°ÂŸÂ˜Â‰Ã¢Â€Â¦ '),
(517, '109', '0', 'we were so   to be playing for #vigilfororlando #harp #clonakilty #rip  via @user'),
(518, '110', '0', ' @user yes yes yes   #ihavenofriends #someonecomewithme '),
(519, '111', '0', 'sunday...Ã°ÂŸÂ’Â• #weekend #relax #icon #woman #sundaymorning #sunday   #marilynmonroe '),
(520, '112', '1', '@user i''m not interested in a #linguistics that doesn''t address #race &amp; . racism is about #power. #raciolinguistics bringsÃ¢Â€Â¦'),
(521, '113', '0', 'one of my beloved long lost cds, now recovered thanks to apple music.  !  '),
(522, '114', '0', '#marvel #song #musica #weed #ripchristina #adele   #dance (vine by @user '),
(523, '115', '1', '@user why not @user mocked obama for being black.  @user @user @user @user #brexit'),
(524, '116', '0', ' Ã¢Â†Â #under the spell of brexit referendum - commerzbank   #blog #silver #gold #forex'),
(525, '117', '0', '100 amazing health benefits of cucumbers!    #healthy is  !!  #altwaystoheal! '),
(526, '118', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(527, '119', '0', 'off to work Ã°ÂŸÂ’ÂªÃ°ÂŸÂÂ»Ã°ÂŸÂšÂ¶Ã°ÂŸÂÂ¼ #ofw #pinoy #followme #igers #instagood #smile   #love # '),
(528, '120', '0', '#toradora #anime #animeedit i made it.   #breakups #alone #lonely '),
(529, '121', '0', '50 laps of pool, 10k ride done and picked up a gym membership form  '),
(530, '122', '0', '#cotd   polar bear climb racing: angry polar bear climb racing, the polar bear living in cold places looking '),
(531, '123', '0', ' @user @user gets him angry.  a muslim assassinating 50 not so much.    '),
(532, '124', '0', 'happy snappy Ã°ÂŸÂ™ÂŒÃ°ÂŸÂÂ¼ waiting for the football   #football #snapchat '),
(533, '125', '0', 'friday i miss you!!   #fringes#qcbags#summer Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ˜ÂŽÃ°ÂŸÂ˜ÂŽÃ°ÂŸÂŒÂžÃ°ÂŸÂŒÂžÃ°ÂŸÂŒÂžÃ³Â¾Â®ÂžÃ°ÂŸÂÂ» '),
(534, '126', '0', '#nochebuena   #lasvegas #usa @ las vegas strip '),
(535, '127', '0', 'ma fleurette Ã°ÂŸÂ‘Â¯Ã°ÂŸÂ’Â• #instaboy#instaman#sefie#septum#friend #smiles#blackandwhite '),
(536, '128', '0', 'sad in the branches itÃ¢Â€Â™s just rainy day writing tears are flying birds   #haiku #3lines #micropoetry  '),
(537, '129', '0', 'yeah! new buttons in the mail for me Ã°ÂŸÂ’Â–  they are so pretty! :) #jewelrymaking #buttons   '),
(538, '130', '0', ' @user driver hit female moose on river rd #weston.  moose was killed. driver is ok. crews removing animal now  '),
(539, '131', '0', 'afterpas.   made in japan. Ã¯Â¼Âƒmadeinjapan  #eos  Ã¯Â¼Âƒcute #fun #cawaii #love   #strawberry #tomato '),
(540, '132', '1', '#people aren''t protesting #trump because a #republican won-they do so because trump has fuhered  &amp;Ã¢Â€Â¦ '),
(541, '133', '0', 'i need to find a way to spend my time so you are not always on my mind. . .  #me #boy #guy  Ã¢Â€Â¦ '),
(542, '134', '0', '[1466047260.15] update @  #social #analytics   #photooftheday #igers #likes '),
(543, '135', '0', 'anyone know the date our #doj and #fbi became corrupted? #emailgate #hillary2016 #shameful #disgraceful #ridiculous  '),
(544, '136', '0', '#stupidity makes me more   than even #negligence.why put #sachintendulkar a installation if u were going to take it off?'),
(545, '137', '0', 'Ã°ÂŸÂ˜Â†Ã°ÂŸÂ’Â•Ã°ÂŸÂŒÂŸÃ°ÂŸÂ’Â“Ã¢ÂœÂ¨Ã¢Â­ÂÃ¯Â¸Â  #Ã£Â‚Â†Ã£Â‚ÂŠÃ£ÂÂÃ£Â‚Â“   bihdayÃ°ÂŸÂŽÂ‰ #21thbihday Ã°ÂŸÂ’Â“ #bestfriend Ã°ÂŸÂŒÂŸ #loveÃ°ÂŸÂ‘Â¼ '),
(546, '138', '0', ' @user Ã°ÂŸÂ’Â‹ d most impoant thing is to #enjoy your life - to be   - itÃ¢Â€Â™s all that matters. life is too sho. #pooh4u '),
(547, '139', '0', 'happy bihday chris evansÃ°ÂŸÂŽÂ‡Ã°ÂŸÂŽÂ‰Ã°ÂŸÂŽÂŠÃ°ÂŸÂŽÂÃ°ÂŸÂŽÂ‚Ã°ÂŸÂŽÂ†Ã°ÂŸÂŽÂˆ a great actor and human Ã°ÂŸÂ˜ÂÃ°ÂŸÂ˜ÂÃ°ÂŸÂ˜Â³Ã°ÂŸÂ˜Â˜Ã°ÂŸÂ˜Â»Ã°ÂŸÂ˜Â¸Ã°ÂŸÂ’ÂœÃ°ÂŸÂ’Â“Ã°ÂŸÂ’Âž #chrisevans   #bihdayÃ¢Â€Â¦ '),
(548, '140', '0', 'our heas, thoughts, prayers go out to the more than 50 people who were murdered @ a gay nightclub in #florida   '),
(549, '141', '0', ' @user demoing guitars for new album #newalbum #indie #guitars   #echobelly '),
(550, '142', '0', 'retweeted lion pro (@user  #tgif #webmareting #seo #community #management   #weekend... '),
(551, '143', '0', ' Ã¢Â†Â #nzd/usd: targets the 100 week sma at 0.7190   #blog #silver #gold #forex'),
(552, '144', '0', ' @user i''ve had pretty bad bihday weeks before, but so far this is the worst ever. Ã°ÂŸÂ˜Â’ #bihdayweeksucks #bithday27   #tÃ¢Â€Â¦'),
(553, '145', '0', 'so blessed to have worked with sa''s best leading ladiesÃ°ÂŸÂ˜Â„Ã°ÂŸÂ˜Â„ '),
(554, '146', '0', 'happiest place on eah Ã°ÂŸÂ’Â« #disneysmagickingdom #disney #magickingdom #disneyland   #orlandoÃ¢Â€Â¦ '),
(555, '147', '0', 'is kinda   to be among humans again.'),
(556, '148', '0', 'just found out @user is at @user after i''d been exclaiming to @user how gr8 blain''s hair was the other nite.   Ã°ÂŸÂ˜Â­'),
(557, '149', '0', '@user &lt;3 listen to my most beautiful best friend  @user  singing with her most amazing voice &lt;3 &lt;3 &lt;3 &lt;3 17 '),
(558, '150', '0', 'be   n #healthy freedom from effo in the present merely means that there has been effo stored up in the past. Ã¢Â€Â“ theodore rooseveltÃ¢Â€Â¦'),
(559, '151', '0', 'when you know yall 2 aint going know where :) #love #commitment #trust #faithful  '),
(560, '152', '1', 'yes it''s  when you call #michelleobama a gorilla because racists have long thought of black people as no betÃ¢Â€Â¦ '),
(561, '153', '0', '#newarkfestival this is us all this year waiting for the show to sta our 3rd year running   '),
(562, '154', '0', 'when the internet is broken so you can''t watch netflix. #mochithepug #puglife   '),
(563, '155', '0', '@user @user @user and she will do just that....then what..business as usual.  '),
(564, '156', '0', 'hbd to this dick suckin tequila lovin slut, i wouldnt want u any other way Ã°ÂŸÂ’Â•Ã°ÂŸÂ˜Â˜   #justalillate #butstillontime '),
(565, '157', '1', 'as the smaller hands show, barry probably lied about  being why his #knicks game sucked more than his #golfÃ¢Â€Â¦ '),
(566, '158', '0', 'good morning friday! what is everyone doing this weekend? #goodmorning #friday #girls   #love #florida '),
(567, '159', '0', '  challenges #aap''s claim that 70% #punjabis are #drugaddicts, dares it to prove   '),
(568, '160', '0', '#tracerequest sending my deepest condolences to the orlando gay families. zimbabwe gay community has you at hea   #touched'),
(569, '161', '0', 'new selfie \\Ã‚Â¤.Ã‚Â¤/  #guy   #mato #chapones '),
(570, '162', '0', 'saturday afternoon chi meet up #friends    @user  @user  @user '),
(571, '163', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(572, '164', '0', 'soed out all my nut &amp; bolts.   #bloke'),
(573, '165', '0', 'aww yeah it''s all good bing bong bing bong   '),
(574, '166', '0', 'just dawned on me in 2 months i will be seeing @user live. i am so excited Ã°ÂŸÂ˜ÂÃ°ÂŸÂ˜ÂÃ°ÂŸÂ˜Â #vfest #summer  '),
(575, '167', '0', ' @user happy 35th bihday shane robe watson!!    #bihday #shane #watson #australia #cricker '),
(576, '168', '1', '@user @user you point one finger @user millions are pointed right back at you,  #jewishsupremacist'),
(577, '169', '0', 'sad to hear the announcers say that "it may have moved the player to one or two out of the lead" #whoknows!  '),
(578, '170', '0', '#radio1 i''m going to #coldplay tonight   oh yes.'),
(579, '171', '0', 'u think like this too? the god who is not coming through for me. the god who is not keeping me  . '),
(580, '172', '0', '@user terrorist = constitutional rights?  this is just another excuse by republicans to appease the nra with no gun control measures. !'),
(581, '173', '0', ' @user it''s all about @user   #gloucesterrugby '),
(582, '174', '0', ' @user very sad, @user what happened? '),
(583, '175', '0', 'everyone is everything   #sad #together #alone #up #down #fine #dandy #lonely #exuberant #depressed #halffull #halfempty'),
(584, '176', '0', '#mikeashley #sposdirectshame , perhapse a good example of the need to protect #workersrights from within europe. #euref   #remain'),
(585, '177', '0', 'angry birds stella bad princess   #birds #stella #bad #princess birdsstellabadprincess.  time post: wedÃ¢Â€Â¦ '),
(586, '178', '0', 'check  @user incredibly   to have made great  memories with great people , we did an ...'),
(587, '179', '0', 'saw a t shi last night that said "rip  to when i cared"   #really'),
(588, '180', '0', ' @user hilarious, @user i''m already blocked by @user for asking one, not paicularly difficult, question.   @user'),
(589, '181', '0', 'devastating news.  my hea goes out to the victims and their families.  #orlando #heabreaking   '),
(590, '182', '0', '"happiness is not a state to arrive at, but a manner of traveling." margaret lee #runbeck   #happiness #quotes #inspirational'),
(591, '183', '0', 'safe ways to heal your #acne!!    #altwaystoheal #healthy   #healing!! '),
(592, '184', '0', 'what i am creating right now. #beats #makingbeats #thursday   #work #istandard #akaiproÃ¢Â€Â¦ '),
(593, '185', '0', 'wedding number 10! Ã°ÂŸÂ˜ÂœÃ°ÂŸÂ˜ÂœÃ°ÂŸÂ’Â–Ã°ÂŸÂ’Â–Ã°ÂŸÂ’ÂÃ°ÂŸÂÂ¾Ã°ÂŸÂÂ¾  #wedding #weddingpay     #love #forever #weddingdressÃ¢Â€Â¦ '),
(594, '186', '0', 'we''re looking forward to attending the  cipd ireland conference &amp; workshop   #cpd #onemoreday @user  @user'),
(595, '187', '0', 'finally reached 200 followers on #twitch. follower hypu #stream tomorrow! Ã¢ÂÂ¤  '),
(596, '188', '0', 'words r free, it''s how u use em that can cost you! #verbal #abuse   #hu #love  #adult #teen @user '),
(597, '189', '0', 'after what our country went through this last year to see people bring a "bomb" to the stadium &amp; come here for everything but football  '),
(598, '190', '0', 'i am thankful for cats. #thankful #positive      '),
(599, '191', '0', 'time to eat with my bae swalscha Ã°ÂŸÂ˜ÂÃ¢ÂœÂ¨Ã°ÂŸÂ˜Â‹ #dejeuner #lunch   #happiness #love #amoureuxÃ¢Â€Â¦ '),
(600, '192', '0', 'ilovethesecret  #lawofattraction  #quiz #love #happiness #motivation #success   #joy #lifeÃ¢Â€Â¦ '),
(601, '193', '1', 'you might be a libtard if... #libtard  #sjw #liberal #politics '),
(602, '194', '0', 'it''s about to go down... #pole #bgp #rozthediva #blackgirlspole #bodyandpole #live #love  Ã¢Â€Â¦ '),
(603, '195', '0', '#argentina2015   attack bull game 3d: do you really think that his head was empty around the city. each side '),
(604, '196', '0', 'what a self-serving hypocrite! always keep your eye on the bouncing ball with this nimrod president.   '),
(605, '197', '0', '#nohcarolina   bull up: you will dominate your bull and you will direct it whatever you want it to do. whe '),
(606, '198', '0', '#building   polar bear climb racing: angry polar bear climb racing, the polar bear living in cold places loo '),
(607, '199', '0', '@user @user if they want reelection money. #ksleg  '),
(608, '200', '0', 'my hea is with #orlando right now. i truly cannot imagine. could have easily happened anywhere. :(  '),
(609, '201', '0', 'alreemgroup #aly_alshahawy #ad #cute #summer #photographerdubai #sun   #hair #mydubaiÃ¢Â€Â¦ '),
(610, '202', '0', 'it seems like the only place with action here is montreal :(   '),
(611, '203', '0', ' @user that, and you are old and washed up! '),
(612, '204', '0', 'i am spirited. #i_am #positive #affirmation     '),
(613, '205', '0', 'i am thankful for enteainment. #thankful #positive     '),
(614, '206', '0', '@user @user @user this shows truly how bad brisbane are  '),
(615, '207', '0', '@user can''t wait for #wimbledon2016  '),
(616, '208', '0', 'happy man!!!  #success #model #entrepreneur  #speaker #ff #fresh #confident    #fashionÃ¢Â€Â¦ '),
(617, '209', '0', '#gala moments ...   #day #kid #bipolar #frikiegirl2016 @ the lucky chinatown mall, binondo,Ã¢Â€Â¦ '),
(618, '210', '0', 'this really takes the piss. i''m so angry. just goes to show who is valued and who isn''t. you complete and utter moron.  '),
(619, '211', '1', '@user take out the #trash america...  - i voted against #hate - i voted against  - i voted against  - i votÃ¢Â€Â¦ '),
(620, '212', '0', '  fathers day to all the #amazing #dads out there that give up so much for their families! #enjoy your... '),
(621, '213', '0', 'does #magnettherapy really work?   #altwaystoheal #healing #healthy   !! '),
(622, '214', '0', 'sebbo has said it all!  @user '),
(623, '215', '0', 'Ã°ÂŸÂ˜ÂÃ°ÂŸÂ˜ÂÃ°ÂŸÂ˜ÂÃ¢ÂÂ¤Ã¯Â¸Â egÃ£Â€ÂœÃ¯Â¼ÂŸÃ¯Â¼ÂŸÃ¯Â¼ÂŸ smile!!!!!Ã¢ÂÂ¤Ã¯Â¸ÂÃ°ÂŸÂ—Â£Ã°ÂŸÂ¤Â˜Ã°ÂŸÂÂ½ Ã£ÂƒÂ» #smile#egsmile #torio  '),
(624, '216', '0', '@user brilliant service at your kettering branch today   customer'),
(625, '217', '0', '@user will be here for a screening. i will miss it. so i will sing all the songs from potp and shock treatment, because i can.  '),
(626, '218', '0', 'on the way toraya #bus #alamindah #white #music #carrieunderwood   '),
(627, '219', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(628, '220', '0', 'good day - 6 new beers at bridpo food &amp; beer fest. back at the campsite drunk the @user starstruck &amp; moved on to @user #5.  '),
(629, '221', '0', 'g o a l s Ã°ÂŸÂ’Â™ repost from @user #propey #ocean #summer   #life #family @ sydneyÃ¢Â€Â¦ '),
(630, '222', '0', 'i want to teach you love like you''ve never felt it before.  #quote #quotes #love #pakistan #allin216 #girls #boys #fashion   #feelings'),
(631, '223', '0', 'i am thankful for now. #thankful #positive     '),
(632, '224', '0', 'omg just 100 days left!! #countdown   #nolefam @user can''t wait for him to come to milan! #22092016 Ã°ÂŸÂ˜ÂÃ°ÂŸÂ”Âœ '),
(633, '225', '0', ' @user stone roses done. now time for @user in a d club.   days'),
(634, '226', '0', '"there''s a reason why two people stay together, they give each other something nobody else can." hopelly greats day '),
(635, '227', '0', 'you never know who might have a crush on you! #wakow #buzz   #moment #ride #love #crush #dating #hookup #app '),
(636, '228', '0', 'my friend just got engaged  Ã°ÂŸÂ‘Â©Ã¢Â€ÂÃ¢ÂÂ¤Ã¯Â¸ÂÃ¢Â€ÂÃ°ÂŸÂ’Â‹Ã¢Â€ÂÃ°ÂŸÂ‘Â©'),
(637, '229', '0', '298 days lef b4 end of classez yay    #risay18 #risaypls'),
(638, '230', '0', '  #thursday Ã°ÂŸÂ˜ÂŠ may we watch how we say what needs to be be saidÃ¢Â€Â¦ '),
(639, '231', '0', 'i am legendary. #i_am #positive #affirmation     '),
(640, '232', '0', 'to the united states of america, from the rest of the world: i think you''ve proven you don''t have the right to own firearms.    '),
(641, '233', '1', 'if you hold open a door for a woman because she''s a woman and not because it''s a nice thing to do, that''s . don''t even try to deny it'),
(642, '234', '0', 'when your having a good weekend and it shows :) #thankful #blessed   // #jeffreycwilliams Ã°ÂŸÂ’ÂŽÃ¢Â€Â¦ '),
(643, '235', '0', 'when you have a good hea and help everyone you always seem to be the one who gets hu   #buttrue'),
(644, '236', '0', 'the happiest baby ive ever knownÃ°ÂŸÂ’Â“ #cute #smiles   #babygirl #beautiful #niece #blessed #xo '),
(645, '237', '0', 'are you ready for #t.b.c ? #oneteamlincoln are... Ã°ÂŸÂ˜Â  @user @user @user @user '),
(646, '238', '0', 'can''t wait for carowinds! ready to see @user  and @user  time to #rockthepark    #timetogetmyjesuson'),
(647, '239', '0', 'already bought my finding dory ticket  '),
(648, '240', '0', 'for every minute you are   you lose sixty seconds of #happiness - and you should do the same Ã°ÂŸÂ˜Âª'),
(649, '241', '0', '#sanjapan   #animeconvention see you guys in september! '),
(650, '242', '0', 'question of the day: excited for motoÃ¢Â€Â™sÃ¢Â€Â¦  #tech #announcements   #moto_s #question '),
(651, '243', '0', 'make today count! #mondaymotivation #livelifetothefullest   #healthy #everydaycounts '),
(652, '244', '0', 'happy morning 8degree with anna #classmate #friends   @ 92Ã¢Â€Â¦ '),
(653, '245', '0', '@user would u be able to suppo our event #brentwood #homesta they lost funding and may have to close   '),
(654, '246', '0', 'we are happy little peoples Ã°ÂŸÂ˜ÂŠ   happyhappy people #kitten #cat #blackkittenÃ¢Â€Â¦ '),
(655, '247', '0', '@user @user @user thank you very much for this oppounity will cherish it forever   Ã°ÂŸÂ‡Â¿Ã°ÂŸÂ‡Â¦Ã°ÂŸÂÂ» Ã°ÂŸÂÂ‰Ã°ÂŸÂ’ÂªÃ°ÂŸÂÂ»Ã°ÂŸÂ‘ÂÃ°ÂŸÂÂ¼'),
(656, '248', '0', 'Ã°ÂŸÂ“Â· themeowood:   puppy '),
(657, '249', '0', 'few more days till who is  ? Ã°ÂŸÂ˜Â '),
(658, '250', '0', '"happy" by pharrell williams    #pharrellwilliams lyrics Ã¢Â†Âº'),
(659, '251', '0', ' @user happy at w.ork conference: right mindset leads to culture-of-development organizations    #workÃ¢Â€Â¦'),
(660, '252', '0', 'we lost another member of our family yesterday:-( #gutted   #rosie '),
(661, '253', '0', 'yayyy.... trailer 2morrow #fever super   @user @user @user'),
(662, '254', '0', 'watch fancy tails''s vine "mad #mad   #teeth #bite #pissed #dog   #biting #dogbite #dogtreat  '),
(663, '255', '0', '#dreamcatcher   bull up: you will dominate your bull and you will direct it whatever you want it to do. when '),
(664, '256', '0', 'i''m so ready for tomorrow Ã°ÂŸÂ‘Â“Ã°ÂŸÂ“ÂšÃ°ÂŸÂ“ÂšÃ°ÂŸÂ“ÂšÃ°ÂŸÂ“Â–Ã°ÂŸÂ“Â‘#englishteacher #teacher #ecuador   '),
(665, '257', '0', 'in memory of my wonderful dad, always missed, eternally loved. #strong   #greatquotesÃ¢Â€Â¦ '),
(666, '258', '0', ' @user @user on dallas shooting "the video you''re about to see is disturbing, so viewer discretion" then they play it in a loop oveÃ¢Â€Â¦'),
(667, '259', '0', '#itako#alone#it''s fine.  a little. '),
(668, '260', '0', 'sunshine &amp; stickers kind of saturday Ã°ÂŸÂ‘Â¸Ã°ÂŸÂÂ½  #letthembelittle #childhoodunplugged   '),
(669, '261', '0', 'had a wonderful day today Ã¢Â˜Â€Ã¯Â¸Â #calm #sunny   #chubbygirl #glasses #finnishgirl #finn '),
(670, '262', '0', 'buka bersama tma family...   #yuhuuuuu #tmaÃ¢Â€Â¦ (w/ risha, meylucky, &amp; 3 others at mayfair townhouse) [pic] Ã¢Â€Â” '),
(671, '263', '0', 'he loves you more than you know.Ã°ÂŸÂ˜ÂŠÃ°ÂŸÂ’Â– #nationalbestfriendsday #true  '),
(672, '264', '1', '@user this man ran for governor of ny, the state with the biggest african-american population    #Ã¢Â€Â¦'),
(673, '265', '1', '#stereotyping #prejudice  offer no #hope or solutions but create the same old repetitive #hate #conflictÃ¢Â€Â¦ '),
(674, '266', '0', 'who can get the pussy quicker these days   Ã°ÂŸÂ˜Â”'),
(675, '267', '0', 'i''ll probably be 30 by the time @user comes back home   #ugh'),
(676, '268', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(677, '269', '0', ' @user anyone playing voez? kinda in love with this game Ã°ÂŸÂ˜Â˜Ã°ÂŸÂ˜Â˜Ã°ÂŸÂ˜Â˜ #game   #gaming #girlgamer #voez '),
(678, '270', '1', 'how many#pols passed by how many times and said nothing?   #bluelivesmatter #draintheswamp  #ferguson  '),
(679, '271', '0', 'sequoia is   about the #weekend! '),
(680, '272', '0', 'some bitches care more about their eyebrows then how much $$$ they makin at the end of the week  '),
(681, '273', '0', 'bham is pride paradeready#beyou# #ofbham   @user @user @user '),
(682, '274', '0', '  #fathersday to all the guys who play dad out there we #love you Ã°ÂŸÂ’Â• '),
(683, '275', '0', '#Ã¦ÂœÂ´Ã¥Â®ÂÃ¥Â‰Â‘0616Ã§Â”ÂŸÃ¦Â—Â¥Ã¥Â¿Â«Ã¤Â¹Â  bihday to my bogummy!!!love you forever!hope you happy everyday!good night!Ã°ÂŸÂ’Â•@user '),
(684, '276', '0', 'wishing all our clients had baby goats to cuddle!   '),
(685, '277', '0', '  #positivevibes #fresh love you guys. get some!!! @ concord mills mall '),
(686, '278', '0', 'the #conjuring2 get ready to be scared! tonight it''s on! #readyornot #truestory   '),
(687, '279', '0', 'Ã¢Â€Âœtoday is the day to make the change. eliminate negativity and choose to live a positive lifestyle instead.Ã¢Â€Â   '),
(688, '280', '0', ' @user aaahh! nabilah looks so   Ã°ÂŸÂ˜Â   arigatou jkt48! have a very happy daaay Ã¢Â˜ÂºÃ¯Â¸Â #iwearbanana  '),
(689, '281', '0', 'last day at work tomorrow for me- self employed from monday #scared   #redditchbizhour'),
(690, '282', '0', '@user im half boy half man.... so im dumb too??   Ã°ÂŸÂ˜Â¢Ã°ÂŸÂ˜Â‚'),
(691, '283', '0', 'my happy little boy! #smiles   #corbinrayp '),
(692, '284', '0', 'never been more appropriate: i have zero idea of what i''m feeling right now #scared   #missyou #whatwasthat '),
(693, '285', '0', ' @user have a magnificent monday! #mondaymorning #mondaymotivation #monday   #indraloka '),
(694, '286', '0', 'i just dont understand y these designers print animals on fabric, just bought @user muzlin 5b #sanasafinaz   #noexchangepolicy'),
(695, '287', '0', 'maybe 4 happy hour you can get a "  #ending" Ã³Â¾Â®Â—Ã³Â¾ÂŒÂµÃ³Â¾Â­Â» '),
(696, '288', '0', '#littlebear and her friend #joy   #toddlerfriends #puresweetness #latergram #toddlerfun '),
(697, '289', '0', 'if you have never lost a loved one to senseless violence you don''t get a fucking opinion on the 2nd amendment   '),
(698, '290', '0', 'where is the world heading? you could lose your life just for leaving your home. #orlando  '),
(699, '291', '0', 'i heard him say that, he was trying to lock the shooter in,  but kept other patrons from getting out!    '),
(700, '292', '0', 'good mood flight with @user off to munich for @user interviews!   #pharrell '),
(701, '293', '0', 'first presentation by @user in the netherlands by @user   '),
(702, '294', '0', 'u made us proud i hv been reading ur words &amp;  assured it will b a assoment of petite emotions wish u the best. '),
(703, '295', '0', 'happiness vs joy. happiness is temporary and leaves u hu. joy last forever and never leaves. #real #tru   '),
(704, '296', '0', 'twinklatinboys - na: #slut #snapshot #hot #nasty #naughty #sexy #horny #shy #porn #nude   #kinky #xxx #y... '),
(705, '297', '0', ' @user it is not   people who are thankful. it is thankful people who are happy.  #thankfulthursday '),
(706, '298', '0', 'i am creative. #i_am #positive #affirmation     '),
(707, '299', '0', 'i have held back tears. i have cried happy tears &amp; finally we leave a week tomorrow!!! @user @user #canadianravers  '),
(708, '300', '0', 'bihday pressie from my mummy and my granny #michaelkors #luckygirl   #bihday #liverpool '),
(709, '301', '0', ' @user stuck in athens instead of santorini because @user said it was to windy to land! shocking service on every level since!Ã¢Â€Â¦'),
(710, '302', '0', ' @user these happy folks had the very first #freakshake at the launch. #freaks   #yum #dalston @user '),
(711, '303', '0', 'what a "huge" crowd for trump. '),
(712, '304', '0', 'i am thankful for saturdays. #thankful #positive     '),
(713, '305', '0', 'good god, why?!   Ã°ÂŸÂ˜Â³ '),
(714, '306', '0', ' @user enjoying these delicious melons! #vegan #organic #fresh #fruit #organic #healthy #healthyliving   #life '),
(715, '307', '0', 'first months, then weeks, now it''s only days till the beginning of the end of @user i am both   and #sad at the same time.Ã°ÂŸÂ˜Â€Ã°ÂŸÂ˜Â¢'),
(716, '308', '0', 'it''s a firework!! weeheeeee~ Ã°ÂŸÂŽÂ‡Ã°ÂŸÂŽÂ‡Ã°ÂŸÂŽÂ‡Ã°ÂŸÂ’ÂƒÃ°ÂŸÂÂ»Ã°ÂŸÂ’ÂƒÃ°ÂŸÂÂ»Ã°ÂŸÂ’ÂƒÃ°ÂŸÂÂ»Ã°ÂŸÂ˜ÂÃ°ÂŸÂ˜ÂÃ°ÂŸÂ˜Â  Ã¢Â€Â¦ '),
(717, '309', '0', '#blackpool   attack bull game 3d: do you really think that his head was empty around the city. each side is '),
(718, '310', '0', '  #fathersday to all our the amazing fathers out there today. '),
(719, '311', '0', 'i just want to be  . is that too much to ask for? Ã°ÂŸÂ™Â„'),
(720, '312', '0', '@user ready and waiting! #newblood16   '),
(721, '313', '0', 'i''m sad. my aunt passed away. she was 96.   #funeral'),
(722, '314', '1', '7 horribly  ads from #2016 that made us cringe '),
(723, '315', '0', 'wouldn''t mind robson-kanu at s6. decent player. available on a free transfer too  '),
(724, '316', '0', ' @user come on @user ...you can do better than this. please put yourself in @user ''s shoes. unnecessary stress hÃ¢Â€Â¦'),
(725, '317', '0', 'stalk me. watch me. i''m just a peon. poor. disabled. kill me.this #usa is not the usa i used 2b proud of &amp; the universe doesn''t care.  .'),
(726, '318', '0', '#stephcurry''s outburst begs the question: can christians get  ? #nbafinals '),
(727, '319', '0', 'i''m so   and #grateful now that - #affirmations '),
(728, '320', '0', '8 more weeks to go then im san antonio bound to see @user  i cant wait to see my little brother! #missyou   #mybrotherskeeper'),
(729, '321', '0', 'listen up &gt;&gt;&gt;&gt;&gt;&gt;&gt; '),
(730, '322', '1', '@user "the dying of the light"  village green/townÃ‚Â²  #antisemitism #hocoschools #columbiamd #hocomd'),
(731, '323', '0', 'hahaha.. this is me last #friday   &amp; #weird '),
(732, '324', '0', 'hey, i noticed that u are a training lover, so i ask u to check my free app, it''s known as "my training" on apple '),
(733, '325', '0', 'sexy as fuck #directioner   #niall #nialhoranfacts #niallerwins #hot #justindrewbieber #justindb #believetou... '),
(734, '326', '0', ' @user   #father''sday! say "i love you" to your dad right now! #sanya #whererefreshingbegins '),
(735, '327', '0', 'guess who back, back again! #lifeaftersurgery Ã°ÂŸÂ‘ÂÃ°ÂŸÂÂ¼#dog #dogslife #labrador #labradorretriever #lifeofsam   '),
(736, '328', '0', 'hey superspoilt, you may want to check  for latest updates on #glastofest Ã°ÂŸÂ”Â¥_ '),
(737, '329', '0', '@user @user @user @user @user    bihday sid... god bless you.. hav a successful career'),
(738, '330', '0', 'nba finals = ambivalent , love steph and thompson, kyrie stinking it up, green is an class a doosh, lebron won''t talk to guillermo  '),
(739, '331', '0', 'check out my production team''s web-series episode that was edited by yours truly.   #mep #webseries '),
(740, '332', '0', '#model   i love u take with u all the time in urÃ°ÂŸÂ“Â±!!! Ã°ÂŸÂ˜Â™Ã°ÂŸÂ˜ÂŽÃ°ÂŸÂ‘Â„Ã°ÂŸÂ‘Â…Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦Ã°ÂŸÂ’Â¦  '),
(741, '333', '1', '@user you never answered me about your statement on the #nazi''s over #hatred,  &amp; #bigotry being found wÃ¢Â€Â¦ '),
(742, '334', '0', '  #juneteenth #independenceday #food4thought #rich #ancestral #heritage @ independence hall '),
(743, '335', '0', '#river   gorilla simulator: you need to do to adapt to the environment. the need to tear the city. material '),
(744, '336', '0', 'watching the @user leadership embrace &amp; kiss donald''s ass is #pathetic &amp;  . this is now the @user pay. a pay of racism &amp; hate. #ripgop'),
(745, '337', '0', 'i love how i am so mature for my ageÃ°ÂŸÂ˜Â‡  Ã°ÂŸÂ¤Â‘Ã°ÂŸÂ˜Â…'),
(746, '338', '0', 'aww yeah it''s all good bing bong bing bong   '),
(747, '339', '0', ' @user it''s such a good feeling when this happens. #smile   #instalike #instamood #instapic '),
(748, '340', '0', 'check it  #graffiti  #dublin #ireland #music #vimeo #movie #video #europe #people #flow #fun   #rafalwojcicki'),
(749, '341', '0', '#oitnbseason4 in 2 days!!! aaahhhhh  '),
(750, '342', '0', ' @user it''s @user #iampossible today! #extraordinaryladyspeaks #starawards   @user @user htÃ¢Â€Â¦'),
(751, '343', '0', 'sun is out! happy thursday! Ã¢Â˜Â€Ã¯Â¸ÂÃ°ÂŸÂŒÂ»Ã¢Â˜Â€Ã¯Â¸ÂÃ°ÂŸÂŒÂ»Ã¢Â˜Â€Ã¯Â¸Â #breakfast in the #sun   #day #sunnyday #sun #blueÃ¢Â€Â¦ '),
(752, '344', '0', 'packing sneak-peek!   to be working with the #yellowjackets of the #neshl for 2016! @user #bhl #hockey '),
(753, '345', '0', 'tony sunday! #tonyawards  '),
(754, '346', '0', 'happy father''s day 2016 to my dad and all of the dad''s out there!!  #fathers#day  #2016 '),
(755, '347', '0', ' @user theverdict is in; i''m an idiot #country #rock #bluegrass #beatles #love #pop   #romance  '),
(756, '348', '0', ' Ã¢Â†Â #projects of the week, june 13, 2016   #blog #silver #gold #forex'),
(757, '349', '0', ' @user #300dayshappy @user #dayseventyseven #day77  #happiness #love#lifequotes #lifeÃ¢Â€Â¦ '),
(758, '350', '0', 'my little brother has a higher tolerance of alcohol than me!   lol'),
(759, '351', '0', 'wishing this guy a   #bihday !!  blaze says @user is the spitting image of aÃ¢Â€Â¦ '),
(760, '352', '0', 'i am thankful for hiking trails. #thankful #positive     '),
(761, '353', '0', 'all pay meeting to tackle a movie which uncovers a problem we don''t want the world to know.  '),
(762, '354', '0', ' @user chill relaxing piano music to keep your pet #quiet and   during #july4th #fireworks  Ã¢Â€Â¦ '),
(763, '355', '1', 'you might be a libtard if... #libtard  #sjw #liberal #politics '),
(764, '356', '0', '@user nothing says ''merica, like that @user tweet.   '),
(765, '357', '0', 'always be   #paratyphoid '),
(766, '358', '0', ' @user "today i lost a #thevoice sister senselessly - we sing for love not death people." #stopthehate #ripchristina   '),
(767, '359', '0', 'some guys too concerned about their twitter "brand" to be honest with their followers.  '),
(768, '360', '0', 'i hate like 90% of my family.... i was really born into a big ass toxic bomb! mother fuckers don''t give a fuck about me cuz i got money  '),
(769, '361', '0', 'get #up get   get  #enjoy #music #today #free #apps #free #music '),
(770, '362', '0', 'best #lawofattraction #resources for #healing!    #altwaystoheal #healthy is  ! #idwp ! '),
(771, '363', '1', 'trump ny co-chair makes racist remarks about michelle obama  #p2 #p21 #fyi  #tcot'),
(772, '364', '0', 'are you a @user fan? this should make you      '),
(773, '365', '0', '#music as #therapy as a tool for #healing!   #altwaystoheal #healthy is  !! '),
(774, '366', '0', 'how can food make a family fight mxm  '),
(775, '367', '0', 'delicious sangria#salud#cheers #smile @ the pub pembroke '),
(776, '368', '0', 'have a fabulous weekend beautiful souls #nofilter   Ã°ÂŸÂ˜Â˜ '),
(777, '369', '0', 'when i''m feeling #overwhelmed and   i look down and see a million reasons to be #happy again. i love you craig!! '),
(778, '370', '0', 'back to the day job for shane lowry!   '),
(779, '371', '0', '  hour right now! 2-4-1 bottles &amp; drinks from 4-7pm @user 42 w. chippewa st. #buffalo '),
(780, '372', '0', 'anas + nimra + farishta + mawia + khushal  960 + 952 + 503 + 484 + 435 = 3334   the number of marks obtained is too damn high   :p'),
(781, '373', '0', 'my monday is so empty without the bachelorette Ã°ÂŸÂ˜Â©Ã°ÂŸÂŒÂ¹Ã°ÂŸÂÂ· #thebachelorette   #empty #nowine'),
(782, '374', '0', ' suppoing family, god, chivalry, tradition, and pride in one''s heritage is now controversial.  '),
(783, '375', '1', '@user the pic says otherwise for young girls confined in that kitchen. you are void of meaning, beyond cheap publicity #topoli '),
(784, '376', '0', '#good night!  ??  #faith ever #vaitacacommafiasdv'),
(785, '377', '0', 'do what you love to do simply for the love of it. #love #success   #work #businessÃ¢Â€Â¦ '),
(786, '378', '0', 'lunchtime with mom. #torrington #lunch #afterschool #instadaily #yummy   #withmom @user '),
(787, '379', '0', ' @user my sister ain''t even know i was watching her argue with the nigga Ã°ÂŸÂ˜Â‚Ã°ÂŸÂ˜Â‚Ã°ÂŸÂ˜Â‚ was waiting for him too say the wrong shit  '),
(788, '380', '0', 'ride out, ride back ...done! #cycling #sunset   #ride #bikes #fitness #cardio #deseÃ¢Â€Â¦ '),
(789, '381', '0', 'well i was gonna go see adtr with bae...  '),
(790, '382', '0', ' @user #tagsforlikes #me #food#friends#summer#swag#quotes #love#god#girl   #weekend #polaroid #followme #teen #win#job '),
(791, '383', '0', '#payintheusa   polar bear climb racing: angry polar bear climb racing, the polar bear living in cold place '),
(792, '384', '0', '11:11   healthy fam'),
(793, '385', '0', 'dream palace, can we move in already? #stellar   #girls #dreamy #goodmorning daysÃ¢Â€Â¦ '),
(794, '386', '0', 'im waiting for a follow since the x factor   '),
(795, '387', '0', '@user but it''s your fault you have to use it to pointscore. '),
(796, '388', '0', ' @user this week staed off kinda lame but it''s getting better! #yay   #wednesdaywisdom'),
(797, '389', '0', ' @user #forever @user   young man he luks too hot wen he is in temper i''ll b alwys ur fan till my lst breathÃ¢Â˜Âº hÃ¢Â€Â¦'),
(798, '390', '0', 'don''t worry #bee   '),
(799, '391', '0', 'double tap and follow me #beautiful #smooth #lifestyle #skin #instasize  #f4f #fashion  Ã¢Â€Â¦ '),
(800, '392', '0', '#lawofattraction for #healing #loa   be #healthy   #well #idwp ! '),
(801, '393', '0', ' Ã¢Â†Â #oil turns flat to $50.40, eyeing eia inventory data for fuher direction   #blog #silver #gold #forex'),
(802, '394', '0', 'training in new employee''s is fun. #newblood  '),
(803, '395', '0', '  #first #bihday to our #puppy #eloise #sweetbabins #dog #growingup #cute #bihdaygirl @user '),
(804, '396', '0', ' @user   - 5,000 pigs burn alive in saskatchewan barn fire (video) '),
(805, '397', '0', ' @user you''ll never convince me that americans have the right to bear these.   #prayfororlando #guncontrol '),
(806, '398', '0', 'with my beautiful ladies!!! is a blessing to know them !!Ã³Â¾ÂŒÂ¬Ã³Â¾ÂŒÂ¬. #smile   #lovethemÃ¢Â€Â¦  '),
(807, '399', '0', 'today baba siddique ifftar pay at mumbai. @user &amp; @user dono ayenge.   to see both again'),
(808, '400', '0', '  hands | #ombre #blue '),
(809, '401', '0', 'Due to COVID-19 our retail store and classroom in Atlanta will not be open for walk-in business or classes for the next two weeks, beginning Monday, March 16.  We will continue to process online and phone orders as normal! Thank you for your understanding! https://t.co/kw91zJ5O5i'),
(810, '402', '1', 'For corona prevention,we should stop to buy things with the cash and should use online payment methods because corona can spread through the notes. Also we should prefer online shopping from our home. It''s time to fight against COVID 19?. #govindia #IndiaFightsCorona'),
(811, '403', '0', 'All month there hasn''t been crowding in the supermarkets or restaurants, however reducing all the hours and closing the malls means everyone is now using the same entrance and dependent on a single supermarket. #manila #lockdown #covid2019 #Philippines https://t.co/HxWs9LAnF9'),
(812, '404', '0', 'Due to the Covid-19 situation, we have increased demand for all food products. _x000D__x000D_\n_x000D__x000D_The wait time may be longer for all online orders, particularly beef share and freezer packs. _x000D__x000D_\n_x000D__x000D_We thank you for your patience during this time.'),
(813, '405', '0', '#horningsea is a caring community. LetÂ’s ALL look after the less capable in our village and ensure they stay healthy. Bringing shopping to their doors, help with online shopping and self isolation if you have symptoms or been exposed to somebody who has. https://t.co/lsGrXXhjhh'),
(814, '406', '0', 'Me: I don''t need to stock up on food, I''ll just have Amazon deliver whatever I need #CoronaVirus_x000D__x000D_\n_x000D__x000D_\nAmazon: https://t.co/8YWaKFjExC'),
(815, '407', '0', 'ADARA Releases COVID-19 Resource Center for Travel Brands: Insights Help Travel Brands Stay Up-To-Date on Consumer Travel Behavior Trends https://t.co/PnA797jDKV https://t.co/dQox6uSihz'),
(816, '408', '0', 'Lines at the grocery store have been unpredictable, but is eating out a safe alternative? _x000D__x000D_\n_x000D__x000D_Find out more about whether you should be avoiding restaurants right now:  https://t.co/9idZSis5oQ_x000D__x000D_\n_x000D__x000D_#coronavirus #covid19 https://t.co/ZHbh898lf6');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
