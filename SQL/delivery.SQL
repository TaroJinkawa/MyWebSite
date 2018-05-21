CREATE TABLE delivery (
id int(10) PRIMARY KEY AUTO_INCREMENT,
name varchar(255) NOT NULL,
price int(100) NOT NULL);

INSERT INTO delivery(name,price) VALUES ('通常配送','500');
INSERT INTO delivery(name,price) VALUES ('お急ぎ便','1000');
INSERT INTO delivery(name,price) VALUES('店頭受取り','0');
