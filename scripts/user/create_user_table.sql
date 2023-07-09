-- user table with only clustered primary key
CREATE TABLE IF NOT EXISTS `user`(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	username VARCHAR(30) UNIQUE NOT NULL,
	gender ENUM('male', 'female', 'unspecified'),
	age TINYINT,
	birthdate DATETIME,
	role ENUM('admin', 'moderator', 'reader'),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- user table with a few secondary indexes
CREATE TABLE IF NOT EXISTS `user`(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	username VARCHAR(30) UNIQUE NOT NULL,
	gender ENUM('male', 'female', 'unspecified'),
	age TINYINT,
	birthdate DATETIME,
	role ENUM('admin', 'moderator', 'reader'),
	INDEX gender_age_index (`gender`, `age`),
	INDEX birthdate_index (`birthdate`),
	INDEX age_gender_birthdate_role_index (`age`, `gender`, `birthdate`, `role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
