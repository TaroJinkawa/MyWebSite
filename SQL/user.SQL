CREATE TABLE `user` (
    -> id int(100) NOT NULL AUTO_INCREMENT,
    -> `login_id` varchar(255) NOT NULL,
    ->   `name` varchar(255) NOT NULL,
    ->   `birth_date` date NOT NULL,
    ->   `password` varchar(255) NOT NULL,
    ->   `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->   `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `id` (`id`),
    ->   UNIQUE KEY `login_id` (`login_id`)
    -> );

    INSERT INTO `user` (`login_id`, `name`, `birth_date`, `password`)
    VALUES
    	('admin', '管理者', '1990-10-01', 'password');
