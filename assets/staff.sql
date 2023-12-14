-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2023 at 03:40 AM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 7.2.34-43+ubuntu22.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `job_title`, `department`, `phone`, `email`, `imageUrl`) VALUES
(1, 'YB DATUK RUBIN BIN BALANG', NULL, NULL, NULL, '', ''),
(2, 'Haizar Razif Hisyam Bin Ajaz Nabijan', 'Pengurus Besar Kumpulan', 'Group General Manager ', '019881 9898', 'haizar.ajaz@sedco.com.my', 'https://ucarecdn.com/4068c8d1-2ada-4e8e-aa0a-a616280f69eb/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(3, 'Haji Azrul Bin Haji Ahmad', 'Timbalan Pengurus Besar Kumpulan', 'Group Deputy General Manager', '013875 5755', 'azrul.ahmad@sedco.com.my', 'https://ucarecdn.com/ee3e769b-c6de-4779-8e22-26432ae81333/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(4, 'Datin Sarinah Kamarudin', 'Pengurus Pemantauan Perniagaan Kumpulan', 'Group Business Monitoring  Manager', '0198617227', 'sarinah.kamaruddin@sedco.com.my', 'https://ucarecdn.com/554a06ae-2ecf-4f3e-908b-68d921f37648/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(5, 'Justina Engihon', 'Pengurus Pengurusan Hartanah Kumpulan', 'Group Poperty Management Manager\n', NULL, '', 'https://ucarecdn.com/49df05c8-8000-491d-877e-800babe22cc8/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(6, 'Joseph Cyril Moffat', 'Pengurus Audit Dalaman Kumpulan', 'Group Internal Audit Manager \n', NULL, '', 'https://ucarecdn.com/8cc3b52f-9a6a-4d46-b454-cb35a4da6748/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(7, 'Arnahal Yusof ', 'Ketua Pegawai Integriti dan Governans', 'Chief Integrity and Governance Officer\n', NULL, '', 'https://ucarecdn.com/45610f06-f1f4-424f-888e-1534b31026b6/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(8, 'Yahyah Sidek', 'Pengurus Pembangunan Perniagaan Kumpulan', 'Group Business Development Manager\n', NULL, '', 'https://ucarecdn.com/c19fbd33-4858-4381-93de-8c564cd94290/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(9, 'Ramlee Dullah ', 'Ketua Pegawai Integriti dan Governans', 'Chief Integrity and Governance Officer\n', NULL, '', 'https://ucarecdn.com/aaa3fa11-e45f-4fac-a868-3ad5157c497d/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(10, 'Mohd Syafiq Alamsah ', 'Penolong Pegawai Tadbir (Integriti)', 'Assistant Administrative Officer (Integrity)', NULL, '', 'https://ucarecdn.com/0daba56d-06d7-489f-9749-39a18ffc4507/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(11, 'Dayang Rahimah Datu Kamarudin', 'Pembantu Tadbir (P/O) (Integriti)   ', 'Administrative Assistant (C/O) (Integrity)', NULL, '', 'https://ucarecdn.com/1603db06-c1ba-4b9d-adf0-8fd7cc66a1e1/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(12, 'Nor Asmah Saidin', 'Pegawai Tadbir (Undang-Undang)', 'Administrative Officer (Legal)', NULL, '', 'https://ucarecdn.com/ccdd5d0a-3dc7-4a70-a442-e4ac7fa8a873/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(13, 'Hasliana Hasim', 'Pegawai Tadbir (Undang-Undang)', 'Administrative Officer (Legal)', NULL, '', 'https://ucarecdn.com/bbc8daf9-a5ff-4d46-aa28-475b294496eb/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(14, 'Syamsuriyana Iskandar', 'Pegawai Tadbir (Kualiti)', 'Administrative Officer (Quality)', NULL, '', 'https://ucarecdn.com/8b9c0674-f039-4645-b66e-7e07214016c6/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(15, 'Aziana Binti Aziz', 'Penolong Pegawai Tadbir (Kualiti)', 'Assistant Administrative Officer (Quality)', NULL, '', 'https://ucarecdn.com/bbe1b731-e178-4747-acaf-8cbfa6ce828b/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(16, 'Nurzianty Farrahnaz Binti Ag Bakar', 'Pegawai Tadbir (Perjawatan)', 'Administrative Officer (Personnel)', NULL, '', 'https://ucarecdn.com/618a2bfa-c814-462c-85e4-ac2df1f2e496/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(17, 'Mohd Zuhairi Bin Jamiun', 'Penolong Pegawai Tadbir (Perjawatan)', 'Assistant Administrative Officer (Personnel)', NULL, '', 'https://ucarecdn.com/f2222296-d2b2-4095-ab1e-9826fe0e9953/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(18, 'Malai Effendy Bin Malai Muhamad', 'Penolong Pegawai Tadbir (Perjawatan)', 'Assistant Administrative Officer (Personnel)', NULL, '', 'https://ucarecdn.com/8f4b4d9f-577a-4f15-b161-9c10d5c36907/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(19, 'Nur Nabilah Binti Rosmi', 'Pembantu Setiausaha Pejabat', 'Assistant Secretary', NULL, '', 'https://ucarecdn.com/47dea310-d1cf-47ff-8a23-d3f87bdf7ab9/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(20, 'Fitrinah Bahrin', 'Pegawai Tadbir (Perhubungan Awam)', 'Administrative Officer (Public Relation)', NULL, '', 'https://ucarecdn.com/10e97831-0d3d-4baa-8b7c-5b94152aab00/-/crop/face/300px300p/'),
(21, 'Kamariah Abidin', 'Pegawai Tadbir (Perhubungan Awam)', 'Administrative Officer (Public Relation)', NULL, '', 'https://ucarecdn.com/66641c25-f9f1-4856-ad61-08eef12e518c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(22, 'Nooren Aman', 'Penolong Akauntan (Perhubungan Awam)', 'Assistant Accountant (Public Relation)', NULL, '', 'https://ucarecdn.com/8ee36bb2-260d-46dc-881c-fd7e9d0b45aa/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(23, 'Siti Sahjaddah Binti Haji Lagan', 'Pembantu Tadbir (Perkeranian & Operasi)', 'Telephone Operator ', NULL, '', 'https://ucarecdn.com/385806dc-a14b-40d0-9278-fec10e0fef9e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(24, 'Nur Darwisyah Binti Ahmad', 'Pembantu Tadbir (Perkeranian & Operasi)', 'Telephone Operator ', NULL, '', 'https://ucarecdn.com/e193c65b-a369-41d9-91f1-2850787b6443/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(25, 'Zubaidah Saricol', 'Pegawai Tadbir (Latihan)', 'Administrative Officer (Training)\n', NULL, '', 'https://ucarecdn.com/672bba71-4cf7-4840-ac86-9385dd2f5191/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(26, 'Norrimah Sulut', 'Penolong Pegawai Tadbir (Latihan)', 'Assistant Administrative Officer (Training)', NULL, '', 'https://ucarecdn.com/11c89715-d5a5-49a2-ba61-135eb59eb3d8/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(27, 'Zul Fakhriy Bin Asli', 'Pegawai Tadbir (Pentadbiran)', 'Administrative Officer (Administration)', NULL, '', 'https://ucarecdn.com/a4aed45b-6fe6-4161-b5ac-6a64bdc3db45/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(28, 'Noryatimah Noraliddin @ Amoi', 'Penolong Pegawai Tadbir (Aset)', 'Assistant Administrative Officer (Asset)\n', NULL, '', 'https://ucarecdn.com/6f266780-2f94-4a7a-ab66-b7ff0c79d36e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(29, 'Dariah Petrus', 'Pembantu Khas (GGM)', 'Personal Assistant (GGM) ', NULL, '', 'https://ucarecdn.com/9988e7c0-c93c-4108-9c05-c4362c7f804c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(30, 'Kamlah Haji Abdullah', 'Pembantu Khas (DGM)', 'Personal Assistant (DGM)', NULL, '', 'https://ucarecdn.com/9be6094e-da51-4fd5-8037-596ed6fece90/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(31, 'Laura Tommy', 'Pembantu Khas (Pengerusi)', 'Personal Assistant (Chairman)', NULL, '', 'https://ucarecdn.com/2240f385-b371-4f00-877f-ac9b1c05293f/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(32, 'Fauziah Kurais', 'Penolong Pegawai Tadbir (Rekod)', 'Assistant Administrative Officer (Record)\n', NULL, '', 'https://ucarecdn.com/57afb136-1c30-4168-adad-932c6925ff16/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(33, 'Maslinah Wata', 'Pembantu Tadbir Kanan (P/O) / Ketua Kerani', 'Senior Administrative Assistant (C/O) / Chief Clerk ', NULL, '', 'https://ucarecdn.com/71438352-15bc-442b-a904-04aebf5fbb10/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(34, 'Dk Lyia Nur Mila Mohd Nooh', 'Pembantu Tadbir (P/O) (Rekod)', 'Administrative Assistant (C/O) (Record) ', NULL, '', 'https://ucarecdn.com/b067e411-36fe-4c49-8e5d-6eb7f7b566d0/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(35, 'Ak Mohd Azreel Abd Wahap', 'Pembantu Tadbir (P/O)/ (Aset)', 'Administrative Assistant (C/O) (Asset)', NULL, '', 'https://ucarecdn.com/401df366-d31d-48cf-8186-a9964fed81bd/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(36, 'Mohd Azree Shazni Aznan', 'Pembantu Tadbir (P/O)/ (Pentadbiran Pejabat)', 'Administrative Assistant (C/O) (Office Administration)', NULL, '', 'https://ucarecdn.com/0aa1a7ba-5bbd-4e2d-a023-14b1de888d05/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(37, 'Mohd Muizzuddin Abdul Manan', 'Pembantu Tadbir (P/O) (Pentadbiran Pejabat)', 'Administrative Assistant (C/O) (Office Administration)', NULL, '', 'https://ucarecdn.com/7a82c4ef-735a-4cb0-8367-48bef073682e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(38, 'Jaundi Hj Jali', 'Pemandu Kenderaan', 'Driver(Admin)', NULL, '', 'https://ucarecdn.com/f96c851c-f4d1-4a04-9702-57d3486e454d/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(39, 'Md Shahrom Md Yaakub', 'Pemandu Kenderaan', 'Driver(Admin)', NULL, '', 'https://ucarecdn.com/7100c122-50ae-4c1b-b695-c158a380ab17/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(40, 'Mohd Said Mohd Salleh', 'Pemandu Kenderaan', 'Driver(Admin)', NULL, '', 'https://ucarecdn.com/4a5300cf-f9f4-4730-91e6-4e1f21871a19/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(41, 'Rajon Masumpih @ Mohd Azri Abdullah', 'Pemandu Kenderaan', 'Driver(Admin)', NULL, '', 'https://ucarecdn.com/e4538212-dde3-4cd8-9873-23aa1f4342ac/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(42, 'Ani Abdullah Bandong', 'Pembantu Operasi', 'Operation Assistant', NULL, '', 'https://ucarecdn.com/a06aa143-7a52-4f27-89ab-3cde2d37a2ee/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(43, 'Chaya Bulan Osman', 'Pembantu Awam', 'General Worker 1', NULL, '', 'https://ucarecdn.com/f30e68a2-551e-41ac-9696-4c85881e8b2e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(44, 'Momin Ahamad @ Ahmad', 'Pemandu Kenderaan', 'Driver (Admin)', NULL, '', 'https://ucarecdn.com/5db891df-03f0-4e0b-96b9-cf6d17120f23/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(45, 'Mohd Fadzrul Bin Jamil', 'Pembantu Operasi', 'Operation Assistant', NULL, '', 'https://ucarecdn.com/457f4a4f-3af6-407c-9c78-81e9caf063b9/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(46, 'S Roszariah Awang', 'Pengurus (Pembangunan Usahawan)/', 'Manager (Entrepreneurship Development)', NULL, '', 'https://ucarecdn.com/31e9b478-b21c-43fe-9687-2c9411ddfb50/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(47, 'Ag Zulfadli AB Manan', 'Penolong Pegawai Tadbir (Sosio-ekonomi)', 'Assistant Administrative Officer (Socio-economic)', NULL, '', 'https://ucarecdn.com/380c12f7-5cc1-4f1e-adca-409819997f8a/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(48, 'Sheldon Rafflis Senagang', 'Penolong Pegawai Tadbir (Pembangunan Usahawan)', 'Assistant Administrative Officer (Entrepreneurship Development)', NULL, '', 'https://ucarecdn.com/e999a18e-99e6-4c4d-8cb8-b92bcf529cf5/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(49, 'Mohammad Taufik Moktar', 'Pembantu Tadbir Kanan (P/O) (Pembangunan Usahawan)/', 'Senior Administrative Assistant (C/O) (Pembangunan Usahawan)', NULL, '', 'https://ucarecdn.com/320f8b23-d96c-4fa0-b6b2-383bb08abfae/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(50, 'Jovinia Edward', 'Pembantu Setiausaha Pejabat', 'Assistant Secretary ', NULL, '', 'https://ucarecdn.com/cafd7cf0-6942-4907-abc5-761e6a9ec6ee/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(51, 'Ellidiana Zailani', 'Pengurus (Perbendaharaan)', 'Manager (Treasury)\n', NULL, '', 'https://ucarecdn.com/db90185c-03a0-4a92-8584-1b03377be478/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(52, 'Azlina Abd Rashid', 'Akauntan (Akaun)', 'Administrative Officer (Credit Control)', NULL, '', 'https://ucarecdn.com/dded3a44-80d9-4fbc-98e3-ca19c37e6a47/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(53, 'Marzuki Saiman', 'Pegawai Tadbir (Kawalan Kredit)', 'Administrative Officer (Credit Control)', NULL, '', 'https://ucarecdn.com/ee9dcce3-4942-42aa-80e0-60e99dcb171e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(54, 'Datin Susana @ Suzanna Galawat', 'Penolong Pegawai Tadbir (Perbendaharaan)', 'Penolong Pegawai Tadbir (Perbendaharaan)/ \nAssistant Administrative Officer (Treasury)\n', NULL, '', 'https://ucarecdn.com/bea99b72-bd57-4a45-ab31-f84e43a44490/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(55, 'Mohd Faizal Bin Abu Bakar', 'Penolong Akauntan (Akaun)', 'Assistant Accountant (Account)', NULL, '', 'https://ucarecdn.com/2aeb403b-19ba-40b2-acff-53e98fb2986e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(56, 'Hasnidah Mohd Daud', 'Penolong Akauntan Kanan (Perbendaharaan', 'Senior Assistant Accountant (Treasury)\n', NULL, '', 'https://ucarecdn.com/4baa35f2-4fd3-4978-acda-15ad210a643c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(57, 'Mohd Fazrie Jamrie', 'Penolong Akauntan (Kawalan Kredit)', 'Assistant Accountant (Credit Control)', NULL, '', 'https://ucarecdn.com/55e87f55-4796-4dbf-9366-02aa12c38d08/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(58, 'Erma Jim', 'Penolong Akauntan (Akaun)', 'Assistant Accountant (Account)', NULL, '', 'https://ucarecdn.com/2010be48-5769-418d-aac6-cfe7f2a7b217/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(59, 'Izzati Hazwani Binti Jamaludin', 'Penolong Pegawai Tadbir (Perbendaharaan)', 'Assistant Administrative Officer (Treasury)', NULL, '', 'https://ucarecdn.com/511c2737-260a-47d8-84a4-a39a67a516df/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(60, 'Dg Hafizah Ag Pane', 'Pembantu Setiausaha Pejabat', 'Assistant Secretary ', NULL, '', 'https://ucarecdn.com/ecdf036d-6510-4550-bb12-1598089772bc/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(61, 'Ken Mazalan Bin Khamis', 'Pegawai Tadbir', 'Administrative Officer ', NULL, '', 'https://ucarecdn.com/7d06e992-5c13-4b0a-809d-195f3d073c63/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(62, 'Fatimah Binti Mohd Kassim', 'Penolong Pegawai Pemantauan Perniagaan', 'Assistant Business Monitoring Officer', NULL, '', 'https://ucarecdn.com/e3df5463-576c-49fb-9ef9-12b51a7fa4bf/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(63, 'Regina Awang', 'Penolong Akauntan (Pemantauan Perniagaan', 'Assistant Accountant (Business Monitoring)\n', NULL, '', 'https://ucarecdn.com/89277cd0-dc90-4d93-9b93-72d0b67b76b6/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(64, 'Shanty Taimin', 'Penolong Pegawai Pemantauan Perniagaan', 'Assistant Business Monitoring Officer', NULL, '', 'https://ucarecdn.com/1926d0c4-9219-4535-9bb4-ca488e491bd7/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(65, 'Nur Redzuan Bin Yahya', 'Penolong Pegawai Pemantauan Perniagaan', 'Assistant Business Monitoring Officer', NULL, '', 'https://ucarecdn.com/2937fc8d-9967-486d-8404-98c997fcfe73/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(66, 'Dvlin Jubili', 'Pembantu Setiausaha Pejabat', 'Assistant Secretary ', NULL, '', 'https://ucarecdn.com/c2f42d96-0868-4d19-9bd3-d4def55c6c6f/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(67, 'Christine Fiona M Ponsoi', 'Pengurus (Pembangunan Perniagaan)', 'Manager (Business Development)', NULL, '', 'https://ucarecdn.com/d26f2af1-b400-47fd-8010-54689571ac16/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(68, 'Mohd Shofian @ Jalaludin Bin Mohamad', 'Pegawai Projek (Pembangunan Perniagaan)', 'Project Officer (Business Development)', NULL, '', 'https://ucarecdn.com/c7795ec6-55ac-4cae-9507-f3bfcc912c79/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(69, 'Annef Osyairi Bin Osman', 'Pegawai Perancangan Strategik/', 'Strategic Planning Officer', NULL, '', 'https://ucarecdn.com/43a667c1-a8f1-475e-84fc-be5c77a1b688/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(70, 'Azreen M Baham', 'Pegawai Tadbir (Pembangunan Perniagaan)', 'Administrative Officer (Business Development)', NULL, '', 'https://ucarecdn.com/7228ceec-95b9-4cf0-92f2-ec9feb1f7bd9/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(71, 'Norhafizah Abd Samat', 'Penolong Pegawai Tadbir Kanan (Pembangunan Perniagaan)', 'Senior Assistant Administrative Officer (Business Development)\n', NULL, '', 'https://ucarecdn.com/94683418-ede1-43b0-9900-9b7107b47988/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(72, 'Raizal Pinjaman', 'Penolong Pegawai Tadbir (Pembangunan Perniagaan)', 'Assistant Administrative Officer (Business Development)', NULL, '', 'https://ucarecdn.com/82e2b327-d35f-4c32-85c4-f5f881a96b4c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(73, 'Azilah Binti Jumali', 'Penolong Pegawai Tadbir (Pembangunan Perniagaan)', 'Assistant Administrative Officer (Business Development)', NULL, '', 'https://ucarecdn.com/4a3924ab-af84-4a00-8df8-bbb602bcb6ee/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(74, 'Vera Casandra Denis', 'Pembantu Setiausaha Pejabat ', 'Assistant Secretary ', NULL, '', 'https://ucarecdn.com/5f16f647-14b8-449d-a638-ad2514f7877e/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(75, 'Fennie@ Sylvia Sylvester', 'Pengurus (Hartanah)', 'Manager (Property)', NULL, '', 'https://ucarecdn.com/8c7547c0-4a9d-418f-a197-167eff1e992b/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(76, 'Helmy Sharizan Bin Ayub', 'Pengurus (Pentadbiran Tanah)', 'Manager (Land Administration)', NULL, '', 'https://ucarecdn.com/56cf1b6e-7d85-4038-8dac-30021352d833/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(77, 'Intan Mudhrika Ayu Binti Jihek', 'Pegawai Projek (Hartanah)', 'Project Officer (Property)', NULL, '', 'https://ucarecdn.com/850341e0-7b0e-450b-898b-64f4e6c190d8/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(78, 'Thomas Acquinus Charles', 'Penolong Pegawai Tadbir (Pentadbiran Tanah)', 'Assistant Administrative Officer (Land Administration)', NULL, '', 'https://ucarecdn.com/e4eeb2a7-50a9-4a68-8388-10635e15b839/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(79, 'Brittany Nicole Lawrence Florence', 'Penolong Pegawai Tadbir (Hartanah)', 'Assistant Administrative Officer (Property)', NULL, '', 'https://ucarecdn.com/792cfd9b-fba8-4e2b-aa05-996d67343a9c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(80, 'Zumayani Simin', 'Pembantu Tadbir Kanan (P/O) (Hartanah)', 'Senior Administrative Assistant (C/O)  (Property)', NULL, '', 'https://ucarecdn.com/6509cd0d-da1f-4498-b6ab-58b191252bcd/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(81, 'Ariffin Bin Abd Kata', 'Pembantu Tadbir (P/O) (Pentadbiran Tanah)', 'Administrative Assistant (C/O)  (Land Administration)', NULL, '', 'https://ucarecdn.com/f180f21b-8f5a-42e6-8317-a34e4bae0b31/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(82, 'Ag Mohd Zain Bin Ag Abd Razak', 'Pembantu Operasi (Pentadbiran Tanah)', 'Operation Assistant (Land Administration)', NULL, '', 'https://ucarecdn.com/fc517ad3-8dc0-4902-9e49-95d0c8b22615/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(83, 'Nurul Ashrikin Noorhisyam', 'Pembantu Setiausaha Pejabat', 'Assistant Secretary \n', NULL, '', 'https://ucarecdn.com/d7d50c8e-55e8-417d-b383-bbf446cdd4b4/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(84, 'Brenda Dinah Loijin', 'Pengurus (Audit Dalaman)', 'Manager (Internal Audit)\n', NULL, '', 'https://ucarecdn.com/e1fc85e7-78c4-4f74-bcaa-205efb959ada/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(85, 'Esther Grace Nicholas Mojugit', 'Penolong Pegawai Tadbir (Audit Dalaman)', 'Assistant Administrative Officer (Internal Audit)', NULL, '', 'https://ucarecdn.com/38923bef-bc84-4e66-8a6d-7cafe34ed772/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(86, 'Sherilina Jerry', 'Penolong Juruaudit (Audit Dalaman)', 'Auditor Assistant (Internal Audit)', NULL, '', 'https://ucarecdn.com/a1b3a483-71d4-4917-8cda-42b2252ab1d7/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(87, 'Andy Fedilis Lojingki', 'Penolong Pegawai Tadbir (Audit Dalaman)', 'Assistant Administrative Officer (Internal Audit)', NULL, '', 'https://ucarecdn.com/6797aacc-4090-4279-8e54-48451f21764b/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(88, 'Hasnahwatie Binti Abdul', 'Pembantu Setiausaha Pejabat', 'Assistant Secretary \n', NULL, '', 'https://ucarecdn.com/07ffc458-1415-4f21-8754-1140cedec64a/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(89, 'Hajah Jamilah Yunus', 'Pegawai Tadbir (Kaunseling)', 'Administrative Officer (Counselling)', NULL, '', 'https://ucarecdn.com/e928b421-728f-47a6-99f2-e0251dbdb01c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(90, 'Suhaimi Untong', 'Timbalan Pengurus Besar (PRSB)', 'Deputy General Manager (PRSB)', NULL, '', ''),
(91, 'Mohd Yaseer Bin Kasim', 'Penolong Pegawai Tadbir', 'Assistant Administrative Officer', NULL, '', 'https://ucarecdn.com/ f2593cff-1765-44ff-8e51-7491d8759b55/ -/scale_crop/300x300/ -/format/auto/ -/quality/smart/'),
(92, 'Muhammad Raffiee Muhammad Hussain', 'Pembantu Akauntan', 'Deputy General Manager (PRSB)', NULL, '', 'https://ucarecdn.com/2ca7f166-7355-4b5c-b77b-6695a88c17b7/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(93, 'Mohd Arfie Izzuan Bin Abd Wahab', 'Pegawai Teknologi Maklumat', 'Information Technology Officer', '019371 1062', 'arfie.izzuan@sedco.com.my', 'https://ucarecdn.com/eae7ec9d-7359-4ae2-a2ae-448f861f16ac/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(94, 'Adrian @ Suani Alang ', 'Pembantu Tadbir Kanan (P/O)', 'Senior Administrative Assistant (C/O) (MIS)', NULL, 'adrian.alang@sedco.com.my', 'https://ucarecdn.com/c85319a4-0489-45fd-8f25-71bbb5931662/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(95, 'Khairunnisa Harith Yahya', 'Penolong Pegawai Teknologi Maklumat', 'Assistant Information Technology Officer\n', '0168287659', 'khairunnisa.harith@sedco.com.my', 'https://ucarecdn.com/6af55e35-e10d-43a9-a3c6-85b2a839d56c/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(96, 'PG Mohd Azhan Fikri ', 'Pembantu Tadbir (P/O) (MIS)', 'Senior Administrative Assistant (C/O) (MIS)', '60165399192', 'pg.azhan@sedco.com.my', 'https://ucarecdn.com/3a4974f5-139b-41ee-8b42-ac0cd877b111/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(97, 'Abd Rahim Mohd Zain', 'Pengurus Pembangunan Usahawan Kumpulan\r\n', 'Group Entrepreneur Development Manager', '0195300558', 'rahim.zain@sedco.com.my', 'https://ucarecdn.com/90b41253-f1de-4443-b538-ef85f42fd051/-/scale_crop/300x300/-/format/auto/-/quality/smart/'),
(98, 'Nora Wahab', 'Pembantu Awam', 'General Worker 2', NULL, '', 'https://ucarecdn.com/102d058c-a47b-4929-bd4e-20c965bb550b/-/scale_crop/300x300/-/format/auto/-/quality/smart/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
