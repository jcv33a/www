CREATE TABLE `guitarwars` (
  `id` INT AUTO_INCREMENT,
  `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `name` VARCHAR(32),
  `score` INT,
  `ciudad` VARCHAR(32),
  `categoria` VARCHAR(32),
  `descripcion` VARCHAR(200),
  `screenshot` VARCHAR(64),
  PRIMARY KEY (`id`),
  KEY `categoria` (`categoria`),
  KEY `ciudad` (`ciudad`)
)

