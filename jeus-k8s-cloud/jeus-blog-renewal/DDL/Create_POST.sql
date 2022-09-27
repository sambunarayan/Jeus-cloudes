CREATE TABLE `post` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`board_name` VARCHAR(25) NOT NULL DEFAULT ' ' COLLATE 'latin1_swedish_ci',
	`title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`content` VARCHAR(1024) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`author` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`created_date` DATETIME NULL DEFAULT NULL,
	`modified_date` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `board_name` (`board_name`) USING BTREE,
	CONSTRAINT `fk_board_name` FOREIGN KEY (`board_name`) REFERENCES `blogdb`.`board` (`board_name`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
