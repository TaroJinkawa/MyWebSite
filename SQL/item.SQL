CREATE TABLE item (
    -> id int(11) PRIMARY KEY AUTO_INCREMENT,
    -> category_id int(10) NOT NULL,
    -> name varchar(255) NOT NULL,
    -> detail varchar(255) NOT NULL,
    -> price int(11) NOT NULL,
    -> file_name varchar(256) NOT NULL);       
