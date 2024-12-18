-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_racing
DROP DATABASE IF EXISTS `db_racing`;
CREATE DATABASE IF NOT EXISTS `db_racing` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_racing`;

-- Dumping structure for table db_racing.hasil_race
DROP TABLE IF EXISTS `hasil_race`;
CREATE TABLE IF NOT EXISTS `hasil_race` (
  `id_hasil` varchar(50) NOT NULL,
  `id_race` varchar(50) DEFAULT NULL,
  `id_pembalap` varchar(50) DEFAULT NULL,
  `posisi_finish` int DEFAULT NULL,
  `poin_dapat` int DEFAULT NULL,
  `catatan` text,
  PRIMARY KEY (`id_hasil`),
  KEY `id_race` (`id_race`),
  KEY `id_pembalap` (`id_pembalap`),
  CONSTRAINT `hasil_race_ibfk_1` FOREIGN KEY (`id_race`) REFERENCES `race_event` (`id_race`),
  CONSTRAINT `hasil_race_ibfk_2` FOREIGN KEY (`id_pembalap`) REFERENCES `pembalap` (`id_pembalap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_racing.hasil_race: ~0 rows (approximately)
DELETE FROM `hasil_race`;
INSERT INTO `hasil_race` (`id_hasil`, `id_race`, `id_pembalap`, `posisi_finish`, `poin_dapat`, `catatan`) VALUES
	('0616cb2f', 'F1_BHR', 'F1_VER', 10, 1, NULL),
	('171b4494', 'F1_BHR', 'F1_PER', 5, 10, NULL),
	('3d3682f5', 'F1_BHR', 'F1_ALO', 1, 25, NULL),
	('b751b59b', 'F1_BHR', 'F1_STR', 9, 2, NULL),
	('b96b06a4', 'F1_BHR', 'F1_NOR', 4, 12, NULL),
	('d4107a9e', 'F1_BHR', 'F1_LEC', 3, 15, NULL),
	('da2452b8', 'F1_BHR', 'F1_PIA', 6, 8, NULL),
	('dc83863d', 'F1_BHR', 'F1_HAM', 2, 18, NULL),
	('de0cbf99', 'F1_BHR', 'F1_SAI', 8, 4, NULL),
	('e0ddd640', 'F1_BHR', 'F1_RUS', 7, 6, NULL);

-- Dumping structure for table db_racing.pembalap
DROP TABLE IF EXISTS `pembalap`;
CREATE TABLE IF NOT EXISTS `pembalap` (
  `id_pembalap` varchar(10) NOT NULL,
  `nama_pembalap` varchar(100) NOT NULL,
  `tim` varchar(100) NOT NULL,
  `total_poin` int DEFAULT '0',
  `posisi_klasemen` int DEFAULT '0',
  `gambar_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pembalap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_racing.pembalap: ~23 rows (approximately)
DELETE FROM `pembalap`;
INSERT INTO `pembalap` (`id_pembalap`, `nama_pembalap`, `tim`, `total_poin`, `posisi_klasemen`, `gambar_path`) VALUES
	('F1_ALO', 'Fernando Alonso', 'Aston Martin', 25, 1, 'uploads/pembalap/1734491713040_fernando.jpg'),
	('F1_HAM', 'Lewis Hamilton', 'Mercedes', 18, 2, 'uploads/pembalap/1734491786900_lewis.jpg'),
	('F1_LEC', 'Charles Leclerc', 'Ferrari', 15, 3, 'uploads/pembalap/1734491795519_charles.jpg'),
	('F1_NOR', 'Lando Norris', 'McLaren', 12, 4, 'uploads/pembalap/1734491926972_lando.jpg'),
	('F1_PER', 'Sergio Perez', 'Red Bull Racing', 10, 5, 'uploads/pembalap/1734491938131_sergio.jpg'),
	('F1_PIA', 'Oscar Piastri', 'McLaren', 8, 6, NULL),
	('F1_RUS', 'George Russell', 'Mercedes', 6, 7, NULL),
	('F1_SAI', 'Carlos Sainz', 'Ferrari', 4, 8, NULL),
	('F1_STR', 'Lance Stroll', 'Aston Martin', 2, 9, NULL),
	('F1_VER', 'Max Verstappen', 'Red Bull Racing', 1, 10, NULL),
	('MG_ALX', 'Alex Rins', 'LCR Honda', 0, 0, 'uploads/pembalap/1734492569599_alex.jpg'),
	('MG_BAG', 'Francesco Bagnaia', 'Ducati Lenovo Team', 0, 0, 'uploads/pembalap/1734492586481_francesco.jpg'),
	('MG_BIN', 'Johann Zarco', 'Pramac Racing', 0, 0, 'uploads/pembalap/1734492597555_Johann.jpg'),
	('MG_BRA', 'Brad Binder', 'Red Bull KTM Factory Racing', 0, 0, 'uploads/pembalap/1734492608207_brad.jpg'),
	('MG_ESP', 'Maverick Viñales', 'Aprilia Racing', 0, 0, 'uploads/pembalap/1734492623547_mav.jpg'),
	('MG_MAR', 'Marc Marquez', 'Repsol Honda Team', 0, 0, NULL),
	('MG_MIL', 'Jorge Martin', 'Pramac Racing', 0, 0, NULL),
	('MG_MIR', 'Joan Mir', 'Repsol Honda Team', 0, 0, NULL),
	('MG_PED', 'Pedro Acosta', 'Red Bull KTM Factory Racing', 0, 0, NULL),
	('MG_QUA', 'Fabio Quartararo', 'Monster Energy Yamaha MotoGP', 0, 0, NULL);

-- Dumping structure for table db_racing.peserta_race
DROP TABLE IF EXISTS `peserta_race`;
CREATE TABLE IF NOT EXISTS `peserta_race` (
  `id_race` varchar(50) NOT NULL,
  `id_pembalap` varchar(50) NOT NULL,
  PRIMARY KEY (`id_race`,`id_pembalap`),
  KEY `id_pembalap` (`id_pembalap`),
  CONSTRAINT `peserta_race_ibfk_1` FOREIGN KEY (`id_race`) REFERENCES `race_event` (`id_race`),
  CONSTRAINT `peserta_race_ibfk_2` FOREIGN KEY (`id_pembalap`) REFERENCES `pembalap` (`id_pembalap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_racing.peserta_race: ~43 rows (approximately)
DELETE FROM `peserta_race`;
INSERT INTO `peserta_race` (`id_race`, `id_pembalap`) VALUES
	('F1_BHR', 'F1_ALO'),
	('F1_SAU', 'F1_ALO'),
	('F1_BHR', 'F1_HAM'),
	('F1_SAU', 'F1_HAM'),
	('F1_BHR', 'F1_LEC'),
	('F1_SAU', 'F1_LEC'),
	('F1_BHR', 'F1_NOR'),
	('F1_SAU', 'F1_NOR'),
	('F1_BHR', 'F1_PER'),
	('F1_SAU', 'F1_PER'),
	('F1_BHR', 'F1_PIA'),
	('F1_SAU', 'F1_PIA'),
	('F1_BHR', 'F1_RUS'),
	('F1_SAU', 'F1_RUS'),
	('F1_BHR', 'F1_SAI'),
	('F1_SAU', 'F1_SAI'),
	('F1_BHR', 'F1_STR'),
	('F1_SAU', 'F1_STR'),
	('F1_BHR', 'F1_VER'),
	('F1_SAU', 'F1_VER'),
	('MG_INA', 'MG_ALX'),
	('MG_QAT', 'MG_ALX'),
	('MG_INA', 'MG_BAG'),
	('MG_QAT', 'MG_BAG'),
	('MG_INA', 'MG_BIN'),
	('MG_QAT', 'MG_BIN'),
	('MG_INA', 'MG_BRA'),
	('MG_QAT', 'MG_BRA'),
	('MG_INA', 'MG_ESP'),
	('MG_QAT', 'MG_ESP'),
	('MG_INA', 'MG_MAR'),
	('MG_QAT', 'MG_MAR'),
	('MG_INA', 'MG_MIL'),
	('MG_QAT', 'MG_MIL'),
	('MG_INA', 'MG_MIR'),
	('MG_QAT', 'MG_MIR'),
	('MG_INA', 'MG_PED'),
	('MG_QAT', 'MG_PED'),
	('MG_INA', 'MG_QUA'),
	('MG_QAT', 'MG_QUA');

-- Dumping structure for table db_racing.race_event
DROP TABLE IF EXISTS `race_event`;
CREATE TABLE IF NOT EXISTS `race_event` (
  `id_race` varchar(10) NOT NULL,
  `nama_race` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `id_sirkuit` varchar(10) NOT NULL,
  `kategori` enum('F1','MotoGP') NOT NULL,
  `status` enum('Selesai','Akan Datang','Berlangsung') DEFAULT 'Akan Datang',
  `musim` int DEFAULT NULL,
  `round_ke` int DEFAULT '1',
  `gambar_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_racing.race_event: ~10 rows (approximately)
DELETE FROM `race_event`;
INSERT INTO `race_event` (`id_race`, `nama_race`, `tanggal`, `id_sirkuit`, `kategori`, `status`, `musim`, `round_ke`, `gambar_path`) VALUES
	('F1_BHR', 'Bahrain Grand Prix', '2023-03-05', 'S001', 'F1', 'Selesai', 2023, 1, 'uploads/race/1734492083820_bahrain.png'),
	('F1_SAU', 'Saudi Arabian Grand Prix', '2023-03-19', 'S002', 'F1', 'Selesai', 2023, 2, 'uploads/race/1734492201499_saudi.png'),
	('MG_INA', 'Indonesian Grand Prix', '2023-03-19', 'SIR002', 'MotoGP', 'Selesai', 2023, 2, 'uploads/race/1734492279710_indo.png'),
	('MG_QAT', 'Qatar Grand Prix', '2023-03-10', 'SIR001', 'MotoGP', 'Selesai', 2023, 1, 'uploads/race/1734492323917_qatar.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
