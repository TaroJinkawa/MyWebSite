CREATE TABLE buy(
   -> id int(11) PRIMARY KEY AUTO_INCREMENT,
   -> user_id int(11) NOT NULL,
   -> total_price int(11) NOT NULL,
   -> delivery_id int(11) NOT NULL,
   -> create_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP);
