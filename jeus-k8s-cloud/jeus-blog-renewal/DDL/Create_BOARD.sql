CREATE TABLE `board` (
	`id` INT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`board_name` VARCHAR(25) NOT NULL DEFAULT ' ' COLLATE 'latin1_swedish_ci',
	`category` VARCHAR(25) NOT NULL DEFAULT ' ' COLLATE 'latin1_swedish_ci',
	`color` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`logo` VARCHAR(100) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`description` VARCHAR(255) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`created_date` DATETIME NULL DEFAULT NULL,
	`modified_date` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `board_name` (`board_name`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
