-- user_balance
CREATE TABLE IF NOT EXISTS `user_balance` (
    id INT NOT NULL AUTO_INCREMENT,
    balance DECIMAL DEFAULT 0,
    PRIMARY KEY(id),
    FOREIGN KEY(id) REFRENCES user(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
